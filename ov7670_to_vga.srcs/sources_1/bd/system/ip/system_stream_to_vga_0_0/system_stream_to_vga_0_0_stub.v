// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Dec  4 23:50:23 2021
// Host        : Sergei running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Sergei/Desktop/nast/camera/new_cam/ov7670_VDMA_VGA/ov7670_to_vga/ov7670_to_vga.srcs/sources_1/bd/system/ip/system_stream_to_vga_0_0/system_stream_to_vga_0_0_stub.v
// Design      : system_stream_to_vga_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga640x480,Vivado 2019.1" *)
module system_stream_to_vga_0_0(clk25, aresetn, hsync, vsync, red, green, blue, tdata, 
  tvalid, tready, fsync, hcounter, vcounter)
/* synthesis syn_black_box black_box_pad_pin="clk25,aresetn,hsync,vsync,red[3:0],green[3:0],blue[3:0],tdata[15:0],tvalid,tready,fsync,hcounter[9:0],vcounter[9:0]" */;
  input clk25;
  input aresetn;
  output hsync;
  output vsync;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  input [15:0]tdata;
  input tvalid;
  output tready;
  output fsync;
  output [9:0]hcounter;
  output [9:0]vcounter;
endmodule
