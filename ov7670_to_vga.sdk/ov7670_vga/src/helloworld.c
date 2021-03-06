#include <stdint.h>
#include <string.h>

#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xuartps.h"

#include "camera.h"
#include "sleep.h"
#include "math.h"

#define UART_DEVICE_ID              XPAR_XUARTPS_0_DEVICE_ID
XUartPs Uart_PS;					/* Instance of the UART Device */

#define RX_BUF_SIZE 				16
static uint8_t uartRecv[RX_BUF_SIZE];

#define PI 3.14159265

#define OV7670_STREAM							0x43C00000
#define VDMA_MM2S								0x43000000
#define VDMA_S2MM								0x43010000

#define HEIGHT                                  480
#define WIDTH                                   640

/* Register offsets */
#define OFFSET_PARK_PTR_REG                     0x28
#define OFFSET_VERSION                          0x2c

#define OFFSET_VDMA_MM2S_CONTROL_REGISTER       0x00
#define OFFSET_VDMA_MM2S_STATUS_REGISTER        0x04
#define OFFSET_VDMA_MM2S_VSIZE                  0x50
#define OFFSET_VDMA_MM2S_HSIZE                  0x54
#define OFFSET_VDMA_MM2S_FRMDLY_STRIDE          0x58
#define OFFSET_VDMA_MM2S_FRAMEBUFFER1           0x5c
#define OFFSET_VDMA_MM2S_FRAMEBUFFER2           0x60
#define OFFSET_VDMA_MM2S_FRAMEBUFFER3           0x64
#define OFFSET_VDMA_MM2S_FRAMEBUFFER4           0x68

#define OFFSET_VDMA_S2MM_CONTROL_REGISTER       0x30
#define OFFSET_VDMA_S2MM_STATUS_REGISTER        0x34
#define OFFSET_VDMA_S2MM_IRQ_MASK               0x3c
#define OFFSET_VDMA_S2MM_REG_INDEX              0x44
#define OFFSET_VDMA_S2MM_VSIZE                  0xa0
#define OFFSET_VDMA_S2MM_HSIZE                  0xa4
#define OFFSET_VDMA_S2MM_FRMDLY_STRIDE          0xa8
#define OFFSET_VDMA_S2MM_FRAMEBUFFER1           0xac
#define OFFSET_VDMA_S2MM_FRAMEBUFFER2           0xb0
#define OFFSET_VDMA_S2MM_FRAMEBUFFER3           0xb4
#define OFFSET_VDMA_S2MM_FRAMEBUFFER4           0xb8

/* S2MM and MM2S control register flags */
#define VDMA_CONTROL_REGISTER_START                     0x00000001
#define VDMA_CONTROL_REGISTER_CIRCULAR_PARK             0x00000002
#define VDMA_CONTROL_REGISTER_RESET                     0x00000004
#define VDMA_CONTROL_REGISTER_GENLOCK_ENABLE            0x00000008
#define VDMA_CONTROL_REGISTER_FrameCntEn                0x00000010
#define VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK          0x00000080
#define VDMA_CONTROL_REGISTER_WrPntr                    0x00000f00
#define VDMA_CONTROL_REGISTER_FrmCtn_IrqEn              0x00001000
#define VDMA_CONTROL_REGISTER_DlyCnt_IrqEn              0x00002000
#define VDMA_CONTROL_REGISTER_ERR_IrqEn                 0x00004000
#define VDMA_CONTROL_REGISTER_Repeat_En                 0x00008000
#define VDMA_CONTROL_REGISTER_InterruptFrameCount       0x00ff0000
#define VDMA_CONTROL_REGISTER_IRQDelayCount             0xff000000

/* S2MM status register */
#define VDMA_STATUS_REGISTER_HALTED                     0x00000001  // Read-only
#define VDMA_STATUS_REGISTER_VDMAInternalError          0x00000010  // Read or write-clear
#define VDMA_STATUS_REGISTER_VDMASlaveError             0x00000020  // Read-only
#define VDMA_STATUS_REGISTER_VDMADecodeError            0x00000040  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameEarlyError     0x00000080  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineEarlyError        0x00000100  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameLateError      0x00000800  // Read-only
#define VDMA_STATUS_REGISTER_FrameCountInterrupt        0x00001000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCountInterrupt        0x00002000  // Read-only
#define VDMA_STATUS_REGISTER_ErrorInterrupt             0x00004000  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineLateError         0x00008000  // Read-only
#define VDMA_STATUS_REGISTER_FrameCount                 0x00ff0000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCount                 0xff000000  // Read-only

typedef struct {
    unsigned int baseAddr;
    int width;
    int height;
    int pixelLength;
    int fbLength;
    volatile unsigned int* vdmaVirtualAddress;
    uint16_t *fb1PhysicalAddress;
} vdma_handle;

int vdma_setup(vdma_handle *handle, unsigned int baseAddr, int width, int height, int pixelLength, unsigned int fb1Addr) {
    handle->width=width;
    handle->height=height;
    handle->pixelLength=pixelLength;
    handle->fbLength=pixelLength*width*height;

    handle->vdmaVirtualAddress = (unsigned int *)baseAddr;
    handle->fb1PhysicalAddress = (uint16_t *)fb1Addr;
    return 0;
}

unsigned int vdma_get(vdma_handle *handle, int num) {
    return handle->vdmaVirtualAddress[num>>2];
}

void vdma_set(vdma_handle *handle, int num, unsigned int val) {
    handle->vdmaVirtualAddress[num>>2]=val;
}


void vdma_start_s2mm(vdma_handle *handle) {
    // Reset VDMA
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while((vdma_get(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);

    // Clear all error bits in status register
    vdma_set(handle, OFFSET_VDMA_S2MM_STATUS_REGISTER, 0);

    // Do not mask interrupts
    vdma_set(handle, OFFSET_VDMA_S2MM_IRQ_MASK, 0xf);

    int interrupt_frame_count = 1;

    // Start both S2MM and MM2S in triple buffering mode
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START
        );


    while((vdma_get(handle, 0x30)&1)==0 || (vdma_get(handle, 0x34)&1)==1);

    // Extra register index, use first 16 frame pointer registers
    vdma_set(handle, OFFSET_VDMA_S2MM_REG_INDEX, 0);

    // Write physical addresses to control register
    vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER1, (unsigned int)handle->fb1PhysicalAddress);

    // Write Park pointer register
    vdma_set(handle, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_FRMDLY_STRIDE, handle->width*handle->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_HSIZE, handle->width*handle->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(handle, OFFSET_VDMA_S2MM_VSIZE, handle->height);
}

void vdma_start_mm2s(vdma_handle *handle) {
    // Reset VDMA
    vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while((vdma_get(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);

    // Clear all error bits in status register
    vdma_set(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER, 0);

    int interrupt_frame_count = 1;

    // Set buffer number
    vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START
        );

    vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER1, (unsigned int)handle->fb1PhysicalAddress);

    // Write Park pointer register
    vdma_set(handle, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(handle, OFFSET_VDMA_MM2S_FRMDLY_STRIDE, handle->width*handle->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(handle, OFFSET_VDMA_MM2S_HSIZE, handle->width*handle->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(handle, OFFSET_VDMA_MM2S_VSIZE, handle->height);
}

int InitUART(uint16_t DeviceId) {
	int Status;
	XUartPs_Config *Config;

	/*
	 * Initialize the UART driver so that it's ready to use.
	 * Look up the configuration in the config table, then initialize it.
	 */
	Config = XUartPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Check hardware build. */
	Status = XUartPs_SelfTest(&Uart_PS);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the receiver timeout. If it is not set, and the last few bytes
	 * of data do not trigger the over-water or full interrupt, the bytes
	 * will not be received. By default it is disabled.
	 *
	 * The setting of 8 will timeout after 8 x 4 = 32 character times.
	 * Increase the time out value if baud rate is high, decrease it if
	 * baud rate is low.
	 */
	XUartPs_SetRecvTimeout(&Uart_PS, 64);

	return XST_SUCCESS;
}

/*
 * Handle only one command: rot <degree[2:0]>
 * Return -1 if there is not new rotate command
 */
int ReceiveCmdRotate() {
	static uint8_t idx = 0;
	static char cmdBuffer[RX_BUF_SIZE];
	int16_t angle = -1;

	uint8_t received = XUartPs_Recv(&Uart_PS, uartRecv, RX_BUF_SIZE);
	if (strlen(uartRecv)) {
		for (uint8_t i = 0; i < received; i++) {
			if (idx >= 16) {
				idx = 0;
			}
			cmdBuffer[idx] = uartRecv[i];
			idx++;
		}

		char *p = strstr(cmdBuffer, "rot ");
		if (p != NULL && strlen(p + 3) > 3) {
			xil_printf("\n%s\n", p+3);
			angle = atoi(p + 3);
			xil_printf("angle = %d\n", angle);
			if (angle < 0 || angle > 360) {
				xil_printf("Invalid angle!\n");
				angle = -1;
			}
			memset(cmdBuffer, 0, RX_BUF_SIZE);
		}

		xil_printf("%s ", uartRecv);
		memset(uartRecv, 0, RX_BUF_SIZE);
	}


	return angle;
}

int main() {
	//Xil_DCacheDisable();

	// Initialize UART PS
	InitUART(UART_DEVICE_ID);

    // Start Initialize Camera Module
	int result;
    result = InitCamera();
    if (result != XST_SUCCESS) {
    	return 0;
    }

    // Set RGB 565 mode
    InitRGB565();

    // Set QVGA mode
    InitVGA();

    // Load default Camera registers
    InitDefaultReg();

    //Camera Module register dump after initialization
    //DumpReg();

    vdma_handle handle_s2mm;
    vdma_handle handle_mm2s;

    // Setup VDMA handle and memory-mapped ranges
    vdma_setup(&handle_s2mm, VDMA_S2MM, WIDTH, HEIGHT, 2, 0x10000000);
    vdma_setup(&handle_mm2s, VDMA_MM2S, WIDTH, HEIGHT, 2, 0x10000000 + 3*640*480);

    // Pointers to source (OV7670) and destination (VGA) buffers
    uint16_t * fb_from = (uint16_t*)(0x10000000);
    uint16_t * fb_to = (uint16_t*)(0x10000000 + 3*640*480);

    // Start triple buffering
    vdma_start_s2mm(&handle_s2mm);
    vdma_start_mm2s(&handle_mm2s);

    Xil_Out32(OV7670_STREAM, 1);

    // rotation computation - how to
    // x? = cos(angle) * x ? sin(angle) * y;
    // y? = sin(angle) * x + cos(angle) * y;
    // rad = angle * PI / 180.0

    double angle = (0 * PI / 180.0);
    double pcos = cos(angle);
    double psin = sin(angle);

    // black background
	for (uint32_t x = 0; x < HEIGHT; x++) {
		for (uint32_t y = 0; y < WIDTH; y++) {
			fb_to[(x * WIDTH) + (y)] = 0x0000;
		}
	}

    while(1) {
    	int new_angle = ReceiveCmdRotate();
    	if (new_angle != -1) {
    		// update sin and cos values
    		angle = (new_angle * PI / 180.0);
    		pcos = cos(angle);
    		psin = sin(angle);

    		for (uint32_t x = 0; x < HEIGHT; x++) {
    			for (uint32_t y = 0; y < WIDTH; y++) {
    				fb_to[(x * WIDTH) + (y)] = 0x0000;
    			}
    		}
    	}

    	for (int32_t x = 0; x < HEIGHT; x++) {
    		for (int32_t y = 0; y < WIDTH; y++) {

    			// don't forget to move x and y centers (zeros) to HEIGHT / 2 and WIDTH / 2 and add 0.5 for right rounding
    			// invert x` for clockwise rotation
    			int32_t nx = /*x;*/ (int32_t)((psin * (y - WIDTH/2)) - (pcos * (x - HEIGHT/2)) + 0.5);
    			int32_t ny = /*y;*/ (int32_t)((psin * (x - HEIGHT/2)) + (pcos * (y - WIDTH/2)) + 0.5);
    			nx += HEIGHT/2;
    			ny += WIDTH/2;
    			if ((nx < 0) || (ny < 0)) continue;
        		if ((nx >= HEIGHT) || (ny >= WIDTH)) continue;

        		fb_to[(nx * WIDTH) + (ny)] = fb_from[(x * WIDTH) + (y)];
    		}
    	}
    	//usleep(100000);
    	//sleep(1);
    }

    return 0;
}

