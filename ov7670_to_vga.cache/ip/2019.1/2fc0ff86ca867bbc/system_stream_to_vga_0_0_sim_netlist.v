// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Dec  4 23:50:23 2021
// Host        : Sergei running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_stream_to_vga_0_0_sim_netlist.v
// Design      : system_stream_to_vga_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_stream_to_vga_0_0,vga640x480,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "vga640x480,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk25,
    aresetn,
    hsync,
    vsync,
    red,
    green,
    blue,
    tdata,
    tvalid,
    tready,
    fsync,
    hcounter,
    vcounter);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF rgb_in, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0" *) input clk25;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output hsync;
  output vsync;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TDATA" *) input [15:0]tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TVALID" *) input tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgb_in, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, LAYERED_METADATA undef, INSERT_VIP 0" *) output tready;
  output fsync;
  output [9:0]hcounter;
  output [9:0]vcounter;

  wire aresetn;
  wire [3:0]blue;
  wire clk25;
  wire fsync;
  wire [3:0]green;
  wire [9:0]hcounter;
  wire hsync;
  wire [3:0]red;
  wire [15:0]tdata;
  wire tready;
  wire [9:0]vcounter;
  wire vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480 inst
       (.aresetn(aresetn),
        .blue(blue),
        .clk25(clk25),
        .fsync(fsync),
        .green(green),
        .hcounter(hcounter),
        .hsync(hsync),
        .red(red),
        .tdata({tdata[15:12],tdata[10:7],tdata[4:1]}),
        .tready(tready),
        .vcounter(vcounter),
        .vsync(vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480
   (hcounter,
    vcounter,
    red,
    green,
    blue,
    tready,
    vsync,
    hsync,
    fsync,
    clk25,
    aresetn,
    tdata);
  output [9:0]hcounter;
  output [9:0]vcounter;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  output tready;
  output vsync;
  output hsync;
  output fsync;
  input clk25;
  input aresetn;
  input [11:0]tdata;

  wire aresetn;
  wire [3:0]blue;
  wire clk25;
  wire fsync;
  wire fsync_i_1_n_0;
  wire fsync_i_2_n_0;
  wire [3:0]green;
  wire \hc[7]_i_2_n_0 ;
  wire \hc[9]_i_1_n_0 ;
  wire \hc[9]_i_3_n_0 ;
  wire \hc[9]_i_4_n_0 ;
  wire \hc[9]_i_5_n_0 ;
  wire [9:0]hcounter;
  wire hsync;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [3:0]red;
  wire \red[3]_INST_0_i_1_n_0 ;
  wire \red[3]_INST_0_i_2_n_0 ;
  wire \red[3]_INST_0_i_3_n_0 ;
  wire [11:0]tdata;
  wire tready;
  wire \vc[6]_i_2_n_0 ;
  wire \vc[9]_i_1_n_0 ;
  wire \vc[9]_i_2_n_0 ;
  wire \vc[9]_i_4_n_0 ;
  wire \vc[9]_i_5_n_0 ;
  wire \vc[9]_i_6_n_0 ;
  wire \vc[9]_i_7_n_0 ;
  wire [9:0]vcounter;
  wire vsync;
  wire vsync_INST_0_i_1_n_0;
  wire vsync_last;
  wire vsync_last_i_1_n_0;

  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \blue[0]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[0]),
        .O(blue[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \blue[1]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[1]),
        .O(blue[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \blue[2]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[2]),
        .O(blue[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \blue[3]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[3]),
        .O(blue[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55540000)) 
    fsync_i_1
       (.I0(vsync_last),
        .I1(vcounter[9]),
        .I2(fsync_i_2_n_0),
        .I3(vsync_INST_0_i_1_n_0),
        .I4(aresetn),
        .O(fsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    fsync_i_2
       (.I0(vcounter[2]),
        .I1(vcounter[1]),
        .I2(vcounter[4]),
        .I3(vcounter[3]),
        .O(fsync_i_2_n_0));
  FDRE fsync_reg
       (.C(clk25),
        .CE(1'b1),
        .D(fsync_i_1_n_0),
        .Q(fsync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \green[0]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[4]),
        .O(green[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \green[1]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[5]),
        .O(green[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \green[2]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[6]),
        .O(green[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \green[3]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[7]),
        .O(green[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \hc[0]_i_1 
       (.I0(hcounter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hc[1]_i_1 
       (.I0(hcounter[0]),
        .I1(hcounter[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hc[2]_i_1 
       (.I0(hcounter[1]),
        .I1(hcounter[0]),
        .I2(hcounter[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hc[3]_i_1 
       (.I0(hcounter[2]),
        .I1(hcounter[0]),
        .I2(hcounter[1]),
        .I3(hcounter[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hc[4]_i_1 
       (.I0(hcounter[3]),
        .I1(hcounter[1]),
        .I2(hcounter[0]),
        .I3(hcounter[2]),
        .I4(hcounter[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hc[5]_i_1 
       (.I0(hcounter[4]),
        .I1(hcounter[2]),
        .I2(hcounter[0]),
        .I3(hcounter[1]),
        .I4(hcounter[3]),
        .I5(hcounter[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \hc[6]_i_1 
       (.I0(hcounter[5]),
        .I1(hcounter[3]),
        .I2(\hc[7]_i_2_n_0 ),
        .I3(hcounter[4]),
        .I4(hcounter[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \hc[7]_i_1 
       (.I0(hcounter[6]),
        .I1(hcounter[4]),
        .I2(\hc[7]_i_2_n_0 ),
        .I3(hcounter[3]),
        .I4(hcounter[5]),
        .I5(hcounter[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hc[7]_i_2 
       (.I0(hcounter[1]),
        .I1(hcounter[0]),
        .I2(hcounter[2]),
        .O(\hc[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \hc[8]_i_1 
       (.I0(hcounter[7]),
        .I1(\hc[9]_i_5_n_0 ),
        .I2(hcounter[6]),
        .I3(hcounter[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFE000000FFFFFFFF)) 
    \hc[9]_i_1 
       (.I0(\hc[9]_i_3_n_0 ),
        .I1(hcounter[7]),
        .I2(\hc[9]_i_4_n_0 ),
        .I3(hcounter[8]),
        .I4(hcounter[9]),
        .I5(aresetn),
        .O(\hc[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \hc[9]_i_2 
       (.I0(hcounter[8]),
        .I1(hcounter[6]),
        .I2(\hc[9]_i_5_n_0 ),
        .I3(hcounter[7]),
        .I4(hcounter[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \hc[9]_i_3 
       (.I0(hcounter[4]),
        .I1(hcounter[3]),
        .I2(hcounter[2]),
        .I3(hcounter[0]),
        .I4(hcounter[1]),
        .O(\hc[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \hc[9]_i_4 
       (.I0(hcounter[5]),
        .I1(hcounter[6]),
        .O(\hc[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \hc[9]_i_5 
       (.I0(hcounter[4]),
        .I1(hcounter[2]),
        .I2(hcounter[0]),
        .I3(hcounter[1]),
        .I4(hcounter[3]),
        .I5(hcounter[5]),
        .O(\hc[9]_i_5_n_0 ));
  FDRE \hc_reg[0] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(hcounter[0]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[1] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(hcounter[1]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[2] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(hcounter[2]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[3] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(hcounter[3]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[4] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(hcounter[4]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[5] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(hcounter[5]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[6] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(hcounter[6]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[7] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(hcounter[7]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[8] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(hcounter[8]),
        .R(\hc[9]_i_1_n_0 ));
  FDRE \hc_reg[9] 
       (.C(clk25),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(hcounter[9]),
        .R(\hc[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    hsync_INST_0
       (.I0(hcounter[7]),
        .I1(hcounter[5]),
        .I2(hcounter[6]),
        .I3(hcounter[9]),
        .I4(hcounter[8]),
        .O(hsync));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \red[0]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[8]),
        .O(red[0]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \red[1]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[9]),
        .O(red[1]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \red[2]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[10]),
        .O(red[2]));
  LUT6 #(
    .INIT(64'h01EA000000000000)) 
    \red[3]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(\red[3]_INST_0_i_2_n_0 ),
        .I2(vcounter[5]),
        .I3(vcounter[9]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(tdata[11]),
        .O(red[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \red[3]_INST_0_i_1 
       (.I0(vcounter[8]),
        .I1(vcounter[7]),
        .I2(vcounter[6]),
        .O(\red[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \red[3]_INST_0_i_2 
       (.I0(vcounter[3]),
        .I1(vcounter[4]),
        .I2(vcounter[1]),
        .I3(vcounter[2]),
        .I4(vcounter[0]),
        .O(\red[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555557EEEEEEEA)) 
    \red[3]_INST_0_i_3 
       (.I0(hcounter[9]),
        .I1(hcounter[7]),
        .I2(hcounter[6]),
        .I3(hcounter[5]),
        .I4(hcounter[4]),
        .I5(hcounter[8]),
        .O(\red[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22222008)) 
    tready_INST_0
       (.I0(\red[3]_INST_0_i_3_n_0 ),
        .I1(vcounter[9]),
        .I2(vcounter[5]),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(\red[3]_INST_0_i_1_n_0 ),
        .O(tready));
  LUT1 #(
    .INIT(2'h1)) 
    \vc[0]_i_1 
       (.I0(vcounter[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vc[1]_i_1 
       (.I0(vcounter[0]),
        .I1(vcounter[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vc[2]_i_1 
       (.I0(vcounter[1]),
        .I1(vcounter[0]),
        .I2(vcounter[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vc[3]_i_1 
       (.I0(vcounter[2]),
        .I1(vcounter[0]),
        .I2(vcounter[1]),
        .I3(vcounter[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vc[4]_i_1 
       (.I0(vcounter[3]),
        .I1(vcounter[1]),
        .I2(vcounter[0]),
        .I3(vcounter[2]),
        .I4(vcounter[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vc[5]_i_1 
       (.I0(vcounter[4]),
        .I1(vcounter[2]),
        .I2(vcounter[0]),
        .I3(vcounter[1]),
        .I4(vcounter[3]),
        .I5(vcounter[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \vc[6]_i_1 
       (.I0(vcounter[5]),
        .I1(vcounter[3]),
        .I2(\vc[6]_i_2_n_0 ),
        .I3(vcounter[2]),
        .I4(vcounter[4]),
        .I5(vcounter[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vc[6]_i_2 
       (.I0(vcounter[0]),
        .I1(vcounter[1]),
        .O(\vc[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \vc[7]_i_1 
       (.I0(vcounter[6]),
        .I1(\vc[9]_i_7_n_0 ),
        .I2(vcounter[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \vc[8]_i_1 
       (.I0(vcounter[7]),
        .I1(\vc[9]_i_7_n_0 ),
        .I2(vcounter[6]),
        .I3(vcounter[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hE0E0E000FFFFFFFF)) 
    \vc[9]_i_1 
       (.I0(\vc[9]_i_4_n_0 ),
        .I1(vsync_INST_0_i_1_n_0),
        .I2(\vc[9]_i_5_n_0 ),
        .I3(\vc[9]_i_6_n_0 ),
        .I4(\hc[9]_i_3_n_0 ),
        .I5(aresetn),
        .O(\vc[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \vc[9]_i_2 
       (.I0(hcounter[9]),
        .I1(hcounter[8]),
        .I2(hcounter[6]),
        .I3(hcounter[5]),
        .I4(hcounter[7]),
        .I5(\hc[9]_i_3_n_0 ),
        .O(\vc[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \vc[9]_i_3 
       (.I0(vcounter[8]),
        .I1(vcounter[6]),
        .I2(\vc[9]_i_7_n_0 ),
        .I3(vcounter[7]),
        .I4(vcounter[9]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFA888)) 
    \vc[9]_i_4 
       (.I0(vcounter[3]),
        .I1(vcounter[2]),
        .I2(vcounter[1]),
        .I3(vcounter[0]),
        .I4(vcounter[4]),
        .O(\vc[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \vc[9]_i_5 
       (.I0(hcounter[9]),
        .I1(hcounter[8]),
        .I2(vcounter[9]),
        .O(\vc[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \vc[9]_i_6 
       (.I0(hcounter[6]),
        .I1(hcounter[5]),
        .I2(hcounter[7]),
        .O(\vc[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \vc[9]_i_7 
       (.I0(vcounter[4]),
        .I1(vcounter[2]),
        .I2(vcounter[0]),
        .I3(vcounter[1]),
        .I4(vcounter[3]),
        .I5(vcounter[5]),
        .O(\vc[9]_i_7_n_0 ));
  FDRE \vc_reg[0] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(vcounter[0]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[1] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(vcounter[1]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[2] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(vcounter[2]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[3] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(vcounter[3]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[4] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(vcounter[4]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[5] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(vcounter[5]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[6] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(vcounter[6]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[7] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(vcounter[7]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[8] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(vcounter[8]),
        .R(\vc[9]_i_1_n_0 ));
  FDRE \vc_reg[9] 
       (.C(clk25),
        .CE(\vc[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(vcounter[9]),
        .R(\vc[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vsync_INST_0
       (.I0(vcounter[9]),
        .I1(vcounter[2]),
        .I2(vcounter[1]),
        .I3(vcounter[4]),
        .I4(vcounter[3]),
        .I5(vsync_INST_0_i_1_n_0),
        .O(vsync));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vsync_INST_0_i_1
       (.I0(vcounter[6]),
        .I1(vcounter[7]),
        .I2(vcounter[8]),
        .I3(vcounter[5]),
        .O(vsync_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    vsync_last_i_1
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(fsync_i_2_n_0),
        .I2(vcounter[9]),
        .I3(aresetn),
        .O(vsync_last_i_1_n_0));
  FDRE vsync_last_reg
       (.C(clk25),
        .CE(1'b1),
        .D(vsync_last_i_1_n_0),
        .Q(vsync_last),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
