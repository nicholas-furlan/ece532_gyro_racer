// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  1 04:27:45 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_axis_acker8k_0_0/design_1_axis_acker8k_0_0_stub.v
// Design      : design_1_axis_acker8k_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_acker8k,Vivado 2018.3" *)
module design_1_axis_acker8k_0_0(clk, resetn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, out_data)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,out_data[7:0]" */;
  input clk;
  input resetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  output [7:0]out_data;
endmodule
