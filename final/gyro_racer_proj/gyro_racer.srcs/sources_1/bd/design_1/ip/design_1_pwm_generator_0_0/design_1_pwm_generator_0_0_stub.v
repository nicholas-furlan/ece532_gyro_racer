// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  1 04:14:06 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pwm_generator_0_0/design_1_pwm_generator_0_0_stub.v
// Design      : design_1_pwm_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pwm_generator,Vivado 2018.3" *)
module design_1_pwm_generator_0_0(clk, rstn, pwm_duty, pwm_signal)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,pwm_duty[7:0],pwm_signal" */;
  input clk;
  input rstn;
  input [7:0]pwm_duty;
  output pwm_signal;
endmodule
