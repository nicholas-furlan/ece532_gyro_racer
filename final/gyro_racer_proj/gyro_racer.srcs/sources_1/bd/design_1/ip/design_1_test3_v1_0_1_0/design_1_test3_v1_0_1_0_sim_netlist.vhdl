-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar 31 05:23:38 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_test3_v1_0_1_0/design_1_test3_v1_0_1_0_sim_netlist.vhdl
-- Design      : design_1_test3_v1_0_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_test3_v1_0_1_0_axes is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \integrate_x_reg[43]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \integrate_z_reg[43]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \integrate_y_reg[43]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    angular_rate_z : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angle_reset : in STD_LOGIC;
    \slv_reg1_reg[0]\ : in STD_LOGIC;
    \slv_reg1_reg[0]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    system_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_test3_v1_0_1_0_axes : entity is "axes";
end design_1_test3_v1_0_1_0_axes;

architecture STRUCTURE of design_1_test3_v1_0_1_0_axes is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ad_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ad_x0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ad_x0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__0_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__0_n_1\ : STD_LOGIC;
  signal \ad_x0_carry__0_n_2\ : STD_LOGIC;
  signal \ad_x0_carry__0_n_3\ : STD_LOGIC;
  signal \ad_x0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__1_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__1_n_1\ : STD_LOGIC;
  signal \ad_x0_carry__1_n_2\ : STD_LOGIC;
  signal \ad_x0_carry__1_n_3\ : STD_LOGIC;
  signal \ad_x0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ad_x0_carry__2_n_1\ : STD_LOGIC;
  signal \ad_x0_carry__2_n_2\ : STD_LOGIC;
  signal \ad_x0_carry__2_n_3\ : STD_LOGIC;
  signal ad_x0_carry_i_1_n_0 : STD_LOGIC;
  signal ad_x0_carry_i_2_n_0 : STD_LOGIC;
  signal ad_x0_carry_i_3_n_0 : STD_LOGIC;
  signal ad_x0_carry_i_4_n_0 : STD_LOGIC;
  signal ad_x0_carry_n_0 : STD_LOGIC;
  signal ad_x0_carry_n_1 : STD_LOGIC;
  signal ad_x0_carry_n_2 : STD_LOGIC;
  signal ad_x0_carry_n_3 : STD_LOGIC;
  signal ad_x2 : STD_LOGIC;
  signal ad_x22_in : STD_LOGIC;
  signal \ad_x2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \ad_x2_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \ad_x2_carry__0_n_1\ : STD_LOGIC;
  signal \ad_x2_carry__0_n_2\ : STD_LOGIC;
  signal \ad_x2_carry__0_n_3\ : STD_LOGIC;
  signal ad_x2_carry_i_10_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_10_n_1 : STD_LOGIC;
  signal ad_x2_carry_i_10_n_2 : STD_LOGIC;
  signal ad_x2_carry_i_10_n_3 : STD_LOGIC;
  signal ad_x2_carry_i_10_n_7 : STD_LOGIC;
  signal ad_x2_carry_i_11_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_12_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_13_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_14_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_15_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_16_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_17_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_18_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_19_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_1_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_2_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_3_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_4_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_5_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_6_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_7_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_8_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_9_n_0 : STD_LOGIC;
  signal ad_x2_carry_i_9_n_1 : STD_LOGIC;
  signal ad_x2_carry_i_9_n_2 : STD_LOGIC;
  signal ad_x2_carry_i_9_n_3 : STD_LOGIC;
  signal ad_x2_carry_n_0 : STD_LOGIC;
  signal ad_x2_carry_n_1 : STD_LOGIC;
  signal ad_x2_carry_n_2 : STD_LOGIC;
  signal ad_x2_carry_n_3 : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ad_x2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal ad_x3 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \ad_x[15]_i_1_n_0\ : STD_LOGIC;
  signal ad_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ad_y0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ad_y0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__0_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__0_n_1\ : STD_LOGIC;
  signal \ad_y0_carry__0_n_2\ : STD_LOGIC;
  signal \ad_y0_carry__0_n_3\ : STD_LOGIC;
  signal \ad_y0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__1_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__1_n_1\ : STD_LOGIC;
  signal \ad_y0_carry__1_n_2\ : STD_LOGIC;
  signal \ad_y0_carry__1_n_3\ : STD_LOGIC;
  signal \ad_y0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ad_y0_carry__2_n_1\ : STD_LOGIC;
  signal \ad_y0_carry__2_n_2\ : STD_LOGIC;
  signal \ad_y0_carry__2_n_3\ : STD_LOGIC;
  signal ad_y0_carry_i_1_n_0 : STD_LOGIC;
  signal ad_y0_carry_i_2_n_0 : STD_LOGIC;
  signal ad_y0_carry_i_3_n_0 : STD_LOGIC;
  signal ad_y0_carry_i_4_n_0 : STD_LOGIC;
  signal ad_y0_carry_n_0 : STD_LOGIC;
  signal ad_y0_carry_n_1 : STD_LOGIC;
  signal ad_y0_carry_n_2 : STD_LOGIC;
  signal ad_y0_carry_n_3 : STD_LOGIC;
  signal ad_y2 : STD_LOGIC;
  signal ad_y21_in : STD_LOGIC;
  signal \ad_y2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \ad_y2_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \ad_y2_carry__0_n_1\ : STD_LOGIC;
  signal \ad_y2_carry__0_n_2\ : STD_LOGIC;
  signal \ad_y2_carry__0_n_3\ : STD_LOGIC;
  signal ad_y2_carry_i_10_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_10_n_1 : STD_LOGIC;
  signal ad_y2_carry_i_10_n_2 : STD_LOGIC;
  signal ad_y2_carry_i_10_n_3 : STD_LOGIC;
  signal ad_y2_carry_i_10_n_7 : STD_LOGIC;
  signal ad_y2_carry_i_11_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_12_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_13_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_14_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_15_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_16_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_17_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_18_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_19_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_1_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_2_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_3_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_4_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_5_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_6_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_7_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_8_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_9_n_0 : STD_LOGIC;
  signal ad_y2_carry_i_9_n_1 : STD_LOGIC;
  signal ad_y2_carry_i_9_n_2 : STD_LOGIC;
  signal ad_y2_carry_i_9_n_3 : STD_LOGIC;
  signal ad_y2_carry_n_0 : STD_LOGIC;
  signal ad_y2_carry_n_1 : STD_LOGIC;
  signal ad_y2_carry_n_2 : STD_LOGIC;
  signal ad_y2_carry_n_3 : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ad_y2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal ad_y3 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \ad_y[15]_i_1_n_0\ : STD_LOGIC;
  signal ad_z : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ad_z0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ad_z0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__0_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__0_n_1\ : STD_LOGIC;
  signal \ad_z0_carry__0_n_2\ : STD_LOGIC;
  signal \ad_z0_carry__0_n_3\ : STD_LOGIC;
  signal \ad_z0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__1_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__1_n_1\ : STD_LOGIC;
  signal \ad_z0_carry__1_n_2\ : STD_LOGIC;
  signal \ad_z0_carry__1_n_3\ : STD_LOGIC;
  signal \ad_z0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ad_z0_carry__2_n_1\ : STD_LOGIC;
  signal \ad_z0_carry__2_n_2\ : STD_LOGIC;
  signal \ad_z0_carry__2_n_3\ : STD_LOGIC;
  signal ad_z0_carry_i_1_n_0 : STD_LOGIC;
  signal ad_z0_carry_i_2_n_0 : STD_LOGIC;
  signal ad_z0_carry_i_3_n_0 : STD_LOGIC;
  signal ad_z0_carry_i_4_n_0 : STD_LOGIC;
  signal ad_z0_carry_n_0 : STD_LOGIC;
  signal ad_z0_carry_n_1 : STD_LOGIC;
  signal ad_z0_carry_n_2 : STD_LOGIC;
  signal ad_z0_carry_n_3 : STD_LOGIC;
  signal ad_z2 : STD_LOGIC;
  signal ad_z20_in : STD_LOGIC;
  signal \ad_z2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \ad_z2_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \ad_z2_carry__0_n_1\ : STD_LOGIC;
  signal \ad_z2_carry__0_n_2\ : STD_LOGIC;
  signal \ad_z2_carry__0_n_3\ : STD_LOGIC;
  signal ad_z2_carry_i_10_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_10_n_1 : STD_LOGIC;
  signal ad_z2_carry_i_10_n_2 : STD_LOGIC;
  signal ad_z2_carry_i_10_n_3 : STD_LOGIC;
  signal ad_z2_carry_i_10_n_7 : STD_LOGIC;
  signal ad_z2_carry_i_11_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_12_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_13_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_14_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_15_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_16_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_17_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_18_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_19_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_1_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_2_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_3_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_4_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_5_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_6_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_7_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_8_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_9_n_0 : STD_LOGIC;
  signal ad_z2_carry_i_9_n_1 : STD_LOGIC;
  signal ad_z2_carry_i_9_n_2 : STD_LOGIC;
  signal ad_z2_carry_i_9_n_3 : STD_LOGIC;
  signal ad_z2_carry_n_0 : STD_LOGIC;
  signal ad_z2_carry_n_1 : STD_LOGIC;
  signal ad_z2_carry_n_2 : STD_LOGIC;
  signal ad_z2_carry_n_3 : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ad_z2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal ad_z3 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \ad_z[15]_i_1_n_0\ : STD_LOGIC;
  signal \ad_z[15]_i_2_n_0\ : STD_LOGIC;
  signal avg_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \avg_x[15]_i_3_n_0\ : STD_LOGIC;
  signal avg_x_0 : STD_LOGIC;
  signal avg_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal avg_z : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \calibrate_timer[7]_i_1_n_0\ : STD_LOGIC;
  signal \calibrate_timer[7]_i_3_n_0\ : STD_LOGIC;
  signal \calibrate_timer_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_10__0_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_10__1_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_17__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_17__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9__0_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_9__0_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_9__0_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_9__0_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_9__0_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_9__1_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_9__1_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_9__1_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_9__1_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_9__1_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_7\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_4\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_5\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_6\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_1\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_2\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_3\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_4\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_5\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_6\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_1\ : STD_LOGIC;
  signal \i__carry_i_10_n_2\ : STD_LOGIC;
  signal \i__carry_i_10_n_3\ : STD_LOGIC;
  signal \i__carry_i_10_n_4\ : STD_LOGIC;
  signal \i__carry_i_10_n_5\ : STD_LOGIC;
  signal \i__carry_i_10_n_6\ : STD_LOGIC;
  signal \i__carry_i_11__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_15__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_16__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_17__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_18__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_4\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_5\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_6\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_7\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_1\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_2\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_3\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_4\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_5\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_6\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_7\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_1\ : STD_LOGIC;
  signal \i__carry_i_9_n_2\ : STD_LOGIC;
  signal \i__carry_i_9_n_3\ : STD_LOGIC;
  signal \i__carry_i_9_n_4\ : STD_LOGIC;
  signal \i__carry_i_9_n_5\ : STD_LOGIC;
  signal \i__carry_i_9_n_6\ : STD_LOGIC;
  signal \i__carry_i_9_n_7\ : STD_LOGIC;
  signal \integrate_x[0]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[0]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[0]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[0]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[12]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[12]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[12]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[12]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[16]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[16]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[16]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[16]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[20]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[20]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[20]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[20]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[24]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[24]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[24]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[24]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[28]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[28]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[28]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[28]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[32]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[32]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[32]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[32]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[36]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[36]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[36]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[36]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[40]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[40]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[40]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[40]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[4]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[4]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[4]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[4]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_x[8]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_x[8]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_x[8]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_x[8]_i_5_n_0\ : STD_LOGIC;
  signal integrate_x_reg : STD_LOGIC_VECTOR ( 43 downto 28 );
  signal \integrate_x_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_x_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[10]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[11]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[12]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[13]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[14]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[15]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[16]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[17]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[18]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[19]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[20]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[21]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[22]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[23]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[24]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[25]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[26]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[27]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[6]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[7]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[8]\ : STD_LOGIC;
  signal \integrate_x_reg_n_0_[9]\ : STD_LOGIC;
  signal \integrate_y[0]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[0]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[0]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[0]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[12]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[12]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[12]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[12]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[16]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[16]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[16]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[16]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[20]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[20]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[20]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[20]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[24]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[24]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[24]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[24]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[28]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[28]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[28]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[28]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[32]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[32]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[32]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[32]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[36]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[36]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[36]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[36]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[40]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[40]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[40]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[40]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[4]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[4]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[4]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_y[8]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_y[8]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_y[8]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_y[8]_i_5_n_0\ : STD_LOGIC;
  signal integrate_y_reg : STD_LOGIC_VECTOR ( 43 downto 28 );
  signal \integrate_y_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_y_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[10]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[11]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[12]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[13]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[14]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[15]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[16]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[17]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[18]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[19]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[20]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[21]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[22]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[23]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[24]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[25]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[26]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[27]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[8]\ : STD_LOGIC;
  signal \integrate_y_reg_n_0_[9]\ : STD_LOGIC;
  signal integrate_z : STD_LOGIC;
  signal \integrate_z[0]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[0]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[0]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[0]_i_6_n_0\ : STD_LOGIC;
  signal \integrate_z[0]_i_7_n_0\ : STD_LOGIC;
  signal \integrate_z[12]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[12]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[12]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[12]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[16]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[16]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[16]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[16]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[20]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[20]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[20]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[20]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[24]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[24]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[24]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[24]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[28]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[28]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[28]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[28]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[32]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[32]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[32]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[32]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[36]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[36]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[36]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[36]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[40]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[40]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[40]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[40]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[4]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[4]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[4]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[4]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z[8]_i_2_n_0\ : STD_LOGIC;
  signal \integrate_z[8]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z[8]_i_4_n_0\ : STD_LOGIC;
  signal \integrate_z[8]_i_5_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \integrate_z_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[0]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[10]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[11]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[12]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[13]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[14]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[15]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[16]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[17]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[18]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[19]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[1]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[20]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[21]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[22]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[23]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[24]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[25]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[26]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[27]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[2]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[3]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[4]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[5]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[6]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[7]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[8]\ : STD_LOGIC;
  signal \integrate_z_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sum_x : STD_LOGIC;
  signal \sum_x[0]_i_3_n_0\ : STD_LOGIC;
  signal \sum_x[0]_i_4_n_0\ : STD_LOGIC;
  signal \sum_x[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum_x[0]_i_6_n_0\ : STD_LOGIC;
  signal \sum_x[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum_x[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum_x[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum_x[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum_x[4]_i_2_n_0\ : STD_LOGIC;
  signal \sum_x[4]_i_3_n_0\ : STD_LOGIC;
  signal \sum_x[4]_i_4_n_0\ : STD_LOGIC;
  signal \sum_x[4]_i_5_n_0\ : STD_LOGIC;
  signal \sum_x[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum_x[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum_x[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum_x[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sum_x_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sum_x_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_x_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sum_x_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sum_x_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_x_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_x_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_y[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_y[0]_i_3_n_0\ : STD_LOGIC;
  signal \sum_y[0]_i_4_n_0\ : STD_LOGIC;
  signal \sum_y[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum_y[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum_y[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum_y[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum_y[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \sum_y[4]_i_3_n_0\ : STD_LOGIC;
  signal \sum_y[4]_i_4_n_0\ : STD_LOGIC;
  signal \sum_y[4]_i_5_n_0\ : STD_LOGIC;
  signal \sum_y[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum_y[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum_y[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum_y[8]_i_5_n_0\ : STD_LOGIC;
  signal sum_y_reg : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal \sum_y_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_y_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_z[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_z[0]_i_3_n_0\ : STD_LOGIC;
  signal \sum_z[0]_i_4_n_0\ : STD_LOGIC;
  signal \sum_z[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum_z[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum_z[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum_z[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum_z[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum_z[4]_i_2_n_0\ : STD_LOGIC;
  signal \sum_z[4]_i_3_n_0\ : STD_LOGIC;
  signal \sum_z[4]_i_4_n_0\ : STD_LOGIC;
  signal \sum_z[4]_i_5_n_0\ : STD_LOGIC;
  signal \sum_z[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum_z[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum_z[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum_z[8]_i_5_n_0\ : STD_LOGIC;
  signal sum_z_reg : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal \sum_z_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_z_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_z_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_ad_x0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ad_x2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_x2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_x2_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ad_x2_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ad_x2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_x2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_y0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ad_y2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_y2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_y2_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ad_y2_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ad_y2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_y2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_z0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ad_z2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_z2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_z2_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ad_z2_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ad_z2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ad_z2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__0_i_9__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__0_i_9__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__0_i_9__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__0_i_9__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_i__carry_i_10__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_i__carry_i_10__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_integrate_x_reg[40]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_integrate_y_reg[40]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_integrate_z_reg[40]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_x_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_y_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_z_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \avg_x[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \calibrate_timer[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \calibrate_timer[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \calibrate_timer[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \calibrate_timer[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \calibrate_timer[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \calibrate_timer[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \calibrate_timer[7]_i_2\ : label is "soft_lutpair2";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
ad_x0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_x0_carry_n_0,
      CO(2) => ad_x0_carry_n_1,
      CO(1) => ad_x0_carry_n_2,
      CO(0) => ad_x0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => angular_rate_x(3 downto 0),
      O(3 downto 0) => ad_x0(3 downto 0),
      S(3) => ad_x0_carry_i_1_n_0,
      S(2) => ad_x0_carry_i_2_n_0,
      S(1) => ad_x0_carry_i_3_n_0,
      S(0) => ad_x0_carry_i_4_n_0
    );
\ad_x0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_x0_carry_n_0,
      CO(3) => \ad_x0_carry__0_n_0\,
      CO(2) => \ad_x0_carry__0_n_1\,
      CO(1) => \ad_x0_carry__0_n_2\,
      CO(0) => \ad_x0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(7 downto 4),
      O(3 downto 0) => ad_x0(7 downto 4),
      S(3) => \ad_x0_carry__0_i_1_n_0\,
      S(2) => \ad_x0_carry__0_i_2_n_0\,
      S(1) => \ad_x0_carry__0_i_3_n_0\,
      S(0) => \ad_x0_carry__0_i_4_n_0\
    );
\ad_x0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(7),
      I1 => avg_x(7),
      O => \ad_x0_carry__0_i_1_n_0\
    );
\ad_x0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(6),
      I1 => avg_x(6),
      O => \ad_x0_carry__0_i_2_n_0\
    );
\ad_x0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(5),
      I1 => avg_x(5),
      O => \ad_x0_carry__0_i_3_n_0\
    );
\ad_x0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(4),
      I1 => avg_x(4),
      O => \ad_x0_carry__0_i_4_n_0\
    );
\ad_x0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_x0_carry__0_n_0\,
      CO(3) => \ad_x0_carry__1_n_0\,
      CO(2) => \ad_x0_carry__1_n_1\,
      CO(1) => \ad_x0_carry__1_n_2\,
      CO(0) => \ad_x0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(11 downto 8),
      O(3 downto 0) => ad_x0(11 downto 8),
      S(3) => \ad_x0_carry__1_i_1_n_0\,
      S(2) => \ad_x0_carry__1_i_2_n_0\,
      S(1) => \ad_x0_carry__1_i_3_n_0\,
      S(0) => \ad_x0_carry__1_i_4_n_0\
    );
\ad_x0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(11),
      I1 => avg_x(11),
      O => \ad_x0_carry__1_i_1_n_0\
    );
\ad_x0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(10),
      I1 => avg_x(10),
      O => \ad_x0_carry__1_i_2_n_0\
    );
\ad_x0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(9),
      I1 => avg_x(9),
      O => \ad_x0_carry__1_i_3_n_0\
    );
\ad_x0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(8),
      I1 => avg_x(8),
      O => \ad_x0_carry__1_i_4_n_0\
    );
\ad_x0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_x0_carry__1_n_0\,
      CO(3) => \NLW_ad_x0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ad_x0_carry__2_n_1\,
      CO(1) => \ad_x0_carry__2_n_2\,
      CO(0) => \ad_x0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => angular_rate_x(14 downto 12),
      O(3 downto 0) => ad_x0(15 downto 12),
      S(3) => \ad_x0_carry__2_i_1_n_0\,
      S(2) => \ad_x0_carry__2_i_2_n_0\,
      S(1) => \ad_x0_carry__2_i_3_n_0\,
      S(0) => \ad_x0_carry__2_i_4_n_0\
    );
\ad_x0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(15),
      I1 => avg_x(15),
      O => \ad_x0_carry__2_i_1_n_0\
    );
\ad_x0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(14),
      I1 => avg_x(14),
      O => \ad_x0_carry__2_i_2_n_0\
    );
\ad_x0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(13),
      I1 => avg_x(13),
      O => \ad_x0_carry__2_i_3_n_0\
    );
\ad_x0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(12),
      I1 => avg_x(12),
      O => \ad_x0_carry__2_i_4_n_0\
    );
ad_x0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(3),
      I1 => avg_x(3),
      O => ad_x0_carry_i_1_n_0
    );
ad_x0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(2),
      I1 => avg_x(2),
      O => ad_x0_carry_i_2_n_0
    );
ad_x0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(1),
      I1 => avg_x(1),
      O => ad_x0_carry_i_3_n_0
    );
ad_x0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_x(0),
      I1 => avg_x(0),
      O => ad_x0_carry_i_4_n_0
    );
ad_x2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_x2_carry_n_0,
      CO(2) => ad_x2_carry_n_1,
      CO(1) => ad_x2_carry_n_2,
      CO(0) => ad_x2_carry_n_3,
      CYINIT => '0',
      DI(3) => ad_x2_carry_i_1_n_0,
      DI(2) => ad_x2_carry_i_2_n_0,
      DI(1) => ad_x2_carry_i_3_n_0,
      DI(0) => ad_x2_carry_i_4_n_0,
      O(3 downto 0) => NLW_ad_x2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ad_x2_carry_i_5_n_0,
      S(2) => ad_x2_carry_i_6_n_0,
      S(1) => ad_x2_carry_i_7_n_0,
      S(0) => ad_x2_carry_i_8_n_0
    );
\ad_x2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_x2_carry_n_0,
      CO(3) => ad_x2,
      CO(2) => \ad_x2_carry__0_n_1\,
      CO(1) => \ad_x2_carry__0_n_2\,
      CO(0) => \ad_x2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ad_x2_carry__0_i_1_n_0\,
      DI(2) => \ad_x2_carry__0_i_2_n_0\,
      DI(1) => \ad_x2_carry__0_i_3_n_0\,
      DI(0) => \ad_x2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_x2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_x2_carry__0_i_5_n_0\,
      S(2) => \ad_x2_carry__0_i_6_n_0\,
      S(1) => \ad_x2_carry__0_i_7_n_0\,
      S(0) => \ad_x2_carry__0_i_8_n_0\
    );
\ad_x2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(15),
      I1 => angular_rate_x(15),
      I2 => ad_x3(14),
      I3 => angular_rate_x(14),
      O => \ad_x2_carry__0_i_1_n_0\
    );
\ad_x2_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_x2_carry_i_9_n_0,
      CO(3) => \ad_x2_carry__0_i_10_n_0\,
      CO(2) => \ad_x2_carry__0_i_10_n_1\,
      CO(1) => \ad_x2_carry__0_i_10_n_2\,
      CO(0) => \ad_x2_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \ad_x2_carry__0_i_13_n_0\,
      DI(2) => \ad_x2_carry__0_i_14_n_0\,
      DI(1) => \ad_x2_carry__0_i_15_n_0\,
      DI(0) => \ad_x2_carry__0_i_16_n_0\,
      O(3 downto 0) => ad_x3(12 downto 9),
      S(3 downto 0) => avg_x(12 downto 9)
    );
\ad_x2_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(14),
      O => \ad_x2_carry__0_i_11_n_0\
    );
\ad_x2_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(13),
      O => \ad_x2_carry__0_i_12_n_0\
    );
\ad_x2_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(12),
      O => \ad_x2_carry__0_i_13_n_0\
    );
\ad_x2_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(11),
      O => \ad_x2_carry__0_i_14_n_0\
    );
\ad_x2_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(10),
      O => \ad_x2_carry__0_i_15_n_0\
    );
\ad_x2_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(9),
      O => \ad_x2_carry__0_i_16_n_0\
    );
\ad_x2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(13),
      I1 => angular_rate_x(13),
      I2 => ad_x3(12),
      I3 => angular_rate_x(12),
      O => \ad_x2_carry__0_i_2_n_0\
    );
\ad_x2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(11),
      I1 => angular_rate_x(11),
      I2 => ad_x3(10),
      I3 => angular_rate_x(10),
      O => \ad_x2_carry__0_i_3_n_0\
    );
\ad_x2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(9),
      I1 => angular_rate_x(9),
      I2 => ad_x3(8),
      I3 => angular_rate_x(8),
      O => \ad_x2_carry__0_i_4_n_0\
    );
\ad_x2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(15),
      I1 => angular_rate_x(15),
      I2 => ad_x3(14),
      I3 => angular_rate_x(14),
      O => \ad_x2_carry__0_i_5_n_0\
    );
\ad_x2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(13),
      I1 => angular_rate_x(13),
      I2 => ad_x3(12),
      I3 => angular_rate_x(12),
      O => \ad_x2_carry__0_i_6_n_0\
    );
\ad_x2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(11),
      I1 => angular_rate_x(11),
      I2 => ad_x3(10),
      I3 => angular_rate_x(10),
      O => \ad_x2_carry__0_i_7_n_0\
    );
\ad_x2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(9),
      I1 => angular_rate_x(9),
      I2 => ad_x3(8),
      I3 => angular_rate_x(8),
      O => \ad_x2_carry__0_i_8_n_0\
    );
\ad_x2_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_x2_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_ad_x2_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ad_x2_carry__0_i_9_n_2\,
      CO(0) => \ad_x2_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ad_x2_carry__0_i_11_n_0\,
      DI(0) => \ad_x2_carry__0_i_12_n_0\,
      O(3) => \NLW_ad_x2_carry__0_i_9_O_UNCONNECTED\(3),
      O(2 downto 0) => ad_x3(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => avg_x(15 downto 13)
    );
ad_x2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(7),
      I1 => angular_rate_x(7),
      I2 => ad_x3(6),
      I3 => angular_rate_x(6),
      O => ad_x2_carry_i_1_n_0
    );
ad_x2_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_x2_carry_i_10_n_0,
      CO(2) => ad_x2_carry_i_10_n_1,
      CO(1) => ad_x2_carry_i_10_n_2,
      CO(0) => ad_x2_carry_i_10_n_3,
      CYINIT => ad_x2_carry_i_15_n_0,
      DI(3) => ad_x2_carry_i_16_n_0,
      DI(2) => ad_x2_carry_i_17_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 1) => ad_x3(4 downto 2),
      O(0) => ad_x2_carry_i_10_n_7,
      S(3 downto 2) => avg_x(4 downto 3),
      S(1) => ad_x2_carry_i_18_n_0,
      S(0) => ad_x2_carry_i_19_n_0
    );
ad_x2_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(8),
      O => ad_x2_carry_i_11_n_0
    );
ad_x2_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(5),
      O => ad_x2_carry_i_12_n_0
    );
ad_x2_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(7),
      O => ad_x2_carry_i_13_n_0
    );
ad_x2_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(6),
      O => ad_x2_carry_i_14_n_0
    );
ad_x2_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(0),
      O => ad_x2_carry_i_15_n_0
    );
ad_x2_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(4),
      O => ad_x2_carry_i_16_n_0
    );
ad_x2_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(3),
      O => ad_x2_carry_i_17_n_0
    );
ad_x2_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(2),
      O => ad_x2_carry_i_18_n_0
    );
ad_x2_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(1),
      O => ad_x2_carry_i_19_n_0
    );
ad_x2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(5),
      I1 => angular_rate_x(5),
      I2 => ad_x3(4),
      I3 => angular_rate_x(4),
      O => ad_x2_carry_i_2_n_0
    );
ad_x2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_x3(3),
      I1 => angular_rate_x(3),
      I2 => ad_x3(2),
      I3 => angular_rate_x(2),
      O => ad_x2_carry_i_3_n_0
    );
ad_x2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"064E"
    )
        port map (
      I0 => avg_x(1),
      I1 => avg_x(0),
      I2 => angular_rate_x(1),
      I3 => angular_rate_x(0),
      O => ad_x2_carry_i_4_n_0
    );
ad_x2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(7),
      I1 => angular_rate_x(7),
      I2 => ad_x3(6),
      I3 => angular_rate_x(6),
      O => ad_x2_carry_i_5_n_0
    );
ad_x2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(5),
      I1 => angular_rate_x(5),
      I2 => ad_x3(4),
      I3 => angular_rate_x(4),
      O => ad_x2_carry_i_6_n_0
    );
ad_x2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_x3(3),
      I1 => angular_rate_x(3),
      I2 => ad_x3(2),
      I3 => angular_rate_x(2),
      O => ad_x2_carry_i_7_n_0
    );
ad_x2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => angular_rate_x(0),
      I1 => avg_x(0),
      I2 => avg_x(1),
      I3 => angular_rate_x(1),
      O => ad_x2_carry_i_8_n_0
    );
ad_x2_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => ad_x2_carry_i_10_n_0,
      CO(3) => ad_x2_carry_i_9_n_0,
      CO(2) => ad_x2_carry_i_9_n_1,
      CO(1) => ad_x2_carry_i_9_n_2,
      CO(0) => ad_x2_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => ad_x2_carry_i_11_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => ad_x2_carry_i_12_n_0,
      O(3 downto 0) => ad_x3(8 downto 5),
      S(3) => avg_x(8),
      S(2) => ad_x2_carry_i_13_n_0,
      S(1) => ad_x2_carry_i_14_n_0,
      S(0) => avg_x(5)
    );
\ad_x2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ad_x2_inferred__0/i__carry_n_0\,
      CO(2) => \ad_x2_inferred__0/i__carry_n_1\,
      CO(1) => \ad_x2_inferred__0/i__carry_n_2\,
      CO(0) => \ad_x2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_x2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\ad_x2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_x2_inferred__0/i__carry_n_0\,
      CO(3) => ad_x22_in,
      CO(2) => \ad_x2_inferred__0/i__carry__0_n_1\,
      CO(1) => \ad_x2_inferred__0/i__carry__0_n_2\,
      CO(0) => \ad_x2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_x2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\ad_x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => ad_x22_in,
      I1 => ad_x2,
      I2 => \ad_z[15]_i_2_n_0\,
      O => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(0),
      Q => ad_x(0),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(10),
      Q => ad_x(10),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(11),
      Q => ad_x(11),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(12),
      Q => ad_x(12),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(13),
      Q => ad_x(13),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(14),
      Q => ad_x(14),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(15),
      Q => ad_x(15),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(1),
      Q => ad_x(1),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(2),
      Q => ad_x(2),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(3),
      Q => ad_x(3),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(4),
      Q => ad_x(4),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(5),
      Q => ad_x(5),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(6),
      Q => ad_x(6),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(7),
      Q => ad_x(7),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(8),
      Q => ad_x(8),
      R => \ad_x[15]_i_1_n_0\
    );
\ad_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_x0(9),
      Q => ad_x(9),
      R => \ad_x[15]_i_1_n_0\
    );
ad_y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_y0_carry_n_0,
      CO(2) => ad_y0_carry_n_1,
      CO(1) => ad_y0_carry_n_2,
      CO(0) => ad_y0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => angular_rate_y(3 downto 0),
      O(3 downto 0) => ad_y0(3 downto 0),
      S(3) => ad_y0_carry_i_1_n_0,
      S(2) => ad_y0_carry_i_2_n_0,
      S(1) => ad_y0_carry_i_3_n_0,
      S(0) => ad_y0_carry_i_4_n_0
    );
\ad_y0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_y0_carry_n_0,
      CO(3) => \ad_y0_carry__0_n_0\,
      CO(2) => \ad_y0_carry__0_n_1\,
      CO(1) => \ad_y0_carry__0_n_2\,
      CO(0) => \ad_y0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(7 downto 4),
      O(3 downto 0) => ad_y0(7 downto 4),
      S(3) => \ad_y0_carry__0_i_1_n_0\,
      S(2) => \ad_y0_carry__0_i_2_n_0\,
      S(1) => \ad_y0_carry__0_i_3_n_0\,
      S(0) => \ad_y0_carry__0_i_4_n_0\
    );
\ad_y0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(7),
      I1 => avg_y(7),
      O => \ad_y0_carry__0_i_1_n_0\
    );
\ad_y0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(6),
      I1 => avg_y(6),
      O => \ad_y0_carry__0_i_2_n_0\
    );
\ad_y0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(5),
      I1 => avg_y(5),
      O => \ad_y0_carry__0_i_3_n_0\
    );
\ad_y0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(4),
      I1 => avg_y(4),
      O => \ad_y0_carry__0_i_4_n_0\
    );
\ad_y0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_y0_carry__0_n_0\,
      CO(3) => \ad_y0_carry__1_n_0\,
      CO(2) => \ad_y0_carry__1_n_1\,
      CO(1) => \ad_y0_carry__1_n_2\,
      CO(0) => \ad_y0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(11 downto 8),
      O(3 downto 0) => ad_y0(11 downto 8),
      S(3) => \ad_y0_carry__1_i_1_n_0\,
      S(2) => \ad_y0_carry__1_i_2_n_0\,
      S(1) => \ad_y0_carry__1_i_3_n_0\,
      S(0) => \ad_y0_carry__1_i_4_n_0\
    );
\ad_y0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(11),
      I1 => avg_y(11),
      O => \ad_y0_carry__1_i_1_n_0\
    );
\ad_y0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(10),
      I1 => avg_y(10),
      O => \ad_y0_carry__1_i_2_n_0\
    );
\ad_y0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(9),
      I1 => avg_y(9),
      O => \ad_y0_carry__1_i_3_n_0\
    );
\ad_y0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(8),
      I1 => avg_y(8),
      O => \ad_y0_carry__1_i_4_n_0\
    );
\ad_y0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_y0_carry__1_n_0\,
      CO(3) => \NLW_ad_y0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ad_y0_carry__2_n_1\,
      CO(1) => \ad_y0_carry__2_n_2\,
      CO(0) => \ad_y0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => angular_rate_y(14 downto 12),
      O(3 downto 0) => ad_y0(15 downto 12),
      S(3) => \ad_y0_carry__2_i_1_n_0\,
      S(2) => \ad_y0_carry__2_i_2_n_0\,
      S(1) => \ad_y0_carry__2_i_3_n_0\,
      S(0) => \ad_y0_carry__2_i_4_n_0\
    );
\ad_y0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(15),
      I1 => avg_y(15),
      O => \ad_y0_carry__2_i_1_n_0\
    );
\ad_y0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(14),
      I1 => avg_y(14),
      O => \ad_y0_carry__2_i_2_n_0\
    );
\ad_y0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(13),
      I1 => avg_y(13),
      O => \ad_y0_carry__2_i_3_n_0\
    );
\ad_y0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(12),
      I1 => avg_y(12),
      O => \ad_y0_carry__2_i_4_n_0\
    );
ad_y0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(3),
      I1 => avg_y(3),
      O => ad_y0_carry_i_1_n_0
    );
ad_y0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(2),
      I1 => avg_y(2),
      O => ad_y0_carry_i_2_n_0
    );
ad_y0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(1),
      I1 => avg_y(1),
      O => ad_y0_carry_i_3_n_0
    );
ad_y0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_y(0),
      I1 => avg_y(0),
      O => ad_y0_carry_i_4_n_0
    );
ad_y2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_y2_carry_n_0,
      CO(2) => ad_y2_carry_n_1,
      CO(1) => ad_y2_carry_n_2,
      CO(0) => ad_y2_carry_n_3,
      CYINIT => '0',
      DI(3) => ad_y2_carry_i_1_n_0,
      DI(2) => ad_y2_carry_i_2_n_0,
      DI(1) => ad_y2_carry_i_3_n_0,
      DI(0) => ad_y2_carry_i_4_n_0,
      O(3 downto 0) => NLW_ad_y2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ad_y2_carry_i_5_n_0,
      S(2) => ad_y2_carry_i_6_n_0,
      S(1) => ad_y2_carry_i_7_n_0,
      S(0) => ad_y2_carry_i_8_n_0
    );
\ad_y2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_y2_carry_n_0,
      CO(3) => ad_y2,
      CO(2) => \ad_y2_carry__0_n_1\,
      CO(1) => \ad_y2_carry__0_n_2\,
      CO(0) => \ad_y2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ad_y2_carry__0_i_1_n_0\,
      DI(2) => \ad_y2_carry__0_i_2_n_0\,
      DI(1) => \ad_y2_carry__0_i_3_n_0\,
      DI(0) => \ad_y2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_y2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_y2_carry__0_i_5_n_0\,
      S(2) => \ad_y2_carry__0_i_6_n_0\,
      S(1) => \ad_y2_carry__0_i_7_n_0\,
      S(0) => \ad_y2_carry__0_i_8_n_0\
    );
\ad_y2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(15),
      I1 => angular_rate_y(15),
      I2 => ad_y3(14),
      I3 => angular_rate_y(14),
      O => \ad_y2_carry__0_i_1_n_0\
    );
\ad_y2_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_y2_carry_i_9_n_0,
      CO(3) => \ad_y2_carry__0_i_10_n_0\,
      CO(2) => \ad_y2_carry__0_i_10_n_1\,
      CO(1) => \ad_y2_carry__0_i_10_n_2\,
      CO(0) => \ad_y2_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \ad_y2_carry__0_i_13_n_0\,
      DI(2) => \ad_y2_carry__0_i_14_n_0\,
      DI(1) => \ad_y2_carry__0_i_15_n_0\,
      DI(0) => \ad_y2_carry__0_i_16_n_0\,
      O(3 downto 0) => ad_y3(12 downto 9),
      S(3 downto 0) => avg_y(12 downto 9)
    );
\ad_y2_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(14),
      O => \ad_y2_carry__0_i_11_n_0\
    );
\ad_y2_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(13),
      O => \ad_y2_carry__0_i_12_n_0\
    );
\ad_y2_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(12),
      O => \ad_y2_carry__0_i_13_n_0\
    );
\ad_y2_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(11),
      O => \ad_y2_carry__0_i_14_n_0\
    );
\ad_y2_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(10),
      O => \ad_y2_carry__0_i_15_n_0\
    );
\ad_y2_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(9),
      O => \ad_y2_carry__0_i_16_n_0\
    );
\ad_y2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(13),
      I1 => angular_rate_y(13),
      I2 => ad_y3(12),
      I3 => angular_rate_y(12),
      O => \ad_y2_carry__0_i_2_n_0\
    );
\ad_y2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(11),
      I1 => angular_rate_y(11),
      I2 => ad_y3(10),
      I3 => angular_rate_y(10),
      O => \ad_y2_carry__0_i_3_n_0\
    );
\ad_y2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(9),
      I1 => angular_rate_y(9),
      I2 => ad_y3(8),
      I3 => angular_rate_y(8),
      O => \ad_y2_carry__0_i_4_n_0\
    );
\ad_y2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(15),
      I1 => angular_rate_y(15),
      I2 => ad_y3(14),
      I3 => angular_rate_y(14),
      O => \ad_y2_carry__0_i_5_n_0\
    );
\ad_y2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(13),
      I1 => angular_rate_y(13),
      I2 => ad_y3(12),
      I3 => angular_rate_y(12),
      O => \ad_y2_carry__0_i_6_n_0\
    );
\ad_y2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(11),
      I1 => angular_rate_y(11),
      I2 => ad_y3(10),
      I3 => angular_rate_y(10),
      O => \ad_y2_carry__0_i_7_n_0\
    );
\ad_y2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(9),
      I1 => angular_rate_y(9),
      I2 => ad_y3(8),
      I3 => angular_rate_y(8),
      O => \ad_y2_carry__0_i_8_n_0\
    );
\ad_y2_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_y2_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_ad_y2_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ad_y2_carry__0_i_9_n_2\,
      CO(0) => \ad_y2_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ad_y2_carry__0_i_11_n_0\,
      DI(0) => \ad_y2_carry__0_i_12_n_0\,
      O(3) => \NLW_ad_y2_carry__0_i_9_O_UNCONNECTED\(3),
      O(2 downto 0) => ad_y3(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => avg_y(15 downto 13)
    );
ad_y2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(7),
      I1 => angular_rate_y(7),
      I2 => ad_y3(6),
      I3 => angular_rate_y(6),
      O => ad_y2_carry_i_1_n_0
    );
ad_y2_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_y2_carry_i_10_n_0,
      CO(2) => ad_y2_carry_i_10_n_1,
      CO(1) => ad_y2_carry_i_10_n_2,
      CO(0) => ad_y2_carry_i_10_n_3,
      CYINIT => ad_y2_carry_i_15_n_0,
      DI(3) => ad_y2_carry_i_16_n_0,
      DI(2) => ad_y2_carry_i_17_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 1) => ad_y3(4 downto 2),
      O(0) => ad_y2_carry_i_10_n_7,
      S(3 downto 2) => avg_y(4 downto 3),
      S(1) => ad_y2_carry_i_18_n_0,
      S(0) => ad_y2_carry_i_19_n_0
    );
ad_y2_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(8),
      O => ad_y2_carry_i_11_n_0
    );
ad_y2_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(5),
      O => ad_y2_carry_i_12_n_0
    );
ad_y2_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(7),
      O => ad_y2_carry_i_13_n_0
    );
ad_y2_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(6),
      O => ad_y2_carry_i_14_n_0
    );
ad_y2_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(0),
      O => ad_y2_carry_i_15_n_0
    );
ad_y2_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(4),
      O => ad_y2_carry_i_16_n_0
    );
ad_y2_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(3),
      O => ad_y2_carry_i_17_n_0
    );
ad_y2_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(2),
      O => ad_y2_carry_i_18_n_0
    );
ad_y2_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(1),
      O => ad_y2_carry_i_19_n_0
    );
ad_y2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(5),
      I1 => angular_rate_y(5),
      I2 => ad_y3(4),
      I3 => angular_rate_y(4),
      O => ad_y2_carry_i_2_n_0
    );
ad_y2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_y3(3),
      I1 => angular_rate_y(3),
      I2 => ad_y3(2),
      I3 => angular_rate_y(2),
      O => ad_y2_carry_i_3_n_0
    );
ad_y2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"064E"
    )
        port map (
      I0 => avg_y(1),
      I1 => avg_y(0),
      I2 => angular_rate_y(1),
      I3 => angular_rate_y(0),
      O => ad_y2_carry_i_4_n_0
    );
ad_y2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(7),
      I1 => angular_rate_y(7),
      I2 => ad_y3(6),
      I3 => angular_rate_y(6),
      O => ad_y2_carry_i_5_n_0
    );
ad_y2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(5),
      I1 => angular_rate_y(5),
      I2 => ad_y3(4),
      I3 => angular_rate_y(4),
      O => ad_y2_carry_i_6_n_0
    );
ad_y2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_y3(3),
      I1 => angular_rate_y(3),
      I2 => ad_y3(2),
      I3 => angular_rate_y(2),
      O => ad_y2_carry_i_7_n_0
    );
ad_y2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => angular_rate_y(0),
      I1 => avg_y(0),
      I2 => avg_y(1),
      I3 => angular_rate_y(1),
      O => ad_y2_carry_i_8_n_0
    );
ad_y2_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => ad_y2_carry_i_10_n_0,
      CO(3) => ad_y2_carry_i_9_n_0,
      CO(2) => ad_y2_carry_i_9_n_1,
      CO(1) => ad_y2_carry_i_9_n_2,
      CO(0) => ad_y2_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => ad_y2_carry_i_11_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => ad_y2_carry_i_12_n_0,
      O(3 downto 0) => ad_y3(8 downto 5),
      S(3) => avg_y(8),
      S(2) => ad_y2_carry_i_13_n_0,
      S(1) => ad_y2_carry_i_14_n_0,
      S(0) => avg_y(5)
    );
\ad_y2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ad_y2_inferred__0/i__carry_n_0\,
      CO(2) => \ad_y2_inferred__0/i__carry_n_1\,
      CO(1) => \ad_y2_inferred__0/i__carry_n_2\,
      CO(0) => \ad_y2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ad_y2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\ad_y2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_y2_inferred__0/i__carry_n_0\,
      CO(3) => ad_y21_in,
      CO(2) => \ad_y2_inferred__0/i__carry__0_n_1\,
      CO(1) => \ad_y2_inferred__0/i__carry__0_n_2\,
      CO(0) => \ad_y2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ad_y2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\ad_y[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => ad_y21_in,
      I1 => ad_y2,
      I2 => \ad_z[15]_i_2_n_0\,
      O => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(0),
      Q => ad_y(0),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(10),
      Q => ad_y(10),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(11),
      Q => ad_y(11),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(12),
      Q => ad_y(12),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(13),
      Q => ad_y(13),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(14),
      Q => ad_y(14),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(15),
      Q => ad_y(15),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(1),
      Q => ad_y(1),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(2),
      Q => ad_y(2),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(3),
      Q => ad_y(3),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(4),
      Q => ad_y(4),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(5),
      Q => ad_y(5),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(6),
      Q => ad_y(6),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(7),
      Q => ad_y(7),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(8),
      Q => ad_y(8),
      R => \ad_y[15]_i_1_n_0\
    );
\ad_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_y0(9),
      Q => ad_y(9),
      R => \ad_y[15]_i_1_n_0\
    );
ad_z0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_z0_carry_n_0,
      CO(2) => ad_z0_carry_n_1,
      CO(1) => ad_z0_carry_n_2,
      CO(0) => ad_z0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => angular_rate_z(3 downto 0),
      O(3 downto 0) => ad_z0(3 downto 0),
      S(3) => ad_z0_carry_i_1_n_0,
      S(2) => ad_z0_carry_i_2_n_0,
      S(1) => ad_z0_carry_i_3_n_0,
      S(0) => ad_z0_carry_i_4_n_0
    );
\ad_z0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_z0_carry_n_0,
      CO(3) => \ad_z0_carry__0_n_0\,
      CO(2) => \ad_z0_carry__0_n_1\,
      CO(1) => \ad_z0_carry__0_n_2\,
      CO(0) => \ad_z0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(7 downto 4),
      O(3 downto 0) => ad_z0(7 downto 4),
      S(3) => \ad_z0_carry__0_i_1_n_0\,
      S(2) => \ad_z0_carry__0_i_2_n_0\,
      S(1) => \ad_z0_carry__0_i_3_n_0\,
      S(0) => \ad_z0_carry__0_i_4_n_0\
    );
\ad_z0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(7),
      I1 => avg_z(7),
      O => \ad_z0_carry__0_i_1_n_0\
    );
\ad_z0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(6),
      I1 => avg_z(6),
      O => \ad_z0_carry__0_i_2_n_0\
    );
\ad_z0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(5),
      I1 => avg_z(5),
      O => \ad_z0_carry__0_i_3_n_0\
    );
\ad_z0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(4),
      I1 => avg_z(4),
      O => \ad_z0_carry__0_i_4_n_0\
    );
\ad_z0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_z0_carry__0_n_0\,
      CO(3) => \ad_z0_carry__1_n_0\,
      CO(2) => \ad_z0_carry__1_n_1\,
      CO(1) => \ad_z0_carry__1_n_2\,
      CO(0) => \ad_z0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(11 downto 8),
      O(3 downto 0) => ad_z0(11 downto 8),
      S(3) => \ad_z0_carry__1_i_1_n_0\,
      S(2) => \ad_z0_carry__1_i_2_n_0\,
      S(1) => \ad_z0_carry__1_i_3_n_0\,
      S(0) => \ad_z0_carry__1_i_4_n_0\
    );
\ad_z0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(11),
      I1 => avg_z(11),
      O => \ad_z0_carry__1_i_1_n_0\
    );
\ad_z0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(10),
      I1 => avg_z(10),
      O => \ad_z0_carry__1_i_2_n_0\
    );
\ad_z0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(9),
      I1 => avg_z(9),
      O => \ad_z0_carry__1_i_3_n_0\
    );
\ad_z0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(8),
      I1 => avg_z(8),
      O => \ad_z0_carry__1_i_4_n_0\
    );
\ad_z0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_z0_carry__1_n_0\,
      CO(3) => \NLW_ad_z0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ad_z0_carry__2_n_1\,
      CO(1) => \ad_z0_carry__2_n_2\,
      CO(0) => \ad_z0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => angular_rate_z(14 downto 12),
      O(3 downto 0) => ad_z0(15 downto 12),
      S(3) => \ad_z0_carry__2_i_1_n_0\,
      S(2) => \ad_z0_carry__2_i_2_n_0\,
      S(1) => \ad_z0_carry__2_i_3_n_0\,
      S(0) => \ad_z0_carry__2_i_4_n_0\
    );
\ad_z0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(15),
      I1 => avg_z(15),
      O => \ad_z0_carry__2_i_1_n_0\
    );
\ad_z0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(14),
      I1 => avg_z(14),
      O => \ad_z0_carry__2_i_2_n_0\
    );
\ad_z0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(13),
      I1 => avg_z(13),
      O => \ad_z0_carry__2_i_3_n_0\
    );
\ad_z0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(12),
      I1 => avg_z(12),
      O => \ad_z0_carry__2_i_4_n_0\
    );
ad_z0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(3),
      I1 => avg_z(3),
      O => ad_z0_carry_i_1_n_0
    );
ad_z0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(2),
      I1 => avg_z(2),
      O => ad_z0_carry_i_2_n_0
    );
ad_z0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(1),
      I1 => avg_z(1),
      O => ad_z0_carry_i_3_n_0
    );
ad_z0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angular_rate_z(0),
      I1 => avg_z(0),
      O => ad_z0_carry_i_4_n_0
    );
ad_z2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_z2_carry_n_0,
      CO(2) => ad_z2_carry_n_1,
      CO(1) => ad_z2_carry_n_2,
      CO(0) => ad_z2_carry_n_3,
      CYINIT => '0',
      DI(3) => ad_z2_carry_i_1_n_0,
      DI(2) => ad_z2_carry_i_2_n_0,
      DI(1) => ad_z2_carry_i_3_n_0,
      DI(0) => ad_z2_carry_i_4_n_0,
      O(3 downto 0) => NLW_ad_z2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ad_z2_carry_i_5_n_0,
      S(2) => ad_z2_carry_i_6_n_0,
      S(1) => ad_z2_carry_i_7_n_0,
      S(0) => ad_z2_carry_i_8_n_0
    );
\ad_z2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_z2_carry_n_0,
      CO(3) => ad_z2,
      CO(2) => \ad_z2_carry__0_n_1\,
      CO(1) => \ad_z2_carry__0_n_2\,
      CO(0) => \ad_z2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ad_z2_carry__0_i_1_n_0\,
      DI(2) => \ad_z2_carry__0_i_2_n_0\,
      DI(1) => \ad_z2_carry__0_i_3_n_0\,
      DI(0) => \ad_z2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ad_z2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ad_z2_carry__0_i_5_n_0\,
      S(2) => \ad_z2_carry__0_i_6_n_0\,
      S(1) => \ad_z2_carry__0_i_7_n_0\,
      S(0) => \ad_z2_carry__0_i_8_n_0\
    );
\ad_z2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(15),
      I1 => angular_rate_z(15),
      I2 => ad_z3(14),
      I3 => angular_rate_z(14),
      O => \ad_z2_carry__0_i_1_n_0\
    );
\ad_z2_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => ad_z2_carry_i_9_n_0,
      CO(3) => \ad_z2_carry__0_i_10_n_0\,
      CO(2) => \ad_z2_carry__0_i_10_n_1\,
      CO(1) => \ad_z2_carry__0_i_10_n_2\,
      CO(0) => \ad_z2_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \ad_z2_carry__0_i_13_n_0\,
      DI(2) => \ad_z2_carry__0_i_14_n_0\,
      DI(1) => \ad_z2_carry__0_i_15_n_0\,
      DI(0) => \ad_z2_carry__0_i_16_n_0\,
      O(3 downto 0) => ad_z3(12 downto 9),
      S(3 downto 0) => avg_z(12 downto 9)
    );
\ad_z2_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(14),
      O => \ad_z2_carry__0_i_11_n_0\
    );
\ad_z2_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(13),
      O => \ad_z2_carry__0_i_12_n_0\
    );
\ad_z2_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(12),
      O => \ad_z2_carry__0_i_13_n_0\
    );
\ad_z2_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(11),
      O => \ad_z2_carry__0_i_14_n_0\
    );
\ad_z2_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(10),
      O => \ad_z2_carry__0_i_15_n_0\
    );
\ad_z2_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(9),
      O => \ad_z2_carry__0_i_16_n_0\
    );
\ad_z2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(13),
      I1 => angular_rate_z(13),
      I2 => ad_z3(12),
      I3 => angular_rate_z(12),
      O => \ad_z2_carry__0_i_2_n_0\
    );
\ad_z2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(11),
      I1 => angular_rate_z(11),
      I2 => ad_z3(10),
      I3 => angular_rate_z(10),
      O => \ad_z2_carry__0_i_3_n_0\
    );
\ad_z2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(9),
      I1 => angular_rate_z(9),
      I2 => ad_z3(8),
      I3 => angular_rate_z(8),
      O => \ad_z2_carry__0_i_4_n_0\
    );
\ad_z2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(15),
      I1 => angular_rate_z(15),
      I2 => ad_z3(14),
      I3 => angular_rate_z(14),
      O => \ad_z2_carry__0_i_5_n_0\
    );
\ad_z2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(13),
      I1 => angular_rate_z(13),
      I2 => ad_z3(12),
      I3 => angular_rate_z(12),
      O => \ad_z2_carry__0_i_6_n_0\
    );
\ad_z2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(11),
      I1 => angular_rate_z(11),
      I2 => ad_z3(10),
      I3 => angular_rate_z(10),
      O => \ad_z2_carry__0_i_7_n_0\
    );
\ad_z2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(9),
      I1 => angular_rate_z(9),
      I2 => ad_z3(8),
      I3 => angular_rate_z(8),
      O => \ad_z2_carry__0_i_8_n_0\
    );
\ad_z2_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_z2_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_ad_z2_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ad_z2_carry__0_i_9_n_2\,
      CO(0) => \ad_z2_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ad_z2_carry__0_i_11_n_0\,
      DI(0) => \ad_z2_carry__0_i_12_n_0\,
      O(3) => \NLW_ad_z2_carry__0_i_9_O_UNCONNECTED\(3),
      O(2 downto 0) => ad_z3(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => avg_z(15 downto 13)
    );
ad_z2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(7),
      I1 => angular_rate_z(7),
      I2 => ad_z3(6),
      I3 => angular_rate_z(6),
      O => ad_z2_carry_i_1_n_0
    );
ad_z2_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ad_z2_carry_i_10_n_0,
      CO(2) => ad_z2_carry_i_10_n_1,
      CO(1) => ad_z2_carry_i_10_n_2,
      CO(0) => ad_z2_carry_i_10_n_3,
      CYINIT => ad_z2_carry_i_15_n_0,
      DI(3) => ad_z2_carry_i_16_n_0,
      DI(2) => ad_z2_carry_i_17_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 1) => ad_z3(4 downto 2),
      O(0) => ad_z2_carry_i_10_n_7,
      S(3 downto 2) => avg_z(4 downto 3),
      S(1) => ad_z2_carry_i_18_n_0,
      S(0) => ad_z2_carry_i_19_n_0
    );
ad_z2_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(8),
      O => ad_z2_carry_i_11_n_0
    );
ad_z2_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(5),
      O => ad_z2_carry_i_12_n_0
    );
ad_z2_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(7),
      O => ad_z2_carry_i_13_n_0
    );
ad_z2_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(6),
      O => ad_z2_carry_i_14_n_0
    );
ad_z2_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(0),
      O => ad_z2_carry_i_15_n_0
    );
ad_z2_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(4),
      O => ad_z2_carry_i_16_n_0
    );
ad_z2_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(3),
      O => ad_z2_carry_i_17_n_0
    );
ad_z2_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(2),
      O => ad_z2_carry_i_18_n_0
    );
ad_z2_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(1),
      O => ad_z2_carry_i_19_n_0
    );
ad_z2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(5),
      I1 => angular_rate_z(5),
      I2 => ad_z3(4),
      I3 => angular_rate_z(4),
      O => ad_z2_carry_i_2_n_0
    );
ad_z2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ad_z3(3),
      I1 => angular_rate_z(3),
      I2 => ad_z3(2),
      I3 => angular_rate_z(2),
      O => ad_z2_carry_i_3_n_0
    );
ad_z2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"064E"
    )
        port map (
      I0 => avg_z(1),
      I1 => avg_z(0),
      I2 => angular_rate_z(1),
      I3 => angular_rate_z(0),
      O => ad_z2_carry_i_4_n_0
    );
ad_z2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(7),
      I1 => angular_rate_z(7),
      I2 => ad_z3(6),
      I3 => angular_rate_z(6),
      O => ad_z2_carry_i_5_n_0
    );
ad_z2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(5),
      I1 => angular_rate_z(5),
      I2 => ad_z3(4),
      I3 => angular_rate_z(4),
      O => ad_z2_carry_i_6_n_0
    );
ad_z2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ad_z3(3),
      I1 => angular_rate_z(3),
      I2 => ad_z3(2),
      I3 => angular_rate_z(2),
      O => ad_z2_carry_i_7_n_0
    );
ad_z2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => angular_rate_z(0),
      I1 => avg_z(0),
      I2 => avg_z(1),
      I3 => angular_rate_z(1),
      O => ad_z2_carry_i_8_n_0
    );
ad_z2_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => ad_z2_carry_i_10_n_0,
      CO(3) => ad_z2_carry_i_9_n_0,
      CO(2) => ad_z2_carry_i_9_n_1,
      CO(1) => ad_z2_carry_i_9_n_2,
      CO(0) => ad_z2_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => ad_z2_carry_i_11_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => ad_z2_carry_i_12_n_0,
      O(3 downto 0) => ad_z3(8 downto 5),
      S(3) => avg_z(8),
      S(2) => ad_z2_carry_i_13_n_0,
      S(1) => ad_z2_carry_i_14_n_0,
      S(0) => avg_z(5)
    );
\ad_z2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ad_z2_inferred__0/i__carry_n_0\,
      CO(2) => \ad_z2_inferred__0/i__carry_n_1\,
      CO(1) => \ad_z2_inferred__0/i__carry_n_2\,
      CO(0) => \ad_z2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ad_z2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\ad_z2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ad_z2_inferred__0/i__carry_n_0\,
      CO(3) => ad_z20_in,
      CO(2) => \ad_z2_inferred__0/i__carry__0_n_1\,
      CO(1) => \ad_z2_inferred__0/i__carry__0_n_2\,
      CO(0) => \ad_z2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ad_z2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__1_n_0\,
      S(2) => \i__carry__0_i_6__1_n_0\,
      S(1) => \i__carry__0_i_7__1_n_0\,
      S(0) => \i__carry__0_i_8__1_n_0\
    );
\ad_z[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => ad_z20_in,
      I1 => ad_z2,
      I2 => \ad_z[15]_i_2_n_0\,
      O => \ad_z[15]_i_1_n_0\
    );
\ad_z[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => integrate_z,
      I1 => \calibrate_timer_reg__0\(3),
      I2 => \calibrate_timer_reg__0\(1),
      I3 => \calibrate_timer_reg__0\(2),
      I4 => \calibrate_timer_reg__0\(0),
      I5 => \avg_x[15]_i_3_n_0\,
      O => \ad_z[15]_i_2_n_0\
    );
\ad_z_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(0),
      Q => ad_z(0),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(10),
      Q => ad_z(10),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(11),
      Q => ad_z(11),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(12),
      Q => ad_z(12),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(13),
      Q => ad_z(13),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(14),
      Q => ad_z(14),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(15),
      Q => ad_z(15),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(1),
      Q => ad_z(1),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(2),
      Q => ad_z(2),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(3),
      Q => ad_z(3),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(4),
      Q => ad_z(4),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(5),
      Q => ad_z(5),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(6),
      Q => ad_z(6),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(7),
      Q => ad_z(7),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(8),
      Q => ad_z(8),
      R => \ad_z[15]_i_1_n_0\
    );
\ad_z_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ad_z[15]_i_2_n_0\,
      D => ad_z0(9),
      Q => ad_z(9),
      R => \ad_z[15]_i_1_n_0\
    );
\avg_x[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => system_reset,
      O => clear
    );
\avg_x[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(0),
      I1 => angle_reset,
      I2 => \calibrate_timer_reg__0\(2),
      I3 => \calibrate_timer_reg__0\(1),
      I4 => \calibrate_timer_reg__0\(3),
      I5 => \avg_x[15]_i_3_n_0\,
      O => avg_x_0
    );
\avg_x[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(7),
      I1 => \calibrate_timer_reg__0\(6),
      I2 => \calibrate_timer_reg__0\(5),
      I3 => \calibrate_timer_reg__0\(4),
      O => \avg_x[15]_i_3_n_0\
    );
\avg_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(0),
      Q => avg_x(0),
      R => clear
    );
\avg_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(10),
      Q => avg_x(10),
      R => clear
    );
\avg_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(11),
      Q => avg_x(11),
      R => clear
    );
\avg_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(12),
      Q => avg_x(12),
      R => clear
    );
\avg_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(13),
      Q => avg_x(13),
      R => clear
    );
\avg_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(14),
      Q => avg_x(14),
      R => clear
    );
\avg_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(15),
      Q => avg_x(15),
      R => clear
    );
\avg_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(1),
      Q => avg_x(1),
      R => clear
    );
\avg_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(2),
      Q => avg_x(2),
      R => clear
    );
\avg_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(3),
      Q => avg_x(3),
      R => clear
    );
\avg_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(4),
      Q => avg_x(4),
      R => clear
    );
\avg_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(5),
      Q => avg_x(5),
      R => clear
    );
\avg_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(6),
      Q => avg_x(6),
      R => clear
    );
\avg_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(7),
      Q => avg_x(7),
      R => clear
    );
\avg_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(8),
      Q => avg_x(8),
      R => clear
    );
\avg_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => p_1_in(9),
      Q => avg_x(9),
      R => clear
    );
\avg_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(8),
      Q => avg_y(0),
      R => clear
    );
\avg_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(18),
      Q => avg_y(10),
      R => clear
    );
\avg_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(19),
      Q => avg_y(11),
      R => clear
    );
\avg_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(20),
      Q => avg_y(12),
      R => clear
    );
\avg_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(21),
      Q => avg_y(13),
      R => clear
    );
\avg_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(22),
      Q => avg_y(14),
      R => clear
    );
\avg_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(23),
      Q => avg_y(15),
      R => clear
    );
\avg_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(9),
      Q => avg_y(1),
      R => clear
    );
\avg_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(10),
      Q => avg_y(2),
      R => clear
    );
\avg_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(11),
      Q => avg_y(3),
      R => clear
    );
\avg_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(12),
      Q => avg_y(4),
      R => clear
    );
\avg_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(13),
      Q => avg_y(5),
      R => clear
    );
\avg_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(14),
      Q => avg_y(6),
      R => clear
    );
\avg_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(15),
      Q => avg_y(7),
      R => clear
    );
\avg_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(16),
      Q => avg_y(8),
      R => clear
    );
\avg_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_y_reg(17),
      Q => avg_y(9),
      R => clear
    );
\avg_z_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(8),
      Q => avg_z(0),
      R => clear
    );
\avg_z_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(18),
      Q => avg_z(10),
      R => clear
    );
\avg_z_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(19),
      Q => avg_z(11),
      R => clear
    );
\avg_z_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(20),
      Q => avg_z(12),
      R => clear
    );
\avg_z_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(21),
      Q => avg_z(13),
      R => clear
    );
\avg_z_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(22),
      Q => avg_z(14),
      R => clear
    );
\avg_z_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(23),
      Q => avg_z(15),
      R => clear
    );
\avg_z_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(9),
      Q => avg_z(1),
      R => clear
    );
\avg_z_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(10),
      Q => avg_z(2),
      R => clear
    );
\avg_z_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(11),
      Q => avg_z(3),
      R => clear
    );
\avg_z_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(12),
      Q => avg_z(4),
      R => clear
    );
\avg_z_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(13),
      Q => avg_z(5),
      R => clear
    );
\avg_z_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(14),
      Q => avg_z(6),
      R => clear
    );
\avg_z_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(15),
      Q => avg_z(7),
      R => clear
    );
\avg_z_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(16),
      Q => avg_z(8),
      R => clear
    );
\avg_z_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => avg_x_0,
      D => sum_z_reg(17),
      Q => avg_z(9),
      R => clear
    );
\calibrate_timer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FFFF"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(2),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(3),
      I3 => \avg_x[15]_i_3_n_0\,
      I4 => \calibrate_timer_reg__0\(0),
      O => p_0_in(0)
    );
\calibrate_timer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5ADA5A"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(0),
      I1 => \calibrate_timer_reg__0\(2),
      I2 => \calibrate_timer_reg__0\(1),
      I3 => \calibrate_timer_reg__0\(3),
      I4 => \avg_x[15]_i_3_n_0\,
      O => p_0_in(1)
    );
\calibrate_timer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F887788"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(0),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \avg_x[15]_i_3_n_0\,
      I3 => \calibrate_timer_reg__0\(2),
      I4 => \calibrate_timer_reg__0\(3),
      O => p_0_in(2)
    );
\calibrate_timer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8080"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(2),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(0),
      I3 => \avg_x[15]_i_3_n_0\,
      I4 => \calibrate_timer_reg__0\(3),
      O => p_0_in(3)
    );
\calibrate_timer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAFFFFFFFF"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(4),
      I1 => \calibrate_timer_reg__0\(3),
      I2 => \calibrate_timer_reg__0\(1),
      I3 => \calibrate_timer_reg__0\(2),
      I4 => \calibrate_timer_reg__0\(0),
      I5 => \avg_x[15]_i_3_n_0\,
      O => p_0_in(4)
    );
\calibrate_timer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB4444"
    )
        port map (
      I0 => \calibrate_timer[7]_i_3_n_0\,
      I1 => \calibrate_timer_reg__0\(4),
      I2 => \calibrate_timer_reg__0\(6),
      I3 => \calibrate_timer_reg__0\(7),
      I4 => \calibrate_timer_reg__0\(5),
      O => p_0_in(5)
    );
\calibrate_timer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF4040"
    )
        port map (
      I0 => \calibrate_timer[7]_i_3_n_0\,
      I1 => \calibrate_timer_reg__0\(5),
      I2 => \calibrate_timer_reg__0\(4),
      I3 => \calibrate_timer_reg__0\(7),
      I4 => \calibrate_timer_reg__0\(6),
      O => p_0_in(6)
    );
\calibrate_timer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(3),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(2),
      I3 => \calibrate_timer_reg__0\(0),
      I4 => \avg_x[15]_i_3_n_0\,
      I5 => angle_reset,
      O => \calibrate_timer[7]_i_1_n_0\
    );
\calibrate_timer[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => \calibrate_timer[7]_i_3_n_0\,
      I1 => \calibrate_timer_reg__0\(5),
      I2 => \calibrate_timer_reg__0\(4),
      I3 => \calibrate_timer_reg__0\(6),
      I4 => \calibrate_timer_reg__0\(7),
      O => p_0_in(7)
    );
\calibrate_timer[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(3),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(2),
      I3 => \calibrate_timer_reg__0\(0),
      O => \calibrate_timer[7]_i_3_n_0\
    );
\calibrate_timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \calibrate_timer_reg__0\(0),
      R => clear
    );
\calibrate_timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \calibrate_timer_reg__0\(1),
      R => clear
    );
\calibrate_timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \calibrate_timer_reg__0\(2),
      R => clear
    );
\calibrate_timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \calibrate_timer_reg__0\(3),
      R => clear
    );
\calibrate_timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \calibrate_timer_reg__0\(4),
      R => clear
    );
\calibrate_timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \calibrate_timer_reg__0\(5),
      R => clear
    );
\calibrate_timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \calibrate_timer_reg__0\(6),
      R => clear
    );
\calibrate_timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \calibrate_timer[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \calibrate_timer_reg__0\(7),
      R => clear
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(15),
      I1 => \i__carry__0_i_9_n_5\,
      I2 => angular_rate_x(14),
      I3 => \i__carry__0_i_9_n_6\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_9_n_0\,
      CO(3) => \i__carry__0_i_10_n_0\,
      CO(2) => \i__carry__0_i_10_n_1\,
      CO(1) => \i__carry__0_i_10_n_2\,
      CO(0) => \i__carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i__carry__0_i_10_n_4\,
      O(2) => \i__carry__0_i_10_n_5\,
      O(1) => \i__carry__0_i_10_n_6\,
      O(0) => \i__carry__0_i_10_n_7\,
      S(3) => \i__carry__0_i_14_n_0\,
      S(2) => \i__carry__0_i_15_n_0\,
      S(1) => \i__carry__0_i_16_n_0\,
      S(0) => \i__carry__0_i_17_n_0\
    );
\i__carry__0_i_10__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_9__0_n_0\,
      CO(3) => \i__carry__0_i_10__0_n_0\,
      CO(2) => \i__carry__0_i_10__0_n_1\,
      CO(1) => \i__carry__0_i_10__0_n_2\,
      CO(0) => \i__carry__0_i_10__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i__carry__0_i_10__0_n_4\,
      O(2) => \i__carry__0_i_10__0_n_5\,
      O(1) => \i__carry__0_i_10__0_n_6\,
      O(0) => \i__carry__0_i_10__0_n_7\,
      S(3) => \i__carry__0_i_14__0_n_0\,
      S(2) => \i__carry__0_i_15__0_n_0\,
      S(1) => \i__carry__0_i_16__0_n_0\,
      S(0) => \i__carry__0_i_17__0_n_0\
    );
\i__carry__0_i_10__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_9__1_n_0\,
      CO(3) => \i__carry__0_i_10__1_n_0\,
      CO(2) => \i__carry__0_i_10__1_n_1\,
      CO(1) => \i__carry__0_i_10__1_n_2\,
      CO(0) => \i__carry__0_i_10__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i__carry__0_i_10__1_n_4\,
      O(2) => \i__carry__0_i_10__1_n_5\,
      O(1) => \i__carry__0_i_10__1_n_6\,
      O(0) => \i__carry__0_i_10__1_n_7\,
      S(3) => \i__carry__0_i_14__1_n_0\,
      S(2) => \i__carry__0_i_15__1_n_0\,
      S(1) => \i__carry__0_i_16__1_n_0\,
      S(0) => \i__carry__0_i_17__1_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(15),
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_11__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(15),
      O => \i__carry__0_i_11__0_n_0\
    );
\i__carry__0_i_11__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(15),
      O => \i__carry__0_i_11__1_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(14),
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_12__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(14),
      O => \i__carry__0_i_12__0_n_0\
    );
\i__carry__0_i_12__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(14),
      O => \i__carry__0_i_12__1_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(13),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_13__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(13),
      O => \i__carry__0_i_13__0_n_0\
    );
\i__carry__0_i_13__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(13),
      O => \i__carry__0_i_13__1_n_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(12),
      O => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_14__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(12),
      O => \i__carry__0_i_14__0_n_0\
    );
\i__carry__0_i_14__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(12),
      O => \i__carry__0_i_14__1_n_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(11),
      O => \i__carry__0_i_15_n_0\
    );
\i__carry__0_i_15__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(11),
      O => \i__carry__0_i_15__0_n_0\
    );
\i__carry__0_i_15__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(11),
      O => \i__carry__0_i_15__1_n_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(10),
      O => \i__carry__0_i_16_n_0\
    );
\i__carry__0_i_16__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(10),
      O => \i__carry__0_i_16__0_n_0\
    );
\i__carry__0_i_16__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(10),
      O => \i__carry__0_i_16__1_n_0\
    );
\i__carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(9),
      O => \i__carry__0_i_17_n_0\
    );
\i__carry__0_i_17__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(9),
      O => \i__carry__0_i_17__0_n_0\
    );
\i__carry__0_i_17__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(9),
      O => \i__carry__0_i_17__1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(15),
      I1 => \i__carry__0_i_9__0_n_5\,
      I2 => angular_rate_y(14),
      I3 => \i__carry__0_i_9__0_n_6\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(15),
      I1 => \i__carry__0_i_9__1_n_5\,
      I2 => angular_rate_z(14),
      I3 => \i__carry__0_i_9__1_n_6\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(13),
      I1 => \i__carry__0_i_9_n_7\,
      I2 => angular_rate_x(12),
      I3 => \i__carry__0_i_10_n_4\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(13),
      I1 => \i__carry__0_i_9__0_n_7\,
      I2 => angular_rate_y(12),
      I3 => \i__carry__0_i_10__0_n_4\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(13),
      I1 => \i__carry__0_i_9__1_n_7\,
      I2 => angular_rate_z(12),
      I3 => \i__carry__0_i_10__1_n_4\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(11),
      I1 => \i__carry__0_i_10_n_5\,
      I2 => angular_rate_x(10),
      I3 => \i__carry__0_i_10_n_6\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(11),
      I1 => \i__carry__0_i_10__0_n_5\,
      I2 => angular_rate_y(10),
      I3 => \i__carry__0_i_10__0_n_6\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(11),
      I1 => \i__carry__0_i_10__1_n_5\,
      I2 => angular_rate_z(10),
      I3 => \i__carry__0_i_10__1_n_6\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(9),
      I1 => \i__carry__0_i_10_n_7\,
      I2 => angular_rate_x(8),
      I3 => \i__carry_i_9_n_4\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(9),
      I1 => \i__carry__0_i_10__0_n_7\,
      I2 => angular_rate_y(8),
      I3 => \i__carry_i_9__0_n_4\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(9),
      I1 => \i__carry__0_i_10__1_n_7\,
      I2 => angular_rate_z(8),
      I3 => \i__carry_i_9__1_n_4\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9_n_5\,
      I1 => angular_rate_x(15),
      I2 => \i__carry__0_i_9_n_6\,
      I3 => angular_rate_x(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9__0_n_5\,
      I1 => angular_rate_y(15),
      I2 => \i__carry__0_i_9__0_n_6\,
      I3 => angular_rate_y(14),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9__1_n_5\,
      I1 => angular_rate_z(15),
      I2 => \i__carry__0_i_9__1_n_6\,
      I3 => angular_rate_z(14),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9_n_7\,
      I1 => angular_rate_x(13),
      I2 => \i__carry__0_i_10_n_4\,
      I3 => angular_rate_x(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9__0_n_7\,
      I1 => angular_rate_y(13),
      I2 => \i__carry__0_i_10__0_n_4\,
      I3 => angular_rate_y(12),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_9__1_n_7\,
      I1 => angular_rate_z(13),
      I2 => \i__carry__0_i_10__1_n_4\,
      I3 => angular_rate_z(12),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10_n_5\,
      I1 => angular_rate_x(11),
      I2 => \i__carry__0_i_10_n_6\,
      I3 => angular_rate_x(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10__0_n_5\,
      I1 => angular_rate_y(11),
      I2 => \i__carry__0_i_10__0_n_6\,
      I3 => angular_rate_y(10),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10__1_n_5\,
      I1 => angular_rate_z(11),
      I2 => \i__carry__0_i_10__1_n_6\,
      I3 => angular_rate_z(10),
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10_n_7\,
      I1 => angular_rate_x(9),
      I2 => \i__carry_i_9_n_4\,
      I3 => angular_rate_x(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10__0_n_7\,
      I1 => angular_rate_y(9),
      I2 => \i__carry_i_9__0_n_4\,
      I3 => angular_rate_y(8),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__0_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry__0_i_10__1_n_7\,
      I1 => angular_rate_z(9),
      I2 => \i__carry_i_9__1_n_4\,
      I3 => angular_rate_z(8),
      O => \i__carry__0_i_8__1_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_i__carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i__carry__0_i_9_n_2\,
      CO(0) => \i__carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i__carry__0_i_9_O_UNCONNECTED\(3),
      O(2) => \i__carry__0_i_9_n_5\,
      O(1) => \i__carry__0_i_9_n_6\,
      O(0) => \i__carry__0_i_9_n_7\,
      S(3) => '0',
      S(2) => \i__carry__0_i_11_n_0\,
      S(1) => \i__carry__0_i_12_n_0\,
      S(0) => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_9__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_10__0_n_0\,
      CO(3 downto 2) => \NLW_i__carry__0_i_9__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i__carry__0_i_9__0_n_2\,
      CO(0) => \i__carry__0_i_9__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i__carry__0_i_9__0_O_UNCONNECTED\(3),
      O(2) => \i__carry__0_i_9__0_n_5\,
      O(1) => \i__carry__0_i_9__0_n_6\,
      O(0) => \i__carry__0_i_9__0_n_7\,
      S(3) => '0',
      S(2) => \i__carry__0_i_11__0_n_0\,
      S(1) => \i__carry__0_i_12__0_n_0\,
      S(0) => \i__carry__0_i_13__0_n_0\
    );
\i__carry__0_i_9__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_10__1_n_0\,
      CO(3 downto 2) => \NLW_i__carry__0_i_9__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i__carry__0_i_9__1_n_2\,
      CO(0) => \i__carry__0_i_9__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i__carry__0_i_9__1_O_UNCONNECTED\(3),
      O(2) => \i__carry__0_i_9__1_n_5\,
      O(1) => \i__carry__0_i_9__1_n_6\,
      O(0) => \i__carry__0_i_9__1_n_7\,
      S(3) => '0',
      S(2) => \i__carry__0_i_11__1_n_0\,
      S(1) => \i__carry__0_i_12__1_n_0\,
      S(0) => \i__carry__0_i_13__1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(7),
      I1 => \i__carry_i_9_n_5\,
      I2 => angular_rate_x(6),
      I3 => \i__carry_i_9_n_6\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_10_n_0\,
      CO(2) => \i__carry_i_10_n_1\,
      CO(1) => \i__carry_i_10_n_2\,
      CO(0) => \i__carry_i_10_n_3\,
      CYINIT => ad_x2_carry_i_15_n_0,
      DI(3) => '0',
      DI(2) => \i__carry_i_15_n_0\,
      DI(1 downto 0) => B"00",
      O(3) => \i__carry_i_10_n_4\,
      O(2) => \i__carry_i_10_n_5\,
      O(1) => \i__carry_i_10_n_6\,
      O(0) => \NLW_i__carry_i_10_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_16_n_0\,
      S(2) => avg_x(3),
      S(1) => \i__carry_i_17_n_0\,
      S(0) => \i__carry_i_18_n_0\
    );
\i__carry_i_10__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_10__0_n_0\,
      CO(2) => \i__carry_i_10__0_n_1\,
      CO(1) => \i__carry_i_10__0_n_2\,
      CO(0) => \i__carry_i_10__0_n_3\,
      CYINIT => ad_y2_carry_i_15_n_0,
      DI(3) => '0',
      DI(2) => \i__carry_i_15__0_n_0\,
      DI(1 downto 0) => B"00",
      O(3) => \i__carry_i_10__0_n_4\,
      O(2) => \i__carry_i_10__0_n_5\,
      O(1) => \i__carry_i_10__0_n_6\,
      O(0) => \NLW_i__carry_i_10__0_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_16__0_n_0\,
      S(2) => avg_y(3),
      S(1) => \i__carry_i_17__0_n_0\,
      S(0) => \i__carry_i_18__0_n_0\
    );
\i__carry_i_10__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_10__1_n_0\,
      CO(2) => \i__carry_i_10__1_n_1\,
      CO(1) => \i__carry_i_10__1_n_2\,
      CO(0) => \i__carry_i_10__1_n_3\,
      CYINIT => ad_z2_carry_i_15_n_0,
      DI(3) => '0',
      DI(2) => \i__carry_i_15__1_n_0\,
      DI(1 downto 0) => B"00",
      O(3) => \i__carry_i_10__1_n_4\,
      O(2) => \i__carry_i_10__1_n_5\,
      O(1) => \i__carry_i_10__1_n_6\,
      O(0) => \NLW_i__carry_i_10__1_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_16__1_n_0\,
      S(2) => avg_z(3),
      S(1) => \i__carry_i_17__1_n_0\,
      S(0) => \i__carry_i_18__1_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(7),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_11__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(7),
      O => \i__carry_i_11__0_n_0\
    );
\i__carry_i_11__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(7),
      O => \i__carry_i_11__1_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(6),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_12__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(6),
      O => \i__carry_i_12__0_n_0\
    );
\i__carry_i_12__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(6),
      O => \i__carry_i_12__1_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(8),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_13__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(8),
      O => \i__carry_i_13__0_n_0\
    );
\i__carry_i_13__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(8),
      O => \i__carry_i_13__1_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(5),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_14__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(5),
      O => \i__carry_i_14__0_n_0\
    );
\i__carry_i_14__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(5),
      O => \i__carry_i_14__1_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(3),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_15__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(3),
      O => \i__carry_i_15__0_n_0\
    );
\i__carry_i_15__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(3),
      O => \i__carry_i_15__1_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(4),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_16__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(4),
      O => \i__carry_i_16__0_n_0\
    );
\i__carry_i_16__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(4),
      O => \i__carry_i_16__1_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(2),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_17__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(2),
      O => \i__carry_i_17__0_n_0\
    );
\i__carry_i_17__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(2),
      O => \i__carry_i_17__1_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_x(1),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_18__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_y(1),
      O => \i__carry_i_18__0_n_0\
    );
\i__carry_i_18__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => avg_z(1),
      O => \i__carry_i_18__1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(7),
      I1 => \i__carry_i_9__0_n_5\,
      I2 => angular_rate_y(6),
      I3 => \i__carry_i_9__0_n_6\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(7),
      I1 => \i__carry_i_9__1_n_5\,
      I2 => angular_rate_z(6),
      I3 => \i__carry_i_9__1_n_6\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(5),
      I1 => \i__carry_i_9_n_7\,
      I2 => angular_rate_x(4),
      I3 => \i__carry_i_10_n_4\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(5),
      I1 => \i__carry_i_9__0_n_7\,
      I2 => angular_rate_y(4),
      I3 => \i__carry_i_10__0_n_4\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(5),
      I1 => \i__carry_i_9__1_n_7\,
      I2 => angular_rate_z(4),
      I3 => \i__carry_i_10__1_n_4\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(3),
      I1 => \i__carry_i_10_n_5\,
      I2 => angular_rate_x(2),
      I3 => \i__carry_i_10_n_6\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(3),
      I1 => \i__carry_i_10__0_n_5\,
      I2 => angular_rate_y(2),
      I3 => \i__carry_i_10__0_n_6\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(3),
      I1 => \i__carry_i_10__1_n_5\,
      I2 => angular_rate_z(2),
      I3 => \i__carry_i_10__1_n_6\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_x(1),
      I1 => ad_x2_carry_i_10_n_7,
      I2 => angular_rate_x(0),
      I3 => avg_x(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_y(1),
      I1 => ad_y2_carry_i_10_n_7,
      I2 => angular_rate_y(0),
      I3 => avg_y(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => angular_rate_z(1),
      I1 => ad_z2_carry_i_10_n_7,
      I2 => angular_rate_z(0),
      I3 => avg_z(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9_n_5\,
      I1 => angular_rate_x(7),
      I2 => \i__carry_i_9_n_6\,
      I3 => angular_rate_x(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9__0_n_5\,
      I1 => angular_rate_y(7),
      I2 => \i__carry_i_9__0_n_6\,
      I3 => angular_rate_y(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9__1_n_5\,
      I1 => angular_rate_z(7),
      I2 => \i__carry_i_9__1_n_6\,
      I3 => angular_rate_z(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9_n_7\,
      I1 => angular_rate_x(5),
      I2 => \i__carry_i_10_n_4\,
      I3 => angular_rate_x(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9__0_n_7\,
      I1 => angular_rate_y(5),
      I2 => \i__carry_i_10__0_n_4\,
      I3 => angular_rate_y(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_9__1_n_7\,
      I1 => angular_rate_z(5),
      I2 => \i__carry_i_10__1_n_4\,
      I3 => angular_rate_z(4),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_10_n_5\,
      I1 => angular_rate_x(3),
      I2 => \i__carry_i_10_n_6\,
      I3 => angular_rate_x(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_10__0_n_5\,
      I1 => angular_rate_y(3),
      I2 => \i__carry_i_10__0_n_6\,
      I3 => angular_rate_y(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_10__1_n_5\,
      I1 => angular_rate_z(3),
      I2 => \i__carry_i_10__1_n_6\,
      I3 => angular_rate_z(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => angular_rate_x(0),
      I1 => avg_x(0),
      I2 => ad_x2_carry_i_10_n_7,
      I3 => angular_rate_x(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => angular_rate_y(0),
      I1 => avg_y(0),
      I2 => ad_y2_carry_i_10_n_7,
      I3 => angular_rate_y(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => angular_rate_z(0),
      I1 => avg_z(0),
      I2 => ad_z2_carry_i_10_n_7,
      I3 => angular_rate_z(1),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_10_n_0\,
      CO(3) => \i__carry_i_9_n_0\,
      CO(2) => \i__carry_i_9_n_1\,
      CO(1) => \i__carry_i_9_n_2\,
      CO(0) => \i__carry_i_9_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_11_n_0\,
      DI(1) => \i__carry_i_12_n_0\,
      DI(0) => '0',
      O(3) => \i__carry_i_9_n_4\,
      O(2) => \i__carry_i_9_n_5\,
      O(1) => \i__carry_i_9_n_6\,
      O(0) => \i__carry_i_9_n_7\,
      S(3) => \i__carry_i_13_n_0\,
      S(2 downto 1) => avg_x(7 downto 6),
      S(0) => \i__carry_i_14_n_0\
    );
\i__carry_i_9__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_10__0_n_0\,
      CO(3) => \i__carry_i_9__0_n_0\,
      CO(2) => \i__carry_i_9__0_n_1\,
      CO(1) => \i__carry_i_9__0_n_2\,
      CO(0) => \i__carry_i_9__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_11__0_n_0\,
      DI(1) => \i__carry_i_12__0_n_0\,
      DI(0) => '0',
      O(3) => \i__carry_i_9__0_n_4\,
      O(2) => \i__carry_i_9__0_n_5\,
      O(1) => \i__carry_i_9__0_n_6\,
      O(0) => \i__carry_i_9__0_n_7\,
      S(3) => \i__carry_i_13__0_n_0\,
      S(2 downto 1) => avg_y(7 downto 6),
      S(0) => \i__carry_i_14__0_n_0\
    );
\i__carry_i_9__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_10__1_n_0\,
      CO(3) => \i__carry_i_9__1_n_0\,
      CO(2) => \i__carry_i_9__1_n_1\,
      CO(1) => \i__carry_i_9__1_n_2\,
      CO(0) => \i__carry_i_9__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_11__1_n_0\,
      DI(1) => \i__carry_i_12__1_n_0\,
      DI(0) => '0',
      O(3) => \i__carry_i_9__1_n_4\,
      O(2) => \i__carry_i_9__1_n_5\,
      O(1) => \i__carry_i_9__1_n_6\,
      O(0) => \i__carry_i_9__1_n_7\,
      S(3) => \i__carry_i_13__1_n_0\,
      S(2 downto 1) => avg_z(7 downto 6),
      S(0) => \i__carry_i_14__1_n_0\
    );
\integrate_x[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(3),
      I1 => \integrate_x_reg_n_0_[3]\,
      O => \integrate_x[0]_i_2_n_0\
    );
\integrate_x[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(2),
      I1 => \integrate_x_reg_n_0_[2]\,
      O => \integrate_x[0]_i_3_n_0\
    );
\integrate_x[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(1),
      I1 => \integrate_x_reg_n_0_[1]\,
      O => \integrate_x[0]_i_4_n_0\
    );
\integrate_x[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(0),
      I1 => \integrate_x_reg_n_0_[0]\,
      O => \integrate_x[0]_i_5_n_0\
    );
\integrate_x[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[15]\,
      O => \integrate_x[12]_i_2_n_0\
    );
\integrate_x[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(14),
      I1 => \integrate_x_reg_n_0_[14]\,
      O => \integrate_x[12]_i_3_n_0\
    );
\integrate_x[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(13),
      I1 => \integrate_x_reg_n_0_[13]\,
      O => \integrate_x[12]_i_4_n_0\
    );
\integrate_x[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(12),
      I1 => \integrate_x_reg_n_0_[12]\,
      O => \integrate_x[12]_i_5_n_0\
    );
\integrate_x[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[19]\,
      O => \integrate_x[16]_i_2_n_0\
    );
\integrate_x[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[18]\,
      O => \integrate_x[16]_i_3_n_0\
    );
\integrate_x[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[17]\,
      O => \integrate_x[16]_i_4_n_0\
    );
\integrate_x[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[16]\,
      O => \integrate_x[16]_i_5_n_0\
    );
\integrate_x[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[23]\,
      O => \integrate_x[20]_i_2_n_0\
    );
\integrate_x[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[22]\,
      O => \integrate_x[20]_i_3_n_0\
    );
\integrate_x[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[21]\,
      O => \integrate_x[20]_i_4_n_0\
    );
\integrate_x[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[20]\,
      O => \integrate_x[20]_i_5_n_0\
    );
\integrate_x[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[27]\,
      O => \integrate_x[24]_i_2_n_0\
    );
\integrate_x[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[26]\,
      O => \integrate_x[24]_i_3_n_0\
    );
\integrate_x[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[25]\,
      O => \integrate_x[24]_i_4_n_0\
    );
\integrate_x[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => \integrate_x_reg_n_0_[24]\,
      O => \integrate_x[24]_i_5_n_0\
    );
\integrate_x[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(31),
      O => \integrate_x[28]_i_2_n_0\
    );
\integrate_x[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(30),
      O => \integrate_x[28]_i_3_n_0\
    );
\integrate_x[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(29),
      O => \integrate_x[28]_i_4_n_0\
    );
\integrate_x[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(28),
      O => \integrate_x[28]_i_5_n_0\
    );
\integrate_x[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(35),
      O => \integrate_x[32]_i_2_n_0\
    );
\integrate_x[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(34),
      O => \integrate_x[32]_i_3_n_0\
    );
\integrate_x[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(33),
      O => \integrate_x[32]_i_4_n_0\
    );
\integrate_x[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(32),
      O => \integrate_x[32]_i_5_n_0\
    );
\integrate_x[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(39),
      O => \integrate_x[36]_i_2_n_0\
    );
\integrate_x[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(38),
      O => \integrate_x[36]_i_3_n_0\
    );
\integrate_x[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(37),
      O => \integrate_x[36]_i_4_n_0\
    );
\integrate_x[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(36),
      O => \integrate_x[36]_i_5_n_0\
    );
\integrate_x[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(43),
      O => \integrate_x[40]_i_2_n_0\
    );
\integrate_x[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(42),
      O => \integrate_x[40]_i_3_n_0\
    );
\integrate_x[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(41),
      O => \integrate_x[40]_i_4_n_0\
    );
\integrate_x[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(15),
      I1 => integrate_x_reg(40),
      O => \integrate_x[40]_i_5_n_0\
    );
\integrate_x[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(7),
      I1 => \integrate_x_reg_n_0_[7]\,
      O => \integrate_x[4]_i_2_n_0\
    );
\integrate_x[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(6),
      I1 => \integrate_x_reg_n_0_[6]\,
      O => \integrate_x[4]_i_3_n_0\
    );
\integrate_x[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(5),
      I1 => \integrate_x_reg_n_0_[5]\,
      O => \integrate_x[4]_i_4_n_0\
    );
\integrate_x[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(4),
      I1 => \integrate_x_reg_n_0_[4]\,
      O => \integrate_x[4]_i_5_n_0\
    );
\integrate_x[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(11),
      I1 => \integrate_x_reg_n_0_[11]\,
      O => \integrate_x[8]_i_2_n_0\
    );
\integrate_x[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(10),
      I1 => \integrate_x_reg_n_0_[10]\,
      O => \integrate_x[8]_i_3_n_0\
    );
\integrate_x[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(9),
      I1 => \integrate_x_reg_n_0_[9]\,
      O => \integrate_x[8]_i_4_n_0\
    );
\integrate_x[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_x(8),
      I1 => \integrate_x_reg_n_0_[8]\,
      O => \integrate_x[8]_i_5_n_0\
    );
\integrate_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[0]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[0]\,
      R => integrate_z
    );
\integrate_x_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \integrate_x_reg[0]_i_1_n_0\,
      CO(2) => \integrate_x_reg[0]_i_1_n_1\,
      CO(1) => \integrate_x_reg[0]_i_1_n_2\,
      CO(0) => \integrate_x_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_x(3 downto 0),
      O(3) => \integrate_x_reg[0]_i_1_n_4\,
      O(2) => \integrate_x_reg[0]_i_1_n_5\,
      O(1) => \integrate_x_reg[0]_i_1_n_6\,
      O(0) => \integrate_x_reg[0]_i_1_n_7\,
      S(3) => \integrate_x[0]_i_2_n_0\,
      S(2) => \integrate_x[0]_i_3_n_0\,
      S(1) => \integrate_x[0]_i_4_n_0\,
      S(0) => \integrate_x[0]_i_5_n_0\
    );
\integrate_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[8]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[10]\,
      R => integrate_z
    );
\integrate_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[8]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[11]\,
      R => integrate_z
    );
\integrate_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[12]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[12]\,
      R => integrate_z
    );
\integrate_x_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[8]_i_1_n_0\,
      CO(3) => \integrate_x_reg[12]_i_1_n_0\,
      CO(2) => \integrate_x_reg[12]_i_1_n_1\,
      CO(1) => \integrate_x_reg[12]_i_1_n_2\,
      CO(0) => \integrate_x_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_x(15 downto 12),
      O(3) => \integrate_x_reg[12]_i_1_n_4\,
      O(2) => \integrate_x_reg[12]_i_1_n_5\,
      O(1) => \integrate_x_reg[12]_i_1_n_6\,
      O(0) => \integrate_x_reg[12]_i_1_n_7\,
      S(3) => \integrate_x[12]_i_2_n_0\,
      S(2) => \integrate_x[12]_i_3_n_0\,
      S(1) => \integrate_x[12]_i_4_n_0\,
      S(0) => \integrate_x[12]_i_5_n_0\
    );
\integrate_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[12]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[13]\,
      R => integrate_z
    );
\integrate_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[12]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[14]\,
      R => integrate_z
    );
\integrate_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[12]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[15]\,
      R => integrate_z
    );
\integrate_x_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[16]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[16]\,
      R => integrate_z
    );
\integrate_x_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[12]_i_1_n_0\,
      CO(3) => \integrate_x_reg[16]_i_1_n_0\,
      CO(2) => \integrate_x_reg[16]_i_1_n_1\,
      CO(1) => \integrate_x_reg[16]_i_1_n_2\,
      CO(0) => \integrate_x_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[16]_i_1_n_4\,
      O(2) => \integrate_x_reg[16]_i_1_n_5\,
      O(1) => \integrate_x_reg[16]_i_1_n_6\,
      O(0) => \integrate_x_reg[16]_i_1_n_7\,
      S(3) => \integrate_x[16]_i_2_n_0\,
      S(2) => \integrate_x[16]_i_3_n_0\,
      S(1) => \integrate_x[16]_i_4_n_0\,
      S(0) => \integrate_x[16]_i_5_n_0\
    );
\integrate_x_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[16]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[17]\,
      R => integrate_z
    );
\integrate_x_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[16]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[18]\,
      R => integrate_z
    );
\integrate_x_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[16]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[19]\,
      R => integrate_z
    );
\integrate_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[0]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[1]\,
      R => integrate_z
    );
\integrate_x_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[20]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[20]\,
      R => integrate_z
    );
\integrate_x_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[16]_i_1_n_0\,
      CO(3) => \integrate_x_reg[20]_i_1_n_0\,
      CO(2) => \integrate_x_reg[20]_i_1_n_1\,
      CO(1) => \integrate_x_reg[20]_i_1_n_2\,
      CO(0) => \integrate_x_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[20]_i_1_n_4\,
      O(2) => \integrate_x_reg[20]_i_1_n_5\,
      O(1) => \integrate_x_reg[20]_i_1_n_6\,
      O(0) => \integrate_x_reg[20]_i_1_n_7\,
      S(3) => \integrate_x[20]_i_2_n_0\,
      S(2) => \integrate_x[20]_i_3_n_0\,
      S(1) => \integrate_x[20]_i_4_n_0\,
      S(0) => \integrate_x[20]_i_5_n_0\
    );
\integrate_x_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[20]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[21]\,
      R => integrate_z
    );
\integrate_x_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[20]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[22]\,
      R => integrate_z
    );
\integrate_x_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[20]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[23]\,
      R => integrate_z
    );
\integrate_x_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[24]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[24]\,
      R => integrate_z
    );
\integrate_x_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[20]_i_1_n_0\,
      CO(3) => \integrate_x_reg[24]_i_1_n_0\,
      CO(2) => \integrate_x_reg[24]_i_1_n_1\,
      CO(1) => \integrate_x_reg[24]_i_1_n_2\,
      CO(0) => \integrate_x_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[24]_i_1_n_4\,
      O(2) => \integrate_x_reg[24]_i_1_n_5\,
      O(1) => \integrate_x_reg[24]_i_1_n_6\,
      O(0) => \integrate_x_reg[24]_i_1_n_7\,
      S(3) => \integrate_x[24]_i_2_n_0\,
      S(2) => \integrate_x[24]_i_3_n_0\,
      S(1) => \integrate_x[24]_i_4_n_0\,
      S(0) => \integrate_x[24]_i_5_n_0\
    );
\integrate_x_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[24]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[25]\,
      R => integrate_z
    );
\integrate_x_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[24]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[26]\,
      R => integrate_z
    );
\integrate_x_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[24]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[27]\,
      R => integrate_z
    );
\integrate_x_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[28]_i_1_n_7\,
      Q => integrate_x_reg(28),
      R => integrate_z
    );
\integrate_x_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[24]_i_1_n_0\,
      CO(3) => \integrate_x_reg[28]_i_1_n_0\,
      CO(2) => \integrate_x_reg[28]_i_1_n_1\,
      CO(1) => \integrate_x_reg[28]_i_1_n_2\,
      CO(0) => \integrate_x_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[28]_i_1_n_4\,
      O(2) => \integrate_x_reg[28]_i_1_n_5\,
      O(1) => \integrate_x_reg[28]_i_1_n_6\,
      O(0) => \integrate_x_reg[28]_i_1_n_7\,
      S(3) => \integrate_x[28]_i_2_n_0\,
      S(2) => \integrate_x[28]_i_3_n_0\,
      S(1) => \integrate_x[28]_i_4_n_0\,
      S(0) => \integrate_x[28]_i_5_n_0\
    );
\integrate_x_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[28]_i_1_n_6\,
      Q => integrate_x_reg(29),
      R => integrate_z
    );
\integrate_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[0]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[2]\,
      R => integrate_z
    );
\integrate_x_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[28]_i_1_n_5\,
      Q => integrate_x_reg(30),
      R => integrate_z
    );
\integrate_x_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[28]_i_1_n_4\,
      Q => integrate_x_reg(31),
      R => integrate_z
    );
\integrate_x_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[32]_i_1_n_7\,
      Q => integrate_x_reg(32),
      R => integrate_z
    );
\integrate_x_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[28]_i_1_n_0\,
      CO(3) => \integrate_x_reg[32]_i_1_n_0\,
      CO(2) => \integrate_x_reg[32]_i_1_n_1\,
      CO(1) => \integrate_x_reg[32]_i_1_n_2\,
      CO(0) => \integrate_x_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[32]_i_1_n_4\,
      O(2) => \integrate_x_reg[32]_i_1_n_5\,
      O(1) => \integrate_x_reg[32]_i_1_n_6\,
      O(0) => \integrate_x_reg[32]_i_1_n_7\,
      S(3) => \integrate_x[32]_i_2_n_0\,
      S(2) => \integrate_x[32]_i_3_n_0\,
      S(1) => \integrate_x[32]_i_4_n_0\,
      S(0) => \integrate_x[32]_i_5_n_0\
    );
\integrate_x_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[32]_i_1_n_6\,
      Q => integrate_x_reg(33),
      R => integrate_z
    );
\integrate_x_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[32]_i_1_n_5\,
      Q => integrate_x_reg(34),
      R => integrate_z
    );
\integrate_x_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[32]_i_1_n_4\,
      Q => integrate_x_reg(35),
      R => integrate_z
    );
\integrate_x_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[36]_i_1_n_7\,
      Q => integrate_x_reg(36),
      R => integrate_z
    );
\integrate_x_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[32]_i_1_n_0\,
      CO(3) => \integrate_x_reg[36]_i_1_n_0\,
      CO(2) => \integrate_x_reg[36]_i_1_n_1\,
      CO(1) => \integrate_x_reg[36]_i_1_n_2\,
      CO(0) => \integrate_x_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_x(15),
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[36]_i_1_n_4\,
      O(2) => \integrate_x_reg[36]_i_1_n_5\,
      O(1) => \integrate_x_reg[36]_i_1_n_6\,
      O(0) => \integrate_x_reg[36]_i_1_n_7\,
      S(3) => \integrate_x[36]_i_2_n_0\,
      S(2) => \integrate_x[36]_i_3_n_0\,
      S(1) => \integrate_x[36]_i_4_n_0\,
      S(0) => \integrate_x[36]_i_5_n_0\
    );
\integrate_x_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[36]_i_1_n_6\,
      Q => integrate_x_reg(37),
      R => integrate_z
    );
\integrate_x_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[36]_i_1_n_5\,
      Q => integrate_x_reg(38),
      R => integrate_z
    );
\integrate_x_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[36]_i_1_n_4\,
      Q => integrate_x_reg(39),
      R => integrate_z
    );
\integrate_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[0]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[3]\,
      R => integrate_z
    );
\integrate_x_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[40]_i_1_n_7\,
      Q => integrate_x_reg(40),
      R => integrate_z
    );
\integrate_x_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[36]_i_1_n_0\,
      CO(3) => \NLW_integrate_x_reg[40]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \integrate_x_reg[40]_i_1_n_1\,
      CO(1) => \integrate_x_reg[40]_i_1_n_2\,
      CO(0) => \integrate_x_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => ad_x(15),
      DI(1) => ad_x(15),
      DI(0) => ad_x(15),
      O(3) => \integrate_x_reg[40]_i_1_n_4\,
      O(2) => \integrate_x_reg[40]_i_1_n_5\,
      O(1) => \integrate_x_reg[40]_i_1_n_6\,
      O(0) => \integrate_x_reg[40]_i_1_n_7\,
      S(3) => \integrate_x[40]_i_2_n_0\,
      S(2) => \integrate_x[40]_i_3_n_0\,
      S(1) => \integrate_x[40]_i_4_n_0\,
      S(0) => \integrate_x[40]_i_5_n_0\
    );
\integrate_x_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[40]_i_1_n_6\,
      Q => integrate_x_reg(41),
      R => integrate_z
    );
\integrate_x_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[40]_i_1_n_5\,
      Q => integrate_x_reg(42),
      R => integrate_z
    );
\integrate_x_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[40]_i_1_n_4\,
      Q => integrate_x_reg(43),
      R => integrate_z
    );
\integrate_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[4]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[4]\,
      R => integrate_z
    );
\integrate_x_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[0]_i_1_n_0\,
      CO(3) => \integrate_x_reg[4]_i_1_n_0\,
      CO(2) => \integrate_x_reg[4]_i_1_n_1\,
      CO(1) => \integrate_x_reg[4]_i_1_n_2\,
      CO(0) => \integrate_x_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_x(7 downto 4),
      O(3) => \integrate_x_reg[4]_i_1_n_4\,
      O(2) => \integrate_x_reg[4]_i_1_n_5\,
      O(1) => \integrate_x_reg[4]_i_1_n_6\,
      O(0) => \integrate_x_reg[4]_i_1_n_7\,
      S(3) => \integrate_x[4]_i_2_n_0\,
      S(2) => \integrate_x[4]_i_3_n_0\,
      S(1) => \integrate_x[4]_i_4_n_0\,
      S(0) => \integrate_x[4]_i_5_n_0\
    );
\integrate_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[4]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[5]\,
      R => integrate_z
    );
\integrate_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[4]_i_1_n_5\,
      Q => \integrate_x_reg_n_0_[6]\,
      R => integrate_z
    );
\integrate_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[4]_i_1_n_4\,
      Q => \integrate_x_reg_n_0_[7]\,
      R => integrate_z
    );
\integrate_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[8]_i_1_n_7\,
      Q => \integrate_x_reg_n_0_[8]\,
      R => integrate_z
    );
\integrate_x_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_x_reg[4]_i_1_n_0\,
      CO(3) => \integrate_x_reg[8]_i_1_n_0\,
      CO(2) => \integrate_x_reg[8]_i_1_n_1\,
      CO(1) => \integrate_x_reg[8]_i_1_n_2\,
      CO(0) => \integrate_x_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_x(11 downto 8),
      O(3) => \integrate_x_reg[8]_i_1_n_4\,
      O(2) => \integrate_x_reg[8]_i_1_n_5\,
      O(1) => \integrate_x_reg[8]_i_1_n_6\,
      O(0) => \integrate_x_reg[8]_i_1_n_7\,
      S(3) => \integrate_x[8]_i_2_n_0\,
      S(2) => \integrate_x[8]_i_3_n_0\,
      S(1) => \integrate_x[8]_i_4_n_0\,
      S(0) => \integrate_x[8]_i_5_n_0\
    );
\integrate_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_x_reg[8]_i_1_n_6\,
      Q => \integrate_x_reg_n_0_[9]\,
      R => integrate_z
    );
\integrate_y[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(3),
      I1 => \integrate_y_reg_n_0_[3]\,
      O => \integrate_y[0]_i_2_n_0\
    );
\integrate_y[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(2),
      I1 => \integrate_y_reg_n_0_[2]\,
      O => \integrate_y[0]_i_3_n_0\
    );
\integrate_y[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(1),
      I1 => \integrate_y_reg_n_0_[1]\,
      O => \integrate_y[0]_i_4_n_0\
    );
\integrate_y[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(0),
      I1 => \integrate_y_reg_n_0_[0]\,
      O => \integrate_y[0]_i_5_n_0\
    );
\integrate_y[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[15]\,
      O => \integrate_y[12]_i_2_n_0\
    );
\integrate_y[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(14),
      I1 => \integrate_y_reg_n_0_[14]\,
      O => \integrate_y[12]_i_3_n_0\
    );
\integrate_y[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(13),
      I1 => \integrate_y_reg_n_0_[13]\,
      O => \integrate_y[12]_i_4_n_0\
    );
\integrate_y[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(12),
      I1 => \integrate_y_reg_n_0_[12]\,
      O => \integrate_y[12]_i_5_n_0\
    );
\integrate_y[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[19]\,
      O => \integrate_y[16]_i_2_n_0\
    );
\integrate_y[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[18]\,
      O => \integrate_y[16]_i_3_n_0\
    );
\integrate_y[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[17]\,
      O => \integrate_y[16]_i_4_n_0\
    );
\integrate_y[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[16]\,
      O => \integrate_y[16]_i_5_n_0\
    );
\integrate_y[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[23]\,
      O => \integrate_y[20]_i_2_n_0\
    );
\integrate_y[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[22]\,
      O => \integrate_y[20]_i_3_n_0\
    );
\integrate_y[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[21]\,
      O => \integrate_y[20]_i_4_n_0\
    );
\integrate_y[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[20]\,
      O => \integrate_y[20]_i_5_n_0\
    );
\integrate_y[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[27]\,
      O => \integrate_y[24]_i_2_n_0\
    );
\integrate_y[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[26]\,
      O => \integrate_y[24]_i_3_n_0\
    );
\integrate_y[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[25]\,
      O => \integrate_y[24]_i_4_n_0\
    );
\integrate_y[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => \integrate_y_reg_n_0_[24]\,
      O => \integrate_y[24]_i_5_n_0\
    );
\integrate_y[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(31),
      O => \integrate_y[28]_i_2_n_0\
    );
\integrate_y[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(30),
      O => \integrate_y[28]_i_3_n_0\
    );
\integrate_y[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(29),
      O => \integrate_y[28]_i_4_n_0\
    );
\integrate_y[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(28),
      O => \integrate_y[28]_i_5_n_0\
    );
\integrate_y[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(35),
      O => \integrate_y[32]_i_2_n_0\
    );
\integrate_y[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(34),
      O => \integrate_y[32]_i_3_n_0\
    );
\integrate_y[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(33),
      O => \integrate_y[32]_i_4_n_0\
    );
\integrate_y[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(32),
      O => \integrate_y[32]_i_5_n_0\
    );
\integrate_y[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(39),
      O => \integrate_y[36]_i_2_n_0\
    );
\integrate_y[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(38),
      O => \integrate_y[36]_i_3_n_0\
    );
\integrate_y[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(37),
      O => \integrate_y[36]_i_4_n_0\
    );
\integrate_y[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(36),
      O => \integrate_y[36]_i_5_n_0\
    );
\integrate_y[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(43),
      O => \integrate_y[40]_i_2_n_0\
    );
\integrate_y[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(42),
      O => \integrate_y[40]_i_3_n_0\
    );
\integrate_y[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(41),
      O => \integrate_y[40]_i_4_n_0\
    );
\integrate_y[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(15),
      I1 => integrate_y_reg(40),
      O => \integrate_y[40]_i_5_n_0\
    );
\integrate_y[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(7),
      I1 => \integrate_y_reg_n_0_[7]\,
      O => \integrate_y[4]_i_2_n_0\
    );
\integrate_y[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(6),
      I1 => \integrate_y_reg_n_0_[6]\,
      O => \integrate_y[4]_i_3_n_0\
    );
\integrate_y[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(5),
      I1 => \integrate_y_reg_n_0_[5]\,
      O => \integrate_y[4]_i_4_n_0\
    );
\integrate_y[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(4),
      I1 => \integrate_y_reg_n_0_[4]\,
      O => \integrate_y[4]_i_5_n_0\
    );
\integrate_y[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(11),
      I1 => \integrate_y_reg_n_0_[11]\,
      O => \integrate_y[8]_i_2_n_0\
    );
\integrate_y[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(10),
      I1 => \integrate_y_reg_n_0_[10]\,
      O => \integrate_y[8]_i_3_n_0\
    );
\integrate_y[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(9),
      I1 => \integrate_y_reg_n_0_[9]\,
      O => \integrate_y[8]_i_4_n_0\
    );
\integrate_y[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_y(8),
      I1 => \integrate_y_reg_n_0_[8]\,
      O => \integrate_y[8]_i_5_n_0\
    );
\integrate_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[0]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[0]\,
      R => integrate_z
    );
\integrate_y_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \integrate_y_reg[0]_i_1_n_0\,
      CO(2) => \integrate_y_reg[0]_i_1_n_1\,
      CO(1) => \integrate_y_reg[0]_i_1_n_2\,
      CO(0) => \integrate_y_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_y(3 downto 0),
      O(3) => \integrate_y_reg[0]_i_1_n_4\,
      O(2) => \integrate_y_reg[0]_i_1_n_5\,
      O(1) => \integrate_y_reg[0]_i_1_n_6\,
      O(0) => \integrate_y_reg[0]_i_1_n_7\,
      S(3) => \integrate_y[0]_i_2_n_0\,
      S(2) => \integrate_y[0]_i_3_n_0\,
      S(1) => \integrate_y[0]_i_4_n_0\,
      S(0) => \integrate_y[0]_i_5_n_0\
    );
\integrate_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[8]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[10]\,
      R => integrate_z
    );
\integrate_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[8]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[11]\,
      R => integrate_z
    );
\integrate_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[12]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[12]\,
      R => integrate_z
    );
\integrate_y_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[8]_i_1_n_0\,
      CO(3) => \integrate_y_reg[12]_i_1_n_0\,
      CO(2) => \integrate_y_reg[12]_i_1_n_1\,
      CO(1) => \integrate_y_reg[12]_i_1_n_2\,
      CO(0) => \integrate_y_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_y(15 downto 12),
      O(3) => \integrate_y_reg[12]_i_1_n_4\,
      O(2) => \integrate_y_reg[12]_i_1_n_5\,
      O(1) => \integrate_y_reg[12]_i_1_n_6\,
      O(0) => \integrate_y_reg[12]_i_1_n_7\,
      S(3) => \integrate_y[12]_i_2_n_0\,
      S(2) => \integrate_y[12]_i_3_n_0\,
      S(1) => \integrate_y[12]_i_4_n_0\,
      S(0) => \integrate_y[12]_i_5_n_0\
    );
\integrate_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[12]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[13]\,
      R => integrate_z
    );
\integrate_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[12]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[14]\,
      R => integrate_z
    );
\integrate_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[12]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[15]\,
      R => integrate_z
    );
\integrate_y_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[16]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[16]\,
      R => integrate_z
    );
\integrate_y_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[12]_i_1_n_0\,
      CO(3) => \integrate_y_reg[16]_i_1_n_0\,
      CO(2) => \integrate_y_reg[16]_i_1_n_1\,
      CO(1) => \integrate_y_reg[16]_i_1_n_2\,
      CO(0) => \integrate_y_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[16]_i_1_n_4\,
      O(2) => \integrate_y_reg[16]_i_1_n_5\,
      O(1) => \integrate_y_reg[16]_i_1_n_6\,
      O(0) => \integrate_y_reg[16]_i_1_n_7\,
      S(3) => \integrate_y[16]_i_2_n_0\,
      S(2) => \integrate_y[16]_i_3_n_0\,
      S(1) => \integrate_y[16]_i_4_n_0\,
      S(0) => \integrate_y[16]_i_5_n_0\
    );
\integrate_y_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[16]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[17]\,
      R => integrate_z
    );
\integrate_y_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[16]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[18]\,
      R => integrate_z
    );
\integrate_y_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[16]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[19]\,
      R => integrate_z
    );
\integrate_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[0]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[1]\,
      R => integrate_z
    );
\integrate_y_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[20]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[20]\,
      R => integrate_z
    );
\integrate_y_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[16]_i_1_n_0\,
      CO(3) => \integrate_y_reg[20]_i_1_n_0\,
      CO(2) => \integrate_y_reg[20]_i_1_n_1\,
      CO(1) => \integrate_y_reg[20]_i_1_n_2\,
      CO(0) => \integrate_y_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[20]_i_1_n_4\,
      O(2) => \integrate_y_reg[20]_i_1_n_5\,
      O(1) => \integrate_y_reg[20]_i_1_n_6\,
      O(0) => \integrate_y_reg[20]_i_1_n_7\,
      S(3) => \integrate_y[20]_i_2_n_0\,
      S(2) => \integrate_y[20]_i_3_n_0\,
      S(1) => \integrate_y[20]_i_4_n_0\,
      S(0) => \integrate_y[20]_i_5_n_0\
    );
\integrate_y_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[20]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[21]\,
      R => integrate_z
    );
\integrate_y_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[20]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[22]\,
      R => integrate_z
    );
\integrate_y_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[20]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[23]\,
      R => integrate_z
    );
\integrate_y_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[24]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[24]\,
      R => integrate_z
    );
\integrate_y_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[20]_i_1_n_0\,
      CO(3) => \integrate_y_reg[24]_i_1_n_0\,
      CO(2) => \integrate_y_reg[24]_i_1_n_1\,
      CO(1) => \integrate_y_reg[24]_i_1_n_2\,
      CO(0) => \integrate_y_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[24]_i_1_n_4\,
      O(2) => \integrate_y_reg[24]_i_1_n_5\,
      O(1) => \integrate_y_reg[24]_i_1_n_6\,
      O(0) => \integrate_y_reg[24]_i_1_n_7\,
      S(3) => \integrate_y[24]_i_2_n_0\,
      S(2) => \integrate_y[24]_i_3_n_0\,
      S(1) => \integrate_y[24]_i_4_n_0\,
      S(0) => \integrate_y[24]_i_5_n_0\
    );
\integrate_y_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[24]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[25]\,
      R => integrate_z
    );
\integrate_y_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[24]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[26]\,
      R => integrate_z
    );
\integrate_y_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[24]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[27]\,
      R => integrate_z
    );
\integrate_y_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[28]_i_1_n_7\,
      Q => integrate_y_reg(28),
      R => integrate_z
    );
\integrate_y_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[24]_i_1_n_0\,
      CO(3) => \integrate_y_reg[28]_i_1_n_0\,
      CO(2) => \integrate_y_reg[28]_i_1_n_1\,
      CO(1) => \integrate_y_reg[28]_i_1_n_2\,
      CO(0) => \integrate_y_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[28]_i_1_n_4\,
      O(2) => \integrate_y_reg[28]_i_1_n_5\,
      O(1) => \integrate_y_reg[28]_i_1_n_6\,
      O(0) => \integrate_y_reg[28]_i_1_n_7\,
      S(3) => \integrate_y[28]_i_2_n_0\,
      S(2) => \integrate_y[28]_i_3_n_0\,
      S(1) => \integrate_y[28]_i_4_n_0\,
      S(0) => \integrate_y[28]_i_5_n_0\
    );
\integrate_y_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[28]_i_1_n_6\,
      Q => integrate_y_reg(29),
      R => integrate_z
    );
\integrate_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[0]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[2]\,
      R => integrate_z
    );
\integrate_y_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[28]_i_1_n_5\,
      Q => integrate_y_reg(30),
      R => integrate_z
    );
\integrate_y_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[28]_i_1_n_4\,
      Q => integrate_y_reg(31),
      R => integrate_z
    );
\integrate_y_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[32]_i_1_n_7\,
      Q => integrate_y_reg(32),
      R => integrate_z
    );
\integrate_y_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[28]_i_1_n_0\,
      CO(3) => \integrate_y_reg[32]_i_1_n_0\,
      CO(2) => \integrate_y_reg[32]_i_1_n_1\,
      CO(1) => \integrate_y_reg[32]_i_1_n_2\,
      CO(0) => \integrate_y_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[32]_i_1_n_4\,
      O(2) => \integrate_y_reg[32]_i_1_n_5\,
      O(1) => \integrate_y_reg[32]_i_1_n_6\,
      O(0) => \integrate_y_reg[32]_i_1_n_7\,
      S(3) => \integrate_y[32]_i_2_n_0\,
      S(2) => \integrate_y[32]_i_3_n_0\,
      S(1) => \integrate_y[32]_i_4_n_0\,
      S(0) => \integrate_y[32]_i_5_n_0\
    );
\integrate_y_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[32]_i_1_n_6\,
      Q => integrate_y_reg(33),
      R => integrate_z
    );
\integrate_y_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[32]_i_1_n_5\,
      Q => integrate_y_reg(34),
      R => integrate_z
    );
\integrate_y_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[32]_i_1_n_4\,
      Q => integrate_y_reg(35),
      R => integrate_z
    );
\integrate_y_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[36]_i_1_n_7\,
      Q => integrate_y_reg(36),
      R => integrate_z
    );
\integrate_y_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[32]_i_1_n_0\,
      CO(3) => \integrate_y_reg[36]_i_1_n_0\,
      CO(2) => \integrate_y_reg[36]_i_1_n_1\,
      CO(1) => \integrate_y_reg[36]_i_1_n_2\,
      CO(0) => \integrate_y_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_y(15),
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[36]_i_1_n_4\,
      O(2) => \integrate_y_reg[36]_i_1_n_5\,
      O(1) => \integrate_y_reg[36]_i_1_n_6\,
      O(0) => \integrate_y_reg[36]_i_1_n_7\,
      S(3) => \integrate_y[36]_i_2_n_0\,
      S(2) => \integrate_y[36]_i_3_n_0\,
      S(1) => \integrate_y[36]_i_4_n_0\,
      S(0) => \integrate_y[36]_i_5_n_0\
    );
\integrate_y_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[36]_i_1_n_6\,
      Q => integrate_y_reg(37),
      R => integrate_z
    );
\integrate_y_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[36]_i_1_n_5\,
      Q => integrate_y_reg(38),
      R => integrate_z
    );
\integrate_y_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[36]_i_1_n_4\,
      Q => integrate_y_reg(39),
      R => integrate_z
    );
\integrate_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[0]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[3]\,
      R => integrate_z
    );
\integrate_y_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[40]_i_1_n_7\,
      Q => integrate_y_reg(40),
      R => integrate_z
    );
\integrate_y_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[36]_i_1_n_0\,
      CO(3) => \NLW_integrate_y_reg[40]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \integrate_y_reg[40]_i_1_n_1\,
      CO(1) => \integrate_y_reg[40]_i_1_n_2\,
      CO(0) => \integrate_y_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => ad_y(15),
      DI(1) => ad_y(15),
      DI(0) => ad_y(15),
      O(3) => \integrate_y_reg[40]_i_1_n_4\,
      O(2) => \integrate_y_reg[40]_i_1_n_5\,
      O(1) => \integrate_y_reg[40]_i_1_n_6\,
      O(0) => \integrate_y_reg[40]_i_1_n_7\,
      S(3) => \integrate_y[40]_i_2_n_0\,
      S(2) => \integrate_y[40]_i_3_n_0\,
      S(1) => \integrate_y[40]_i_4_n_0\,
      S(0) => \integrate_y[40]_i_5_n_0\
    );
\integrate_y_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[40]_i_1_n_6\,
      Q => integrate_y_reg(41),
      R => integrate_z
    );
\integrate_y_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[40]_i_1_n_5\,
      Q => integrate_y_reg(42),
      R => integrate_z
    );
\integrate_y_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[40]_i_1_n_4\,
      Q => integrate_y_reg(43),
      R => integrate_z
    );
\integrate_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[4]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[4]\,
      R => integrate_z
    );
\integrate_y_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[0]_i_1_n_0\,
      CO(3) => \integrate_y_reg[4]_i_1_n_0\,
      CO(2) => \integrate_y_reg[4]_i_1_n_1\,
      CO(1) => \integrate_y_reg[4]_i_1_n_2\,
      CO(0) => \integrate_y_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_y(7 downto 4),
      O(3) => \integrate_y_reg[4]_i_1_n_4\,
      O(2) => \integrate_y_reg[4]_i_1_n_5\,
      O(1) => \integrate_y_reg[4]_i_1_n_6\,
      O(0) => \integrate_y_reg[4]_i_1_n_7\,
      S(3) => \integrate_y[4]_i_2_n_0\,
      S(2) => \integrate_y[4]_i_3_n_0\,
      S(1) => \integrate_y[4]_i_4_n_0\,
      S(0) => \integrate_y[4]_i_5_n_0\
    );
\integrate_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[4]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[5]\,
      R => integrate_z
    );
\integrate_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[4]_i_1_n_5\,
      Q => \integrate_y_reg_n_0_[6]\,
      R => integrate_z
    );
\integrate_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[4]_i_1_n_4\,
      Q => \integrate_y_reg_n_0_[7]\,
      R => integrate_z
    );
\integrate_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[8]_i_1_n_7\,
      Q => \integrate_y_reg_n_0_[8]\,
      R => integrate_z
    );
\integrate_y_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_y_reg[4]_i_1_n_0\,
      CO(3) => \integrate_y_reg[8]_i_1_n_0\,
      CO(2) => \integrate_y_reg[8]_i_1_n_1\,
      CO(1) => \integrate_y_reg[8]_i_1_n_2\,
      CO(0) => \integrate_y_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_y(11 downto 8),
      O(3) => \integrate_y_reg[8]_i_1_n_4\,
      O(2) => \integrate_y_reg[8]_i_1_n_5\,
      O(1) => \integrate_y_reg[8]_i_1_n_6\,
      O(0) => \integrate_y_reg[8]_i_1_n_7\,
      S(3) => \integrate_y[8]_i_2_n_0\,
      S(2) => \integrate_y[8]_i_3_n_0\,
      S(1) => \integrate_y[8]_i_4_n_0\,
      S(0) => \integrate_y[8]_i_5_n_0\
    );
\integrate_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_y_reg[8]_i_1_n_6\,
      Q => \integrate_y_reg_n_0_[9]\,
      R => integrate_z
    );
\integrate_z[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => angle_reset,
      I1 => system_reset,
      O => integrate_z
    );
\integrate_z[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(3),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(2),
      I3 => \calibrate_timer_reg__0\(0),
      I4 => \avg_x[15]_i_3_n_0\,
      O => \integrate_z[0]_i_2_n_0\
    );
\integrate_z[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(3),
      I1 => \integrate_z_reg_n_0_[3]\,
      O => \integrate_z[0]_i_4_n_0\
    );
\integrate_z[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(2),
      I1 => \integrate_z_reg_n_0_[2]\,
      O => \integrate_z[0]_i_5_n_0\
    );
\integrate_z[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(1),
      I1 => \integrate_z_reg_n_0_[1]\,
      O => \integrate_z[0]_i_6_n_0\
    );
\integrate_z[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(0),
      I1 => \integrate_z_reg_n_0_[0]\,
      O => \integrate_z[0]_i_7_n_0\
    );
\integrate_z[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[15]\,
      O => \integrate_z[12]_i_2_n_0\
    );
\integrate_z[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(14),
      I1 => \integrate_z_reg_n_0_[14]\,
      O => \integrate_z[12]_i_3_n_0\
    );
\integrate_z[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(13),
      I1 => \integrate_z_reg_n_0_[13]\,
      O => \integrate_z[12]_i_4_n_0\
    );
\integrate_z[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(12),
      I1 => \integrate_z_reg_n_0_[12]\,
      O => \integrate_z[12]_i_5_n_0\
    );
\integrate_z[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[19]\,
      O => \integrate_z[16]_i_2_n_0\
    );
\integrate_z[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[18]\,
      O => \integrate_z[16]_i_3_n_0\
    );
\integrate_z[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[17]\,
      O => \integrate_z[16]_i_4_n_0\
    );
\integrate_z[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[16]\,
      O => \integrate_z[16]_i_5_n_0\
    );
\integrate_z[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[23]\,
      O => \integrate_z[20]_i_2_n_0\
    );
\integrate_z[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[22]\,
      O => \integrate_z[20]_i_3_n_0\
    );
\integrate_z[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[21]\,
      O => \integrate_z[20]_i_4_n_0\
    );
\integrate_z[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[20]\,
      O => \integrate_z[20]_i_5_n_0\
    );
\integrate_z[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[27]\,
      O => \integrate_z[24]_i_2_n_0\
    );
\integrate_z[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[26]\,
      O => \integrate_z[24]_i_3_n_0\
    );
\integrate_z[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[25]\,
      O => \integrate_z[24]_i_4_n_0\
    );
\integrate_z[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \integrate_z_reg_n_0_[24]\,
      O => \integrate_z[24]_i_5_n_0\
    );
\integrate_z[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(3),
      O => \integrate_z[28]_i_2_n_0\
    );
\integrate_z[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(2),
      O => \integrate_z[28]_i_3_n_0\
    );
\integrate_z[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(1),
      O => \integrate_z[28]_i_4_n_0\
    );
\integrate_z[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(0),
      O => \integrate_z[28]_i_5_n_0\
    );
\integrate_z[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(7),
      O => \integrate_z[32]_i_2_n_0\
    );
\integrate_z[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(6),
      O => \integrate_z[32]_i_3_n_0\
    );
\integrate_z[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(5),
      O => \integrate_z[32]_i_4_n_0\
    );
\integrate_z[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(4),
      O => \integrate_z[32]_i_5_n_0\
    );
\integrate_z[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(11),
      O => \integrate_z[36]_i_2_n_0\
    );
\integrate_z[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(10),
      O => \integrate_z[36]_i_3_n_0\
    );
\integrate_z[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(9),
      O => \integrate_z[36]_i_4_n_0\
    );
\integrate_z[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(8),
      O => \integrate_z[36]_i_5_n_0\
    );
\integrate_z[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(15),
      O => \integrate_z[40]_i_2_n_0\
    );
\integrate_z[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(14),
      O => \integrate_z[40]_i_3_n_0\
    );
\integrate_z[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(13),
      O => \integrate_z[40]_i_4_n_0\
    );
\integrate_z[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(15),
      I1 => \^d\(12),
      O => \integrate_z[40]_i_5_n_0\
    );
\integrate_z[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(7),
      I1 => \integrate_z_reg_n_0_[7]\,
      O => \integrate_z[4]_i_2_n_0\
    );
\integrate_z[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(6),
      I1 => \integrate_z_reg_n_0_[6]\,
      O => \integrate_z[4]_i_3_n_0\
    );
\integrate_z[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(5),
      I1 => \integrate_z_reg_n_0_[5]\,
      O => \integrate_z[4]_i_4_n_0\
    );
\integrate_z[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(4),
      I1 => \integrate_z_reg_n_0_[4]\,
      O => \integrate_z[4]_i_5_n_0\
    );
\integrate_z[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(11),
      I1 => \integrate_z_reg_n_0_[11]\,
      O => \integrate_z[8]_i_2_n_0\
    );
\integrate_z[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(10),
      I1 => \integrate_z_reg_n_0_[10]\,
      O => \integrate_z[8]_i_3_n_0\
    );
\integrate_z[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(9),
      I1 => \integrate_z_reg_n_0_[9]\,
      O => \integrate_z[8]_i_4_n_0\
    );
\integrate_z[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ad_z(8),
      I1 => \integrate_z_reg_n_0_[8]\,
      O => \integrate_z[8]_i_5_n_0\
    );
\integrate_z_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[0]_i_3_n_7\,
      Q => \integrate_z_reg_n_0_[0]\,
      R => integrate_z
    );
\integrate_z_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \integrate_z_reg[0]_i_3_n_0\,
      CO(2) => \integrate_z_reg[0]_i_3_n_1\,
      CO(1) => \integrate_z_reg[0]_i_3_n_2\,
      CO(0) => \integrate_z_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_z(3 downto 0),
      O(3) => \integrate_z_reg[0]_i_3_n_4\,
      O(2) => \integrate_z_reg[0]_i_3_n_5\,
      O(1) => \integrate_z_reg[0]_i_3_n_6\,
      O(0) => \integrate_z_reg[0]_i_3_n_7\,
      S(3) => \integrate_z[0]_i_4_n_0\,
      S(2) => \integrate_z[0]_i_5_n_0\,
      S(1) => \integrate_z[0]_i_6_n_0\,
      S(0) => \integrate_z[0]_i_7_n_0\
    );
\integrate_z_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[8]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[10]\,
      R => integrate_z
    );
\integrate_z_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[8]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[11]\,
      R => integrate_z
    );
\integrate_z_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[12]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[12]\,
      R => integrate_z
    );
\integrate_z_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[8]_i_1_n_0\,
      CO(3) => \integrate_z_reg[12]_i_1_n_0\,
      CO(2) => \integrate_z_reg[12]_i_1_n_1\,
      CO(1) => \integrate_z_reg[12]_i_1_n_2\,
      CO(0) => \integrate_z_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_z(15 downto 12),
      O(3) => \integrate_z_reg[12]_i_1_n_4\,
      O(2) => \integrate_z_reg[12]_i_1_n_5\,
      O(1) => \integrate_z_reg[12]_i_1_n_6\,
      O(0) => \integrate_z_reg[12]_i_1_n_7\,
      S(3) => \integrate_z[12]_i_2_n_0\,
      S(2) => \integrate_z[12]_i_3_n_0\,
      S(1) => \integrate_z[12]_i_4_n_0\,
      S(0) => \integrate_z[12]_i_5_n_0\
    );
\integrate_z_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[12]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[13]\,
      R => integrate_z
    );
\integrate_z_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[12]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[14]\,
      R => integrate_z
    );
\integrate_z_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[12]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[15]\,
      R => integrate_z
    );
\integrate_z_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[16]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[16]\,
      R => integrate_z
    );
\integrate_z_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[12]_i_1_n_0\,
      CO(3) => \integrate_z_reg[16]_i_1_n_0\,
      CO(2) => \integrate_z_reg[16]_i_1_n_1\,
      CO(1) => \integrate_z_reg[16]_i_1_n_2\,
      CO(0) => \integrate_z_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[16]_i_1_n_4\,
      O(2) => \integrate_z_reg[16]_i_1_n_5\,
      O(1) => \integrate_z_reg[16]_i_1_n_6\,
      O(0) => \integrate_z_reg[16]_i_1_n_7\,
      S(3) => \integrate_z[16]_i_2_n_0\,
      S(2) => \integrate_z[16]_i_3_n_0\,
      S(1) => \integrate_z[16]_i_4_n_0\,
      S(0) => \integrate_z[16]_i_5_n_0\
    );
\integrate_z_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[16]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[17]\,
      R => integrate_z
    );
\integrate_z_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[16]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[18]\,
      R => integrate_z
    );
\integrate_z_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[16]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[19]\,
      R => integrate_z
    );
\integrate_z_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[0]_i_3_n_6\,
      Q => \integrate_z_reg_n_0_[1]\,
      R => integrate_z
    );
\integrate_z_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[20]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[20]\,
      R => integrate_z
    );
\integrate_z_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[16]_i_1_n_0\,
      CO(3) => \integrate_z_reg[20]_i_1_n_0\,
      CO(2) => \integrate_z_reg[20]_i_1_n_1\,
      CO(1) => \integrate_z_reg[20]_i_1_n_2\,
      CO(0) => \integrate_z_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[20]_i_1_n_4\,
      O(2) => \integrate_z_reg[20]_i_1_n_5\,
      O(1) => \integrate_z_reg[20]_i_1_n_6\,
      O(0) => \integrate_z_reg[20]_i_1_n_7\,
      S(3) => \integrate_z[20]_i_2_n_0\,
      S(2) => \integrate_z[20]_i_3_n_0\,
      S(1) => \integrate_z[20]_i_4_n_0\,
      S(0) => \integrate_z[20]_i_5_n_0\
    );
\integrate_z_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[20]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[21]\,
      R => integrate_z
    );
\integrate_z_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[20]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[22]\,
      R => integrate_z
    );
\integrate_z_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[20]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[23]\,
      R => integrate_z
    );
\integrate_z_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[24]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[24]\,
      R => integrate_z
    );
\integrate_z_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[20]_i_1_n_0\,
      CO(3) => \integrate_z_reg[24]_i_1_n_0\,
      CO(2) => \integrate_z_reg[24]_i_1_n_1\,
      CO(1) => \integrate_z_reg[24]_i_1_n_2\,
      CO(0) => \integrate_z_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[24]_i_1_n_4\,
      O(2) => \integrate_z_reg[24]_i_1_n_5\,
      O(1) => \integrate_z_reg[24]_i_1_n_6\,
      O(0) => \integrate_z_reg[24]_i_1_n_7\,
      S(3) => \integrate_z[24]_i_2_n_0\,
      S(2) => \integrate_z[24]_i_3_n_0\,
      S(1) => \integrate_z[24]_i_4_n_0\,
      S(0) => \integrate_z[24]_i_5_n_0\
    );
\integrate_z_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[24]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[25]\,
      R => integrate_z
    );
\integrate_z_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[24]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[26]\,
      R => integrate_z
    );
\integrate_z_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[24]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[27]\,
      R => integrate_z
    );
\integrate_z_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[28]_i_1_n_7\,
      Q => \^d\(0),
      R => integrate_z
    );
\integrate_z_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[24]_i_1_n_0\,
      CO(3) => \integrate_z_reg[28]_i_1_n_0\,
      CO(2) => \integrate_z_reg[28]_i_1_n_1\,
      CO(1) => \integrate_z_reg[28]_i_1_n_2\,
      CO(0) => \integrate_z_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[28]_i_1_n_4\,
      O(2) => \integrate_z_reg[28]_i_1_n_5\,
      O(1) => \integrate_z_reg[28]_i_1_n_6\,
      O(0) => \integrate_z_reg[28]_i_1_n_7\,
      S(3) => \integrate_z[28]_i_2_n_0\,
      S(2) => \integrate_z[28]_i_3_n_0\,
      S(1) => \integrate_z[28]_i_4_n_0\,
      S(0) => \integrate_z[28]_i_5_n_0\
    );
\integrate_z_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[28]_i_1_n_6\,
      Q => \^d\(1),
      R => integrate_z
    );
\integrate_z_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[0]_i_3_n_5\,
      Q => \integrate_z_reg_n_0_[2]\,
      R => integrate_z
    );
\integrate_z_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[28]_i_1_n_5\,
      Q => \^d\(2),
      R => integrate_z
    );
\integrate_z_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[28]_i_1_n_4\,
      Q => \^d\(3),
      R => integrate_z
    );
\integrate_z_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[32]_i_1_n_7\,
      Q => \^d\(4),
      R => integrate_z
    );
\integrate_z_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[28]_i_1_n_0\,
      CO(3) => \integrate_z_reg[32]_i_1_n_0\,
      CO(2) => \integrate_z_reg[32]_i_1_n_1\,
      CO(1) => \integrate_z_reg[32]_i_1_n_2\,
      CO(0) => \integrate_z_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[32]_i_1_n_4\,
      O(2) => \integrate_z_reg[32]_i_1_n_5\,
      O(1) => \integrate_z_reg[32]_i_1_n_6\,
      O(0) => \integrate_z_reg[32]_i_1_n_7\,
      S(3) => \integrate_z[32]_i_2_n_0\,
      S(2) => \integrate_z[32]_i_3_n_0\,
      S(1) => \integrate_z[32]_i_4_n_0\,
      S(0) => \integrate_z[32]_i_5_n_0\
    );
\integrate_z_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[32]_i_1_n_6\,
      Q => \^d\(5),
      R => integrate_z
    );
\integrate_z_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[32]_i_1_n_5\,
      Q => \^d\(6),
      R => integrate_z
    );
\integrate_z_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[32]_i_1_n_4\,
      Q => \^d\(7),
      R => integrate_z
    );
\integrate_z_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[36]_i_1_n_7\,
      Q => \^d\(8),
      R => integrate_z
    );
\integrate_z_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[32]_i_1_n_0\,
      CO(3) => \integrate_z_reg[36]_i_1_n_0\,
      CO(2) => \integrate_z_reg[36]_i_1_n_1\,
      CO(1) => \integrate_z_reg[36]_i_1_n_2\,
      CO(0) => \integrate_z_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ad_z(15),
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[36]_i_1_n_4\,
      O(2) => \integrate_z_reg[36]_i_1_n_5\,
      O(1) => \integrate_z_reg[36]_i_1_n_6\,
      O(0) => \integrate_z_reg[36]_i_1_n_7\,
      S(3) => \integrate_z[36]_i_2_n_0\,
      S(2) => \integrate_z[36]_i_3_n_0\,
      S(1) => \integrate_z[36]_i_4_n_0\,
      S(0) => \integrate_z[36]_i_5_n_0\
    );
\integrate_z_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[36]_i_1_n_6\,
      Q => \^d\(9),
      R => integrate_z
    );
\integrate_z_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[36]_i_1_n_5\,
      Q => \^d\(10),
      R => integrate_z
    );
\integrate_z_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[36]_i_1_n_4\,
      Q => \^d\(11),
      R => integrate_z
    );
\integrate_z_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[0]_i_3_n_4\,
      Q => \integrate_z_reg_n_0_[3]\,
      R => integrate_z
    );
\integrate_z_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[40]_i_1_n_7\,
      Q => \^d\(12),
      R => integrate_z
    );
\integrate_z_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[36]_i_1_n_0\,
      CO(3) => \NLW_integrate_z_reg[40]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \integrate_z_reg[40]_i_1_n_1\,
      CO(1) => \integrate_z_reg[40]_i_1_n_2\,
      CO(0) => \integrate_z_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => ad_z(15),
      DI(1) => ad_z(15),
      DI(0) => ad_z(15),
      O(3) => \integrate_z_reg[40]_i_1_n_4\,
      O(2) => \integrate_z_reg[40]_i_1_n_5\,
      O(1) => \integrate_z_reg[40]_i_1_n_6\,
      O(0) => \integrate_z_reg[40]_i_1_n_7\,
      S(3) => \integrate_z[40]_i_2_n_0\,
      S(2) => \integrate_z[40]_i_3_n_0\,
      S(1) => \integrate_z[40]_i_4_n_0\,
      S(0) => \integrate_z[40]_i_5_n_0\
    );
\integrate_z_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[40]_i_1_n_6\,
      Q => \^d\(13),
      R => integrate_z
    );
\integrate_z_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[40]_i_1_n_5\,
      Q => \^d\(14),
      R => integrate_z
    );
\integrate_z_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[40]_i_1_n_4\,
      Q => \^d\(15),
      R => integrate_z
    );
\integrate_z_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[4]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[4]\,
      R => integrate_z
    );
\integrate_z_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[0]_i_3_n_0\,
      CO(3) => \integrate_z_reg[4]_i_1_n_0\,
      CO(2) => \integrate_z_reg[4]_i_1_n_1\,
      CO(1) => \integrate_z_reg[4]_i_1_n_2\,
      CO(0) => \integrate_z_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_z(7 downto 4),
      O(3) => \integrate_z_reg[4]_i_1_n_4\,
      O(2) => \integrate_z_reg[4]_i_1_n_5\,
      O(1) => \integrate_z_reg[4]_i_1_n_6\,
      O(0) => \integrate_z_reg[4]_i_1_n_7\,
      S(3) => \integrate_z[4]_i_2_n_0\,
      S(2) => \integrate_z[4]_i_3_n_0\,
      S(1) => \integrate_z[4]_i_4_n_0\,
      S(0) => \integrate_z[4]_i_5_n_0\
    );
\integrate_z_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[4]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[5]\,
      R => integrate_z
    );
\integrate_z_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[4]_i_1_n_5\,
      Q => \integrate_z_reg_n_0_[6]\,
      R => integrate_z
    );
\integrate_z_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[4]_i_1_n_4\,
      Q => \integrate_z_reg_n_0_[7]\,
      R => integrate_z
    );
\integrate_z_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[8]_i_1_n_7\,
      Q => \integrate_z_reg_n_0_[8]\,
      R => integrate_z
    );
\integrate_z_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \integrate_z_reg[4]_i_1_n_0\,
      CO(3) => \integrate_z_reg[8]_i_1_n_0\,
      CO(2) => \integrate_z_reg[8]_i_1_n_1\,
      CO(1) => \integrate_z_reg[8]_i_1_n_2\,
      CO(0) => \integrate_z_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ad_z(11 downto 8),
      O(3) => \integrate_z_reg[8]_i_1_n_4\,
      O(2) => \integrate_z_reg[8]_i_1_n_5\,
      O(1) => \integrate_z_reg[8]_i_1_n_6\,
      O(0) => \integrate_z_reg[8]_i_1_n_7\,
      S(3) => \integrate_z[8]_i_2_n_0\,
      S(2) => \integrate_z[8]_i_3_n_0\,
      S(1) => \integrate_z[8]_i_4_n_0\,
      S(0) => \integrate_z[8]_i_5_n_0\
    );
\integrate_z_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \integrate_z[0]_i_2_n_0\,
      D => \integrate_z_reg[8]_i_1_n_6\,
      Q => \integrate_z_reg_n_0_[9]\,
      R => integrate_z
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(28),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(0),
      O => \integrate_x_reg[43]_0\(0)
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(38),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(10),
      O => \integrate_x_reg[43]_0\(10)
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(39),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(11),
      O => \integrate_x_reg[43]_0\(11)
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(40),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(12),
      O => \integrate_x_reg[43]_0\(12)
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(41),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(13),
      O => \integrate_x_reg[43]_0\(13)
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(42),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(14),
      O => \integrate_x_reg[43]_0\(14)
    );
\slv_reg1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(43),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(15),
      O => \integrate_x_reg[43]_0\(15)
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(29),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(1),
      O => \integrate_x_reg[43]_0\(1)
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(30),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(2),
      O => \integrate_x_reg[43]_0\(2)
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(31),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(3),
      O => \integrate_x_reg[43]_0\(3)
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(32),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(4),
      O => \integrate_x_reg[43]_0\(4)
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(33),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(5),
      O => \integrate_x_reg[43]_0\(5)
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(34),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(6),
      O => \integrate_x_reg[43]_0\(6)
    );
\slv_reg1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(35),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(7),
      O => \integrate_x_reg[43]_0\(7)
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(36),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(8),
      O => \integrate_x_reg[43]_0\(8)
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_x_reg(37),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(9),
      O => \integrate_x_reg[43]_0\(9)
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(28),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(0),
      O => \integrate_y_reg[43]_0\(0)
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(38),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(10),
      O => \integrate_y_reg[43]_0\(10)
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(39),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(11),
      O => \integrate_y_reg[43]_0\(11)
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(40),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(12),
      O => \integrate_y_reg[43]_0\(12)
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(41),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(13),
      O => \integrate_y_reg[43]_0\(13)
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(42),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(14),
      O => \integrate_y_reg[43]_0\(14)
    );
\slv_reg2[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(43),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(15),
      O => \integrate_y_reg[43]_0\(15)
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(29),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(1),
      O => \integrate_y_reg[43]_0\(1)
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(30),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(2),
      O => \integrate_y_reg[43]_0\(2)
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(31),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(3),
      O => \integrate_y_reg[43]_0\(3)
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(32),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(4),
      O => \integrate_y_reg[43]_0\(4)
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(33),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(5),
      O => \integrate_y_reg[43]_0\(5)
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(34),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(6),
      O => \integrate_y_reg[43]_0\(6)
    );
\slv_reg2[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(35),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(7),
      O => \integrate_y_reg[43]_0\(7)
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(36),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(8),
      O => \integrate_y_reg[43]_0\(8)
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => integrate_y_reg(37),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(9),
      O => \integrate_y_reg[43]_0\(9)
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(0),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(0),
      O => \integrate_z_reg[43]_0\(0)
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(10),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(10),
      O => \integrate_z_reg[43]_0\(10)
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(11),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(11),
      O => \integrate_z_reg[43]_0\(11)
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(12),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(12),
      O => \integrate_z_reg[43]_0\(12)
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(13),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(13),
      O => \integrate_z_reg[43]_0\(13)
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(14),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(14),
      O => \integrate_z_reg[43]_0\(14)
    );
\slv_reg3[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(15),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(15),
      O => \integrate_z_reg[43]_0\(15)
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(1),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(1),
      O => \integrate_z_reg[43]_0\(1)
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(2),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(2),
      O => \integrate_z_reg[43]_0\(2)
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(3),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(3),
      O => \integrate_z_reg[43]_0\(3)
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(4),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(4),
      O => \integrate_z_reg[43]_0\(4)
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(5),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(5),
      O => \integrate_z_reg[43]_0\(5)
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(6),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(6),
      O => \integrate_z_reg[43]_0\(6)
    );
\slv_reg3[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(7),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(7),
      O => \integrate_z_reg[43]_0\(7)
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(8),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(8),
      O => \integrate_z_reg[43]_0\(8)
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^d\(9),
      I1 => \slv_reg1_reg[0]\,
      I2 => \slv_reg1_reg[0]_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wdata(9),
      O => \integrate_z_reg[43]_0\(9)
    );
\sum_x[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF7F"
    )
        port map (
      I0 => \calibrate_timer_reg__0\(2),
      I1 => \calibrate_timer_reg__0\(1),
      I2 => \calibrate_timer_reg__0\(3),
      I3 => \avg_x[15]_i_3_n_0\,
      I4 => angle_reset,
      O => sum_x
    );
\sum_x[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(3),
      I1 => \sum_x_reg_n_0_[3]\,
      O => \sum_x[0]_i_3_n_0\
    );
\sum_x[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(2),
      I1 => \sum_x_reg_n_0_[2]\,
      O => \sum_x[0]_i_4_n_0\
    );
\sum_x[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(1),
      I1 => \sum_x_reg_n_0_[1]\,
      O => \sum_x[0]_i_5_n_0\
    );
\sum_x[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(0),
      I1 => \sum_x_reg_n_0_[0]\,
      O => \sum_x[0]_i_6_n_0\
    );
\sum_x[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(15),
      I1 => p_1_in(7),
      O => \sum_x[12]_i_2_n_0\
    );
\sum_x[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(14),
      I1 => p_1_in(6),
      O => \sum_x[12]_i_3_n_0\
    );
\sum_x[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(13),
      I1 => p_1_in(5),
      O => \sum_x[12]_i_4_n_0\
    );
\sum_x[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(12),
      I1 => p_1_in(4),
      O => \sum_x[12]_i_5_n_0\
    );
\sum_x[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(7),
      I1 => \sum_x_reg_n_0_[7]\,
      O => \sum_x[4]_i_2_n_0\
    );
\sum_x[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(6),
      I1 => \sum_x_reg_n_0_[6]\,
      O => \sum_x[4]_i_3_n_0\
    );
\sum_x[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(5),
      I1 => \sum_x_reg_n_0_[5]\,
      O => \sum_x[4]_i_4_n_0\
    );
\sum_x[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(4),
      I1 => \sum_x_reg_n_0_[4]\,
      O => \sum_x[4]_i_5_n_0\
    );
\sum_x[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(11),
      I1 => p_1_in(3),
      O => \sum_x[8]_i_2_n_0\
    );
\sum_x[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(10),
      I1 => p_1_in(2),
      O => \sum_x[8]_i_3_n_0\
    );
\sum_x[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(9),
      I1 => p_1_in(1),
      O => \sum_x[8]_i_4_n_0\
    );
\sum_x[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_x(8),
      I1 => p_1_in(0),
      O => \sum_x[8]_i_5_n_0\
    );
\sum_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[0]_i_2_n_7\,
      Q => \sum_x_reg_n_0_[0]\,
      R => clear
    );
\sum_x_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_x_reg[0]_i_2_n_0\,
      CO(2) => \sum_x_reg[0]_i_2_n_1\,
      CO(1) => \sum_x_reg[0]_i_2_n_2\,
      CO(0) => \sum_x_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(3 downto 0),
      O(3) => \sum_x_reg[0]_i_2_n_4\,
      O(2) => \sum_x_reg[0]_i_2_n_5\,
      O(1) => \sum_x_reg[0]_i_2_n_6\,
      O(0) => \sum_x_reg[0]_i_2_n_7\,
      S(3) => \sum_x[0]_i_3_n_0\,
      S(2) => \sum_x[0]_i_4_n_0\,
      S(1) => \sum_x[0]_i_5_n_0\,
      S(0) => \sum_x[0]_i_6_n_0\
    );
\sum_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[8]_i_1_n_5\,
      Q => p_1_in(2),
      R => clear
    );
\sum_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[8]_i_1_n_4\,
      Q => p_1_in(3),
      R => clear
    );
\sum_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[12]_i_1_n_7\,
      Q => p_1_in(4),
      R => clear
    );
\sum_x_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_x_reg[8]_i_1_n_0\,
      CO(3) => \sum_x_reg[12]_i_1_n_0\,
      CO(2) => \sum_x_reg[12]_i_1_n_1\,
      CO(1) => \sum_x_reg[12]_i_1_n_2\,
      CO(0) => \sum_x_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(15 downto 12),
      O(3) => \sum_x_reg[12]_i_1_n_4\,
      O(2) => \sum_x_reg[12]_i_1_n_5\,
      O(1) => \sum_x_reg[12]_i_1_n_6\,
      O(0) => \sum_x_reg[12]_i_1_n_7\,
      S(3) => \sum_x[12]_i_2_n_0\,
      S(2) => \sum_x[12]_i_3_n_0\,
      S(1) => \sum_x[12]_i_4_n_0\,
      S(0) => \sum_x[12]_i_5_n_0\
    );
\sum_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[12]_i_1_n_6\,
      Q => p_1_in(5),
      R => clear
    );
\sum_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[12]_i_1_n_5\,
      Q => p_1_in(6),
      R => clear
    );
\sum_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[12]_i_1_n_4\,
      Q => p_1_in(7),
      R => clear
    );
\sum_x_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[16]_i_1_n_7\,
      Q => p_1_in(8),
      R => clear
    );
\sum_x_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_x_reg[12]_i_1_n_0\,
      CO(3) => \sum_x_reg[16]_i_1_n_0\,
      CO(2) => \sum_x_reg[16]_i_1_n_1\,
      CO(1) => \sum_x_reg[16]_i_1_n_2\,
      CO(0) => \sum_x_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_x_reg[16]_i_1_n_4\,
      O(2) => \sum_x_reg[16]_i_1_n_5\,
      O(1) => \sum_x_reg[16]_i_1_n_6\,
      O(0) => \sum_x_reg[16]_i_1_n_7\,
      S(3 downto 0) => p_1_in(11 downto 8)
    );
\sum_x_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[16]_i_1_n_6\,
      Q => p_1_in(9),
      R => clear
    );
\sum_x_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[16]_i_1_n_5\,
      Q => p_1_in(10),
      R => clear
    );
\sum_x_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[16]_i_1_n_4\,
      Q => p_1_in(11),
      R => clear
    );
\sum_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[0]_i_2_n_6\,
      Q => \sum_x_reg_n_0_[1]\,
      R => clear
    );
\sum_x_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[20]_i_1_n_7\,
      Q => p_1_in(12),
      R => clear
    );
\sum_x_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_x_reg[16]_i_1_n_0\,
      CO(3) => \NLW_sum_x_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sum_x_reg[20]_i_1_n_1\,
      CO(1) => \sum_x_reg[20]_i_1_n_2\,
      CO(0) => \sum_x_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_x_reg[20]_i_1_n_4\,
      O(2) => \sum_x_reg[20]_i_1_n_5\,
      O(1) => \sum_x_reg[20]_i_1_n_6\,
      O(0) => \sum_x_reg[20]_i_1_n_7\,
      S(3 downto 0) => p_1_in(15 downto 12)
    );
\sum_x_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[20]_i_1_n_6\,
      Q => p_1_in(13),
      R => clear
    );
\sum_x_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[20]_i_1_n_5\,
      Q => p_1_in(14),
      R => clear
    );
\sum_x_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[20]_i_1_n_4\,
      Q => p_1_in(15),
      R => clear
    );
\sum_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[0]_i_2_n_5\,
      Q => \sum_x_reg_n_0_[2]\,
      R => clear
    );
\sum_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[0]_i_2_n_4\,
      Q => \sum_x_reg_n_0_[3]\,
      R => clear
    );
\sum_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[4]_i_1_n_7\,
      Q => \sum_x_reg_n_0_[4]\,
      R => clear
    );
\sum_x_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_x_reg[0]_i_2_n_0\,
      CO(3) => \sum_x_reg[4]_i_1_n_0\,
      CO(2) => \sum_x_reg[4]_i_1_n_1\,
      CO(1) => \sum_x_reg[4]_i_1_n_2\,
      CO(0) => \sum_x_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(7 downto 4),
      O(3) => \sum_x_reg[4]_i_1_n_4\,
      O(2) => \sum_x_reg[4]_i_1_n_5\,
      O(1) => \sum_x_reg[4]_i_1_n_6\,
      O(0) => \sum_x_reg[4]_i_1_n_7\,
      S(3) => \sum_x[4]_i_2_n_0\,
      S(2) => \sum_x[4]_i_3_n_0\,
      S(1) => \sum_x[4]_i_4_n_0\,
      S(0) => \sum_x[4]_i_5_n_0\
    );
\sum_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[4]_i_1_n_6\,
      Q => \sum_x_reg_n_0_[5]\,
      R => clear
    );
\sum_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[4]_i_1_n_5\,
      Q => \sum_x_reg_n_0_[6]\,
      R => clear
    );
\sum_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[4]_i_1_n_4\,
      Q => \sum_x_reg_n_0_[7]\,
      R => clear
    );
\sum_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[8]_i_1_n_7\,
      Q => p_1_in(0),
      R => clear
    );
\sum_x_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_x_reg[4]_i_1_n_0\,
      CO(3) => \sum_x_reg[8]_i_1_n_0\,
      CO(2) => \sum_x_reg[8]_i_1_n_1\,
      CO(1) => \sum_x_reg[8]_i_1_n_2\,
      CO(0) => \sum_x_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_x(11 downto 8),
      O(3) => \sum_x_reg[8]_i_1_n_4\,
      O(2) => \sum_x_reg[8]_i_1_n_5\,
      O(1) => \sum_x_reg[8]_i_1_n_6\,
      O(0) => \sum_x_reg[8]_i_1_n_7\,
      S(3) => \sum_x[8]_i_2_n_0\,
      S(2) => \sum_x[8]_i_3_n_0\,
      S(1) => \sum_x[8]_i_4_n_0\,
      S(0) => \sum_x[8]_i_5_n_0\
    );
\sum_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_x_reg[8]_i_1_n_6\,
      Q => p_1_in(1),
      R => clear
    );
\sum_y[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(3),
      I1 => \sum_y_reg_n_0_[3]\,
      O => \sum_y[0]_i_2_n_0\
    );
\sum_y[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(2),
      I1 => \sum_y_reg_n_0_[2]\,
      O => \sum_y[0]_i_3_n_0\
    );
\sum_y[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(1),
      I1 => \sum_y_reg_n_0_[1]\,
      O => \sum_y[0]_i_4_n_0\
    );
\sum_y[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(0),
      I1 => \sum_y_reg_n_0_[0]\,
      O => \sum_y[0]_i_5_n_0\
    );
\sum_y[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(15),
      I1 => sum_y_reg(15),
      O => \sum_y[12]_i_2_n_0\
    );
\sum_y[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(14),
      I1 => sum_y_reg(14),
      O => \sum_y[12]_i_3_n_0\
    );
\sum_y[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(13),
      I1 => sum_y_reg(13),
      O => \sum_y[12]_i_4_n_0\
    );
\sum_y[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(12),
      I1 => sum_y_reg(12),
      O => \sum_y[12]_i_5_n_0\
    );
\sum_y[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(7),
      I1 => \sum_y_reg_n_0_[7]\,
      O => \sum_y[4]_i_2_n_0\
    );
\sum_y[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(6),
      I1 => \sum_y_reg_n_0_[6]\,
      O => \sum_y[4]_i_3_n_0\
    );
\sum_y[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(5),
      I1 => \sum_y_reg_n_0_[5]\,
      O => \sum_y[4]_i_4_n_0\
    );
\sum_y[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(4),
      I1 => \sum_y_reg_n_0_[4]\,
      O => \sum_y[4]_i_5_n_0\
    );
\sum_y[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(11),
      I1 => sum_y_reg(11),
      O => \sum_y[8]_i_2_n_0\
    );
\sum_y[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(10),
      I1 => sum_y_reg(10),
      O => \sum_y[8]_i_3_n_0\
    );
\sum_y[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(9),
      I1 => sum_y_reg(9),
      O => \sum_y[8]_i_4_n_0\
    );
\sum_y[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_y(8),
      I1 => sum_y_reg(8),
      O => \sum_y[8]_i_5_n_0\
    );
\sum_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[0]_i_1_n_7\,
      Q => \sum_y_reg_n_0_[0]\,
      R => clear
    );
\sum_y_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_y_reg[0]_i_1_n_0\,
      CO(2) => \sum_y_reg[0]_i_1_n_1\,
      CO(1) => \sum_y_reg[0]_i_1_n_2\,
      CO(0) => \sum_y_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(3 downto 0),
      O(3) => \sum_y_reg[0]_i_1_n_4\,
      O(2) => \sum_y_reg[0]_i_1_n_5\,
      O(1) => \sum_y_reg[0]_i_1_n_6\,
      O(0) => \sum_y_reg[0]_i_1_n_7\,
      S(3) => \sum_y[0]_i_2_n_0\,
      S(2) => \sum_y[0]_i_3_n_0\,
      S(1) => \sum_y[0]_i_4_n_0\,
      S(0) => \sum_y[0]_i_5_n_0\
    );
\sum_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[8]_i_1_n_5\,
      Q => sum_y_reg(10),
      R => clear
    );
\sum_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[8]_i_1_n_4\,
      Q => sum_y_reg(11),
      R => clear
    );
\sum_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[12]_i_1_n_7\,
      Q => sum_y_reg(12),
      R => clear
    );
\sum_y_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_y_reg[8]_i_1_n_0\,
      CO(3) => \sum_y_reg[12]_i_1_n_0\,
      CO(2) => \sum_y_reg[12]_i_1_n_1\,
      CO(1) => \sum_y_reg[12]_i_1_n_2\,
      CO(0) => \sum_y_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(15 downto 12),
      O(3) => \sum_y_reg[12]_i_1_n_4\,
      O(2) => \sum_y_reg[12]_i_1_n_5\,
      O(1) => \sum_y_reg[12]_i_1_n_6\,
      O(0) => \sum_y_reg[12]_i_1_n_7\,
      S(3) => \sum_y[12]_i_2_n_0\,
      S(2) => \sum_y[12]_i_3_n_0\,
      S(1) => \sum_y[12]_i_4_n_0\,
      S(0) => \sum_y[12]_i_5_n_0\
    );
\sum_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[12]_i_1_n_6\,
      Q => sum_y_reg(13),
      R => clear
    );
\sum_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[12]_i_1_n_5\,
      Q => sum_y_reg(14),
      R => clear
    );
\sum_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[12]_i_1_n_4\,
      Q => sum_y_reg(15),
      R => clear
    );
\sum_y_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[16]_i_1_n_7\,
      Q => sum_y_reg(16),
      R => clear
    );
\sum_y_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_y_reg[12]_i_1_n_0\,
      CO(3) => \sum_y_reg[16]_i_1_n_0\,
      CO(2) => \sum_y_reg[16]_i_1_n_1\,
      CO(1) => \sum_y_reg[16]_i_1_n_2\,
      CO(0) => \sum_y_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_y_reg[16]_i_1_n_4\,
      O(2) => \sum_y_reg[16]_i_1_n_5\,
      O(1) => \sum_y_reg[16]_i_1_n_6\,
      O(0) => \sum_y_reg[16]_i_1_n_7\,
      S(3 downto 0) => sum_y_reg(19 downto 16)
    );
\sum_y_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[16]_i_1_n_6\,
      Q => sum_y_reg(17),
      R => clear
    );
\sum_y_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[16]_i_1_n_5\,
      Q => sum_y_reg(18),
      R => clear
    );
\sum_y_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[16]_i_1_n_4\,
      Q => sum_y_reg(19),
      R => clear
    );
\sum_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[0]_i_1_n_6\,
      Q => \sum_y_reg_n_0_[1]\,
      R => clear
    );
\sum_y_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[20]_i_1_n_7\,
      Q => sum_y_reg(20),
      R => clear
    );
\sum_y_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_y_reg[16]_i_1_n_0\,
      CO(3) => \NLW_sum_y_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sum_y_reg[20]_i_1_n_1\,
      CO(1) => \sum_y_reg[20]_i_1_n_2\,
      CO(0) => \sum_y_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_y_reg[20]_i_1_n_4\,
      O(2) => \sum_y_reg[20]_i_1_n_5\,
      O(1) => \sum_y_reg[20]_i_1_n_6\,
      O(0) => \sum_y_reg[20]_i_1_n_7\,
      S(3 downto 0) => sum_y_reg(23 downto 20)
    );
\sum_y_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[20]_i_1_n_6\,
      Q => sum_y_reg(21),
      R => clear
    );
\sum_y_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[20]_i_1_n_5\,
      Q => sum_y_reg(22),
      R => clear
    );
\sum_y_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[20]_i_1_n_4\,
      Q => sum_y_reg(23),
      R => clear
    );
\sum_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[0]_i_1_n_5\,
      Q => \sum_y_reg_n_0_[2]\,
      R => clear
    );
\sum_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[0]_i_1_n_4\,
      Q => \sum_y_reg_n_0_[3]\,
      R => clear
    );
\sum_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[4]_i_1_n_7\,
      Q => \sum_y_reg_n_0_[4]\,
      R => clear
    );
\sum_y_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_y_reg[0]_i_1_n_0\,
      CO(3) => \sum_y_reg[4]_i_1_n_0\,
      CO(2) => \sum_y_reg[4]_i_1_n_1\,
      CO(1) => \sum_y_reg[4]_i_1_n_2\,
      CO(0) => \sum_y_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(7 downto 4),
      O(3) => \sum_y_reg[4]_i_1_n_4\,
      O(2) => \sum_y_reg[4]_i_1_n_5\,
      O(1) => \sum_y_reg[4]_i_1_n_6\,
      O(0) => \sum_y_reg[4]_i_1_n_7\,
      S(3) => \sum_y[4]_i_2_n_0\,
      S(2) => \sum_y[4]_i_3_n_0\,
      S(1) => \sum_y[4]_i_4_n_0\,
      S(0) => \sum_y[4]_i_5_n_0\
    );
\sum_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[4]_i_1_n_6\,
      Q => \sum_y_reg_n_0_[5]\,
      R => clear
    );
\sum_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[4]_i_1_n_5\,
      Q => \sum_y_reg_n_0_[6]\,
      R => clear
    );
\sum_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[4]_i_1_n_4\,
      Q => \sum_y_reg_n_0_[7]\,
      R => clear
    );
\sum_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[8]_i_1_n_7\,
      Q => sum_y_reg(8),
      R => clear
    );
\sum_y_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_y_reg[4]_i_1_n_0\,
      CO(3) => \sum_y_reg[8]_i_1_n_0\,
      CO(2) => \sum_y_reg[8]_i_1_n_1\,
      CO(1) => \sum_y_reg[8]_i_1_n_2\,
      CO(0) => \sum_y_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_y(11 downto 8),
      O(3) => \sum_y_reg[8]_i_1_n_4\,
      O(2) => \sum_y_reg[8]_i_1_n_5\,
      O(1) => \sum_y_reg[8]_i_1_n_6\,
      O(0) => \sum_y_reg[8]_i_1_n_7\,
      S(3) => \sum_y[8]_i_2_n_0\,
      S(2) => \sum_y[8]_i_3_n_0\,
      S(1) => \sum_y[8]_i_4_n_0\,
      S(0) => \sum_y[8]_i_5_n_0\
    );
\sum_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_y_reg[8]_i_1_n_6\,
      Q => sum_y_reg(9),
      R => clear
    );
\sum_z[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(3),
      I1 => \sum_z_reg_n_0_[3]\,
      O => \sum_z[0]_i_2_n_0\
    );
\sum_z[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(2),
      I1 => \sum_z_reg_n_0_[2]\,
      O => \sum_z[0]_i_3_n_0\
    );
\sum_z[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(1),
      I1 => \sum_z_reg_n_0_[1]\,
      O => \sum_z[0]_i_4_n_0\
    );
\sum_z[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(0),
      I1 => \sum_z_reg_n_0_[0]\,
      O => \sum_z[0]_i_5_n_0\
    );
\sum_z[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(15),
      I1 => sum_z_reg(15),
      O => \sum_z[12]_i_2_n_0\
    );
\sum_z[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(14),
      I1 => sum_z_reg(14),
      O => \sum_z[12]_i_3_n_0\
    );
\sum_z[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(13),
      I1 => sum_z_reg(13),
      O => \sum_z[12]_i_4_n_0\
    );
\sum_z[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(12),
      I1 => sum_z_reg(12),
      O => \sum_z[12]_i_5_n_0\
    );
\sum_z[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(7),
      I1 => \sum_z_reg_n_0_[7]\,
      O => \sum_z[4]_i_2_n_0\
    );
\sum_z[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(6),
      I1 => \sum_z_reg_n_0_[6]\,
      O => \sum_z[4]_i_3_n_0\
    );
\sum_z[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(5),
      I1 => \sum_z_reg_n_0_[5]\,
      O => \sum_z[4]_i_4_n_0\
    );
\sum_z[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(4),
      I1 => \sum_z_reg_n_0_[4]\,
      O => \sum_z[4]_i_5_n_0\
    );
\sum_z[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(11),
      I1 => sum_z_reg(11),
      O => \sum_z[8]_i_2_n_0\
    );
\sum_z[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(10),
      I1 => sum_z_reg(10),
      O => \sum_z[8]_i_3_n_0\
    );
\sum_z[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(9),
      I1 => sum_z_reg(9),
      O => \sum_z[8]_i_4_n_0\
    );
\sum_z[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => angular_rate_z(8),
      I1 => sum_z_reg(8),
      O => \sum_z[8]_i_5_n_0\
    );
\sum_z_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[0]_i_1_n_7\,
      Q => \sum_z_reg_n_0_[0]\,
      R => clear
    );
\sum_z_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_z_reg[0]_i_1_n_0\,
      CO(2) => \sum_z_reg[0]_i_1_n_1\,
      CO(1) => \sum_z_reg[0]_i_1_n_2\,
      CO(0) => \sum_z_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(3 downto 0),
      O(3) => \sum_z_reg[0]_i_1_n_4\,
      O(2) => \sum_z_reg[0]_i_1_n_5\,
      O(1) => \sum_z_reg[0]_i_1_n_6\,
      O(0) => \sum_z_reg[0]_i_1_n_7\,
      S(3) => \sum_z[0]_i_2_n_0\,
      S(2) => \sum_z[0]_i_3_n_0\,
      S(1) => \sum_z[0]_i_4_n_0\,
      S(0) => \sum_z[0]_i_5_n_0\
    );
\sum_z_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[8]_i_1_n_5\,
      Q => sum_z_reg(10),
      R => clear
    );
\sum_z_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[8]_i_1_n_4\,
      Q => sum_z_reg(11),
      R => clear
    );
\sum_z_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[12]_i_1_n_7\,
      Q => sum_z_reg(12),
      R => clear
    );
\sum_z_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_z_reg[8]_i_1_n_0\,
      CO(3) => \sum_z_reg[12]_i_1_n_0\,
      CO(2) => \sum_z_reg[12]_i_1_n_1\,
      CO(1) => \sum_z_reg[12]_i_1_n_2\,
      CO(0) => \sum_z_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(15 downto 12),
      O(3) => \sum_z_reg[12]_i_1_n_4\,
      O(2) => \sum_z_reg[12]_i_1_n_5\,
      O(1) => \sum_z_reg[12]_i_1_n_6\,
      O(0) => \sum_z_reg[12]_i_1_n_7\,
      S(3) => \sum_z[12]_i_2_n_0\,
      S(2) => \sum_z[12]_i_3_n_0\,
      S(1) => \sum_z[12]_i_4_n_0\,
      S(0) => \sum_z[12]_i_5_n_0\
    );
\sum_z_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[12]_i_1_n_6\,
      Q => sum_z_reg(13),
      R => clear
    );
\sum_z_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[12]_i_1_n_5\,
      Q => sum_z_reg(14),
      R => clear
    );
\sum_z_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[12]_i_1_n_4\,
      Q => sum_z_reg(15),
      R => clear
    );
\sum_z_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[16]_i_1_n_7\,
      Q => sum_z_reg(16),
      R => clear
    );
\sum_z_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_z_reg[12]_i_1_n_0\,
      CO(3) => \sum_z_reg[16]_i_1_n_0\,
      CO(2) => \sum_z_reg[16]_i_1_n_1\,
      CO(1) => \sum_z_reg[16]_i_1_n_2\,
      CO(0) => \sum_z_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_z_reg[16]_i_1_n_4\,
      O(2) => \sum_z_reg[16]_i_1_n_5\,
      O(1) => \sum_z_reg[16]_i_1_n_6\,
      O(0) => \sum_z_reg[16]_i_1_n_7\,
      S(3 downto 0) => sum_z_reg(19 downto 16)
    );
\sum_z_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[16]_i_1_n_6\,
      Q => sum_z_reg(17),
      R => clear
    );
\sum_z_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[16]_i_1_n_5\,
      Q => sum_z_reg(18),
      R => clear
    );
\sum_z_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[16]_i_1_n_4\,
      Q => sum_z_reg(19),
      R => clear
    );
\sum_z_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[0]_i_1_n_6\,
      Q => \sum_z_reg_n_0_[1]\,
      R => clear
    );
\sum_z_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[20]_i_1_n_7\,
      Q => sum_z_reg(20),
      R => clear
    );
\sum_z_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_z_reg[16]_i_1_n_0\,
      CO(3) => \NLW_sum_z_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sum_z_reg[20]_i_1_n_1\,
      CO(1) => \sum_z_reg[20]_i_1_n_2\,
      CO(0) => \sum_z_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_z_reg[20]_i_1_n_4\,
      O(2) => \sum_z_reg[20]_i_1_n_5\,
      O(1) => \sum_z_reg[20]_i_1_n_6\,
      O(0) => \sum_z_reg[20]_i_1_n_7\,
      S(3 downto 0) => sum_z_reg(23 downto 20)
    );
\sum_z_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[20]_i_1_n_6\,
      Q => sum_z_reg(21),
      R => clear
    );
\sum_z_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[20]_i_1_n_5\,
      Q => sum_z_reg(22),
      R => clear
    );
\sum_z_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[20]_i_1_n_4\,
      Q => sum_z_reg(23),
      R => clear
    );
\sum_z_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[0]_i_1_n_5\,
      Q => \sum_z_reg_n_0_[2]\,
      R => clear
    );
\sum_z_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[0]_i_1_n_4\,
      Q => \sum_z_reg_n_0_[3]\,
      R => clear
    );
\sum_z_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[4]_i_1_n_7\,
      Q => \sum_z_reg_n_0_[4]\,
      R => clear
    );
\sum_z_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_z_reg[0]_i_1_n_0\,
      CO(3) => \sum_z_reg[4]_i_1_n_0\,
      CO(2) => \sum_z_reg[4]_i_1_n_1\,
      CO(1) => \sum_z_reg[4]_i_1_n_2\,
      CO(0) => \sum_z_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(7 downto 4),
      O(3) => \sum_z_reg[4]_i_1_n_4\,
      O(2) => \sum_z_reg[4]_i_1_n_5\,
      O(1) => \sum_z_reg[4]_i_1_n_6\,
      O(0) => \sum_z_reg[4]_i_1_n_7\,
      S(3) => \sum_z[4]_i_2_n_0\,
      S(2) => \sum_z[4]_i_3_n_0\,
      S(1) => \sum_z[4]_i_4_n_0\,
      S(0) => \sum_z[4]_i_5_n_0\
    );
\sum_z_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[4]_i_1_n_6\,
      Q => \sum_z_reg_n_0_[5]\,
      R => clear
    );
\sum_z_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[4]_i_1_n_5\,
      Q => \sum_z_reg_n_0_[6]\,
      R => clear
    );
\sum_z_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[4]_i_1_n_4\,
      Q => \sum_z_reg_n_0_[7]\,
      R => clear
    );
\sum_z_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[8]_i_1_n_7\,
      Q => sum_z_reg(8),
      R => clear
    );
\sum_z_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_z_reg[4]_i_1_n_0\,
      CO(3) => \sum_z_reg[8]_i_1_n_0\,
      CO(2) => \sum_z_reg[8]_i_1_n_1\,
      CO(1) => \sum_z_reg[8]_i_1_n_2\,
      CO(0) => \sum_z_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angular_rate_z(11 downto 8),
      O(3) => \sum_z_reg[8]_i_1_n_4\,
      O(2) => \sum_z_reg[8]_i_1_n_5\,
      O(1) => \sum_z_reg[8]_i_1_n_6\,
      O(0) => \sum_z_reg[8]_i_1_n_7\,
      S(3) => \sum_z[8]_i_2_n_0\,
      S(2) => \sum_z[8]_i_3_n_0\,
      S(1) => \sum_z[8]_i_4_n_0\,
      S(0) => \sum_z[8]_i_5_n_0\
    );
\sum_z_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sum_x,
      D => \sum_z_reg[8]_i_1_n_6\,
      Q => sum_z_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI is
  port (
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    angular_rate_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_z : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle_reset : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    system_reset : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI : entity is "test3_v1_0_S00_AXI";
end design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI;

architecture STRUCTURE of design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal a1_n_16 : STD_LOGIC;
  signal a1_n_17 : STD_LOGIC;
  signal a1_n_18 : STD_LOGIC;
  signal a1_n_19 : STD_LOGIC;
  signal a1_n_20 : STD_LOGIC;
  signal a1_n_21 : STD_LOGIC;
  signal a1_n_22 : STD_LOGIC;
  signal a1_n_23 : STD_LOGIC;
  signal a1_n_24 : STD_LOGIC;
  signal a1_n_25 : STD_LOGIC;
  signal a1_n_26 : STD_LOGIC;
  signal a1_n_27 : STD_LOGIC;
  signal a1_n_28 : STD_LOGIC;
  signal a1_n_29 : STD_LOGIC;
  signal a1_n_30 : STD_LOGIC;
  signal a1_n_31 : STD_LOGIC;
  signal a1_n_32 : STD_LOGIC;
  signal a1_n_33 : STD_LOGIC;
  signal a1_n_34 : STD_LOGIC;
  signal a1_n_35 : STD_LOGIC;
  signal a1_n_36 : STD_LOGIC;
  signal a1_n_37 : STD_LOGIC;
  signal a1_n_38 : STD_LOGIC;
  signal a1_n_39 : STD_LOGIC;
  signal a1_n_40 : STD_LOGIC;
  signal a1_n_41 : STD_LOGIC;
  signal a1_n_42 : STD_LOGIC;
  signal a1_n_43 : STD_LOGIC;
  signal a1_n_44 : STD_LOGIC;
  signal a1_n_45 : STD_LOGIC;
  signal a1_n_46 : STD_LOGIC;
  signal a1_n_47 : STD_LOGIC;
  signal a1_n_48 : STD_LOGIC;
  signal a1_n_49 : STD_LOGIC;
  signal a1_n_50 : STD_LOGIC;
  signal a1_n_51 : STD_LOGIC;
  signal a1_n_52 : STD_LOGIC;
  signal a1_n_53 : STD_LOGIC;
  signal a1_n_54 : STD_LOGIC;
  signal a1_n_55 : STD_LOGIC;
  signal a1_n_56 : STD_LOGIC;
  signal a1_n_57 : STD_LOGIC;
  signal a1_n_58 : STD_LOGIC;
  signal a1_n_59 : STD_LOGIC;
  signal a1_n_60 : STD_LOGIC;
  signal a1_n_61 : STD_LOGIC;
  signal a1_n_62 : STD_LOGIC;
  signal a1_n_63 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal z_angle : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
a1: entity work.design_1_test3_v1_0_1_0_axes
     port map (
      D(15 downto 0) => z_angle(15 downto 0),
      angle_reset => angle_reset,
      angular_rate_x(15 downto 0) => angular_rate_x(15 downto 0),
      angular_rate_y(15 downto 0) => angular_rate_y(15 downto 0),
      angular_rate_z(15 downto 0) => angular_rate_z(15 downto 0),
      \integrate_x_reg[43]_0\(15) => a1_n_16,
      \integrate_x_reg[43]_0\(14) => a1_n_17,
      \integrate_x_reg[43]_0\(13) => a1_n_18,
      \integrate_x_reg[43]_0\(12) => a1_n_19,
      \integrate_x_reg[43]_0\(11) => a1_n_20,
      \integrate_x_reg[43]_0\(10) => a1_n_21,
      \integrate_x_reg[43]_0\(9) => a1_n_22,
      \integrate_x_reg[43]_0\(8) => a1_n_23,
      \integrate_x_reg[43]_0\(7) => a1_n_24,
      \integrate_x_reg[43]_0\(6) => a1_n_25,
      \integrate_x_reg[43]_0\(5) => a1_n_26,
      \integrate_x_reg[43]_0\(4) => a1_n_27,
      \integrate_x_reg[43]_0\(3) => a1_n_28,
      \integrate_x_reg[43]_0\(2) => a1_n_29,
      \integrate_x_reg[43]_0\(1) => a1_n_30,
      \integrate_x_reg[43]_0\(0) => a1_n_31,
      \integrate_y_reg[43]_0\(15) => a1_n_48,
      \integrate_y_reg[43]_0\(14) => a1_n_49,
      \integrate_y_reg[43]_0\(13) => a1_n_50,
      \integrate_y_reg[43]_0\(12) => a1_n_51,
      \integrate_y_reg[43]_0\(11) => a1_n_52,
      \integrate_y_reg[43]_0\(10) => a1_n_53,
      \integrate_y_reg[43]_0\(9) => a1_n_54,
      \integrate_y_reg[43]_0\(8) => a1_n_55,
      \integrate_y_reg[43]_0\(7) => a1_n_56,
      \integrate_y_reg[43]_0\(6) => a1_n_57,
      \integrate_y_reg[43]_0\(5) => a1_n_58,
      \integrate_y_reg[43]_0\(4) => a1_n_59,
      \integrate_y_reg[43]_0\(3) => a1_n_60,
      \integrate_y_reg[43]_0\(2) => a1_n_61,
      \integrate_y_reg[43]_0\(1) => a1_n_62,
      \integrate_y_reg[43]_0\(0) => a1_n_63,
      \integrate_z_reg[43]_0\(15) => a1_n_32,
      \integrate_z_reg[43]_0\(14) => a1_n_33,
      \integrate_z_reg[43]_0\(13) => a1_n_34,
      \integrate_z_reg[43]_0\(12) => a1_n_35,
      \integrate_z_reg[43]_0\(11) => a1_n_36,
      \integrate_z_reg[43]_0\(10) => a1_n_37,
      \integrate_z_reg[43]_0\(9) => a1_n_38,
      \integrate_z_reg[43]_0\(8) => a1_n_39,
      \integrate_z_reg[43]_0\(7) => a1_n_40,
      \integrate_z_reg[43]_0\(6) => a1_n_41,
      \integrate_z_reg[43]_0\(5) => a1_n_42,
      \integrate_z_reg[43]_0\(4) => a1_n_43,
      \integrate_z_reg[43]_0\(3) => a1_n_44,
      \integrate_z_reg[43]_0\(2) => a1_n_45,
      \integrate_z_reg[43]_0\(1) => a1_n_46,
      \integrate_z_reg[43]_0\(0) => a1_n_47,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[0]\ => \^s_axi_wready\,
      \slv_reg1_reg[0]_0\ => \^s_axi_awready\,
      system_reset => system_reset
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => aw_en_reg_n_0,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => aw_en_reg_n_0,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_wready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[14]\,
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\led_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(0),
      Q => leds(0),
      R => '0'
    );
\led_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(10),
      Q => leds(10),
      R => '0'
    );
\led_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(11),
      Q => leds(11),
      R => '0'
    );
\led_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(12),
      Q => leds(12),
      R => '0'
    );
\led_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(13),
      Q => leds(13),
      R => '0'
    );
\led_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(14),
      Q => leds(14),
      R => '0'
    );
\led_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(15),
      Q => leds(15),
      R => '0'
    );
\led_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(1),
      Q => leds(1),
      R => '0'
    );
\led_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(2),
      Q => leds(2),
      R => '0'
    );
\led_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(3),
      Q => leds(3),
      R => '0'
    );
\led_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(4),
      Q => leds(4),
      R => '0'
    );
\led_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(5),
      Q => leds(5),
      R => '0'
    );
\led_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(6),
      Q => leds(6),
      R => '0'
    );
\led_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(7),
      Q => leds(7),
      R => '0'
    );
\led_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(8),
      Q => leds(8),
      R => '0'
    );
\led_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_angle(9),
      Q => leds(9),
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_31,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_21,
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_20,
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_19,
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_18,
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_17,
      Q => \slv_reg1_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_16,
      Q => \slv_reg1_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_30,
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_29,
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => slv_reg1(31)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_28,
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_27,
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_26,
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_25,
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => a1_n_24,
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_23,
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => a1_n_22,
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_63,
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_53,
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_52,
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_51,
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_50,
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_49,
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_48,
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => slv_reg1(31)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => slv_reg1(31)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => slv_reg1(31)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => slv_reg1(31)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_62,
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => slv_reg1(31)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => slv_reg1(31)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => slv_reg1(31)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => slv_reg1(31)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => slv_reg1(31)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => slv_reg1(31)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => slv_reg1(31)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => slv_reg1(31)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => slv_reg1(31)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => slv_reg1(31)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_61,
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => slv_reg1(31)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => slv_reg1(31)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_60,
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_59,
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_58,
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_57,
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => a1_n_56,
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_55,
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => a1_n_54,
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_aresetn,
      O => slv_reg1(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg3[31]_i_3_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg3[31]_i_3_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_47,
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_37,
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_36,
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_35,
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_34,
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_33,
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_32,
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => slv_reg1(31)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => slv_reg1(31)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => slv_reg1(31)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => slv_reg1(31)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_46,
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => slv_reg1(31)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => slv_reg1(31)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => slv_reg1(31)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => slv_reg1(31)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => slv_reg1(31)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => slv_reg1(31)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => slv_reg1(31)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => slv_reg1(31)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => slv_reg1(31)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => slv_reg1(31)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_45,
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => slv_reg1(31)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => slv_reg1(31)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_44,
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_43,
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_42,
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_41,
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => a1_n_40,
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_39,
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => a1_n_38,
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_test3_v1_0_1_0_test3_v1_0 is
  port (
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    angular_rate_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_z : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle_reset : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    system_reset : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_test3_v1_0_1_0_test3_v1_0 : entity is "test3_v1_0";
end design_1_test3_v1_0_1_0_test3_v1_0;

architecture STRUCTURE of design_1_test3_v1_0_1_0_test3_v1_0 is
begin
test3_v1_0_S00_AXI_inst: entity work.design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      angle_reset => angle_reset,
      angular_rate_x(15 downto 0) => angular_rate_x(15 downto 0),
      angular_rate_y(15 downto 0) => angular_rate_y(15 downto 0),
      angular_rate_z(15 downto 0) => angular_rate_z(15 downto 0),
      leds(15 downto 0) => leds(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      system_reset => system_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_test3_v1_0_1_0 is
  port (
    angular_rate_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_z : in STD_LOGIC_VECTOR ( 15 downto 0 );
    system_reset : in STD_LOGIC;
    angle_reset : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_test3_v1_0_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_test3_v1_0_1_0 : entity is "design_1_test3_v1_0_1_0,test3_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_test3_v1_0_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_test3_v1_0_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_test3_v1_0_1_0 : entity is "test3_v1_0,Vivado 2018.3";
end design_1_test3_v1_0_1_0;

architecture STRUCTURE of design_1_test3_v1_0_1_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of angle_reset : signal is "xilinx.com:signal:reset:1.0 angle_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of angle_reset : signal is "XIL_INTERFACENAME angle_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of system_reset : signal is "xilinx.com:signal:reset:1.0 system_reset RST";
  attribute X_INTERFACE_PARAMETER of system_reset : signal is "XIL_INTERFACENAME system_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_test3_v1_0_1_0_test3_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      angle_reset => angle_reset,
      angular_rate_x(15 downto 0) => angular_rate_x(15 downto 0),
      angular_rate_y(15 downto 0) => angular_rate_y(15 downto 0),
      angular_rate_z(15 downto 0) => angular_rate_z(15 downto 0),
      leds(15 downto 0) => leds(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      system_reset => system_reset
    );
end STRUCTURE;
