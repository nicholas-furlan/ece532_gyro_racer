//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Apr  1 04:26:56 2025
//Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AUD_PWM,
    PS2_Clk_0_tri_io,
    PS2_Data_0_tri_io,
    blue,
    ddr2_sdram_addr,
    ddr2_sdram_ba,
    ddr2_sdram_cas_n,
    ddr2_sdram_ck_n,
    ddr2_sdram_ck_p,
    ddr2_sdram_cke,
    ddr2_sdram_cs_n,
    ddr2_sdram_dm,
    ddr2_sdram_dq,
    ddr2_sdram_dqs_n,
    ddr2_sdram_dqs_p,
    ddr2_sdram_odt,
    ddr2_sdram_ras_n,
    ddr2_sdram_we_n,
    dip_switches_16bits_tri_i,
    green,
    hsync_n,
    miso_0,
    miso_1,
    mosi_0,
    mosi_1,
    push_buttons_5bits_tri_i,
    red,
    reset,
    sclk_0,
    sclk_1,
    ss_n_0,
    ss_n_1,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vsync_n);
  output AUD_PWM;
  inout PS2_Clk_0_tri_io;
  inout PS2_Data_0_tri_io;
  output [3:0]blue;
  output [12:0]ddr2_sdram_addr;
  output [2:0]ddr2_sdram_ba;
  output ddr2_sdram_cas_n;
  output [0:0]ddr2_sdram_ck_n;
  output [0:0]ddr2_sdram_ck_p;
  output [0:0]ddr2_sdram_cke;
  output [0:0]ddr2_sdram_cs_n;
  output [1:0]ddr2_sdram_dm;
  inout [15:0]ddr2_sdram_dq;
  inout [1:0]ddr2_sdram_dqs_n;
  inout [1:0]ddr2_sdram_dqs_p;
  output [0:0]ddr2_sdram_odt;
  output ddr2_sdram_ras_n;
  output ddr2_sdram_we_n;
  input [15:0]dip_switches_16bits_tri_i;
  output [3:0]green;
  output hsync_n;
  input miso_0;
  input miso_1;
  output mosi_0;
  output mosi_1;
  input [4:0]push_buttons_5bits_tri_i;
  output [3:0]red;
  input reset;
  output sclk_0;
  output sclk_1;
  output [0:0]ss_n_0;
  output [0:0]ss_n_1;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output vsync_n;

  wire AUD_PWM;
  wire PS2_Clk_0_tri_i;
  wire PS2_Clk_0_tri_io;
  wire PS2_Clk_0_tri_o;
  wire PS2_Clk_0_tri_t;
  wire PS2_Data_0_tri_i;
  wire PS2_Data_0_tri_io;
  wire PS2_Data_0_tri_o;
  wire PS2_Data_0_tri_t;
  wire [3:0]blue;
  wire [12:0]ddr2_sdram_addr;
  wire [2:0]ddr2_sdram_ba;
  wire ddr2_sdram_cas_n;
  wire [0:0]ddr2_sdram_ck_n;
  wire [0:0]ddr2_sdram_ck_p;
  wire [0:0]ddr2_sdram_cke;
  wire [0:0]ddr2_sdram_cs_n;
  wire [1:0]ddr2_sdram_dm;
  wire [15:0]ddr2_sdram_dq;
  wire [1:0]ddr2_sdram_dqs_n;
  wire [1:0]ddr2_sdram_dqs_p;
  wire [0:0]ddr2_sdram_odt;
  wire ddr2_sdram_ras_n;
  wire ddr2_sdram_we_n;
  wire [15:0]dip_switches_16bits_tri_i;
  wire [3:0]green;
  wire hsync_n;
  wire miso_0;
  wire miso_1;
  wire mosi_0;
  wire mosi_1;
  wire [4:0]push_buttons_5bits_tri_i;
  wire [3:0]red;
  wire reset;
  wire sclk_0;
  wire sclk_1;
  wire [0:0]ss_n_0;
  wire [0:0]ss_n_1;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vsync_n;

  IOBUF PS2_Clk_0_tri_iobuf
       (.I(PS2_Clk_0_tri_o),
        .IO(PS2_Clk_0_tri_io),
        .O(PS2_Clk_0_tri_i),
        .T(PS2_Clk_0_tri_t));
  IOBUF PS2_Data_0_tri_iobuf
       (.I(PS2_Data_0_tri_o),
        .IO(PS2_Data_0_tri_io),
        .O(PS2_Data_0_tri_i),
        .T(PS2_Data_0_tri_t));
  design_1 design_1_i
       (.AUD_PWM(AUD_PWM),
        .PS2_Clk_0_tri_i(PS2_Clk_0_tri_i),
        .PS2_Clk_0_tri_o(PS2_Clk_0_tri_o),
        .PS2_Clk_0_tri_t(PS2_Clk_0_tri_t),
        .PS2_Data_0_tri_i(PS2_Data_0_tri_i),
        .PS2_Data_0_tri_o(PS2_Data_0_tri_o),
        .PS2_Data_0_tri_t(PS2_Data_0_tri_t),
        .blue(blue),
        .ddr2_sdram_addr(ddr2_sdram_addr),
        .ddr2_sdram_ba(ddr2_sdram_ba),
        .ddr2_sdram_cas_n(ddr2_sdram_cas_n),
        .ddr2_sdram_ck_n(ddr2_sdram_ck_n),
        .ddr2_sdram_ck_p(ddr2_sdram_ck_p),
        .ddr2_sdram_cke(ddr2_sdram_cke),
        .ddr2_sdram_cs_n(ddr2_sdram_cs_n),
        .ddr2_sdram_dm(ddr2_sdram_dm),
        .ddr2_sdram_dq(ddr2_sdram_dq),
        .ddr2_sdram_dqs_n(ddr2_sdram_dqs_n),
        .ddr2_sdram_dqs_p(ddr2_sdram_dqs_p),
        .ddr2_sdram_odt(ddr2_sdram_odt),
        .ddr2_sdram_ras_n(ddr2_sdram_ras_n),
        .ddr2_sdram_we_n(ddr2_sdram_we_n),
        .dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .green(green),
        .hsync_n(hsync_n),
        .miso_0(miso_0),
        .miso_1(miso_1),
        .mosi_0(mosi_0),
        .mosi_1(mosi_1),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .red(red),
        .reset(reset),
        .sclk_0(sclk_0),
        .sclk_1(sclk_1),
        .ss_n_0(ss_n_0),
        .ss_n_1(ss_n_1),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vsync_n(vsync_n));
endmodule
