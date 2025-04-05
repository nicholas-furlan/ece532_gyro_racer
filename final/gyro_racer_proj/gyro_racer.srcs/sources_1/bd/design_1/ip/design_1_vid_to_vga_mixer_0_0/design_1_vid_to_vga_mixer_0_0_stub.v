// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 22 17:28:29 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/repos/ECE532/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_vid_to_vga_mixer_0_0/design_1_vid_to_vga_mixer_0_0_stub.v
// Design      : design_1_vid_to_vga_mixer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vid_to_vga_mixer,Vivado 2018.3" *)
module design_1_vid_to_vga_mixer_0_0(active, rgba_background, rgba_sprites, hsync, 
  vsync, hsync_n, vsync_n, red, green, blue)
/* synthesis syn_black_box black_box_pad_pin="active,rgba_background[15:0],rgba_sprites[15:0],hsync,vsync,hsync_n,vsync_n,red[3:0],green[3:0],blue[3:0]" */;
  input active;
  input [15:0]rgba_background;
  input [15:0]rgba_sprites;
  input hsync;
  input vsync;
  output hsync_n;
  output vsync_n;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
endmodule
