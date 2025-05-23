// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  1 04:14:06 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pwm_generator_0_0/design_1_pwm_generator_0_0_sim_netlist.v
// Design      : design_1_pwm_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwm_generator_0_0,pwm_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pwm_generator,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_pwm_generator_0_0
   (clk,
    rstn,
    pwm_duty,
    pwm_signal);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [7:0]pwm_duty;
  output pwm_signal;

  wire clk;
  wire [7:0]pwm_duty;
  wire pwm_signal;
  wire rstn;

  design_1_pwm_generator_0_0_pwm_generator inst
       (.clk(clk),
        .pwm_duty(pwm_duty[7:3]),
        .pwm_signal(pwm_signal),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "pwm_generator" *) 
module design_1_pwm_generator_0_0_pwm_generator
   (pwm_signal,
    rstn,
    clk,
    pwm_duty);
  output pwm_signal;
  input rstn;
  input clk;
  input [4:0]pwm_duty;

  wire clk;
  wire [4:0]counter_reg;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire [4:0]pwm_duty;
  wire pwm_signal;
  wire pwm_signal_i_1_n_0;
  wire pwm_signal_i_2_n_0;
  wire pwm_signal_i_4_n_0;
  wire pwm_signal_i_5_n_0;
  wire pwm_signal_i_6_n_0;
  wire rstn;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .O(p_0_in__0[4]));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(counter_reg[0]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(counter_reg[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    pwm_signal_i_1
       (.I0(p_0_in),
        .I1(pwm_signal_i_4_n_0),
        .I2(pwm_signal),
        .O(pwm_signal_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_signal_i_2
       (.I0(rstn),
        .O(pwm_signal_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pwm_signal_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFB2BB22B2)) 
    pwm_signal_i_4
       (.I0(counter_reg[4]),
        .I1(pwm_duty[4]),
        .I2(counter_reg[3]),
        .I3(pwm_duty[3]),
        .I4(pwm_signal_i_5_n_0),
        .I5(pwm_signal_i_6_n_0),
        .O(pwm_signal_i_4_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    pwm_signal_i_5
       (.I0(pwm_duty[0]),
        .I1(counter_reg[0]),
        .I2(pwm_duty[1]),
        .I3(counter_reg[1]),
        .I4(pwm_duty[2]),
        .I5(counter_reg[2]),
        .O(pwm_signal_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    pwm_signal_i_6
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(counter_reg[2]),
        .O(pwm_signal_i_6_n_0));
  FDCE pwm_signal_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_signal_i_2_n_0),
        .D(pwm_signal_i_1_n_0),
        .Q(pwm_signal));
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
