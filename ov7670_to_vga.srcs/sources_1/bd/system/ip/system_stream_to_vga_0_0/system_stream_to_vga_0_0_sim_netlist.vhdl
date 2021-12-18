-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Dec  4 23:50:23 2021
-- Host        : Sergei running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Sergei/Desktop/nast/camera/new_cam/ov7670_VDMA_VGA/ov7670_to_vga/ov7670_to_vga.srcs/sources_1/bd/system/ip/system_stream_to_vga_0_0/system_stream_to_vga_0_0_sim_netlist.vhdl
-- Design      : system_stream_to_vga_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_stream_to_vga_0_0_vga640x480 is
  port (
    hcounter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vcounter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tready : out STD_LOGIC;
    vsync : out STD_LOGIC;
    hsync : out STD_LOGIC;
    fsync : out STD_LOGIC;
    clk25 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    tdata : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_stream_to_vga_0_0_vga640x480 : entity is "vga640x480";
end system_stream_to_vga_0_0_vga640x480;

architecture STRUCTURE of system_stream_to_vga_0_0_vga640x480 is
  signal fsync_i_1_n_0 : STD_LOGIC;
  signal fsync_i_2_n_0 : STD_LOGIC;
  signal \hc[7]_i_2_n_0\ : STD_LOGIC;
  signal \hc[9]_i_1_n_0\ : STD_LOGIC;
  signal \hc[9]_i_3_n_0\ : STD_LOGIC;
  signal \hc[9]_i_4_n_0\ : STD_LOGIC;
  signal \hc[9]_i_5_n_0\ : STD_LOGIC;
  signal \^hcounter\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \red[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \vc[6]_i_2_n_0\ : STD_LOGIC;
  signal \vc[9]_i_1_n_0\ : STD_LOGIC;
  signal \vc[9]_i_2_n_0\ : STD_LOGIC;
  signal \vc[9]_i_4_n_0\ : STD_LOGIC;
  signal \vc[9]_i_5_n_0\ : STD_LOGIC;
  signal \vc[9]_i_6_n_0\ : STD_LOGIC;
  signal \vc[9]_i_7_n_0\ : STD_LOGIC;
  signal \^vcounter\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal vsync_last : STD_LOGIC;
  signal vsync_last_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fsync_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of fsync_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hc[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hc[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hc[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hc[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hc[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hc[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hc[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hc[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hc[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hc[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of hsync_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \red[3]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \red[3]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vc[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vc[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vc[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vc[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vc[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vc[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vc[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vc[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vc[9]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of vsync_INST_0_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of vsync_last_i_1 : label is "soft_lutpair2";
begin
  hcounter(9 downto 0) <= \^hcounter\(9 downto 0);
  vcounter(9 downto 0) <= \^vcounter\(9 downto 0);
\blue[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(0),
      O => blue(0)
    );
\blue[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(1),
      O => blue(1)
    );
\blue[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(2),
      O => blue(2)
    );
\blue[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(3),
      O => blue(3)
    );
fsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540000"
    )
        port map (
      I0 => vsync_last,
      I1 => \^vcounter\(9),
      I2 => fsync_i_2_n_0,
      I3 => vsync_INST_0_i_1_n_0,
      I4 => aresetn,
      O => fsync_i_1_n_0
    );
fsync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^vcounter\(2),
      I1 => \^vcounter\(1),
      I2 => \^vcounter\(4),
      I3 => \^vcounter\(3),
      O => fsync_i_2_n_0
    );
fsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => fsync_i_1_n_0,
      Q => fsync,
      R => '0'
    );
\green[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(4),
      O => green(0)
    );
\green[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(5),
      O => green(1)
    );
\green[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(6),
      O => green(2)
    );
\green[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(7),
      O => green(3)
    );
\hc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hcounter\(0),
      O => p_0_in(0)
    );
\hc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^hcounter\(0),
      I1 => \^hcounter\(1),
      O => p_0_in(1)
    );
\hc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^hcounter\(1),
      I1 => \^hcounter\(0),
      I2 => \^hcounter\(2),
      O => p_0_in(2)
    );
\hc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^hcounter\(2),
      I1 => \^hcounter\(0),
      I2 => \^hcounter\(1),
      I3 => \^hcounter\(3),
      O => p_0_in(3)
    );
\hc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^hcounter\(3),
      I1 => \^hcounter\(1),
      I2 => \^hcounter\(0),
      I3 => \^hcounter\(2),
      I4 => \^hcounter\(4),
      O => p_0_in(4)
    );
\hc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^hcounter\(4),
      I1 => \^hcounter\(2),
      I2 => \^hcounter\(0),
      I3 => \^hcounter\(1),
      I4 => \^hcounter\(3),
      I5 => \^hcounter\(5),
      O => p_0_in(5)
    );
\hc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^hcounter\(5),
      I1 => \^hcounter\(3),
      I2 => \hc[7]_i_2_n_0\,
      I3 => \^hcounter\(4),
      I4 => \^hcounter\(6),
      O => p_0_in(6)
    );
\hc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^hcounter\(6),
      I1 => \^hcounter\(4),
      I2 => \hc[7]_i_2_n_0\,
      I3 => \^hcounter\(3),
      I4 => \^hcounter\(5),
      I5 => \^hcounter\(7),
      O => p_0_in(7)
    );
\hc[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^hcounter\(1),
      I1 => \^hcounter\(0),
      I2 => \^hcounter\(2),
      O => \hc[7]_i_2_n_0\
    );
\hc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^hcounter\(7),
      I1 => \hc[9]_i_5_n_0\,
      I2 => \^hcounter\(6),
      I3 => \^hcounter\(8),
      O => p_0_in(8)
    );
\hc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FFFFFFFF"
    )
        port map (
      I0 => \hc[9]_i_3_n_0\,
      I1 => \^hcounter\(7),
      I2 => \hc[9]_i_4_n_0\,
      I3 => \^hcounter\(8),
      I4 => \^hcounter\(9),
      I5 => aresetn,
      O => \hc[9]_i_1_n_0\
    );
\hc[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^hcounter\(8),
      I1 => \^hcounter\(6),
      I2 => \hc[9]_i_5_n_0\,
      I3 => \^hcounter\(7),
      I4 => \^hcounter\(9),
      O => p_0_in(9)
    );
\hc[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^hcounter\(4),
      I1 => \^hcounter\(3),
      I2 => \^hcounter\(2),
      I3 => \^hcounter\(0),
      I4 => \^hcounter\(1),
      O => \hc[9]_i_3_n_0\
    );
\hc[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^hcounter\(5),
      I1 => \^hcounter\(6),
      O => \hc[9]_i_4_n_0\
    );
\hc[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^hcounter\(4),
      I1 => \^hcounter\(2),
      I2 => \^hcounter\(0),
      I3 => \^hcounter\(1),
      I4 => \^hcounter\(3),
      I5 => \^hcounter\(5),
      O => \hc[9]_i_5_n_0\
    );
\hc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(0),
      Q => \^hcounter\(0),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(1),
      Q => \^hcounter\(1),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(2),
      Q => \^hcounter\(2),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(3),
      Q => \^hcounter\(3),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(4),
      Q => \^hcounter\(4),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(5),
      Q => \^hcounter\(5),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(6),
      Q => \^hcounter\(6),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(7),
      Q => \^hcounter\(7),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(8),
      Q => \^hcounter\(8),
      R => \hc[9]_i_1_n_0\
    );
\hc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => p_0_in(9),
      Q => \^hcounter\(9),
      R => \hc[9]_i_1_n_0\
    );
hsync_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \^hcounter\(7),
      I1 => \^hcounter\(5),
      I2 => \^hcounter\(6),
      I3 => \^hcounter\(9),
      I4 => \^hcounter\(8),
      O => hsync
    );
\red[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(8),
      O => red(0)
    );
\red[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(9),
      O => red(1)
    );
\red[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(10),
      O => red(2)
    );
\red[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EA000000000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => \red[3]_INST_0_i_2_n_0\,
      I2 => \^vcounter\(5),
      I3 => \^vcounter\(9),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => tdata(11),
      O => red(3)
    );
\red[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^vcounter\(8),
      I1 => \^vcounter\(7),
      I2 => \^vcounter\(6),
      O => \red[3]_INST_0_i_1_n_0\
    );
\red[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^vcounter\(3),
      I1 => \^vcounter\(4),
      I2 => \^vcounter\(1),
      I3 => \^vcounter\(2),
      I4 => \^vcounter\(0),
      O => \red[3]_INST_0_i_2_n_0\
    );
\red[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557EEEEEEEA"
    )
        port map (
      I0 => \^hcounter\(9),
      I1 => \^hcounter\(7),
      I2 => \^hcounter\(6),
      I3 => \^hcounter\(5),
      I4 => \^hcounter\(4),
      I5 => \^hcounter\(8),
      O => \red[3]_INST_0_i_3_n_0\
    );
tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222008"
    )
        port map (
      I0 => \red[3]_INST_0_i_3_n_0\,
      I1 => \^vcounter\(9),
      I2 => \^vcounter\(5),
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => \red[3]_INST_0_i_1_n_0\,
      O => tready
    );
\vc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vcounter\(0),
      O => \p_0_in__0\(0)
    );
\vc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vcounter\(0),
      I1 => \^vcounter\(1),
      O => \p_0_in__0\(1)
    );
\vc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^vcounter\(1),
      I1 => \^vcounter\(0),
      I2 => \^vcounter\(2),
      O => \p_0_in__0\(2)
    );
\vc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^vcounter\(2),
      I1 => \^vcounter\(0),
      I2 => \^vcounter\(1),
      I3 => \^vcounter\(3),
      O => \p_0_in__0\(3)
    );
\vc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^vcounter\(3),
      I1 => \^vcounter\(1),
      I2 => \^vcounter\(0),
      I3 => \^vcounter\(2),
      I4 => \^vcounter\(4),
      O => \p_0_in__0\(4)
    );
\vc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^vcounter\(4),
      I1 => \^vcounter\(2),
      I2 => \^vcounter\(0),
      I3 => \^vcounter\(1),
      I4 => \^vcounter\(3),
      I5 => \^vcounter\(5),
      O => \p_0_in__0\(5)
    );
\vc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^vcounter\(5),
      I1 => \^vcounter\(3),
      I2 => \vc[6]_i_2_n_0\,
      I3 => \^vcounter\(2),
      I4 => \^vcounter\(4),
      I5 => \^vcounter\(6),
      O => \p_0_in__0\(6)
    );
\vc[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^vcounter\(0),
      I1 => \^vcounter\(1),
      O => \vc[6]_i_2_n_0\
    );
\vc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^vcounter\(6),
      I1 => \vc[9]_i_7_n_0\,
      I2 => \^vcounter\(7),
      O => \p_0_in__0\(7)
    );
\vc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^vcounter\(7),
      I1 => \vc[9]_i_7_n_0\,
      I2 => \^vcounter\(6),
      I3 => \^vcounter\(8),
      O => \p_0_in__0\(8)
    );
\vc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E000FFFFFFFF"
    )
        port map (
      I0 => \vc[9]_i_4_n_0\,
      I1 => vsync_INST_0_i_1_n_0,
      I2 => \vc[9]_i_5_n_0\,
      I3 => \vc[9]_i_6_n_0\,
      I4 => \hc[9]_i_3_n_0\,
      I5 => aresetn,
      O => \vc[9]_i_1_n_0\
    );
\vc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \^hcounter\(9),
      I1 => \^hcounter\(8),
      I2 => \^hcounter\(6),
      I3 => \^hcounter\(5),
      I4 => \^hcounter\(7),
      I5 => \hc[9]_i_3_n_0\,
      O => \vc[9]_i_2_n_0\
    );
\vc[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^vcounter\(8),
      I1 => \^vcounter\(6),
      I2 => \vc[9]_i_7_n_0\,
      I3 => \^vcounter\(7),
      I4 => \^vcounter\(9),
      O => \p_0_in__0\(9)
    );
\vc[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA888"
    )
        port map (
      I0 => \^vcounter\(3),
      I1 => \^vcounter\(2),
      I2 => \^vcounter\(1),
      I3 => \^vcounter\(0),
      I4 => \^vcounter\(4),
      O => \vc[9]_i_4_n_0\
    );
\vc[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^hcounter\(9),
      I1 => \^hcounter\(8),
      I2 => \^vcounter\(9),
      O => \vc[9]_i_5_n_0\
    );
\vc[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^hcounter\(6),
      I1 => \^hcounter\(5),
      I2 => \^hcounter\(7),
      O => \vc[9]_i_6_n_0\
    );
\vc[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^vcounter\(4),
      I1 => \^vcounter\(2),
      I2 => \^vcounter\(0),
      I3 => \^vcounter\(1),
      I4 => \^vcounter\(3),
      I5 => \^vcounter\(5),
      O => \vc[9]_i_7_n_0\
    );
\vc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => \^vcounter\(0),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \^vcounter\(1),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => \^vcounter\(2),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => \^vcounter\(3),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(4),
      Q => \^vcounter\(4),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => \^vcounter\(5),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(6),
      Q => \^vcounter\(6),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(7),
      Q => \^vcounter\(7),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(8),
      Q => \^vcounter\(8),
      R => \vc[9]_i_1_n_0\
    );
\vc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => \vc[9]_i_2_n_0\,
      D => \p_0_in__0\(9),
      Q => \^vcounter\(9),
      R => \vc[9]_i_1_n_0\
    );
vsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^vcounter\(9),
      I1 => \^vcounter\(2),
      I2 => \^vcounter\(1),
      I3 => \^vcounter\(4),
      I4 => \^vcounter\(3),
      I5 => vsync_INST_0_i_1_n_0,
      O => vsync
    );
vsync_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^vcounter\(6),
      I1 => \^vcounter\(7),
      I2 => \^vcounter\(8),
      I3 => \^vcounter\(5),
      O => vsync_INST_0_i_1_n_0
    );
vsync_last_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => fsync_i_2_n_0,
      I2 => \^vcounter\(9),
      I3 => aresetn,
      O => vsync_last_i_1_n_0
    );
vsync_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => '1',
      D => vsync_last_i_1_n_0,
      Q => vsync_last,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_stream_to_vga_0_0 is
  port (
    clk25 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid : in STD_LOGIC;
    tready : out STD_LOGIC;
    fsync : out STD_LOGIC;
    hcounter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vcounter : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_stream_to_vga_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_stream_to_vga_0_0 : entity is "system_stream_to_vga_0_0,vga640x480,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_stream_to_vga_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_stream_to_vga_0_0 : entity is "vga640x480,Vivado 2019.1";
end system_stream_to_vga_0_0;

architecture STRUCTURE of system_stream_to_vga_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk25 : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk25 : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF rgb_in, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tready : signal is "xilinx.com:interface:axis:1.0 rgb_in TREADY";
  attribute X_INTERFACE_PARAMETER of tready : signal is "XIL_INTERFACENAME rgb_in, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tvalid : signal is "xilinx.com:interface:axis:1.0 rgb_in TVALID";
  attribute X_INTERFACE_INFO of tdata : signal is "xilinx.com:interface:axis:1.0 rgb_in TDATA";
begin
inst: entity work.system_stream_to_vga_0_0_vga640x480
     port map (
      aresetn => aresetn,
      blue(3 downto 0) => blue(3 downto 0),
      clk25 => clk25,
      fsync => fsync,
      green(3 downto 0) => green(3 downto 0),
      hcounter(9 downto 0) => hcounter(9 downto 0),
      hsync => hsync,
      red(3 downto 0) => red(3 downto 0),
      tdata(11 downto 8) => tdata(15 downto 12),
      tdata(7 downto 4) => tdata(10 downto 7),
      tdata(3 downto 0) => tdata(4 downto 1),
      tready => tready,
      vcounter(9 downto 0) => vcounter(9 downto 0),
      vsync => vsync
    );
end STRUCTURE;
