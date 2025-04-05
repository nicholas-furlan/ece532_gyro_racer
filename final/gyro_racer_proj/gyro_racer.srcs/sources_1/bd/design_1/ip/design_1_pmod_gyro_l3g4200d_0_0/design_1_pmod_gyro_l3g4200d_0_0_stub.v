// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 24 15:06:47 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pmod_gyro_l3g4200d_0_0/design_1_pmod_gyro_l3g4200d_0_0_stub.v
// Design      : design_1_pmod_gyro_l3g4200d_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pmod_gyro_l3g4200d,Vivado 2018.3" *)
module design_1_pmod_gyro_l3g4200d_0_0(clk, reset_n, miso, sclk, ss_n, mosi, angular_rate_x, 
  angular_rate_y, angular_rate_z)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,miso,sclk,ss_n[0:0],mosi,angular_rate_x[15:0],angular_rate_y[15:0],angular_rate_z[15:0]" */;
  input clk;
  input reset_n;
  input miso;
  output sclk;
  output [0:0]ss_n;
  output mosi;
  output [15:0]angular_rate_x;
  output [15:0]angular_rate_y;
  output [15:0]angular_rate_z;
endmodule
