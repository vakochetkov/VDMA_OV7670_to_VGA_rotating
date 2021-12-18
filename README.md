# OV7670 Video Streaming on ZedBoard (Zynq SoC) via VDMA
1. S2MM VDMA grabs OV7670 frames to buffer located in Zynq DDR (default 0x10000000)
2. MM2S VDMA streams data from second buffer also located in Zynq DDR (default 0x10000000 + 3 * 640 * 480) to VGA output
3. PS proccess data from input camera buffer rotating it by angle defined via PS UART and put modified data to output VGA buffer 

References: 
* [ov7670_VDMA_VGA by honording](https://github.com/honording/ov7670_VDMA_VGA)
* [Zedboard schematic](https://www.xilinx.com/support/documentation/university/XUP%20Boards/XUPZedBoard/documentation/ZedBoard_RevC.1_Schematic_130129.pdf)
* [OV7670 datasheet](http://www.voti.nl/docs/OV7670.pdf)
