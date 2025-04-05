// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 22 17:28:29 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/repos/ECE532/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_vid_to_vga_mixer_0_0/design_1_vid_to_vga_mixer_0_0_sim_netlist.v
// Design      : design_1_vid_to_vga_mixer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vid_to_vga_mixer_0_0,vid_to_vga_mixer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vid_to_vga_mixer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_vid_to_vga_mixer_0_0
   (active,
    rgba_background,
    rgba_sprites,
    hsync,
    vsync,
    hsync_n,
    vsync_n,
    red,
    green,
    blue);
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

  wire active;
  wire [3:0]blue;
  wire [3:0]green;
  wire hsync;
  wire hsync_n;
  wire [3:0]red;
  wire \red[3]_INST_0_i_1_n_0 ;
  wire \red[3]_INST_0_i_2_n_0 ;
  wire [15:0]rgba_background;
  wire [15:0]rgba_sprites;
  wire vsync;
  wire vsync_n;

  LUT5 #(
    .INIT(32'hAA800080)) 
    \blue[0]_INST_0 
       (.I0(active),
        .I1(rgba_background[8]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[8]),
        .O(blue[0]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \blue[1]_INST_0 
       (.I0(active),
        .I1(rgba_background[9]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[9]),
        .O(blue[1]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \blue[2]_INST_0 
       (.I0(active),
        .I1(rgba_background[10]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[10]),
        .O(blue[2]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \blue[3]_INST_0 
       (.I0(active),
        .I1(rgba_background[11]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[11]),
        .O(blue[3]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \green[0]_INST_0 
       (.I0(active),
        .I1(rgba_background[4]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[4]),
        .O(green[0]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \green[1]_INST_0 
       (.I0(active),
        .I1(rgba_background[5]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[5]),
        .O(green[1]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \green[2]_INST_0 
       (.I0(active),
        .I1(rgba_background[6]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[6]),
        .O(green[2]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \green[3]_INST_0 
       (.I0(active),
        .I1(rgba_background[7]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[7]),
        .O(green[3]));
  LUT1 #(
    .INIT(2'h1)) 
    hsync_n_INST_0
       (.I0(hsync),
        .O(hsync_n));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \red[0]_INST_0 
       (.I0(active),
        .I1(rgba_background[0]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[0]),
        .O(red[0]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \red[1]_INST_0 
       (.I0(active),
        .I1(rgba_background[1]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[1]),
        .O(red[1]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \red[2]_INST_0 
       (.I0(active),
        .I1(rgba_background[2]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[2]),
        .O(red[2]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \red[3]_INST_0 
       (.I0(active),
        .I1(rgba_background[3]),
        .I2(\red[3]_INST_0_i_1_n_0 ),
        .I3(\red[3]_INST_0_i_2_n_0 ),
        .I4(rgba_sprites[3]),
        .O(red[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \red[3]_INST_0_i_1 
       (.I0(rgba_background[13]),
        .I1(rgba_background[12]),
        .I2(rgba_background[14]),
        .I3(rgba_background[15]),
        .O(\red[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \red[3]_INST_0_i_2 
       (.I0(rgba_sprites[13]),
        .I1(rgba_sprites[12]),
        .I2(rgba_sprites[14]),
        .I3(rgba_sprites[15]),
        .O(\red[3]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    vsync_n_INST_0
       (.I0(vsync),
        .O(vsync_n));
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
