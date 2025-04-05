// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 31 05:23:38 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_test3_v1_0_1_0/design_1_test3_v1_0_1_0_sim_netlist.v
// Design      : design_1_test3_v1_0_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_test3_v1_0_1_0,test3_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "test3_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_test3_v1_0_1_0
   (angular_rate_x,
    angular_rate_y,
    angular_rate_z,
    system_reset,
    angle_reset,
    leds,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input [15:0]angular_rate_x;
  input [15:0]angular_rate_y;
  input [15:0]angular_rate_z;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 system_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME system_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input system_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 angle_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME angle_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input angle_reset;
  output [15:0]leds;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire angle_reset;
  wire [15:0]angular_rate_x;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_z;
  wire [15:0]leds;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire system_reset;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_test3_v1_0_1_0_test3_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .angle_reset(angle_reset),
        .angular_rate_x(angular_rate_x),
        .angular_rate_y(angular_rate_y),
        .angular_rate_z(angular_rate_z),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .system_reset(system_reset));
endmodule

(* ORIG_REF_NAME = "axes" *) 
module design_1_test3_v1_0_1_0_axes
   (D,
    \integrate_x_reg[43]_0 ,
    \integrate_z_reg[43]_0 ,
    \integrate_y_reg[43]_0 ,
    s00_axi_aclk,
    angular_rate_z,
    angular_rate_y,
    angular_rate_x,
    angle_reset,
    \slv_reg1_reg[0] ,
    \slv_reg1_reg[0]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    system_reset);
  output [15:0]D;
  output [15:0]\integrate_x_reg[43]_0 ;
  output [15:0]\integrate_z_reg[43]_0 ;
  output [15:0]\integrate_y_reg[43]_0 ;
  input s00_axi_aclk;
  input [15:0]angular_rate_z;
  input [15:0]angular_rate_y;
  input [15:0]angular_rate_x;
  input angle_reset;
  input \slv_reg1_reg[0] ;
  input \slv_reg1_reg[0]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [15:0]s00_axi_wdata;
  input system_reset;

  wire [15:0]D;
  wire [15:0]ad_x;
  wire [15:0]ad_x0;
  wire ad_x0_carry__0_i_1_n_0;
  wire ad_x0_carry__0_i_2_n_0;
  wire ad_x0_carry__0_i_3_n_0;
  wire ad_x0_carry__0_i_4_n_0;
  wire ad_x0_carry__0_n_0;
  wire ad_x0_carry__0_n_1;
  wire ad_x0_carry__0_n_2;
  wire ad_x0_carry__0_n_3;
  wire ad_x0_carry__1_i_1_n_0;
  wire ad_x0_carry__1_i_2_n_0;
  wire ad_x0_carry__1_i_3_n_0;
  wire ad_x0_carry__1_i_4_n_0;
  wire ad_x0_carry__1_n_0;
  wire ad_x0_carry__1_n_1;
  wire ad_x0_carry__1_n_2;
  wire ad_x0_carry__1_n_3;
  wire ad_x0_carry__2_i_1_n_0;
  wire ad_x0_carry__2_i_2_n_0;
  wire ad_x0_carry__2_i_3_n_0;
  wire ad_x0_carry__2_i_4_n_0;
  wire ad_x0_carry__2_n_1;
  wire ad_x0_carry__2_n_2;
  wire ad_x0_carry__2_n_3;
  wire ad_x0_carry_i_1_n_0;
  wire ad_x0_carry_i_2_n_0;
  wire ad_x0_carry_i_3_n_0;
  wire ad_x0_carry_i_4_n_0;
  wire ad_x0_carry_n_0;
  wire ad_x0_carry_n_1;
  wire ad_x0_carry_n_2;
  wire ad_x0_carry_n_3;
  wire ad_x2;
  wire ad_x22_in;
  wire ad_x2_carry__0_i_10_n_0;
  wire ad_x2_carry__0_i_10_n_1;
  wire ad_x2_carry__0_i_10_n_2;
  wire ad_x2_carry__0_i_10_n_3;
  wire ad_x2_carry__0_i_11_n_0;
  wire ad_x2_carry__0_i_12_n_0;
  wire ad_x2_carry__0_i_13_n_0;
  wire ad_x2_carry__0_i_14_n_0;
  wire ad_x2_carry__0_i_15_n_0;
  wire ad_x2_carry__0_i_16_n_0;
  wire ad_x2_carry__0_i_1_n_0;
  wire ad_x2_carry__0_i_2_n_0;
  wire ad_x2_carry__0_i_3_n_0;
  wire ad_x2_carry__0_i_4_n_0;
  wire ad_x2_carry__0_i_5_n_0;
  wire ad_x2_carry__0_i_6_n_0;
  wire ad_x2_carry__0_i_7_n_0;
  wire ad_x2_carry__0_i_8_n_0;
  wire ad_x2_carry__0_i_9_n_2;
  wire ad_x2_carry__0_i_9_n_3;
  wire ad_x2_carry__0_n_1;
  wire ad_x2_carry__0_n_2;
  wire ad_x2_carry__0_n_3;
  wire ad_x2_carry_i_10_n_0;
  wire ad_x2_carry_i_10_n_1;
  wire ad_x2_carry_i_10_n_2;
  wire ad_x2_carry_i_10_n_3;
  wire ad_x2_carry_i_10_n_7;
  wire ad_x2_carry_i_11_n_0;
  wire ad_x2_carry_i_12_n_0;
  wire ad_x2_carry_i_13_n_0;
  wire ad_x2_carry_i_14_n_0;
  wire ad_x2_carry_i_15_n_0;
  wire ad_x2_carry_i_16_n_0;
  wire ad_x2_carry_i_17_n_0;
  wire ad_x2_carry_i_18_n_0;
  wire ad_x2_carry_i_19_n_0;
  wire ad_x2_carry_i_1_n_0;
  wire ad_x2_carry_i_2_n_0;
  wire ad_x2_carry_i_3_n_0;
  wire ad_x2_carry_i_4_n_0;
  wire ad_x2_carry_i_5_n_0;
  wire ad_x2_carry_i_6_n_0;
  wire ad_x2_carry_i_7_n_0;
  wire ad_x2_carry_i_8_n_0;
  wire ad_x2_carry_i_9_n_0;
  wire ad_x2_carry_i_9_n_1;
  wire ad_x2_carry_i_9_n_2;
  wire ad_x2_carry_i_9_n_3;
  wire ad_x2_carry_n_0;
  wire ad_x2_carry_n_1;
  wire ad_x2_carry_n_2;
  wire ad_x2_carry_n_3;
  wire \ad_x2_inferred__0/i__carry__0_n_1 ;
  wire \ad_x2_inferred__0/i__carry__0_n_2 ;
  wire \ad_x2_inferred__0/i__carry__0_n_3 ;
  wire \ad_x2_inferred__0/i__carry_n_0 ;
  wire \ad_x2_inferred__0/i__carry_n_1 ;
  wire \ad_x2_inferred__0/i__carry_n_2 ;
  wire \ad_x2_inferred__0/i__carry_n_3 ;
  wire [15:2]ad_x3;
  wire \ad_x[15]_i_1_n_0 ;
  wire [15:0]ad_y;
  wire [15:0]ad_y0;
  wire ad_y0_carry__0_i_1_n_0;
  wire ad_y0_carry__0_i_2_n_0;
  wire ad_y0_carry__0_i_3_n_0;
  wire ad_y0_carry__0_i_4_n_0;
  wire ad_y0_carry__0_n_0;
  wire ad_y0_carry__0_n_1;
  wire ad_y0_carry__0_n_2;
  wire ad_y0_carry__0_n_3;
  wire ad_y0_carry__1_i_1_n_0;
  wire ad_y0_carry__1_i_2_n_0;
  wire ad_y0_carry__1_i_3_n_0;
  wire ad_y0_carry__1_i_4_n_0;
  wire ad_y0_carry__1_n_0;
  wire ad_y0_carry__1_n_1;
  wire ad_y0_carry__1_n_2;
  wire ad_y0_carry__1_n_3;
  wire ad_y0_carry__2_i_1_n_0;
  wire ad_y0_carry__2_i_2_n_0;
  wire ad_y0_carry__2_i_3_n_0;
  wire ad_y0_carry__2_i_4_n_0;
  wire ad_y0_carry__2_n_1;
  wire ad_y0_carry__2_n_2;
  wire ad_y0_carry__2_n_3;
  wire ad_y0_carry_i_1_n_0;
  wire ad_y0_carry_i_2_n_0;
  wire ad_y0_carry_i_3_n_0;
  wire ad_y0_carry_i_4_n_0;
  wire ad_y0_carry_n_0;
  wire ad_y0_carry_n_1;
  wire ad_y0_carry_n_2;
  wire ad_y0_carry_n_3;
  wire ad_y2;
  wire ad_y21_in;
  wire ad_y2_carry__0_i_10_n_0;
  wire ad_y2_carry__0_i_10_n_1;
  wire ad_y2_carry__0_i_10_n_2;
  wire ad_y2_carry__0_i_10_n_3;
  wire ad_y2_carry__0_i_11_n_0;
  wire ad_y2_carry__0_i_12_n_0;
  wire ad_y2_carry__0_i_13_n_0;
  wire ad_y2_carry__0_i_14_n_0;
  wire ad_y2_carry__0_i_15_n_0;
  wire ad_y2_carry__0_i_16_n_0;
  wire ad_y2_carry__0_i_1_n_0;
  wire ad_y2_carry__0_i_2_n_0;
  wire ad_y2_carry__0_i_3_n_0;
  wire ad_y2_carry__0_i_4_n_0;
  wire ad_y2_carry__0_i_5_n_0;
  wire ad_y2_carry__0_i_6_n_0;
  wire ad_y2_carry__0_i_7_n_0;
  wire ad_y2_carry__0_i_8_n_0;
  wire ad_y2_carry__0_i_9_n_2;
  wire ad_y2_carry__0_i_9_n_3;
  wire ad_y2_carry__0_n_1;
  wire ad_y2_carry__0_n_2;
  wire ad_y2_carry__0_n_3;
  wire ad_y2_carry_i_10_n_0;
  wire ad_y2_carry_i_10_n_1;
  wire ad_y2_carry_i_10_n_2;
  wire ad_y2_carry_i_10_n_3;
  wire ad_y2_carry_i_10_n_7;
  wire ad_y2_carry_i_11_n_0;
  wire ad_y2_carry_i_12_n_0;
  wire ad_y2_carry_i_13_n_0;
  wire ad_y2_carry_i_14_n_0;
  wire ad_y2_carry_i_15_n_0;
  wire ad_y2_carry_i_16_n_0;
  wire ad_y2_carry_i_17_n_0;
  wire ad_y2_carry_i_18_n_0;
  wire ad_y2_carry_i_19_n_0;
  wire ad_y2_carry_i_1_n_0;
  wire ad_y2_carry_i_2_n_0;
  wire ad_y2_carry_i_3_n_0;
  wire ad_y2_carry_i_4_n_0;
  wire ad_y2_carry_i_5_n_0;
  wire ad_y2_carry_i_6_n_0;
  wire ad_y2_carry_i_7_n_0;
  wire ad_y2_carry_i_8_n_0;
  wire ad_y2_carry_i_9_n_0;
  wire ad_y2_carry_i_9_n_1;
  wire ad_y2_carry_i_9_n_2;
  wire ad_y2_carry_i_9_n_3;
  wire ad_y2_carry_n_0;
  wire ad_y2_carry_n_1;
  wire ad_y2_carry_n_2;
  wire ad_y2_carry_n_3;
  wire \ad_y2_inferred__0/i__carry__0_n_1 ;
  wire \ad_y2_inferred__0/i__carry__0_n_2 ;
  wire \ad_y2_inferred__0/i__carry__0_n_3 ;
  wire \ad_y2_inferred__0/i__carry_n_0 ;
  wire \ad_y2_inferred__0/i__carry_n_1 ;
  wire \ad_y2_inferred__0/i__carry_n_2 ;
  wire \ad_y2_inferred__0/i__carry_n_3 ;
  wire [15:2]ad_y3;
  wire \ad_y[15]_i_1_n_0 ;
  wire [15:0]ad_z;
  wire [15:0]ad_z0;
  wire ad_z0_carry__0_i_1_n_0;
  wire ad_z0_carry__0_i_2_n_0;
  wire ad_z0_carry__0_i_3_n_0;
  wire ad_z0_carry__0_i_4_n_0;
  wire ad_z0_carry__0_n_0;
  wire ad_z0_carry__0_n_1;
  wire ad_z0_carry__0_n_2;
  wire ad_z0_carry__0_n_3;
  wire ad_z0_carry__1_i_1_n_0;
  wire ad_z0_carry__1_i_2_n_0;
  wire ad_z0_carry__1_i_3_n_0;
  wire ad_z0_carry__1_i_4_n_0;
  wire ad_z0_carry__1_n_0;
  wire ad_z0_carry__1_n_1;
  wire ad_z0_carry__1_n_2;
  wire ad_z0_carry__1_n_3;
  wire ad_z0_carry__2_i_1_n_0;
  wire ad_z0_carry__2_i_2_n_0;
  wire ad_z0_carry__2_i_3_n_0;
  wire ad_z0_carry__2_i_4_n_0;
  wire ad_z0_carry__2_n_1;
  wire ad_z0_carry__2_n_2;
  wire ad_z0_carry__2_n_3;
  wire ad_z0_carry_i_1_n_0;
  wire ad_z0_carry_i_2_n_0;
  wire ad_z0_carry_i_3_n_0;
  wire ad_z0_carry_i_4_n_0;
  wire ad_z0_carry_n_0;
  wire ad_z0_carry_n_1;
  wire ad_z0_carry_n_2;
  wire ad_z0_carry_n_3;
  wire ad_z2;
  wire ad_z20_in;
  wire ad_z2_carry__0_i_10_n_0;
  wire ad_z2_carry__0_i_10_n_1;
  wire ad_z2_carry__0_i_10_n_2;
  wire ad_z2_carry__0_i_10_n_3;
  wire ad_z2_carry__0_i_11_n_0;
  wire ad_z2_carry__0_i_12_n_0;
  wire ad_z2_carry__0_i_13_n_0;
  wire ad_z2_carry__0_i_14_n_0;
  wire ad_z2_carry__0_i_15_n_0;
  wire ad_z2_carry__0_i_16_n_0;
  wire ad_z2_carry__0_i_1_n_0;
  wire ad_z2_carry__0_i_2_n_0;
  wire ad_z2_carry__0_i_3_n_0;
  wire ad_z2_carry__0_i_4_n_0;
  wire ad_z2_carry__0_i_5_n_0;
  wire ad_z2_carry__0_i_6_n_0;
  wire ad_z2_carry__0_i_7_n_0;
  wire ad_z2_carry__0_i_8_n_0;
  wire ad_z2_carry__0_i_9_n_2;
  wire ad_z2_carry__0_i_9_n_3;
  wire ad_z2_carry__0_n_1;
  wire ad_z2_carry__0_n_2;
  wire ad_z2_carry__0_n_3;
  wire ad_z2_carry_i_10_n_0;
  wire ad_z2_carry_i_10_n_1;
  wire ad_z2_carry_i_10_n_2;
  wire ad_z2_carry_i_10_n_3;
  wire ad_z2_carry_i_10_n_7;
  wire ad_z2_carry_i_11_n_0;
  wire ad_z2_carry_i_12_n_0;
  wire ad_z2_carry_i_13_n_0;
  wire ad_z2_carry_i_14_n_0;
  wire ad_z2_carry_i_15_n_0;
  wire ad_z2_carry_i_16_n_0;
  wire ad_z2_carry_i_17_n_0;
  wire ad_z2_carry_i_18_n_0;
  wire ad_z2_carry_i_19_n_0;
  wire ad_z2_carry_i_1_n_0;
  wire ad_z2_carry_i_2_n_0;
  wire ad_z2_carry_i_3_n_0;
  wire ad_z2_carry_i_4_n_0;
  wire ad_z2_carry_i_5_n_0;
  wire ad_z2_carry_i_6_n_0;
  wire ad_z2_carry_i_7_n_0;
  wire ad_z2_carry_i_8_n_0;
  wire ad_z2_carry_i_9_n_0;
  wire ad_z2_carry_i_9_n_1;
  wire ad_z2_carry_i_9_n_2;
  wire ad_z2_carry_i_9_n_3;
  wire ad_z2_carry_n_0;
  wire ad_z2_carry_n_1;
  wire ad_z2_carry_n_2;
  wire ad_z2_carry_n_3;
  wire \ad_z2_inferred__0/i__carry__0_n_1 ;
  wire \ad_z2_inferred__0/i__carry__0_n_2 ;
  wire \ad_z2_inferred__0/i__carry__0_n_3 ;
  wire \ad_z2_inferred__0/i__carry_n_0 ;
  wire \ad_z2_inferred__0/i__carry_n_1 ;
  wire \ad_z2_inferred__0/i__carry_n_2 ;
  wire \ad_z2_inferred__0/i__carry_n_3 ;
  wire [15:2]ad_z3;
  wire \ad_z[15]_i_1_n_0 ;
  wire \ad_z[15]_i_2_n_0 ;
  wire angle_reset;
  wire [15:0]angular_rate_x;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_z;
  wire [15:0]avg_x;
  wire \avg_x[15]_i_3_n_0 ;
  wire avg_x_0;
  wire [15:0]avg_y;
  wire [15:0]avg_z;
  wire \calibrate_timer[7]_i_1_n_0 ;
  wire \calibrate_timer[7]_i_3_n_0 ;
  wire [7:0]calibrate_timer_reg__0;
  wire clear;
  wire i__carry__0_i_10__0_n_0;
  wire i__carry__0_i_10__0_n_1;
  wire i__carry__0_i_10__0_n_2;
  wire i__carry__0_i_10__0_n_3;
  wire i__carry__0_i_10__0_n_4;
  wire i__carry__0_i_10__0_n_5;
  wire i__carry__0_i_10__0_n_6;
  wire i__carry__0_i_10__0_n_7;
  wire i__carry__0_i_10__1_n_0;
  wire i__carry__0_i_10__1_n_1;
  wire i__carry__0_i_10__1_n_2;
  wire i__carry__0_i_10__1_n_3;
  wire i__carry__0_i_10__1_n_4;
  wire i__carry__0_i_10__1_n_5;
  wire i__carry__0_i_10__1_n_6;
  wire i__carry__0_i_10__1_n_7;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_10_n_1;
  wire i__carry__0_i_10_n_2;
  wire i__carry__0_i_10_n_3;
  wire i__carry__0_i_10_n_4;
  wire i__carry__0_i_10_n_5;
  wire i__carry__0_i_10_n_6;
  wire i__carry__0_i_10_n_7;
  wire i__carry__0_i_11__0_n_0;
  wire i__carry__0_i_11__1_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12__0_n_0;
  wire i__carry__0_i_12__1_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13__0_n_0;
  wire i__carry__0_i_13__1_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14__0_n_0;
  wire i__carry__0_i_14__1_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15__0_n_0;
  wire i__carry__0_i_15__1_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16__0_n_0;
  wire i__carry__0_i_16__1_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_17__0_n_0;
  wire i__carry__0_i_17__1_n_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9__0_n_2;
  wire i__carry__0_i_9__0_n_3;
  wire i__carry__0_i_9__0_n_5;
  wire i__carry__0_i_9__0_n_6;
  wire i__carry__0_i_9__0_n_7;
  wire i__carry__0_i_9__1_n_2;
  wire i__carry__0_i_9__1_n_3;
  wire i__carry__0_i_9__1_n_5;
  wire i__carry__0_i_9__1_n_6;
  wire i__carry__0_i_9__1_n_7;
  wire i__carry__0_i_9_n_2;
  wire i__carry__0_i_9_n_3;
  wire i__carry__0_i_9_n_5;
  wire i__carry__0_i_9_n_6;
  wire i__carry__0_i_9_n_7;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_10__0_n_1;
  wire i__carry_i_10__0_n_2;
  wire i__carry_i_10__0_n_3;
  wire i__carry_i_10__0_n_4;
  wire i__carry_i_10__0_n_5;
  wire i__carry_i_10__0_n_6;
  wire i__carry_i_10__1_n_0;
  wire i__carry_i_10__1_n_1;
  wire i__carry_i_10__1_n_2;
  wire i__carry_i_10__1_n_3;
  wire i__carry_i_10__1_n_4;
  wire i__carry_i_10__1_n_5;
  wire i__carry_i_10__1_n_6;
  wire i__carry_i_10_n_0;
  wire i__carry_i_10_n_1;
  wire i__carry_i_10_n_2;
  wire i__carry_i_10_n_3;
  wire i__carry_i_10_n_4;
  wire i__carry_i_10_n_5;
  wire i__carry_i_10_n_6;
  wire i__carry_i_11__0_n_0;
  wire i__carry_i_11__1_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12__0_n_0;
  wire i__carry_i_12__1_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13__0_n_0;
  wire i__carry_i_13__1_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14__0_n_0;
  wire i__carry_i_14__1_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15__0_n_0;
  wire i__carry_i_15__1_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16__0_n_0;
  wire i__carry_i_16__1_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17__0_n_0;
  wire i__carry_i_17__1_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18__0_n_0;
  wire i__carry_i_18__1_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9__0_n_0;
  wire i__carry_i_9__0_n_1;
  wire i__carry_i_9__0_n_2;
  wire i__carry_i_9__0_n_3;
  wire i__carry_i_9__0_n_4;
  wire i__carry_i_9__0_n_5;
  wire i__carry_i_9__0_n_6;
  wire i__carry_i_9__0_n_7;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9__1_n_1;
  wire i__carry_i_9__1_n_2;
  wire i__carry_i_9__1_n_3;
  wire i__carry_i_9__1_n_4;
  wire i__carry_i_9__1_n_5;
  wire i__carry_i_9__1_n_6;
  wire i__carry_i_9__1_n_7;
  wire i__carry_i_9_n_0;
  wire i__carry_i_9_n_1;
  wire i__carry_i_9_n_2;
  wire i__carry_i_9_n_3;
  wire i__carry_i_9_n_4;
  wire i__carry_i_9_n_5;
  wire i__carry_i_9_n_6;
  wire i__carry_i_9_n_7;
  wire \integrate_x[0]_i_2_n_0 ;
  wire \integrate_x[0]_i_3_n_0 ;
  wire \integrate_x[0]_i_4_n_0 ;
  wire \integrate_x[0]_i_5_n_0 ;
  wire \integrate_x[12]_i_2_n_0 ;
  wire \integrate_x[12]_i_3_n_0 ;
  wire \integrate_x[12]_i_4_n_0 ;
  wire \integrate_x[12]_i_5_n_0 ;
  wire \integrate_x[16]_i_2_n_0 ;
  wire \integrate_x[16]_i_3_n_0 ;
  wire \integrate_x[16]_i_4_n_0 ;
  wire \integrate_x[16]_i_5_n_0 ;
  wire \integrate_x[20]_i_2_n_0 ;
  wire \integrate_x[20]_i_3_n_0 ;
  wire \integrate_x[20]_i_4_n_0 ;
  wire \integrate_x[20]_i_5_n_0 ;
  wire \integrate_x[24]_i_2_n_0 ;
  wire \integrate_x[24]_i_3_n_0 ;
  wire \integrate_x[24]_i_4_n_0 ;
  wire \integrate_x[24]_i_5_n_0 ;
  wire \integrate_x[28]_i_2_n_0 ;
  wire \integrate_x[28]_i_3_n_0 ;
  wire \integrate_x[28]_i_4_n_0 ;
  wire \integrate_x[28]_i_5_n_0 ;
  wire \integrate_x[32]_i_2_n_0 ;
  wire \integrate_x[32]_i_3_n_0 ;
  wire \integrate_x[32]_i_4_n_0 ;
  wire \integrate_x[32]_i_5_n_0 ;
  wire \integrate_x[36]_i_2_n_0 ;
  wire \integrate_x[36]_i_3_n_0 ;
  wire \integrate_x[36]_i_4_n_0 ;
  wire \integrate_x[36]_i_5_n_0 ;
  wire \integrate_x[40]_i_2_n_0 ;
  wire \integrate_x[40]_i_3_n_0 ;
  wire \integrate_x[40]_i_4_n_0 ;
  wire \integrate_x[40]_i_5_n_0 ;
  wire \integrate_x[4]_i_2_n_0 ;
  wire \integrate_x[4]_i_3_n_0 ;
  wire \integrate_x[4]_i_4_n_0 ;
  wire \integrate_x[4]_i_5_n_0 ;
  wire \integrate_x[8]_i_2_n_0 ;
  wire \integrate_x[8]_i_3_n_0 ;
  wire \integrate_x[8]_i_4_n_0 ;
  wire \integrate_x[8]_i_5_n_0 ;
  wire [43:28]integrate_x_reg;
  wire \integrate_x_reg[0]_i_1_n_0 ;
  wire \integrate_x_reg[0]_i_1_n_1 ;
  wire \integrate_x_reg[0]_i_1_n_2 ;
  wire \integrate_x_reg[0]_i_1_n_3 ;
  wire \integrate_x_reg[0]_i_1_n_4 ;
  wire \integrate_x_reg[0]_i_1_n_5 ;
  wire \integrate_x_reg[0]_i_1_n_6 ;
  wire \integrate_x_reg[0]_i_1_n_7 ;
  wire \integrate_x_reg[12]_i_1_n_0 ;
  wire \integrate_x_reg[12]_i_1_n_1 ;
  wire \integrate_x_reg[12]_i_1_n_2 ;
  wire \integrate_x_reg[12]_i_1_n_3 ;
  wire \integrate_x_reg[12]_i_1_n_4 ;
  wire \integrate_x_reg[12]_i_1_n_5 ;
  wire \integrate_x_reg[12]_i_1_n_6 ;
  wire \integrate_x_reg[12]_i_1_n_7 ;
  wire \integrate_x_reg[16]_i_1_n_0 ;
  wire \integrate_x_reg[16]_i_1_n_1 ;
  wire \integrate_x_reg[16]_i_1_n_2 ;
  wire \integrate_x_reg[16]_i_1_n_3 ;
  wire \integrate_x_reg[16]_i_1_n_4 ;
  wire \integrate_x_reg[16]_i_1_n_5 ;
  wire \integrate_x_reg[16]_i_1_n_6 ;
  wire \integrate_x_reg[16]_i_1_n_7 ;
  wire \integrate_x_reg[20]_i_1_n_0 ;
  wire \integrate_x_reg[20]_i_1_n_1 ;
  wire \integrate_x_reg[20]_i_1_n_2 ;
  wire \integrate_x_reg[20]_i_1_n_3 ;
  wire \integrate_x_reg[20]_i_1_n_4 ;
  wire \integrate_x_reg[20]_i_1_n_5 ;
  wire \integrate_x_reg[20]_i_1_n_6 ;
  wire \integrate_x_reg[20]_i_1_n_7 ;
  wire \integrate_x_reg[24]_i_1_n_0 ;
  wire \integrate_x_reg[24]_i_1_n_1 ;
  wire \integrate_x_reg[24]_i_1_n_2 ;
  wire \integrate_x_reg[24]_i_1_n_3 ;
  wire \integrate_x_reg[24]_i_1_n_4 ;
  wire \integrate_x_reg[24]_i_1_n_5 ;
  wire \integrate_x_reg[24]_i_1_n_6 ;
  wire \integrate_x_reg[24]_i_1_n_7 ;
  wire \integrate_x_reg[28]_i_1_n_0 ;
  wire \integrate_x_reg[28]_i_1_n_1 ;
  wire \integrate_x_reg[28]_i_1_n_2 ;
  wire \integrate_x_reg[28]_i_1_n_3 ;
  wire \integrate_x_reg[28]_i_1_n_4 ;
  wire \integrate_x_reg[28]_i_1_n_5 ;
  wire \integrate_x_reg[28]_i_1_n_6 ;
  wire \integrate_x_reg[28]_i_1_n_7 ;
  wire \integrate_x_reg[32]_i_1_n_0 ;
  wire \integrate_x_reg[32]_i_1_n_1 ;
  wire \integrate_x_reg[32]_i_1_n_2 ;
  wire \integrate_x_reg[32]_i_1_n_3 ;
  wire \integrate_x_reg[32]_i_1_n_4 ;
  wire \integrate_x_reg[32]_i_1_n_5 ;
  wire \integrate_x_reg[32]_i_1_n_6 ;
  wire \integrate_x_reg[32]_i_1_n_7 ;
  wire \integrate_x_reg[36]_i_1_n_0 ;
  wire \integrate_x_reg[36]_i_1_n_1 ;
  wire \integrate_x_reg[36]_i_1_n_2 ;
  wire \integrate_x_reg[36]_i_1_n_3 ;
  wire \integrate_x_reg[36]_i_1_n_4 ;
  wire \integrate_x_reg[36]_i_1_n_5 ;
  wire \integrate_x_reg[36]_i_1_n_6 ;
  wire \integrate_x_reg[36]_i_1_n_7 ;
  wire \integrate_x_reg[40]_i_1_n_1 ;
  wire \integrate_x_reg[40]_i_1_n_2 ;
  wire \integrate_x_reg[40]_i_1_n_3 ;
  wire \integrate_x_reg[40]_i_1_n_4 ;
  wire \integrate_x_reg[40]_i_1_n_5 ;
  wire \integrate_x_reg[40]_i_1_n_6 ;
  wire \integrate_x_reg[40]_i_1_n_7 ;
  wire [15:0]\integrate_x_reg[43]_0 ;
  wire \integrate_x_reg[4]_i_1_n_0 ;
  wire \integrate_x_reg[4]_i_1_n_1 ;
  wire \integrate_x_reg[4]_i_1_n_2 ;
  wire \integrate_x_reg[4]_i_1_n_3 ;
  wire \integrate_x_reg[4]_i_1_n_4 ;
  wire \integrate_x_reg[4]_i_1_n_5 ;
  wire \integrate_x_reg[4]_i_1_n_6 ;
  wire \integrate_x_reg[4]_i_1_n_7 ;
  wire \integrate_x_reg[8]_i_1_n_0 ;
  wire \integrate_x_reg[8]_i_1_n_1 ;
  wire \integrate_x_reg[8]_i_1_n_2 ;
  wire \integrate_x_reg[8]_i_1_n_3 ;
  wire \integrate_x_reg[8]_i_1_n_4 ;
  wire \integrate_x_reg[8]_i_1_n_5 ;
  wire \integrate_x_reg[8]_i_1_n_6 ;
  wire \integrate_x_reg[8]_i_1_n_7 ;
  wire \integrate_x_reg_n_0_[0] ;
  wire \integrate_x_reg_n_0_[10] ;
  wire \integrate_x_reg_n_0_[11] ;
  wire \integrate_x_reg_n_0_[12] ;
  wire \integrate_x_reg_n_0_[13] ;
  wire \integrate_x_reg_n_0_[14] ;
  wire \integrate_x_reg_n_0_[15] ;
  wire \integrate_x_reg_n_0_[16] ;
  wire \integrate_x_reg_n_0_[17] ;
  wire \integrate_x_reg_n_0_[18] ;
  wire \integrate_x_reg_n_0_[19] ;
  wire \integrate_x_reg_n_0_[1] ;
  wire \integrate_x_reg_n_0_[20] ;
  wire \integrate_x_reg_n_0_[21] ;
  wire \integrate_x_reg_n_0_[22] ;
  wire \integrate_x_reg_n_0_[23] ;
  wire \integrate_x_reg_n_0_[24] ;
  wire \integrate_x_reg_n_0_[25] ;
  wire \integrate_x_reg_n_0_[26] ;
  wire \integrate_x_reg_n_0_[27] ;
  wire \integrate_x_reg_n_0_[2] ;
  wire \integrate_x_reg_n_0_[3] ;
  wire \integrate_x_reg_n_0_[4] ;
  wire \integrate_x_reg_n_0_[5] ;
  wire \integrate_x_reg_n_0_[6] ;
  wire \integrate_x_reg_n_0_[7] ;
  wire \integrate_x_reg_n_0_[8] ;
  wire \integrate_x_reg_n_0_[9] ;
  wire \integrate_y[0]_i_2_n_0 ;
  wire \integrate_y[0]_i_3_n_0 ;
  wire \integrate_y[0]_i_4_n_0 ;
  wire \integrate_y[0]_i_5_n_0 ;
  wire \integrate_y[12]_i_2_n_0 ;
  wire \integrate_y[12]_i_3_n_0 ;
  wire \integrate_y[12]_i_4_n_0 ;
  wire \integrate_y[12]_i_5_n_0 ;
  wire \integrate_y[16]_i_2_n_0 ;
  wire \integrate_y[16]_i_3_n_0 ;
  wire \integrate_y[16]_i_4_n_0 ;
  wire \integrate_y[16]_i_5_n_0 ;
  wire \integrate_y[20]_i_2_n_0 ;
  wire \integrate_y[20]_i_3_n_0 ;
  wire \integrate_y[20]_i_4_n_0 ;
  wire \integrate_y[20]_i_5_n_0 ;
  wire \integrate_y[24]_i_2_n_0 ;
  wire \integrate_y[24]_i_3_n_0 ;
  wire \integrate_y[24]_i_4_n_0 ;
  wire \integrate_y[24]_i_5_n_0 ;
  wire \integrate_y[28]_i_2_n_0 ;
  wire \integrate_y[28]_i_3_n_0 ;
  wire \integrate_y[28]_i_4_n_0 ;
  wire \integrate_y[28]_i_5_n_0 ;
  wire \integrate_y[32]_i_2_n_0 ;
  wire \integrate_y[32]_i_3_n_0 ;
  wire \integrate_y[32]_i_4_n_0 ;
  wire \integrate_y[32]_i_5_n_0 ;
  wire \integrate_y[36]_i_2_n_0 ;
  wire \integrate_y[36]_i_3_n_0 ;
  wire \integrate_y[36]_i_4_n_0 ;
  wire \integrate_y[36]_i_5_n_0 ;
  wire \integrate_y[40]_i_2_n_0 ;
  wire \integrate_y[40]_i_3_n_0 ;
  wire \integrate_y[40]_i_4_n_0 ;
  wire \integrate_y[40]_i_5_n_0 ;
  wire \integrate_y[4]_i_2_n_0 ;
  wire \integrate_y[4]_i_3_n_0 ;
  wire \integrate_y[4]_i_4_n_0 ;
  wire \integrate_y[4]_i_5_n_0 ;
  wire \integrate_y[8]_i_2_n_0 ;
  wire \integrate_y[8]_i_3_n_0 ;
  wire \integrate_y[8]_i_4_n_0 ;
  wire \integrate_y[8]_i_5_n_0 ;
  wire [43:28]integrate_y_reg;
  wire \integrate_y_reg[0]_i_1_n_0 ;
  wire \integrate_y_reg[0]_i_1_n_1 ;
  wire \integrate_y_reg[0]_i_1_n_2 ;
  wire \integrate_y_reg[0]_i_1_n_3 ;
  wire \integrate_y_reg[0]_i_1_n_4 ;
  wire \integrate_y_reg[0]_i_1_n_5 ;
  wire \integrate_y_reg[0]_i_1_n_6 ;
  wire \integrate_y_reg[0]_i_1_n_7 ;
  wire \integrate_y_reg[12]_i_1_n_0 ;
  wire \integrate_y_reg[12]_i_1_n_1 ;
  wire \integrate_y_reg[12]_i_1_n_2 ;
  wire \integrate_y_reg[12]_i_1_n_3 ;
  wire \integrate_y_reg[12]_i_1_n_4 ;
  wire \integrate_y_reg[12]_i_1_n_5 ;
  wire \integrate_y_reg[12]_i_1_n_6 ;
  wire \integrate_y_reg[12]_i_1_n_7 ;
  wire \integrate_y_reg[16]_i_1_n_0 ;
  wire \integrate_y_reg[16]_i_1_n_1 ;
  wire \integrate_y_reg[16]_i_1_n_2 ;
  wire \integrate_y_reg[16]_i_1_n_3 ;
  wire \integrate_y_reg[16]_i_1_n_4 ;
  wire \integrate_y_reg[16]_i_1_n_5 ;
  wire \integrate_y_reg[16]_i_1_n_6 ;
  wire \integrate_y_reg[16]_i_1_n_7 ;
  wire \integrate_y_reg[20]_i_1_n_0 ;
  wire \integrate_y_reg[20]_i_1_n_1 ;
  wire \integrate_y_reg[20]_i_1_n_2 ;
  wire \integrate_y_reg[20]_i_1_n_3 ;
  wire \integrate_y_reg[20]_i_1_n_4 ;
  wire \integrate_y_reg[20]_i_1_n_5 ;
  wire \integrate_y_reg[20]_i_1_n_6 ;
  wire \integrate_y_reg[20]_i_1_n_7 ;
  wire \integrate_y_reg[24]_i_1_n_0 ;
  wire \integrate_y_reg[24]_i_1_n_1 ;
  wire \integrate_y_reg[24]_i_1_n_2 ;
  wire \integrate_y_reg[24]_i_1_n_3 ;
  wire \integrate_y_reg[24]_i_1_n_4 ;
  wire \integrate_y_reg[24]_i_1_n_5 ;
  wire \integrate_y_reg[24]_i_1_n_6 ;
  wire \integrate_y_reg[24]_i_1_n_7 ;
  wire \integrate_y_reg[28]_i_1_n_0 ;
  wire \integrate_y_reg[28]_i_1_n_1 ;
  wire \integrate_y_reg[28]_i_1_n_2 ;
  wire \integrate_y_reg[28]_i_1_n_3 ;
  wire \integrate_y_reg[28]_i_1_n_4 ;
  wire \integrate_y_reg[28]_i_1_n_5 ;
  wire \integrate_y_reg[28]_i_1_n_6 ;
  wire \integrate_y_reg[28]_i_1_n_7 ;
  wire \integrate_y_reg[32]_i_1_n_0 ;
  wire \integrate_y_reg[32]_i_1_n_1 ;
  wire \integrate_y_reg[32]_i_1_n_2 ;
  wire \integrate_y_reg[32]_i_1_n_3 ;
  wire \integrate_y_reg[32]_i_1_n_4 ;
  wire \integrate_y_reg[32]_i_1_n_5 ;
  wire \integrate_y_reg[32]_i_1_n_6 ;
  wire \integrate_y_reg[32]_i_1_n_7 ;
  wire \integrate_y_reg[36]_i_1_n_0 ;
  wire \integrate_y_reg[36]_i_1_n_1 ;
  wire \integrate_y_reg[36]_i_1_n_2 ;
  wire \integrate_y_reg[36]_i_1_n_3 ;
  wire \integrate_y_reg[36]_i_1_n_4 ;
  wire \integrate_y_reg[36]_i_1_n_5 ;
  wire \integrate_y_reg[36]_i_1_n_6 ;
  wire \integrate_y_reg[36]_i_1_n_7 ;
  wire \integrate_y_reg[40]_i_1_n_1 ;
  wire \integrate_y_reg[40]_i_1_n_2 ;
  wire \integrate_y_reg[40]_i_1_n_3 ;
  wire \integrate_y_reg[40]_i_1_n_4 ;
  wire \integrate_y_reg[40]_i_1_n_5 ;
  wire \integrate_y_reg[40]_i_1_n_6 ;
  wire \integrate_y_reg[40]_i_1_n_7 ;
  wire [15:0]\integrate_y_reg[43]_0 ;
  wire \integrate_y_reg[4]_i_1_n_0 ;
  wire \integrate_y_reg[4]_i_1_n_1 ;
  wire \integrate_y_reg[4]_i_1_n_2 ;
  wire \integrate_y_reg[4]_i_1_n_3 ;
  wire \integrate_y_reg[4]_i_1_n_4 ;
  wire \integrate_y_reg[4]_i_1_n_5 ;
  wire \integrate_y_reg[4]_i_1_n_6 ;
  wire \integrate_y_reg[4]_i_1_n_7 ;
  wire \integrate_y_reg[8]_i_1_n_0 ;
  wire \integrate_y_reg[8]_i_1_n_1 ;
  wire \integrate_y_reg[8]_i_1_n_2 ;
  wire \integrate_y_reg[8]_i_1_n_3 ;
  wire \integrate_y_reg[8]_i_1_n_4 ;
  wire \integrate_y_reg[8]_i_1_n_5 ;
  wire \integrate_y_reg[8]_i_1_n_6 ;
  wire \integrate_y_reg[8]_i_1_n_7 ;
  wire \integrate_y_reg_n_0_[0] ;
  wire \integrate_y_reg_n_0_[10] ;
  wire \integrate_y_reg_n_0_[11] ;
  wire \integrate_y_reg_n_0_[12] ;
  wire \integrate_y_reg_n_0_[13] ;
  wire \integrate_y_reg_n_0_[14] ;
  wire \integrate_y_reg_n_0_[15] ;
  wire \integrate_y_reg_n_0_[16] ;
  wire \integrate_y_reg_n_0_[17] ;
  wire \integrate_y_reg_n_0_[18] ;
  wire \integrate_y_reg_n_0_[19] ;
  wire \integrate_y_reg_n_0_[1] ;
  wire \integrate_y_reg_n_0_[20] ;
  wire \integrate_y_reg_n_0_[21] ;
  wire \integrate_y_reg_n_0_[22] ;
  wire \integrate_y_reg_n_0_[23] ;
  wire \integrate_y_reg_n_0_[24] ;
  wire \integrate_y_reg_n_0_[25] ;
  wire \integrate_y_reg_n_0_[26] ;
  wire \integrate_y_reg_n_0_[27] ;
  wire \integrate_y_reg_n_0_[2] ;
  wire \integrate_y_reg_n_0_[3] ;
  wire \integrate_y_reg_n_0_[4] ;
  wire \integrate_y_reg_n_0_[5] ;
  wire \integrate_y_reg_n_0_[6] ;
  wire \integrate_y_reg_n_0_[7] ;
  wire \integrate_y_reg_n_0_[8] ;
  wire \integrate_y_reg_n_0_[9] ;
  wire integrate_z;
  wire \integrate_z[0]_i_2_n_0 ;
  wire \integrate_z[0]_i_4_n_0 ;
  wire \integrate_z[0]_i_5_n_0 ;
  wire \integrate_z[0]_i_6_n_0 ;
  wire \integrate_z[0]_i_7_n_0 ;
  wire \integrate_z[12]_i_2_n_0 ;
  wire \integrate_z[12]_i_3_n_0 ;
  wire \integrate_z[12]_i_4_n_0 ;
  wire \integrate_z[12]_i_5_n_0 ;
  wire \integrate_z[16]_i_2_n_0 ;
  wire \integrate_z[16]_i_3_n_0 ;
  wire \integrate_z[16]_i_4_n_0 ;
  wire \integrate_z[16]_i_5_n_0 ;
  wire \integrate_z[20]_i_2_n_0 ;
  wire \integrate_z[20]_i_3_n_0 ;
  wire \integrate_z[20]_i_4_n_0 ;
  wire \integrate_z[20]_i_5_n_0 ;
  wire \integrate_z[24]_i_2_n_0 ;
  wire \integrate_z[24]_i_3_n_0 ;
  wire \integrate_z[24]_i_4_n_0 ;
  wire \integrate_z[24]_i_5_n_0 ;
  wire \integrate_z[28]_i_2_n_0 ;
  wire \integrate_z[28]_i_3_n_0 ;
  wire \integrate_z[28]_i_4_n_0 ;
  wire \integrate_z[28]_i_5_n_0 ;
  wire \integrate_z[32]_i_2_n_0 ;
  wire \integrate_z[32]_i_3_n_0 ;
  wire \integrate_z[32]_i_4_n_0 ;
  wire \integrate_z[32]_i_5_n_0 ;
  wire \integrate_z[36]_i_2_n_0 ;
  wire \integrate_z[36]_i_3_n_0 ;
  wire \integrate_z[36]_i_4_n_0 ;
  wire \integrate_z[36]_i_5_n_0 ;
  wire \integrate_z[40]_i_2_n_0 ;
  wire \integrate_z[40]_i_3_n_0 ;
  wire \integrate_z[40]_i_4_n_0 ;
  wire \integrate_z[40]_i_5_n_0 ;
  wire \integrate_z[4]_i_2_n_0 ;
  wire \integrate_z[4]_i_3_n_0 ;
  wire \integrate_z[4]_i_4_n_0 ;
  wire \integrate_z[4]_i_5_n_0 ;
  wire \integrate_z[8]_i_2_n_0 ;
  wire \integrate_z[8]_i_3_n_0 ;
  wire \integrate_z[8]_i_4_n_0 ;
  wire \integrate_z[8]_i_5_n_0 ;
  wire \integrate_z_reg[0]_i_3_n_0 ;
  wire \integrate_z_reg[0]_i_3_n_1 ;
  wire \integrate_z_reg[0]_i_3_n_2 ;
  wire \integrate_z_reg[0]_i_3_n_3 ;
  wire \integrate_z_reg[0]_i_3_n_4 ;
  wire \integrate_z_reg[0]_i_3_n_5 ;
  wire \integrate_z_reg[0]_i_3_n_6 ;
  wire \integrate_z_reg[0]_i_3_n_7 ;
  wire \integrate_z_reg[12]_i_1_n_0 ;
  wire \integrate_z_reg[12]_i_1_n_1 ;
  wire \integrate_z_reg[12]_i_1_n_2 ;
  wire \integrate_z_reg[12]_i_1_n_3 ;
  wire \integrate_z_reg[12]_i_1_n_4 ;
  wire \integrate_z_reg[12]_i_1_n_5 ;
  wire \integrate_z_reg[12]_i_1_n_6 ;
  wire \integrate_z_reg[12]_i_1_n_7 ;
  wire \integrate_z_reg[16]_i_1_n_0 ;
  wire \integrate_z_reg[16]_i_1_n_1 ;
  wire \integrate_z_reg[16]_i_1_n_2 ;
  wire \integrate_z_reg[16]_i_1_n_3 ;
  wire \integrate_z_reg[16]_i_1_n_4 ;
  wire \integrate_z_reg[16]_i_1_n_5 ;
  wire \integrate_z_reg[16]_i_1_n_6 ;
  wire \integrate_z_reg[16]_i_1_n_7 ;
  wire \integrate_z_reg[20]_i_1_n_0 ;
  wire \integrate_z_reg[20]_i_1_n_1 ;
  wire \integrate_z_reg[20]_i_1_n_2 ;
  wire \integrate_z_reg[20]_i_1_n_3 ;
  wire \integrate_z_reg[20]_i_1_n_4 ;
  wire \integrate_z_reg[20]_i_1_n_5 ;
  wire \integrate_z_reg[20]_i_1_n_6 ;
  wire \integrate_z_reg[20]_i_1_n_7 ;
  wire \integrate_z_reg[24]_i_1_n_0 ;
  wire \integrate_z_reg[24]_i_1_n_1 ;
  wire \integrate_z_reg[24]_i_1_n_2 ;
  wire \integrate_z_reg[24]_i_1_n_3 ;
  wire \integrate_z_reg[24]_i_1_n_4 ;
  wire \integrate_z_reg[24]_i_1_n_5 ;
  wire \integrate_z_reg[24]_i_1_n_6 ;
  wire \integrate_z_reg[24]_i_1_n_7 ;
  wire \integrate_z_reg[28]_i_1_n_0 ;
  wire \integrate_z_reg[28]_i_1_n_1 ;
  wire \integrate_z_reg[28]_i_1_n_2 ;
  wire \integrate_z_reg[28]_i_1_n_3 ;
  wire \integrate_z_reg[28]_i_1_n_4 ;
  wire \integrate_z_reg[28]_i_1_n_5 ;
  wire \integrate_z_reg[28]_i_1_n_6 ;
  wire \integrate_z_reg[28]_i_1_n_7 ;
  wire \integrate_z_reg[32]_i_1_n_0 ;
  wire \integrate_z_reg[32]_i_1_n_1 ;
  wire \integrate_z_reg[32]_i_1_n_2 ;
  wire \integrate_z_reg[32]_i_1_n_3 ;
  wire \integrate_z_reg[32]_i_1_n_4 ;
  wire \integrate_z_reg[32]_i_1_n_5 ;
  wire \integrate_z_reg[32]_i_1_n_6 ;
  wire \integrate_z_reg[32]_i_1_n_7 ;
  wire \integrate_z_reg[36]_i_1_n_0 ;
  wire \integrate_z_reg[36]_i_1_n_1 ;
  wire \integrate_z_reg[36]_i_1_n_2 ;
  wire \integrate_z_reg[36]_i_1_n_3 ;
  wire \integrate_z_reg[36]_i_1_n_4 ;
  wire \integrate_z_reg[36]_i_1_n_5 ;
  wire \integrate_z_reg[36]_i_1_n_6 ;
  wire \integrate_z_reg[36]_i_1_n_7 ;
  wire \integrate_z_reg[40]_i_1_n_1 ;
  wire \integrate_z_reg[40]_i_1_n_2 ;
  wire \integrate_z_reg[40]_i_1_n_3 ;
  wire \integrate_z_reg[40]_i_1_n_4 ;
  wire \integrate_z_reg[40]_i_1_n_5 ;
  wire \integrate_z_reg[40]_i_1_n_6 ;
  wire \integrate_z_reg[40]_i_1_n_7 ;
  wire [15:0]\integrate_z_reg[43]_0 ;
  wire \integrate_z_reg[4]_i_1_n_0 ;
  wire \integrate_z_reg[4]_i_1_n_1 ;
  wire \integrate_z_reg[4]_i_1_n_2 ;
  wire \integrate_z_reg[4]_i_1_n_3 ;
  wire \integrate_z_reg[4]_i_1_n_4 ;
  wire \integrate_z_reg[4]_i_1_n_5 ;
  wire \integrate_z_reg[4]_i_1_n_6 ;
  wire \integrate_z_reg[4]_i_1_n_7 ;
  wire \integrate_z_reg[8]_i_1_n_0 ;
  wire \integrate_z_reg[8]_i_1_n_1 ;
  wire \integrate_z_reg[8]_i_1_n_2 ;
  wire \integrate_z_reg[8]_i_1_n_3 ;
  wire \integrate_z_reg[8]_i_1_n_4 ;
  wire \integrate_z_reg[8]_i_1_n_5 ;
  wire \integrate_z_reg[8]_i_1_n_6 ;
  wire \integrate_z_reg[8]_i_1_n_7 ;
  wire \integrate_z_reg_n_0_[0] ;
  wire \integrate_z_reg_n_0_[10] ;
  wire \integrate_z_reg_n_0_[11] ;
  wire \integrate_z_reg_n_0_[12] ;
  wire \integrate_z_reg_n_0_[13] ;
  wire \integrate_z_reg_n_0_[14] ;
  wire \integrate_z_reg_n_0_[15] ;
  wire \integrate_z_reg_n_0_[16] ;
  wire \integrate_z_reg_n_0_[17] ;
  wire \integrate_z_reg_n_0_[18] ;
  wire \integrate_z_reg_n_0_[19] ;
  wire \integrate_z_reg_n_0_[1] ;
  wire \integrate_z_reg_n_0_[20] ;
  wire \integrate_z_reg_n_0_[21] ;
  wire \integrate_z_reg_n_0_[22] ;
  wire \integrate_z_reg_n_0_[23] ;
  wire \integrate_z_reg_n_0_[24] ;
  wire \integrate_z_reg_n_0_[25] ;
  wire \integrate_z_reg_n_0_[26] ;
  wire \integrate_z_reg_n_0_[27] ;
  wire \integrate_z_reg_n_0_[2] ;
  wire \integrate_z_reg_n_0_[3] ;
  wire \integrate_z_reg_n_0_[4] ;
  wire \integrate_z_reg_n_0_[5] ;
  wire \integrate_z_reg_n_0_[6] ;
  wire \integrate_z_reg_n_0_[7] ;
  wire \integrate_z_reg_n_0_[8] ;
  wire \integrate_z_reg_n_0_[9] ;
  wire [7:0]p_0_in;
  wire [15:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire \slv_reg1_reg[0] ;
  wire \slv_reg1_reg[0]_0 ;
  wire sum_x;
  wire \sum_x[0]_i_3_n_0 ;
  wire \sum_x[0]_i_4_n_0 ;
  wire \sum_x[0]_i_5_n_0 ;
  wire \sum_x[0]_i_6_n_0 ;
  wire \sum_x[12]_i_2_n_0 ;
  wire \sum_x[12]_i_3_n_0 ;
  wire \sum_x[12]_i_4_n_0 ;
  wire \sum_x[12]_i_5_n_0 ;
  wire \sum_x[4]_i_2_n_0 ;
  wire \sum_x[4]_i_3_n_0 ;
  wire \sum_x[4]_i_4_n_0 ;
  wire \sum_x[4]_i_5_n_0 ;
  wire \sum_x[8]_i_2_n_0 ;
  wire \sum_x[8]_i_3_n_0 ;
  wire \sum_x[8]_i_4_n_0 ;
  wire \sum_x[8]_i_5_n_0 ;
  wire \sum_x_reg[0]_i_2_n_0 ;
  wire \sum_x_reg[0]_i_2_n_1 ;
  wire \sum_x_reg[0]_i_2_n_2 ;
  wire \sum_x_reg[0]_i_2_n_3 ;
  wire \sum_x_reg[0]_i_2_n_4 ;
  wire \sum_x_reg[0]_i_2_n_5 ;
  wire \sum_x_reg[0]_i_2_n_6 ;
  wire \sum_x_reg[0]_i_2_n_7 ;
  wire \sum_x_reg[12]_i_1_n_0 ;
  wire \sum_x_reg[12]_i_1_n_1 ;
  wire \sum_x_reg[12]_i_1_n_2 ;
  wire \sum_x_reg[12]_i_1_n_3 ;
  wire \sum_x_reg[12]_i_1_n_4 ;
  wire \sum_x_reg[12]_i_1_n_5 ;
  wire \sum_x_reg[12]_i_1_n_6 ;
  wire \sum_x_reg[12]_i_1_n_7 ;
  wire \sum_x_reg[16]_i_1_n_0 ;
  wire \sum_x_reg[16]_i_1_n_1 ;
  wire \sum_x_reg[16]_i_1_n_2 ;
  wire \sum_x_reg[16]_i_1_n_3 ;
  wire \sum_x_reg[16]_i_1_n_4 ;
  wire \sum_x_reg[16]_i_1_n_5 ;
  wire \sum_x_reg[16]_i_1_n_6 ;
  wire \sum_x_reg[16]_i_1_n_7 ;
  wire \sum_x_reg[20]_i_1_n_1 ;
  wire \sum_x_reg[20]_i_1_n_2 ;
  wire \sum_x_reg[20]_i_1_n_3 ;
  wire \sum_x_reg[20]_i_1_n_4 ;
  wire \sum_x_reg[20]_i_1_n_5 ;
  wire \sum_x_reg[20]_i_1_n_6 ;
  wire \sum_x_reg[20]_i_1_n_7 ;
  wire \sum_x_reg[4]_i_1_n_0 ;
  wire \sum_x_reg[4]_i_1_n_1 ;
  wire \sum_x_reg[4]_i_1_n_2 ;
  wire \sum_x_reg[4]_i_1_n_3 ;
  wire \sum_x_reg[4]_i_1_n_4 ;
  wire \sum_x_reg[4]_i_1_n_5 ;
  wire \sum_x_reg[4]_i_1_n_6 ;
  wire \sum_x_reg[4]_i_1_n_7 ;
  wire \sum_x_reg[8]_i_1_n_0 ;
  wire \sum_x_reg[8]_i_1_n_1 ;
  wire \sum_x_reg[8]_i_1_n_2 ;
  wire \sum_x_reg[8]_i_1_n_3 ;
  wire \sum_x_reg[8]_i_1_n_4 ;
  wire \sum_x_reg[8]_i_1_n_5 ;
  wire \sum_x_reg[8]_i_1_n_6 ;
  wire \sum_x_reg[8]_i_1_n_7 ;
  wire \sum_x_reg_n_0_[0] ;
  wire \sum_x_reg_n_0_[1] ;
  wire \sum_x_reg_n_0_[2] ;
  wire \sum_x_reg_n_0_[3] ;
  wire \sum_x_reg_n_0_[4] ;
  wire \sum_x_reg_n_0_[5] ;
  wire \sum_x_reg_n_0_[6] ;
  wire \sum_x_reg_n_0_[7] ;
  wire \sum_y[0]_i_2_n_0 ;
  wire \sum_y[0]_i_3_n_0 ;
  wire \sum_y[0]_i_4_n_0 ;
  wire \sum_y[0]_i_5_n_0 ;
  wire \sum_y[12]_i_2_n_0 ;
  wire \sum_y[12]_i_3_n_0 ;
  wire \sum_y[12]_i_4_n_0 ;
  wire \sum_y[12]_i_5_n_0 ;
  wire \sum_y[4]_i_2_n_0 ;
  wire \sum_y[4]_i_3_n_0 ;
  wire \sum_y[4]_i_4_n_0 ;
  wire \sum_y[4]_i_5_n_0 ;
  wire \sum_y[8]_i_2_n_0 ;
  wire \sum_y[8]_i_3_n_0 ;
  wire \sum_y[8]_i_4_n_0 ;
  wire \sum_y[8]_i_5_n_0 ;
  wire [23:8]sum_y_reg;
  wire \sum_y_reg[0]_i_1_n_0 ;
  wire \sum_y_reg[0]_i_1_n_1 ;
  wire \sum_y_reg[0]_i_1_n_2 ;
  wire \sum_y_reg[0]_i_1_n_3 ;
  wire \sum_y_reg[0]_i_1_n_4 ;
  wire \sum_y_reg[0]_i_1_n_5 ;
  wire \sum_y_reg[0]_i_1_n_6 ;
  wire \sum_y_reg[0]_i_1_n_7 ;
  wire \sum_y_reg[12]_i_1_n_0 ;
  wire \sum_y_reg[12]_i_1_n_1 ;
  wire \sum_y_reg[12]_i_1_n_2 ;
  wire \sum_y_reg[12]_i_1_n_3 ;
  wire \sum_y_reg[12]_i_1_n_4 ;
  wire \sum_y_reg[12]_i_1_n_5 ;
  wire \sum_y_reg[12]_i_1_n_6 ;
  wire \sum_y_reg[12]_i_1_n_7 ;
  wire \sum_y_reg[16]_i_1_n_0 ;
  wire \sum_y_reg[16]_i_1_n_1 ;
  wire \sum_y_reg[16]_i_1_n_2 ;
  wire \sum_y_reg[16]_i_1_n_3 ;
  wire \sum_y_reg[16]_i_1_n_4 ;
  wire \sum_y_reg[16]_i_1_n_5 ;
  wire \sum_y_reg[16]_i_1_n_6 ;
  wire \sum_y_reg[16]_i_1_n_7 ;
  wire \sum_y_reg[20]_i_1_n_1 ;
  wire \sum_y_reg[20]_i_1_n_2 ;
  wire \sum_y_reg[20]_i_1_n_3 ;
  wire \sum_y_reg[20]_i_1_n_4 ;
  wire \sum_y_reg[20]_i_1_n_5 ;
  wire \sum_y_reg[20]_i_1_n_6 ;
  wire \sum_y_reg[20]_i_1_n_7 ;
  wire \sum_y_reg[4]_i_1_n_0 ;
  wire \sum_y_reg[4]_i_1_n_1 ;
  wire \sum_y_reg[4]_i_1_n_2 ;
  wire \sum_y_reg[4]_i_1_n_3 ;
  wire \sum_y_reg[4]_i_1_n_4 ;
  wire \sum_y_reg[4]_i_1_n_5 ;
  wire \sum_y_reg[4]_i_1_n_6 ;
  wire \sum_y_reg[4]_i_1_n_7 ;
  wire \sum_y_reg[8]_i_1_n_0 ;
  wire \sum_y_reg[8]_i_1_n_1 ;
  wire \sum_y_reg[8]_i_1_n_2 ;
  wire \sum_y_reg[8]_i_1_n_3 ;
  wire \sum_y_reg[8]_i_1_n_4 ;
  wire \sum_y_reg[8]_i_1_n_5 ;
  wire \sum_y_reg[8]_i_1_n_6 ;
  wire \sum_y_reg[8]_i_1_n_7 ;
  wire \sum_y_reg_n_0_[0] ;
  wire \sum_y_reg_n_0_[1] ;
  wire \sum_y_reg_n_0_[2] ;
  wire \sum_y_reg_n_0_[3] ;
  wire \sum_y_reg_n_0_[4] ;
  wire \sum_y_reg_n_0_[5] ;
  wire \sum_y_reg_n_0_[6] ;
  wire \sum_y_reg_n_0_[7] ;
  wire \sum_z[0]_i_2_n_0 ;
  wire \sum_z[0]_i_3_n_0 ;
  wire \sum_z[0]_i_4_n_0 ;
  wire \sum_z[0]_i_5_n_0 ;
  wire \sum_z[12]_i_2_n_0 ;
  wire \sum_z[12]_i_3_n_0 ;
  wire \sum_z[12]_i_4_n_0 ;
  wire \sum_z[12]_i_5_n_0 ;
  wire \sum_z[4]_i_2_n_0 ;
  wire \sum_z[4]_i_3_n_0 ;
  wire \sum_z[4]_i_4_n_0 ;
  wire \sum_z[4]_i_5_n_0 ;
  wire \sum_z[8]_i_2_n_0 ;
  wire \sum_z[8]_i_3_n_0 ;
  wire \sum_z[8]_i_4_n_0 ;
  wire \sum_z[8]_i_5_n_0 ;
  wire [23:8]sum_z_reg;
  wire \sum_z_reg[0]_i_1_n_0 ;
  wire \sum_z_reg[0]_i_1_n_1 ;
  wire \sum_z_reg[0]_i_1_n_2 ;
  wire \sum_z_reg[0]_i_1_n_3 ;
  wire \sum_z_reg[0]_i_1_n_4 ;
  wire \sum_z_reg[0]_i_1_n_5 ;
  wire \sum_z_reg[0]_i_1_n_6 ;
  wire \sum_z_reg[0]_i_1_n_7 ;
  wire \sum_z_reg[12]_i_1_n_0 ;
  wire \sum_z_reg[12]_i_1_n_1 ;
  wire \sum_z_reg[12]_i_1_n_2 ;
  wire \sum_z_reg[12]_i_1_n_3 ;
  wire \sum_z_reg[12]_i_1_n_4 ;
  wire \sum_z_reg[12]_i_1_n_5 ;
  wire \sum_z_reg[12]_i_1_n_6 ;
  wire \sum_z_reg[12]_i_1_n_7 ;
  wire \sum_z_reg[16]_i_1_n_0 ;
  wire \sum_z_reg[16]_i_1_n_1 ;
  wire \sum_z_reg[16]_i_1_n_2 ;
  wire \sum_z_reg[16]_i_1_n_3 ;
  wire \sum_z_reg[16]_i_1_n_4 ;
  wire \sum_z_reg[16]_i_1_n_5 ;
  wire \sum_z_reg[16]_i_1_n_6 ;
  wire \sum_z_reg[16]_i_1_n_7 ;
  wire \sum_z_reg[20]_i_1_n_1 ;
  wire \sum_z_reg[20]_i_1_n_2 ;
  wire \sum_z_reg[20]_i_1_n_3 ;
  wire \sum_z_reg[20]_i_1_n_4 ;
  wire \sum_z_reg[20]_i_1_n_5 ;
  wire \sum_z_reg[20]_i_1_n_6 ;
  wire \sum_z_reg[20]_i_1_n_7 ;
  wire \sum_z_reg[4]_i_1_n_0 ;
  wire \sum_z_reg[4]_i_1_n_1 ;
  wire \sum_z_reg[4]_i_1_n_2 ;
  wire \sum_z_reg[4]_i_1_n_3 ;
  wire \sum_z_reg[4]_i_1_n_4 ;
  wire \sum_z_reg[4]_i_1_n_5 ;
  wire \sum_z_reg[4]_i_1_n_6 ;
  wire \sum_z_reg[4]_i_1_n_7 ;
  wire \sum_z_reg[8]_i_1_n_0 ;
  wire \sum_z_reg[8]_i_1_n_1 ;
  wire \sum_z_reg[8]_i_1_n_2 ;
  wire \sum_z_reg[8]_i_1_n_3 ;
  wire \sum_z_reg[8]_i_1_n_4 ;
  wire \sum_z_reg[8]_i_1_n_5 ;
  wire \sum_z_reg[8]_i_1_n_6 ;
  wire \sum_z_reg[8]_i_1_n_7 ;
  wire \sum_z_reg_n_0_[0] ;
  wire \sum_z_reg_n_0_[1] ;
  wire \sum_z_reg_n_0_[2] ;
  wire \sum_z_reg_n_0_[3] ;
  wire \sum_z_reg_n_0_[4] ;
  wire \sum_z_reg_n_0_[5] ;
  wire \sum_z_reg_n_0_[6] ;
  wire \sum_z_reg_n_0_[7] ;
  wire system_reset;
  wire [3:3]NLW_ad_x0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ad_x2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ad_x2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_ad_x2_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_ad_x2_carry__0_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_ad_x2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ad_x2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_ad_y0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ad_y2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ad_y2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_ad_y2_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_ad_y2_carry__0_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_ad_y2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ad_y2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_ad_z0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ad_z2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ad_z2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_ad_z2_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_ad_z2_carry__0_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_ad_z2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ad_z2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]NLW_i__carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__0_i_9_O_UNCONNECTED;
  wire [3:2]NLW_i__carry__0_i_9__0_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__0_i_9__0_O_UNCONNECTED;
  wire [3:2]NLW_i__carry__0_i_9__1_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__0_i_9__1_O_UNCONNECTED;
  wire [0:0]NLW_i__carry_i_10_O_UNCONNECTED;
  wire [0:0]NLW_i__carry_i_10__0_O_UNCONNECTED;
  wire [0:0]NLW_i__carry_i_10__1_O_UNCONNECTED;
  wire [3:3]\NLW_integrate_x_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_integrate_y_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_integrate_z_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_x_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_y_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_z_reg[20]_i_1_CO_UNCONNECTED ;

  CARRY4 ad_x0_carry
       (.CI(1'b0),
        .CO({ad_x0_carry_n_0,ad_x0_carry_n_1,ad_x0_carry_n_2,ad_x0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(angular_rate_x[3:0]),
        .O(ad_x0[3:0]),
        .S({ad_x0_carry_i_1_n_0,ad_x0_carry_i_2_n_0,ad_x0_carry_i_3_n_0,ad_x0_carry_i_4_n_0}));
  CARRY4 ad_x0_carry__0
       (.CI(ad_x0_carry_n_0),
        .CO({ad_x0_carry__0_n_0,ad_x0_carry__0_n_1,ad_x0_carry__0_n_2,ad_x0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_x[7:4]),
        .O(ad_x0[7:4]),
        .S({ad_x0_carry__0_i_1_n_0,ad_x0_carry__0_i_2_n_0,ad_x0_carry__0_i_3_n_0,ad_x0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__0_i_1
       (.I0(angular_rate_x[7]),
        .I1(avg_x[7]),
        .O(ad_x0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__0_i_2
       (.I0(angular_rate_x[6]),
        .I1(avg_x[6]),
        .O(ad_x0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__0_i_3
       (.I0(angular_rate_x[5]),
        .I1(avg_x[5]),
        .O(ad_x0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__0_i_4
       (.I0(angular_rate_x[4]),
        .I1(avg_x[4]),
        .O(ad_x0_carry__0_i_4_n_0));
  CARRY4 ad_x0_carry__1
       (.CI(ad_x0_carry__0_n_0),
        .CO({ad_x0_carry__1_n_0,ad_x0_carry__1_n_1,ad_x0_carry__1_n_2,ad_x0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_x[11:8]),
        .O(ad_x0[11:8]),
        .S({ad_x0_carry__1_i_1_n_0,ad_x0_carry__1_i_2_n_0,ad_x0_carry__1_i_3_n_0,ad_x0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__1_i_1
       (.I0(angular_rate_x[11]),
        .I1(avg_x[11]),
        .O(ad_x0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__1_i_2
       (.I0(angular_rate_x[10]),
        .I1(avg_x[10]),
        .O(ad_x0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__1_i_3
       (.I0(angular_rate_x[9]),
        .I1(avg_x[9]),
        .O(ad_x0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__1_i_4
       (.I0(angular_rate_x[8]),
        .I1(avg_x[8]),
        .O(ad_x0_carry__1_i_4_n_0));
  CARRY4 ad_x0_carry__2
       (.CI(ad_x0_carry__1_n_0),
        .CO({NLW_ad_x0_carry__2_CO_UNCONNECTED[3],ad_x0_carry__2_n_1,ad_x0_carry__2_n_2,ad_x0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,angular_rate_x[14:12]}),
        .O(ad_x0[15:12]),
        .S({ad_x0_carry__2_i_1_n_0,ad_x0_carry__2_i_2_n_0,ad_x0_carry__2_i_3_n_0,ad_x0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__2_i_1
       (.I0(angular_rate_x[15]),
        .I1(avg_x[15]),
        .O(ad_x0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__2_i_2
       (.I0(angular_rate_x[14]),
        .I1(avg_x[14]),
        .O(ad_x0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__2_i_3
       (.I0(angular_rate_x[13]),
        .I1(avg_x[13]),
        .O(ad_x0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry__2_i_4
       (.I0(angular_rate_x[12]),
        .I1(avg_x[12]),
        .O(ad_x0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry_i_1
       (.I0(angular_rate_x[3]),
        .I1(avg_x[3]),
        .O(ad_x0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry_i_2
       (.I0(angular_rate_x[2]),
        .I1(avg_x[2]),
        .O(ad_x0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry_i_3
       (.I0(angular_rate_x[1]),
        .I1(avg_x[1]),
        .O(ad_x0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_x0_carry_i_4
       (.I0(angular_rate_x[0]),
        .I1(avg_x[0]),
        .O(ad_x0_carry_i_4_n_0));
  CARRY4 ad_x2_carry
       (.CI(1'b0),
        .CO({ad_x2_carry_n_0,ad_x2_carry_n_1,ad_x2_carry_n_2,ad_x2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ad_x2_carry_i_1_n_0,ad_x2_carry_i_2_n_0,ad_x2_carry_i_3_n_0,ad_x2_carry_i_4_n_0}),
        .O(NLW_ad_x2_carry_O_UNCONNECTED[3:0]),
        .S({ad_x2_carry_i_5_n_0,ad_x2_carry_i_6_n_0,ad_x2_carry_i_7_n_0,ad_x2_carry_i_8_n_0}));
  CARRY4 ad_x2_carry__0
       (.CI(ad_x2_carry_n_0),
        .CO({ad_x2,ad_x2_carry__0_n_1,ad_x2_carry__0_n_2,ad_x2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ad_x2_carry__0_i_1_n_0,ad_x2_carry__0_i_2_n_0,ad_x2_carry__0_i_3_n_0,ad_x2_carry__0_i_4_n_0}),
        .O(NLW_ad_x2_carry__0_O_UNCONNECTED[3:0]),
        .S({ad_x2_carry__0_i_5_n_0,ad_x2_carry__0_i_6_n_0,ad_x2_carry__0_i_7_n_0,ad_x2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry__0_i_1
       (.I0(ad_x3[15]),
        .I1(angular_rate_x[15]),
        .I2(ad_x3[14]),
        .I3(angular_rate_x[14]),
        .O(ad_x2_carry__0_i_1_n_0));
  CARRY4 ad_x2_carry__0_i_10
       (.CI(ad_x2_carry_i_9_n_0),
        .CO({ad_x2_carry__0_i_10_n_0,ad_x2_carry__0_i_10_n_1,ad_x2_carry__0_i_10_n_2,ad_x2_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({ad_x2_carry__0_i_13_n_0,ad_x2_carry__0_i_14_n_0,ad_x2_carry__0_i_15_n_0,ad_x2_carry__0_i_16_n_0}),
        .O(ad_x3[12:9]),
        .S(avg_x[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_11
       (.I0(avg_x[14]),
        .O(ad_x2_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_12
       (.I0(avg_x[13]),
        .O(ad_x2_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_13
       (.I0(avg_x[12]),
        .O(ad_x2_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_14
       (.I0(avg_x[11]),
        .O(ad_x2_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_15
       (.I0(avg_x[10]),
        .O(ad_x2_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry__0_i_16
       (.I0(avg_x[9]),
        .O(ad_x2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry__0_i_2
       (.I0(ad_x3[13]),
        .I1(angular_rate_x[13]),
        .I2(ad_x3[12]),
        .I3(angular_rate_x[12]),
        .O(ad_x2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry__0_i_3
       (.I0(ad_x3[11]),
        .I1(angular_rate_x[11]),
        .I2(ad_x3[10]),
        .I3(angular_rate_x[10]),
        .O(ad_x2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry__0_i_4
       (.I0(ad_x3[9]),
        .I1(angular_rate_x[9]),
        .I2(ad_x3[8]),
        .I3(angular_rate_x[8]),
        .O(ad_x2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry__0_i_5
       (.I0(ad_x3[15]),
        .I1(angular_rate_x[15]),
        .I2(ad_x3[14]),
        .I3(angular_rate_x[14]),
        .O(ad_x2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry__0_i_6
       (.I0(ad_x3[13]),
        .I1(angular_rate_x[13]),
        .I2(ad_x3[12]),
        .I3(angular_rate_x[12]),
        .O(ad_x2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry__0_i_7
       (.I0(ad_x3[11]),
        .I1(angular_rate_x[11]),
        .I2(ad_x3[10]),
        .I3(angular_rate_x[10]),
        .O(ad_x2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry__0_i_8
       (.I0(ad_x3[9]),
        .I1(angular_rate_x[9]),
        .I2(ad_x3[8]),
        .I3(angular_rate_x[8]),
        .O(ad_x2_carry__0_i_8_n_0));
  CARRY4 ad_x2_carry__0_i_9
       (.CI(ad_x2_carry__0_i_10_n_0),
        .CO({NLW_ad_x2_carry__0_i_9_CO_UNCONNECTED[3:2],ad_x2_carry__0_i_9_n_2,ad_x2_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ad_x2_carry__0_i_11_n_0,ad_x2_carry__0_i_12_n_0}),
        .O({NLW_ad_x2_carry__0_i_9_O_UNCONNECTED[3],ad_x3[15:13]}),
        .S({1'b0,avg_x[15:13]}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry_i_1
       (.I0(ad_x3[7]),
        .I1(angular_rate_x[7]),
        .I2(ad_x3[6]),
        .I3(angular_rate_x[6]),
        .O(ad_x2_carry_i_1_n_0));
  CARRY4 ad_x2_carry_i_10
       (.CI(1'b0),
        .CO({ad_x2_carry_i_10_n_0,ad_x2_carry_i_10_n_1,ad_x2_carry_i_10_n_2,ad_x2_carry_i_10_n_3}),
        .CYINIT(ad_x2_carry_i_15_n_0),
        .DI({ad_x2_carry_i_16_n_0,ad_x2_carry_i_17_n_0,1'b0,1'b0}),
        .O({ad_x3[4:2],ad_x2_carry_i_10_n_7}),
        .S({avg_x[4:3],ad_x2_carry_i_18_n_0,ad_x2_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_11
       (.I0(avg_x[8]),
        .O(ad_x2_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_12
       (.I0(avg_x[5]),
        .O(ad_x2_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_13
       (.I0(avg_x[7]),
        .O(ad_x2_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_14
       (.I0(avg_x[6]),
        .O(ad_x2_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_15
       (.I0(avg_x[0]),
        .O(ad_x2_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_16
       (.I0(avg_x[4]),
        .O(ad_x2_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_17
       (.I0(avg_x[3]),
        .O(ad_x2_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_18
       (.I0(avg_x[2]),
        .O(ad_x2_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_x2_carry_i_19
       (.I0(avg_x[1]),
        .O(ad_x2_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry_i_2
       (.I0(ad_x3[5]),
        .I1(angular_rate_x[5]),
        .I2(ad_x3[4]),
        .I3(angular_rate_x[4]),
        .O(ad_x2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_x2_carry_i_3
       (.I0(ad_x3[3]),
        .I1(angular_rate_x[3]),
        .I2(ad_x3[2]),
        .I3(angular_rate_x[2]),
        .O(ad_x2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h064E)) 
    ad_x2_carry_i_4
       (.I0(avg_x[1]),
        .I1(avg_x[0]),
        .I2(angular_rate_x[1]),
        .I3(angular_rate_x[0]),
        .O(ad_x2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry_i_5
       (.I0(ad_x3[7]),
        .I1(angular_rate_x[7]),
        .I2(ad_x3[6]),
        .I3(angular_rate_x[6]),
        .O(ad_x2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry_i_6
       (.I0(ad_x3[5]),
        .I1(angular_rate_x[5]),
        .I2(ad_x3[4]),
        .I3(angular_rate_x[4]),
        .O(ad_x2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_x2_carry_i_7
       (.I0(ad_x3[3]),
        .I1(angular_rate_x[3]),
        .I2(ad_x3[2]),
        .I3(angular_rate_x[2]),
        .O(ad_x2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    ad_x2_carry_i_8
       (.I0(angular_rate_x[0]),
        .I1(avg_x[0]),
        .I2(avg_x[1]),
        .I3(angular_rate_x[1]),
        .O(ad_x2_carry_i_8_n_0));
  CARRY4 ad_x2_carry_i_9
       (.CI(ad_x2_carry_i_10_n_0),
        .CO({ad_x2_carry_i_9_n_0,ad_x2_carry_i_9_n_1,ad_x2_carry_i_9_n_2,ad_x2_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({ad_x2_carry_i_11_n_0,1'b0,1'b0,ad_x2_carry_i_12_n_0}),
        .O(ad_x3[8:5]),
        .S({avg_x[8],ad_x2_carry_i_13_n_0,ad_x2_carry_i_14_n_0,avg_x[5]}));
  CARRY4 \ad_x2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ad_x2_inferred__0/i__carry_n_0 ,\ad_x2_inferred__0/i__carry_n_1 ,\ad_x2_inferred__0/i__carry_n_2 ,\ad_x2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_ad_x2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \ad_x2_inferred__0/i__carry__0 
       (.CI(\ad_x2_inferred__0/i__carry_n_0 ),
        .CO({ad_x22_in,\ad_x2_inferred__0/i__carry__0_n_1 ,\ad_x2_inferred__0/i__carry__0_n_2 ,\ad_x2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_ad_x2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h70)) 
    \ad_x[15]_i_1 
       (.I0(ad_x22_in),
        .I1(ad_x2),
        .I2(\ad_z[15]_i_2_n_0 ),
        .O(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[0]),
        .Q(ad_x[0]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[10]),
        .Q(ad_x[10]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[11]),
        .Q(ad_x[11]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[12]),
        .Q(ad_x[12]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[13]),
        .Q(ad_x[13]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[14]),
        .Q(ad_x[14]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[15]),
        .Q(ad_x[15]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[1]),
        .Q(ad_x[1]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[2]),
        .Q(ad_x[2]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[3]),
        .Q(ad_x[3]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[4]),
        .Q(ad_x[4]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[5]),
        .Q(ad_x[5]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[6]),
        .Q(ad_x[6]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[7]),
        .Q(ad_x[7]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[8]),
        .Q(ad_x[8]),
        .R(\ad_x[15]_i_1_n_0 ));
  FDRE \ad_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_x0[9]),
        .Q(ad_x[9]),
        .R(\ad_x[15]_i_1_n_0 ));
  CARRY4 ad_y0_carry
       (.CI(1'b0),
        .CO({ad_y0_carry_n_0,ad_y0_carry_n_1,ad_y0_carry_n_2,ad_y0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(angular_rate_y[3:0]),
        .O(ad_y0[3:0]),
        .S({ad_y0_carry_i_1_n_0,ad_y0_carry_i_2_n_0,ad_y0_carry_i_3_n_0,ad_y0_carry_i_4_n_0}));
  CARRY4 ad_y0_carry__0
       (.CI(ad_y0_carry_n_0),
        .CO({ad_y0_carry__0_n_0,ad_y0_carry__0_n_1,ad_y0_carry__0_n_2,ad_y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_y[7:4]),
        .O(ad_y0[7:4]),
        .S({ad_y0_carry__0_i_1_n_0,ad_y0_carry__0_i_2_n_0,ad_y0_carry__0_i_3_n_0,ad_y0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__0_i_1
       (.I0(angular_rate_y[7]),
        .I1(avg_y[7]),
        .O(ad_y0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__0_i_2
       (.I0(angular_rate_y[6]),
        .I1(avg_y[6]),
        .O(ad_y0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__0_i_3
       (.I0(angular_rate_y[5]),
        .I1(avg_y[5]),
        .O(ad_y0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__0_i_4
       (.I0(angular_rate_y[4]),
        .I1(avg_y[4]),
        .O(ad_y0_carry__0_i_4_n_0));
  CARRY4 ad_y0_carry__1
       (.CI(ad_y0_carry__0_n_0),
        .CO({ad_y0_carry__1_n_0,ad_y0_carry__1_n_1,ad_y0_carry__1_n_2,ad_y0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_y[11:8]),
        .O(ad_y0[11:8]),
        .S({ad_y0_carry__1_i_1_n_0,ad_y0_carry__1_i_2_n_0,ad_y0_carry__1_i_3_n_0,ad_y0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__1_i_1
       (.I0(angular_rate_y[11]),
        .I1(avg_y[11]),
        .O(ad_y0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__1_i_2
       (.I0(angular_rate_y[10]),
        .I1(avg_y[10]),
        .O(ad_y0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__1_i_3
       (.I0(angular_rate_y[9]),
        .I1(avg_y[9]),
        .O(ad_y0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__1_i_4
       (.I0(angular_rate_y[8]),
        .I1(avg_y[8]),
        .O(ad_y0_carry__1_i_4_n_0));
  CARRY4 ad_y0_carry__2
       (.CI(ad_y0_carry__1_n_0),
        .CO({NLW_ad_y0_carry__2_CO_UNCONNECTED[3],ad_y0_carry__2_n_1,ad_y0_carry__2_n_2,ad_y0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,angular_rate_y[14:12]}),
        .O(ad_y0[15:12]),
        .S({ad_y0_carry__2_i_1_n_0,ad_y0_carry__2_i_2_n_0,ad_y0_carry__2_i_3_n_0,ad_y0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__2_i_1
       (.I0(angular_rate_y[15]),
        .I1(avg_y[15]),
        .O(ad_y0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__2_i_2
       (.I0(angular_rate_y[14]),
        .I1(avg_y[14]),
        .O(ad_y0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__2_i_3
       (.I0(angular_rate_y[13]),
        .I1(avg_y[13]),
        .O(ad_y0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry__2_i_4
       (.I0(angular_rate_y[12]),
        .I1(avg_y[12]),
        .O(ad_y0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry_i_1
       (.I0(angular_rate_y[3]),
        .I1(avg_y[3]),
        .O(ad_y0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry_i_2
       (.I0(angular_rate_y[2]),
        .I1(avg_y[2]),
        .O(ad_y0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry_i_3
       (.I0(angular_rate_y[1]),
        .I1(avg_y[1]),
        .O(ad_y0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_y0_carry_i_4
       (.I0(angular_rate_y[0]),
        .I1(avg_y[0]),
        .O(ad_y0_carry_i_4_n_0));
  CARRY4 ad_y2_carry
       (.CI(1'b0),
        .CO({ad_y2_carry_n_0,ad_y2_carry_n_1,ad_y2_carry_n_2,ad_y2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ad_y2_carry_i_1_n_0,ad_y2_carry_i_2_n_0,ad_y2_carry_i_3_n_0,ad_y2_carry_i_4_n_0}),
        .O(NLW_ad_y2_carry_O_UNCONNECTED[3:0]),
        .S({ad_y2_carry_i_5_n_0,ad_y2_carry_i_6_n_0,ad_y2_carry_i_7_n_0,ad_y2_carry_i_8_n_0}));
  CARRY4 ad_y2_carry__0
       (.CI(ad_y2_carry_n_0),
        .CO({ad_y2,ad_y2_carry__0_n_1,ad_y2_carry__0_n_2,ad_y2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ad_y2_carry__0_i_1_n_0,ad_y2_carry__0_i_2_n_0,ad_y2_carry__0_i_3_n_0,ad_y2_carry__0_i_4_n_0}),
        .O(NLW_ad_y2_carry__0_O_UNCONNECTED[3:0]),
        .S({ad_y2_carry__0_i_5_n_0,ad_y2_carry__0_i_6_n_0,ad_y2_carry__0_i_7_n_0,ad_y2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry__0_i_1
       (.I0(ad_y3[15]),
        .I1(angular_rate_y[15]),
        .I2(ad_y3[14]),
        .I3(angular_rate_y[14]),
        .O(ad_y2_carry__0_i_1_n_0));
  CARRY4 ad_y2_carry__0_i_10
       (.CI(ad_y2_carry_i_9_n_0),
        .CO({ad_y2_carry__0_i_10_n_0,ad_y2_carry__0_i_10_n_1,ad_y2_carry__0_i_10_n_2,ad_y2_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({ad_y2_carry__0_i_13_n_0,ad_y2_carry__0_i_14_n_0,ad_y2_carry__0_i_15_n_0,ad_y2_carry__0_i_16_n_0}),
        .O(ad_y3[12:9]),
        .S(avg_y[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_11
       (.I0(avg_y[14]),
        .O(ad_y2_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_12
       (.I0(avg_y[13]),
        .O(ad_y2_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_13
       (.I0(avg_y[12]),
        .O(ad_y2_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_14
       (.I0(avg_y[11]),
        .O(ad_y2_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_15
       (.I0(avg_y[10]),
        .O(ad_y2_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry__0_i_16
       (.I0(avg_y[9]),
        .O(ad_y2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry__0_i_2
       (.I0(ad_y3[13]),
        .I1(angular_rate_y[13]),
        .I2(ad_y3[12]),
        .I3(angular_rate_y[12]),
        .O(ad_y2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry__0_i_3
       (.I0(ad_y3[11]),
        .I1(angular_rate_y[11]),
        .I2(ad_y3[10]),
        .I3(angular_rate_y[10]),
        .O(ad_y2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry__0_i_4
       (.I0(ad_y3[9]),
        .I1(angular_rate_y[9]),
        .I2(ad_y3[8]),
        .I3(angular_rate_y[8]),
        .O(ad_y2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry__0_i_5
       (.I0(ad_y3[15]),
        .I1(angular_rate_y[15]),
        .I2(ad_y3[14]),
        .I3(angular_rate_y[14]),
        .O(ad_y2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry__0_i_6
       (.I0(ad_y3[13]),
        .I1(angular_rate_y[13]),
        .I2(ad_y3[12]),
        .I3(angular_rate_y[12]),
        .O(ad_y2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry__0_i_7
       (.I0(ad_y3[11]),
        .I1(angular_rate_y[11]),
        .I2(ad_y3[10]),
        .I3(angular_rate_y[10]),
        .O(ad_y2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry__0_i_8
       (.I0(ad_y3[9]),
        .I1(angular_rate_y[9]),
        .I2(ad_y3[8]),
        .I3(angular_rate_y[8]),
        .O(ad_y2_carry__0_i_8_n_0));
  CARRY4 ad_y2_carry__0_i_9
       (.CI(ad_y2_carry__0_i_10_n_0),
        .CO({NLW_ad_y2_carry__0_i_9_CO_UNCONNECTED[3:2],ad_y2_carry__0_i_9_n_2,ad_y2_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ad_y2_carry__0_i_11_n_0,ad_y2_carry__0_i_12_n_0}),
        .O({NLW_ad_y2_carry__0_i_9_O_UNCONNECTED[3],ad_y3[15:13]}),
        .S({1'b0,avg_y[15:13]}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry_i_1
       (.I0(ad_y3[7]),
        .I1(angular_rate_y[7]),
        .I2(ad_y3[6]),
        .I3(angular_rate_y[6]),
        .O(ad_y2_carry_i_1_n_0));
  CARRY4 ad_y2_carry_i_10
       (.CI(1'b0),
        .CO({ad_y2_carry_i_10_n_0,ad_y2_carry_i_10_n_1,ad_y2_carry_i_10_n_2,ad_y2_carry_i_10_n_3}),
        .CYINIT(ad_y2_carry_i_15_n_0),
        .DI({ad_y2_carry_i_16_n_0,ad_y2_carry_i_17_n_0,1'b0,1'b0}),
        .O({ad_y3[4:2],ad_y2_carry_i_10_n_7}),
        .S({avg_y[4:3],ad_y2_carry_i_18_n_0,ad_y2_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_11
       (.I0(avg_y[8]),
        .O(ad_y2_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_12
       (.I0(avg_y[5]),
        .O(ad_y2_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_13
       (.I0(avg_y[7]),
        .O(ad_y2_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_14
       (.I0(avg_y[6]),
        .O(ad_y2_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_15
       (.I0(avg_y[0]),
        .O(ad_y2_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_16
       (.I0(avg_y[4]),
        .O(ad_y2_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_17
       (.I0(avg_y[3]),
        .O(ad_y2_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_18
       (.I0(avg_y[2]),
        .O(ad_y2_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_y2_carry_i_19
       (.I0(avg_y[1]),
        .O(ad_y2_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry_i_2
       (.I0(ad_y3[5]),
        .I1(angular_rate_y[5]),
        .I2(ad_y3[4]),
        .I3(angular_rate_y[4]),
        .O(ad_y2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_y2_carry_i_3
       (.I0(ad_y3[3]),
        .I1(angular_rate_y[3]),
        .I2(ad_y3[2]),
        .I3(angular_rate_y[2]),
        .O(ad_y2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h064E)) 
    ad_y2_carry_i_4
       (.I0(avg_y[1]),
        .I1(avg_y[0]),
        .I2(angular_rate_y[1]),
        .I3(angular_rate_y[0]),
        .O(ad_y2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry_i_5
       (.I0(ad_y3[7]),
        .I1(angular_rate_y[7]),
        .I2(ad_y3[6]),
        .I3(angular_rate_y[6]),
        .O(ad_y2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry_i_6
       (.I0(ad_y3[5]),
        .I1(angular_rate_y[5]),
        .I2(ad_y3[4]),
        .I3(angular_rate_y[4]),
        .O(ad_y2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_y2_carry_i_7
       (.I0(ad_y3[3]),
        .I1(angular_rate_y[3]),
        .I2(ad_y3[2]),
        .I3(angular_rate_y[2]),
        .O(ad_y2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    ad_y2_carry_i_8
       (.I0(angular_rate_y[0]),
        .I1(avg_y[0]),
        .I2(avg_y[1]),
        .I3(angular_rate_y[1]),
        .O(ad_y2_carry_i_8_n_0));
  CARRY4 ad_y2_carry_i_9
       (.CI(ad_y2_carry_i_10_n_0),
        .CO({ad_y2_carry_i_9_n_0,ad_y2_carry_i_9_n_1,ad_y2_carry_i_9_n_2,ad_y2_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({ad_y2_carry_i_11_n_0,1'b0,1'b0,ad_y2_carry_i_12_n_0}),
        .O(ad_y3[8:5]),
        .S({avg_y[8],ad_y2_carry_i_13_n_0,ad_y2_carry_i_14_n_0,avg_y[5]}));
  CARRY4 \ad_y2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ad_y2_inferred__0/i__carry_n_0 ,\ad_y2_inferred__0/i__carry_n_1 ,\ad_y2_inferred__0/i__carry_n_2 ,\ad_y2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_ad_y2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \ad_y2_inferred__0/i__carry__0 
       (.CI(\ad_y2_inferred__0/i__carry_n_0 ),
        .CO({ad_y21_in,\ad_y2_inferred__0/i__carry__0_n_1 ,\ad_y2_inferred__0/i__carry__0_n_2 ,\ad_y2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_ad_y2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h70)) 
    \ad_y[15]_i_1 
       (.I0(ad_y21_in),
        .I1(ad_y2),
        .I2(\ad_z[15]_i_2_n_0 ),
        .O(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[0]),
        .Q(ad_y[0]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[10]),
        .Q(ad_y[10]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[11]),
        .Q(ad_y[11]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[12]),
        .Q(ad_y[12]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[13]),
        .Q(ad_y[13]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[14]),
        .Q(ad_y[14]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[15]),
        .Q(ad_y[15]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[1]),
        .Q(ad_y[1]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[2]),
        .Q(ad_y[2]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[3]),
        .Q(ad_y[3]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[4]),
        .Q(ad_y[4]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[5]),
        .Q(ad_y[5]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[6]),
        .Q(ad_y[6]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[7]),
        .Q(ad_y[7]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[8]),
        .Q(ad_y[8]),
        .R(\ad_y[15]_i_1_n_0 ));
  FDRE \ad_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_y0[9]),
        .Q(ad_y[9]),
        .R(\ad_y[15]_i_1_n_0 ));
  CARRY4 ad_z0_carry
       (.CI(1'b0),
        .CO({ad_z0_carry_n_0,ad_z0_carry_n_1,ad_z0_carry_n_2,ad_z0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(angular_rate_z[3:0]),
        .O(ad_z0[3:0]),
        .S({ad_z0_carry_i_1_n_0,ad_z0_carry_i_2_n_0,ad_z0_carry_i_3_n_0,ad_z0_carry_i_4_n_0}));
  CARRY4 ad_z0_carry__0
       (.CI(ad_z0_carry_n_0),
        .CO({ad_z0_carry__0_n_0,ad_z0_carry__0_n_1,ad_z0_carry__0_n_2,ad_z0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_z[7:4]),
        .O(ad_z0[7:4]),
        .S({ad_z0_carry__0_i_1_n_0,ad_z0_carry__0_i_2_n_0,ad_z0_carry__0_i_3_n_0,ad_z0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__0_i_1
       (.I0(angular_rate_z[7]),
        .I1(avg_z[7]),
        .O(ad_z0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__0_i_2
       (.I0(angular_rate_z[6]),
        .I1(avg_z[6]),
        .O(ad_z0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__0_i_3
       (.I0(angular_rate_z[5]),
        .I1(avg_z[5]),
        .O(ad_z0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__0_i_4
       (.I0(angular_rate_z[4]),
        .I1(avg_z[4]),
        .O(ad_z0_carry__0_i_4_n_0));
  CARRY4 ad_z0_carry__1
       (.CI(ad_z0_carry__0_n_0),
        .CO({ad_z0_carry__1_n_0,ad_z0_carry__1_n_1,ad_z0_carry__1_n_2,ad_z0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(angular_rate_z[11:8]),
        .O(ad_z0[11:8]),
        .S({ad_z0_carry__1_i_1_n_0,ad_z0_carry__1_i_2_n_0,ad_z0_carry__1_i_3_n_0,ad_z0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__1_i_1
       (.I0(angular_rate_z[11]),
        .I1(avg_z[11]),
        .O(ad_z0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__1_i_2
       (.I0(angular_rate_z[10]),
        .I1(avg_z[10]),
        .O(ad_z0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__1_i_3
       (.I0(angular_rate_z[9]),
        .I1(avg_z[9]),
        .O(ad_z0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__1_i_4
       (.I0(angular_rate_z[8]),
        .I1(avg_z[8]),
        .O(ad_z0_carry__1_i_4_n_0));
  CARRY4 ad_z0_carry__2
       (.CI(ad_z0_carry__1_n_0),
        .CO({NLW_ad_z0_carry__2_CO_UNCONNECTED[3],ad_z0_carry__2_n_1,ad_z0_carry__2_n_2,ad_z0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,angular_rate_z[14:12]}),
        .O(ad_z0[15:12]),
        .S({ad_z0_carry__2_i_1_n_0,ad_z0_carry__2_i_2_n_0,ad_z0_carry__2_i_3_n_0,ad_z0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__2_i_1
       (.I0(angular_rate_z[15]),
        .I1(avg_z[15]),
        .O(ad_z0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__2_i_2
       (.I0(angular_rate_z[14]),
        .I1(avg_z[14]),
        .O(ad_z0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__2_i_3
       (.I0(angular_rate_z[13]),
        .I1(avg_z[13]),
        .O(ad_z0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry__2_i_4
       (.I0(angular_rate_z[12]),
        .I1(avg_z[12]),
        .O(ad_z0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry_i_1
       (.I0(angular_rate_z[3]),
        .I1(avg_z[3]),
        .O(ad_z0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry_i_2
       (.I0(angular_rate_z[2]),
        .I1(avg_z[2]),
        .O(ad_z0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry_i_3
       (.I0(angular_rate_z[1]),
        .I1(avg_z[1]),
        .O(ad_z0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ad_z0_carry_i_4
       (.I0(angular_rate_z[0]),
        .I1(avg_z[0]),
        .O(ad_z0_carry_i_4_n_0));
  CARRY4 ad_z2_carry
       (.CI(1'b0),
        .CO({ad_z2_carry_n_0,ad_z2_carry_n_1,ad_z2_carry_n_2,ad_z2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ad_z2_carry_i_1_n_0,ad_z2_carry_i_2_n_0,ad_z2_carry_i_3_n_0,ad_z2_carry_i_4_n_0}),
        .O(NLW_ad_z2_carry_O_UNCONNECTED[3:0]),
        .S({ad_z2_carry_i_5_n_0,ad_z2_carry_i_6_n_0,ad_z2_carry_i_7_n_0,ad_z2_carry_i_8_n_0}));
  CARRY4 ad_z2_carry__0
       (.CI(ad_z2_carry_n_0),
        .CO({ad_z2,ad_z2_carry__0_n_1,ad_z2_carry__0_n_2,ad_z2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ad_z2_carry__0_i_1_n_0,ad_z2_carry__0_i_2_n_0,ad_z2_carry__0_i_3_n_0,ad_z2_carry__0_i_4_n_0}),
        .O(NLW_ad_z2_carry__0_O_UNCONNECTED[3:0]),
        .S({ad_z2_carry__0_i_5_n_0,ad_z2_carry__0_i_6_n_0,ad_z2_carry__0_i_7_n_0,ad_z2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry__0_i_1
       (.I0(ad_z3[15]),
        .I1(angular_rate_z[15]),
        .I2(ad_z3[14]),
        .I3(angular_rate_z[14]),
        .O(ad_z2_carry__0_i_1_n_0));
  CARRY4 ad_z2_carry__0_i_10
       (.CI(ad_z2_carry_i_9_n_0),
        .CO({ad_z2_carry__0_i_10_n_0,ad_z2_carry__0_i_10_n_1,ad_z2_carry__0_i_10_n_2,ad_z2_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({ad_z2_carry__0_i_13_n_0,ad_z2_carry__0_i_14_n_0,ad_z2_carry__0_i_15_n_0,ad_z2_carry__0_i_16_n_0}),
        .O(ad_z3[12:9]),
        .S(avg_z[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_11
       (.I0(avg_z[14]),
        .O(ad_z2_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_12
       (.I0(avg_z[13]),
        .O(ad_z2_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_13
       (.I0(avg_z[12]),
        .O(ad_z2_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_14
       (.I0(avg_z[11]),
        .O(ad_z2_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_15
       (.I0(avg_z[10]),
        .O(ad_z2_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry__0_i_16
       (.I0(avg_z[9]),
        .O(ad_z2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry__0_i_2
       (.I0(ad_z3[13]),
        .I1(angular_rate_z[13]),
        .I2(ad_z3[12]),
        .I3(angular_rate_z[12]),
        .O(ad_z2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry__0_i_3
       (.I0(ad_z3[11]),
        .I1(angular_rate_z[11]),
        .I2(ad_z3[10]),
        .I3(angular_rate_z[10]),
        .O(ad_z2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry__0_i_4
       (.I0(ad_z3[9]),
        .I1(angular_rate_z[9]),
        .I2(ad_z3[8]),
        .I3(angular_rate_z[8]),
        .O(ad_z2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry__0_i_5
       (.I0(ad_z3[15]),
        .I1(angular_rate_z[15]),
        .I2(ad_z3[14]),
        .I3(angular_rate_z[14]),
        .O(ad_z2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry__0_i_6
       (.I0(ad_z3[13]),
        .I1(angular_rate_z[13]),
        .I2(ad_z3[12]),
        .I3(angular_rate_z[12]),
        .O(ad_z2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry__0_i_7
       (.I0(ad_z3[11]),
        .I1(angular_rate_z[11]),
        .I2(ad_z3[10]),
        .I3(angular_rate_z[10]),
        .O(ad_z2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry__0_i_8
       (.I0(ad_z3[9]),
        .I1(angular_rate_z[9]),
        .I2(ad_z3[8]),
        .I3(angular_rate_z[8]),
        .O(ad_z2_carry__0_i_8_n_0));
  CARRY4 ad_z2_carry__0_i_9
       (.CI(ad_z2_carry__0_i_10_n_0),
        .CO({NLW_ad_z2_carry__0_i_9_CO_UNCONNECTED[3:2],ad_z2_carry__0_i_9_n_2,ad_z2_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ad_z2_carry__0_i_11_n_0,ad_z2_carry__0_i_12_n_0}),
        .O({NLW_ad_z2_carry__0_i_9_O_UNCONNECTED[3],ad_z3[15:13]}),
        .S({1'b0,avg_z[15:13]}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry_i_1
       (.I0(ad_z3[7]),
        .I1(angular_rate_z[7]),
        .I2(ad_z3[6]),
        .I3(angular_rate_z[6]),
        .O(ad_z2_carry_i_1_n_0));
  CARRY4 ad_z2_carry_i_10
       (.CI(1'b0),
        .CO({ad_z2_carry_i_10_n_0,ad_z2_carry_i_10_n_1,ad_z2_carry_i_10_n_2,ad_z2_carry_i_10_n_3}),
        .CYINIT(ad_z2_carry_i_15_n_0),
        .DI({ad_z2_carry_i_16_n_0,ad_z2_carry_i_17_n_0,1'b0,1'b0}),
        .O({ad_z3[4:2],ad_z2_carry_i_10_n_7}),
        .S({avg_z[4:3],ad_z2_carry_i_18_n_0,ad_z2_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_11
       (.I0(avg_z[8]),
        .O(ad_z2_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_12
       (.I0(avg_z[5]),
        .O(ad_z2_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_13
       (.I0(avg_z[7]),
        .O(ad_z2_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_14
       (.I0(avg_z[6]),
        .O(ad_z2_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_15
       (.I0(avg_z[0]),
        .O(ad_z2_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_16
       (.I0(avg_z[4]),
        .O(ad_z2_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_17
       (.I0(avg_z[3]),
        .O(ad_z2_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_18
       (.I0(avg_z[2]),
        .O(ad_z2_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ad_z2_carry_i_19
       (.I0(avg_z[1]),
        .O(ad_z2_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry_i_2
       (.I0(ad_z3[5]),
        .I1(angular_rate_z[5]),
        .I2(ad_z3[4]),
        .I3(angular_rate_z[4]),
        .O(ad_z2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ad_z2_carry_i_3
       (.I0(ad_z3[3]),
        .I1(angular_rate_z[3]),
        .I2(ad_z3[2]),
        .I3(angular_rate_z[2]),
        .O(ad_z2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h064E)) 
    ad_z2_carry_i_4
       (.I0(avg_z[1]),
        .I1(avg_z[0]),
        .I2(angular_rate_z[1]),
        .I3(angular_rate_z[0]),
        .O(ad_z2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry_i_5
       (.I0(ad_z3[7]),
        .I1(angular_rate_z[7]),
        .I2(ad_z3[6]),
        .I3(angular_rate_z[6]),
        .O(ad_z2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry_i_6
       (.I0(ad_z3[5]),
        .I1(angular_rate_z[5]),
        .I2(ad_z3[4]),
        .I3(angular_rate_z[4]),
        .O(ad_z2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ad_z2_carry_i_7
       (.I0(ad_z3[3]),
        .I1(angular_rate_z[3]),
        .I2(ad_z3[2]),
        .I3(angular_rate_z[2]),
        .O(ad_z2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    ad_z2_carry_i_8
       (.I0(angular_rate_z[0]),
        .I1(avg_z[0]),
        .I2(avg_z[1]),
        .I3(angular_rate_z[1]),
        .O(ad_z2_carry_i_8_n_0));
  CARRY4 ad_z2_carry_i_9
       (.CI(ad_z2_carry_i_10_n_0),
        .CO({ad_z2_carry_i_9_n_0,ad_z2_carry_i_9_n_1,ad_z2_carry_i_9_n_2,ad_z2_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({ad_z2_carry_i_11_n_0,1'b0,1'b0,ad_z2_carry_i_12_n_0}),
        .O(ad_z3[8:5]),
        .S({avg_z[8],ad_z2_carry_i_13_n_0,ad_z2_carry_i_14_n_0,avg_z[5]}));
  CARRY4 \ad_z2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ad_z2_inferred__0/i__carry_n_0 ,\ad_z2_inferred__0/i__carry_n_1 ,\ad_z2_inferred__0/i__carry_n_2 ,\ad_z2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_ad_z2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  CARRY4 \ad_z2_inferred__0/i__carry__0 
       (.CI(\ad_z2_inferred__0/i__carry_n_0 ),
        .CO({ad_z20_in,\ad_z2_inferred__0/i__carry__0_n_1 ,\ad_z2_inferred__0/i__carry__0_n_2 ,\ad_z2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_ad_z2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  LUT3 #(
    .INIT(8'h70)) 
    \ad_z[15]_i_1 
       (.I0(ad_z20_in),
        .I1(ad_z2),
        .I2(\ad_z[15]_i_2_n_0 ),
        .O(\ad_z[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \ad_z[15]_i_2 
       (.I0(integrate_z),
        .I1(calibrate_timer_reg__0[3]),
        .I2(calibrate_timer_reg__0[1]),
        .I3(calibrate_timer_reg__0[2]),
        .I4(calibrate_timer_reg__0[0]),
        .I5(\avg_x[15]_i_3_n_0 ),
        .O(\ad_z[15]_i_2_n_0 ));
  FDRE \ad_z_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[0]),
        .Q(ad_z[0]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[10]),
        .Q(ad_z[10]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[11]),
        .Q(ad_z[11]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[12]),
        .Q(ad_z[12]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[13]),
        .Q(ad_z[13]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[14]),
        .Q(ad_z[14]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[15]),
        .Q(ad_z[15]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[1]),
        .Q(ad_z[1]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[2]),
        .Q(ad_z[2]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[3]),
        .Q(ad_z[3]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[4]),
        .Q(ad_z[4]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[5]),
        .Q(ad_z[5]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[6]),
        .Q(ad_z[6]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[7]),
        .Q(ad_z[7]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[8]),
        .Q(ad_z[8]),
        .R(\ad_z[15]_i_1_n_0 ));
  FDRE \ad_z_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ad_z[15]_i_2_n_0 ),
        .D(ad_z0[9]),
        .Q(ad_z[9]),
        .R(\ad_z[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \avg_x[15]_i_1 
       (.I0(system_reset),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \avg_x[15]_i_2 
       (.I0(calibrate_timer_reg__0[0]),
        .I1(angle_reset),
        .I2(calibrate_timer_reg__0[2]),
        .I3(calibrate_timer_reg__0[1]),
        .I4(calibrate_timer_reg__0[3]),
        .I5(\avg_x[15]_i_3_n_0 ),
        .O(avg_x_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \avg_x[15]_i_3 
       (.I0(calibrate_timer_reg__0[7]),
        .I1(calibrate_timer_reg__0[6]),
        .I2(calibrate_timer_reg__0[5]),
        .I3(calibrate_timer_reg__0[4]),
        .O(\avg_x[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[0]),
        .Q(avg_x[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[10]),
        .Q(avg_x[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[11]),
        .Q(avg_x[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[12]),
        .Q(avg_x[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[13]),
        .Q(avg_x[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[14]),
        .Q(avg_x[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[15]),
        .Q(avg_x[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[1]),
        .Q(avg_x[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[2]),
        .Q(avg_x[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[3]),
        .Q(avg_x[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[4]),
        .Q(avg_x[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[5]),
        .Q(avg_x[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[6]),
        .Q(avg_x[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[7]),
        .Q(avg_x[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[8]),
        .Q(avg_x[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(p_1_in[9]),
        .Q(avg_x[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[8]),
        .Q(avg_y[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[18]),
        .Q(avg_y[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[19]),
        .Q(avg_y[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[20]),
        .Q(avg_y[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[21]),
        .Q(avg_y[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[22]),
        .Q(avg_y[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[23]),
        .Q(avg_y[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[9]),
        .Q(avg_y[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[10]),
        .Q(avg_y[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[11]),
        .Q(avg_y[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[12]),
        .Q(avg_y[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[13]),
        .Q(avg_y[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[14]),
        .Q(avg_y[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[15]),
        .Q(avg_y[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[16]),
        .Q(avg_y[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_y_reg[17]),
        .Q(avg_y[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[0] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[8]),
        .Q(avg_z[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[10] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[18]),
        .Q(avg_z[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[11] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[19]),
        .Q(avg_z[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[12] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[20]),
        .Q(avg_z[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[13] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[21]),
        .Q(avg_z[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[14] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[22]),
        .Q(avg_z[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[15] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[23]),
        .Q(avg_z[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[1] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[9]),
        .Q(avg_z[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[2] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[10]),
        .Q(avg_z[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[3] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[11]),
        .Q(avg_z[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[4] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[12]),
        .Q(avg_z[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[5] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[13]),
        .Q(avg_z[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[6] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[14]),
        .Q(avg_z[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[7] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[15]),
        .Q(avg_z[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[8] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[16]),
        .Q(avg_z[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \avg_z_reg[9] 
       (.C(s00_axi_aclk),
        .CE(avg_x_0),
        .D(sum_z_reg[17]),
        .Q(avg_z[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \calibrate_timer[0]_i_1 
       (.I0(calibrate_timer_reg__0[2]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[3]),
        .I3(\avg_x[15]_i_3_n_0 ),
        .I4(calibrate_timer_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5A5ADA5A)) 
    \calibrate_timer[1]_i_1 
       (.I0(calibrate_timer_reg__0[0]),
        .I1(calibrate_timer_reg__0[2]),
        .I2(calibrate_timer_reg__0[1]),
        .I3(calibrate_timer_reg__0[3]),
        .I4(\avg_x[15]_i_3_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F887788)) 
    \calibrate_timer[2]_i_1 
       (.I0(calibrate_timer_reg__0[0]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(\avg_x[15]_i_3_n_0 ),
        .I3(calibrate_timer_reg__0[2]),
        .I4(calibrate_timer_reg__0[3]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8080)) 
    \calibrate_timer[3]_i_1 
       (.I0(calibrate_timer_reg__0[2]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[0]),
        .I3(\avg_x[15]_i_3_n_0 ),
        .I4(calibrate_timer_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAFFFFFFFF)) 
    \calibrate_timer[4]_i_1 
       (.I0(calibrate_timer_reg__0[4]),
        .I1(calibrate_timer_reg__0[3]),
        .I2(calibrate_timer_reg__0[1]),
        .I3(calibrate_timer_reg__0[2]),
        .I4(calibrate_timer_reg__0[0]),
        .I5(\avg_x[15]_i_3_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFBBB4444)) 
    \calibrate_timer[5]_i_1 
       (.I0(\calibrate_timer[7]_i_3_n_0 ),
        .I1(calibrate_timer_reg__0[4]),
        .I2(calibrate_timer_reg__0[6]),
        .I3(calibrate_timer_reg__0[7]),
        .I4(calibrate_timer_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF4040)) 
    \calibrate_timer[6]_i_1 
       (.I0(\calibrate_timer[7]_i_3_n_0 ),
        .I1(calibrate_timer_reg__0[5]),
        .I2(calibrate_timer_reg__0[4]),
        .I3(calibrate_timer_reg__0[7]),
        .I4(calibrate_timer_reg__0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \calibrate_timer[7]_i_1 
       (.I0(calibrate_timer_reg__0[3]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[2]),
        .I3(calibrate_timer_reg__0[0]),
        .I4(\avg_x[15]_i_3_n_0 ),
        .I5(angle_reset),
        .O(\calibrate_timer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \calibrate_timer[7]_i_2 
       (.I0(\calibrate_timer[7]_i_3_n_0 ),
        .I1(calibrate_timer_reg__0[5]),
        .I2(calibrate_timer_reg__0[4]),
        .I3(calibrate_timer_reg__0[6]),
        .I4(calibrate_timer_reg__0[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \calibrate_timer[7]_i_3 
       (.I0(calibrate_timer_reg__0[3]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[2]),
        .I3(calibrate_timer_reg__0[0]),
        .O(\calibrate_timer[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(calibrate_timer_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(calibrate_timer_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(calibrate_timer_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(calibrate_timer_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(calibrate_timer_reg__0[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(calibrate_timer_reg__0[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(calibrate_timer_reg__0[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \calibrate_timer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\calibrate_timer[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(calibrate_timer_reg__0[7]),
        .R(clear));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(angular_rate_x[15]),
        .I1(i__carry__0_i_9_n_5),
        .I2(angular_rate_x[14]),
        .I3(i__carry__0_i_9_n_6),
        .O(i__carry__0_i_1_n_0));
  CARRY4 i__carry__0_i_10
       (.CI(i__carry_i_9_n_0),
        .CO({i__carry__0_i_10_n_0,i__carry__0_i_10_n_1,i__carry__0_i_10_n_2,i__carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__0_i_10_n_4,i__carry__0_i_10_n_5,i__carry__0_i_10_n_6,i__carry__0_i_10_n_7}),
        .S({i__carry__0_i_14_n_0,i__carry__0_i_15_n_0,i__carry__0_i_16_n_0,i__carry__0_i_17_n_0}));
  CARRY4 i__carry__0_i_10__0
       (.CI(i__carry_i_9__0_n_0),
        .CO({i__carry__0_i_10__0_n_0,i__carry__0_i_10__0_n_1,i__carry__0_i_10__0_n_2,i__carry__0_i_10__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__0_i_10__0_n_4,i__carry__0_i_10__0_n_5,i__carry__0_i_10__0_n_6,i__carry__0_i_10__0_n_7}),
        .S({i__carry__0_i_14__0_n_0,i__carry__0_i_15__0_n_0,i__carry__0_i_16__0_n_0,i__carry__0_i_17__0_n_0}));
  CARRY4 i__carry__0_i_10__1
       (.CI(i__carry_i_9__1_n_0),
        .CO({i__carry__0_i_10__1_n_0,i__carry__0_i_10__1_n_1,i__carry__0_i_10__1_n_2,i__carry__0_i_10__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__0_i_10__1_n_4,i__carry__0_i_10__1_n_5,i__carry__0_i_10__1_n_6,i__carry__0_i_10__1_n_7}),
        .S({i__carry__0_i_14__1_n_0,i__carry__0_i_15__1_n_0,i__carry__0_i_16__1_n_0,i__carry__0_i_17__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_11
       (.I0(avg_x[15]),
        .O(i__carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_11__0
       (.I0(avg_y[15]),
        .O(i__carry__0_i_11__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_11__1
       (.I0(avg_z[15]),
        .O(i__carry__0_i_11__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_12
       (.I0(avg_x[14]),
        .O(i__carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_12__0
       (.I0(avg_y[14]),
        .O(i__carry__0_i_12__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_12__1
       (.I0(avg_z[14]),
        .O(i__carry__0_i_12__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_13
       (.I0(avg_x[13]),
        .O(i__carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_13__0
       (.I0(avg_y[13]),
        .O(i__carry__0_i_13__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_13__1
       (.I0(avg_z[13]),
        .O(i__carry__0_i_13__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_14
       (.I0(avg_x[12]),
        .O(i__carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_14__0
       (.I0(avg_y[12]),
        .O(i__carry__0_i_14__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_14__1
       (.I0(avg_z[12]),
        .O(i__carry__0_i_14__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_15
       (.I0(avg_x[11]),
        .O(i__carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_15__0
       (.I0(avg_y[11]),
        .O(i__carry__0_i_15__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_15__1
       (.I0(avg_z[11]),
        .O(i__carry__0_i_15__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_16
       (.I0(avg_x[10]),
        .O(i__carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_16__0
       (.I0(avg_y[10]),
        .O(i__carry__0_i_16__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_16__1
       (.I0(avg_z[10]),
        .O(i__carry__0_i_16__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_17
       (.I0(avg_x[9]),
        .O(i__carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_17__0
       (.I0(avg_y[9]),
        .O(i__carry__0_i_17__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_17__1
       (.I0(avg_z[9]),
        .O(i__carry__0_i_17__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(angular_rate_y[15]),
        .I1(i__carry__0_i_9__0_n_5),
        .I2(angular_rate_y[14]),
        .I3(i__carry__0_i_9__0_n_6),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__1
       (.I0(angular_rate_z[15]),
        .I1(i__carry__0_i_9__1_n_5),
        .I2(angular_rate_z[14]),
        .I3(i__carry__0_i_9__1_n_6),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(angular_rate_x[13]),
        .I1(i__carry__0_i_9_n_7),
        .I2(angular_rate_x[12]),
        .I3(i__carry__0_i_10_n_4),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__0
       (.I0(angular_rate_y[13]),
        .I1(i__carry__0_i_9__0_n_7),
        .I2(angular_rate_y[12]),
        .I3(i__carry__0_i_10__0_n_4),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__1
       (.I0(angular_rate_z[13]),
        .I1(i__carry__0_i_9__1_n_7),
        .I2(angular_rate_z[12]),
        .I3(i__carry__0_i_10__1_n_4),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(angular_rate_x[11]),
        .I1(i__carry__0_i_10_n_5),
        .I2(angular_rate_x[10]),
        .I3(i__carry__0_i_10_n_6),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__0
       (.I0(angular_rate_y[11]),
        .I1(i__carry__0_i_10__0_n_5),
        .I2(angular_rate_y[10]),
        .I3(i__carry__0_i_10__0_n_6),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__1
       (.I0(angular_rate_z[11]),
        .I1(i__carry__0_i_10__1_n_5),
        .I2(angular_rate_z[10]),
        .I3(i__carry__0_i_10__1_n_6),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(angular_rate_x[9]),
        .I1(i__carry__0_i_10_n_7),
        .I2(angular_rate_x[8]),
        .I3(i__carry_i_9_n_4),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__0
       (.I0(angular_rate_y[9]),
        .I1(i__carry__0_i_10__0_n_7),
        .I2(angular_rate_y[8]),
        .I3(i__carry_i_9__0_n_4),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__1
       (.I0(angular_rate_z[9]),
        .I1(i__carry__0_i_10__1_n_7),
        .I2(angular_rate_z[8]),
        .I3(i__carry_i_9__1_n_4),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_9_n_5),
        .I1(angular_rate_x[15]),
        .I2(i__carry__0_i_9_n_6),
        .I3(angular_rate_x[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(i__carry__0_i_9__0_n_5),
        .I1(angular_rate_y[15]),
        .I2(i__carry__0_i_9__0_n_6),
        .I3(angular_rate_y[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__1
       (.I0(i__carry__0_i_9__1_n_5),
        .I1(angular_rate_z[15]),
        .I2(i__carry__0_i_9__1_n_6),
        .I3(angular_rate_z[14]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_9_n_7),
        .I1(angular_rate_x[13]),
        .I2(i__carry__0_i_10_n_4),
        .I3(angular_rate_x[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(i__carry__0_i_9__0_n_7),
        .I1(angular_rate_y[13]),
        .I2(i__carry__0_i_10__0_n_4),
        .I3(angular_rate_y[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__1
       (.I0(i__carry__0_i_9__1_n_7),
        .I1(angular_rate_z[13]),
        .I2(i__carry__0_i_10__1_n_4),
        .I3(angular_rate_z[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(i__carry__0_i_10_n_5),
        .I1(angular_rate_x[11]),
        .I2(i__carry__0_i_10_n_6),
        .I3(angular_rate_x[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(i__carry__0_i_10__0_n_5),
        .I1(angular_rate_y[11]),
        .I2(i__carry__0_i_10__0_n_6),
        .I3(angular_rate_y[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__1
       (.I0(i__carry__0_i_10__1_n_5),
        .I1(angular_rate_z[11]),
        .I2(i__carry__0_i_10__1_n_6),
        .I3(angular_rate_z[10]),
        .O(i__carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(i__carry__0_i_10_n_7),
        .I1(angular_rate_x[9]),
        .I2(i__carry_i_9_n_4),
        .I3(angular_rate_x[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(i__carry__0_i_10__0_n_7),
        .I1(angular_rate_y[9]),
        .I2(i__carry_i_9__0_n_4),
        .I3(angular_rate_y[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__1
       (.I0(i__carry__0_i_10__1_n_7),
        .I1(angular_rate_z[9]),
        .I2(i__carry_i_9__1_n_4),
        .I3(angular_rate_z[8]),
        .O(i__carry__0_i_8__1_n_0));
  CARRY4 i__carry__0_i_9
       (.CI(i__carry__0_i_10_n_0),
        .CO({NLW_i__carry__0_i_9_CO_UNCONNECTED[3:2],i__carry__0_i_9_n_2,i__carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__0_i_9_O_UNCONNECTED[3],i__carry__0_i_9_n_5,i__carry__0_i_9_n_6,i__carry__0_i_9_n_7}),
        .S({1'b0,i__carry__0_i_11_n_0,i__carry__0_i_12_n_0,i__carry__0_i_13_n_0}));
  CARRY4 i__carry__0_i_9__0
       (.CI(i__carry__0_i_10__0_n_0),
        .CO({NLW_i__carry__0_i_9__0_CO_UNCONNECTED[3:2],i__carry__0_i_9__0_n_2,i__carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__0_i_9__0_O_UNCONNECTED[3],i__carry__0_i_9__0_n_5,i__carry__0_i_9__0_n_6,i__carry__0_i_9__0_n_7}),
        .S({1'b0,i__carry__0_i_11__0_n_0,i__carry__0_i_12__0_n_0,i__carry__0_i_13__0_n_0}));
  CARRY4 i__carry__0_i_9__1
       (.CI(i__carry__0_i_10__1_n_0),
        .CO({NLW_i__carry__0_i_9__1_CO_UNCONNECTED[3:2],i__carry__0_i_9__1_n_2,i__carry__0_i_9__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__0_i_9__1_O_UNCONNECTED[3],i__carry__0_i_9__1_n_5,i__carry__0_i_9__1_n_6,i__carry__0_i_9__1_n_7}),
        .S({1'b0,i__carry__0_i_11__1_n_0,i__carry__0_i_12__1_n_0,i__carry__0_i_13__1_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(angular_rate_x[7]),
        .I1(i__carry_i_9_n_5),
        .I2(angular_rate_x[6]),
        .I3(i__carry_i_9_n_6),
        .O(i__carry_i_1_n_0));
  CARRY4 i__carry_i_10
       (.CI(1'b0),
        .CO({i__carry_i_10_n_0,i__carry_i_10_n_1,i__carry_i_10_n_2,i__carry_i_10_n_3}),
        .CYINIT(ad_x2_carry_i_15_n_0),
        .DI({1'b0,i__carry_i_15_n_0,1'b0,1'b0}),
        .O({i__carry_i_10_n_4,i__carry_i_10_n_5,i__carry_i_10_n_6,NLW_i__carry_i_10_O_UNCONNECTED[0]}),
        .S({i__carry_i_16_n_0,avg_x[3],i__carry_i_17_n_0,i__carry_i_18_n_0}));
  CARRY4 i__carry_i_10__0
       (.CI(1'b0),
        .CO({i__carry_i_10__0_n_0,i__carry_i_10__0_n_1,i__carry_i_10__0_n_2,i__carry_i_10__0_n_3}),
        .CYINIT(ad_y2_carry_i_15_n_0),
        .DI({1'b0,i__carry_i_15__0_n_0,1'b0,1'b0}),
        .O({i__carry_i_10__0_n_4,i__carry_i_10__0_n_5,i__carry_i_10__0_n_6,NLW_i__carry_i_10__0_O_UNCONNECTED[0]}),
        .S({i__carry_i_16__0_n_0,avg_y[3],i__carry_i_17__0_n_0,i__carry_i_18__0_n_0}));
  CARRY4 i__carry_i_10__1
       (.CI(1'b0),
        .CO({i__carry_i_10__1_n_0,i__carry_i_10__1_n_1,i__carry_i_10__1_n_2,i__carry_i_10__1_n_3}),
        .CYINIT(ad_z2_carry_i_15_n_0),
        .DI({1'b0,i__carry_i_15__1_n_0,1'b0,1'b0}),
        .O({i__carry_i_10__1_n_4,i__carry_i_10__1_n_5,i__carry_i_10__1_n_6,NLW_i__carry_i_10__1_O_UNCONNECTED[0]}),
        .S({i__carry_i_16__1_n_0,avg_z[3],i__carry_i_17__1_n_0,i__carry_i_18__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_11
       (.I0(avg_x[7]),
        .O(i__carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_11__0
       (.I0(avg_y[7]),
        .O(i__carry_i_11__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_11__1
       (.I0(avg_z[7]),
        .O(i__carry_i_11__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_12
       (.I0(avg_x[6]),
        .O(i__carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_12__0
       (.I0(avg_y[6]),
        .O(i__carry_i_12__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_12__1
       (.I0(avg_z[6]),
        .O(i__carry_i_12__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_13
       (.I0(avg_x[8]),
        .O(i__carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_13__0
       (.I0(avg_y[8]),
        .O(i__carry_i_13__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_13__1
       (.I0(avg_z[8]),
        .O(i__carry_i_13__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_14
       (.I0(avg_x[5]),
        .O(i__carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_14__0
       (.I0(avg_y[5]),
        .O(i__carry_i_14__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_14__1
       (.I0(avg_z[5]),
        .O(i__carry_i_14__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_15
       (.I0(avg_x[3]),
        .O(i__carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_15__0
       (.I0(avg_y[3]),
        .O(i__carry_i_15__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_15__1
       (.I0(avg_z[3]),
        .O(i__carry_i_15__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_16
       (.I0(avg_x[4]),
        .O(i__carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_16__0
       (.I0(avg_y[4]),
        .O(i__carry_i_16__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_16__1
       (.I0(avg_z[4]),
        .O(i__carry_i_16__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_17
       (.I0(avg_x[2]),
        .O(i__carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_17__0
       (.I0(avg_y[2]),
        .O(i__carry_i_17__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_17__1
       (.I0(avg_z[2]),
        .O(i__carry_i_17__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_18
       (.I0(avg_x[1]),
        .O(i__carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_18__0
       (.I0(avg_y[1]),
        .O(i__carry_i_18__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_18__1
       (.I0(avg_z[1]),
        .O(i__carry_i_18__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(angular_rate_y[7]),
        .I1(i__carry_i_9__0_n_5),
        .I2(angular_rate_y[6]),
        .I3(i__carry_i_9__0_n_6),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(angular_rate_z[7]),
        .I1(i__carry_i_9__1_n_5),
        .I2(angular_rate_z[6]),
        .I3(i__carry_i_9__1_n_6),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(angular_rate_x[5]),
        .I1(i__carry_i_9_n_7),
        .I2(angular_rate_x[4]),
        .I3(i__carry_i_10_n_4),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(angular_rate_y[5]),
        .I1(i__carry_i_9__0_n_7),
        .I2(angular_rate_y[4]),
        .I3(i__carry_i_10__0_n_4),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(angular_rate_z[5]),
        .I1(i__carry_i_9__1_n_7),
        .I2(angular_rate_z[4]),
        .I3(i__carry_i_10__1_n_4),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(angular_rate_x[3]),
        .I1(i__carry_i_10_n_5),
        .I2(angular_rate_x[2]),
        .I3(i__carry_i_10_n_6),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(angular_rate_y[3]),
        .I1(i__carry_i_10__0_n_5),
        .I2(angular_rate_y[2]),
        .I3(i__carry_i_10__0_n_6),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(angular_rate_z[3]),
        .I1(i__carry_i_10__1_n_5),
        .I2(angular_rate_z[2]),
        .I3(i__carry_i_10__1_n_6),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(angular_rate_x[1]),
        .I1(ad_x2_carry_i_10_n_7),
        .I2(angular_rate_x[0]),
        .I3(avg_x[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(angular_rate_y[1]),
        .I1(ad_y2_carry_i_10_n_7),
        .I2(angular_rate_y[0]),
        .I3(avg_y[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__1
       (.I0(angular_rate_z[1]),
        .I1(ad_z2_carry_i_10_n_7),
        .I2(angular_rate_z[0]),
        .I3(avg_z[0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(i__carry_i_9_n_5),
        .I1(angular_rate_x[7]),
        .I2(i__carry_i_9_n_6),
        .I3(angular_rate_x[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(i__carry_i_9__0_n_5),
        .I1(angular_rate_y[7]),
        .I2(i__carry_i_9__0_n_6),
        .I3(angular_rate_y[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(i__carry_i_9__1_n_5),
        .I1(angular_rate_z[7]),
        .I2(i__carry_i_9__1_n_6),
        .I3(angular_rate_z[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(i__carry_i_9_n_7),
        .I1(angular_rate_x[5]),
        .I2(i__carry_i_10_n_4),
        .I3(angular_rate_x[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(i__carry_i_9__0_n_7),
        .I1(angular_rate_y[5]),
        .I2(i__carry_i_10__0_n_4),
        .I3(angular_rate_y[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(i__carry_i_9__1_n_7),
        .I1(angular_rate_z[5]),
        .I2(i__carry_i_10__1_n_4),
        .I3(angular_rate_z[4]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(i__carry_i_10_n_5),
        .I1(angular_rate_x[3]),
        .I2(i__carry_i_10_n_6),
        .I3(angular_rate_x[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(i__carry_i_10__0_n_5),
        .I1(angular_rate_y[3]),
        .I2(i__carry_i_10__0_n_6),
        .I3(angular_rate_y[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(i__carry_i_10__1_n_5),
        .I1(angular_rate_z[3]),
        .I2(i__carry_i_10__1_n_6),
        .I3(angular_rate_z[2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(angular_rate_x[0]),
        .I1(avg_x[0]),
        .I2(ad_x2_carry_i_10_n_7),
        .I3(angular_rate_x[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(angular_rate_y[0]),
        .I1(avg_y[0]),
        .I2(ad_y2_carry_i_10_n_7),
        .I3(angular_rate_y[1]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(angular_rate_z[0]),
        .I1(avg_z[0]),
        .I2(ad_z2_carry_i_10_n_7),
        .I3(angular_rate_z[1]),
        .O(i__carry_i_8__1_n_0));
  CARRY4 i__carry_i_9
       (.CI(i__carry_i_10_n_0),
        .CO({i__carry_i_9_n_0,i__carry_i_9_n_1,i__carry_i_9_n_2,i__carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_11_n_0,i__carry_i_12_n_0,1'b0}),
        .O({i__carry_i_9_n_4,i__carry_i_9_n_5,i__carry_i_9_n_6,i__carry_i_9_n_7}),
        .S({i__carry_i_13_n_0,avg_x[7:6],i__carry_i_14_n_0}));
  CARRY4 i__carry_i_9__0
       (.CI(i__carry_i_10__0_n_0),
        .CO({i__carry_i_9__0_n_0,i__carry_i_9__0_n_1,i__carry_i_9__0_n_2,i__carry_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_11__0_n_0,i__carry_i_12__0_n_0,1'b0}),
        .O({i__carry_i_9__0_n_4,i__carry_i_9__0_n_5,i__carry_i_9__0_n_6,i__carry_i_9__0_n_7}),
        .S({i__carry_i_13__0_n_0,avg_y[7:6],i__carry_i_14__0_n_0}));
  CARRY4 i__carry_i_9__1
       (.CI(i__carry_i_10__1_n_0),
        .CO({i__carry_i_9__1_n_0,i__carry_i_9__1_n_1,i__carry_i_9__1_n_2,i__carry_i_9__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_11__1_n_0,i__carry_i_12__1_n_0,1'b0}),
        .O({i__carry_i_9__1_n_4,i__carry_i_9__1_n_5,i__carry_i_9__1_n_6,i__carry_i_9__1_n_7}),
        .S({i__carry_i_13__1_n_0,avg_z[7:6],i__carry_i_14__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[0]_i_2 
       (.I0(ad_x[3]),
        .I1(\integrate_x_reg_n_0_[3] ),
        .O(\integrate_x[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[0]_i_3 
       (.I0(ad_x[2]),
        .I1(\integrate_x_reg_n_0_[2] ),
        .O(\integrate_x[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[0]_i_4 
       (.I0(ad_x[1]),
        .I1(\integrate_x_reg_n_0_[1] ),
        .O(\integrate_x[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[0]_i_5 
       (.I0(ad_x[0]),
        .I1(\integrate_x_reg_n_0_[0] ),
        .O(\integrate_x[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[12]_i_2 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[15] ),
        .O(\integrate_x[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[12]_i_3 
       (.I0(ad_x[14]),
        .I1(\integrate_x_reg_n_0_[14] ),
        .O(\integrate_x[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[12]_i_4 
       (.I0(ad_x[13]),
        .I1(\integrate_x_reg_n_0_[13] ),
        .O(\integrate_x[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[12]_i_5 
       (.I0(ad_x[12]),
        .I1(\integrate_x_reg_n_0_[12] ),
        .O(\integrate_x[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[16]_i_2 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[19] ),
        .O(\integrate_x[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[16]_i_3 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[18] ),
        .O(\integrate_x[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[16]_i_4 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[17] ),
        .O(\integrate_x[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[16]_i_5 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[16] ),
        .O(\integrate_x[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[20]_i_2 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[23] ),
        .O(\integrate_x[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[20]_i_3 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[22] ),
        .O(\integrate_x[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[20]_i_4 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[21] ),
        .O(\integrate_x[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[20]_i_5 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[20] ),
        .O(\integrate_x[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[24]_i_2 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[27] ),
        .O(\integrate_x[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[24]_i_3 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[26] ),
        .O(\integrate_x[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[24]_i_4 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[25] ),
        .O(\integrate_x[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[24]_i_5 
       (.I0(ad_x[15]),
        .I1(\integrate_x_reg_n_0_[24] ),
        .O(\integrate_x[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[28]_i_2 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[31]),
        .O(\integrate_x[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[28]_i_3 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[30]),
        .O(\integrate_x[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[28]_i_4 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[29]),
        .O(\integrate_x[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[28]_i_5 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[28]),
        .O(\integrate_x[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[32]_i_2 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[35]),
        .O(\integrate_x[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[32]_i_3 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[34]),
        .O(\integrate_x[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[32]_i_4 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[33]),
        .O(\integrate_x[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[32]_i_5 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[32]),
        .O(\integrate_x[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[36]_i_2 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[39]),
        .O(\integrate_x[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[36]_i_3 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[38]),
        .O(\integrate_x[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[36]_i_4 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[37]),
        .O(\integrate_x[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[36]_i_5 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[36]),
        .O(\integrate_x[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[40]_i_2 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[43]),
        .O(\integrate_x[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[40]_i_3 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[42]),
        .O(\integrate_x[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[40]_i_4 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[41]),
        .O(\integrate_x[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[40]_i_5 
       (.I0(ad_x[15]),
        .I1(integrate_x_reg[40]),
        .O(\integrate_x[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[4]_i_2 
       (.I0(ad_x[7]),
        .I1(\integrate_x_reg_n_0_[7] ),
        .O(\integrate_x[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[4]_i_3 
       (.I0(ad_x[6]),
        .I1(\integrate_x_reg_n_0_[6] ),
        .O(\integrate_x[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[4]_i_4 
       (.I0(ad_x[5]),
        .I1(\integrate_x_reg_n_0_[5] ),
        .O(\integrate_x[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[4]_i_5 
       (.I0(ad_x[4]),
        .I1(\integrate_x_reg_n_0_[4] ),
        .O(\integrate_x[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[8]_i_2 
       (.I0(ad_x[11]),
        .I1(\integrate_x_reg_n_0_[11] ),
        .O(\integrate_x[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[8]_i_3 
       (.I0(ad_x[10]),
        .I1(\integrate_x_reg_n_0_[10] ),
        .O(\integrate_x[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[8]_i_4 
       (.I0(ad_x[9]),
        .I1(\integrate_x_reg_n_0_[9] ),
        .O(\integrate_x[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_x[8]_i_5 
       (.I0(ad_x[8]),
        .I1(\integrate_x_reg_n_0_[8] ),
        .O(\integrate_x[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[0]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[0] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\integrate_x_reg[0]_i_1_n_0 ,\integrate_x_reg[0]_i_1_n_1 ,\integrate_x_reg[0]_i_1_n_2 ,\integrate_x_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_x[3:0]),
        .O({\integrate_x_reg[0]_i_1_n_4 ,\integrate_x_reg[0]_i_1_n_5 ,\integrate_x_reg[0]_i_1_n_6 ,\integrate_x_reg[0]_i_1_n_7 }),
        .S({\integrate_x[0]_i_2_n_0 ,\integrate_x[0]_i_3_n_0 ,\integrate_x[0]_i_4_n_0 ,\integrate_x[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[8]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[10] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[8]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[11] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[12]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[12] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[12]_i_1 
       (.CI(\integrate_x_reg[8]_i_1_n_0 ),
        .CO({\integrate_x_reg[12]_i_1_n_0 ,\integrate_x_reg[12]_i_1_n_1 ,\integrate_x_reg[12]_i_1_n_2 ,\integrate_x_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_x[15:12]),
        .O({\integrate_x_reg[12]_i_1_n_4 ,\integrate_x_reg[12]_i_1_n_5 ,\integrate_x_reg[12]_i_1_n_6 ,\integrate_x_reg[12]_i_1_n_7 }),
        .S({\integrate_x[12]_i_2_n_0 ,\integrate_x[12]_i_3_n_0 ,\integrate_x[12]_i_4_n_0 ,\integrate_x[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[12]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[13] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[12]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[14] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[12]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[15] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[16]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[16] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[16]_i_1 
       (.CI(\integrate_x_reg[12]_i_1_n_0 ),
        .CO({\integrate_x_reg[16]_i_1_n_0 ,\integrate_x_reg[16]_i_1_n_1 ,\integrate_x_reg[16]_i_1_n_2 ,\integrate_x_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[16]_i_1_n_4 ,\integrate_x_reg[16]_i_1_n_5 ,\integrate_x_reg[16]_i_1_n_6 ,\integrate_x_reg[16]_i_1_n_7 }),
        .S({\integrate_x[16]_i_2_n_0 ,\integrate_x[16]_i_3_n_0 ,\integrate_x[16]_i_4_n_0 ,\integrate_x[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[16]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[17] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[16]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[18] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[16]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[19] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[0]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[1] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[20]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[20] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[20]_i_1 
       (.CI(\integrate_x_reg[16]_i_1_n_0 ),
        .CO({\integrate_x_reg[20]_i_1_n_0 ,\integrate_x_reg[20]_i_1_n_1 ,\integrate_x_reg[20]_i_1_n_2 ,\integrate_x_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[20]_i_1_n_4 ,\integrate_x_reg[20]_i_1_n_5 ,\integrate_x_reg[20]_i_1_n_6 ,\integrate_x_reg[20]_i_1_n_7 }),
        .S({\integrate_x[20]_i_2_n_0 ,\integrate_x[20]_i_3_n_0 ,\integrate_x[20]_i_4_n_0 ,\integrate_x[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[20]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[21] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[20]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[22] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[20]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[23] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[24]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[24] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[24]_i_1 
       (.CI(\integrate_x_reg[20]_i_1_n_0 ),
        .CO({\integrate_x_reg[24]_i_1_n_0 ,\integrate_x_reg[24]_i_1_n_1 ,\integrate_x_reg[24]_i_1_n_2 ,\integrate_x_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[24]_i_1_n_4 ,\integrate_x_reg[24]_i_1_n_5 ,\integrate_x_reg[24]_i_1_n_6 ,\integrate_x_reg[24]_i_1_n_7 }),
        .S({\integrate_x[24]_i_2_n_0 ,\integrate_x[24]_i_3_n_0 ,\integrate_x[24]_i_4_n_0 ,\integrate_x[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[24]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[25] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[24]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[26] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[24]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[27] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[28]_i_1_n_7 ),
        .Q(integrate_x_reg[28]),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[28]_i_1 
       (.CI(\integrate_x_reg[24]_i_1_n_0 ),
        .CO({\integrate_x_reg[28]_i_1_n_0 ,\integrate_x_reg[28]_i_1_n_1 ,\integrate_x_reg[28]_i_1_n_2 ,\integrate_x_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[28]_i_1_n_4 ,\integrate_x_reg[28]_i_1_n_5 ,\integrate_x_reg[28]_i_1_n_6 ,\integrate_x_reg[28]_i_1_n_7 }),
        .S({\integrate_x[28]_i_2_n_0 ,\integrate_x[28]_i_3_n_0 ,\integrate_x[28]_i_4_n_0 ,\integrate_x[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[28]_i_1_n_6 ),
        .Q(integrate_x_reg[29]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[0]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[2] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[28]_i_1_n_5 ),
        .Q(integrate_x_reg[30]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[28]_i_1_n_4 ),
        .Q(integrate_x_reg[31]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[32]_i_1_n_7 ),
        .Q(integrate_x_reg[32]),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[32]_i_1 
       (.CI(\integrate_x_reg[28]_i_1_n_0 ),
        .CO({\integrate_x_reg[32]_i_1_n_0 ,\integrate_x_reg[32]_i_1_n_1 ,\integrate_x_reg[32]_i_1_n_2 ,\integrate_x_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[32]_i_1_n_4 ,\integrate_x_reg[32]_i_1_n_5 ,\integrate_x_reg[32]_i_1_n_6 ,\integrate_x_reg[32]_i_1_n_7 }),
        .S({\integrate_x[32]_i_2_n_0 ,\integrate_x[32]_i_3_n_0 ,\integrate_x[32]_i_4_n_0 ,\integrate_x[32]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[32]_i_1_n_6 ),
        .Q(integrate_x_reg[33]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[32]_i_1_n_5 ),
        .Q(integrate_x_reg[34]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[32]_i_1_n_4 ),
        .Q(integrate_x_reg[35]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[36]_i_1_n_7 ),
        .Q(integrate_x_reg[36]),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[36]_i_1 
       (.CI(\integrate_x_reg[32]_i_1_n_0 ),
        .CO({\integrate_x_reg[36]_i_1_n_0 ,\integrate_x_reg[36]_i_1_n_1 ,\integrate_x_reg[36]_i_1_n_2 ,\integrate_x_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_x[15],ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[36]_i_1_n_4 ,\integrate_x_reg[36]_i_1_n_5 ,\integrate_x_reg[36]_i_1_n_6 ,\integrate_x_reg[36]_i_1_n_7 }),
        .S({\integrate_x[36]_i_2_n_0 ,\integrate_x[36]_i_3_n_0 ,\integrate_x[36]_i_4_n_0 ,\integrate_x[36]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[36]_i_1_n_6 ),
        .Q(integrate_x_reg[37]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[36]_i_1_n_5 ),
        .Q(integrate_x_reg[38]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[36]_i_1_n_4 ),
        .Q(integrate_x_reg[39]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[0]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[3] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[40]_i_1_n_7 ),
        .Q(integrate_x_reg[40]),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[40]_i_1 
       (.CI(\integrate_x_reg[36]_i_1_n_0 ),
        .CO({\NLW_integrate_x_reg[40]_i_1_CO_UNCONNECTED [3],\integrate_x_reg[40]_i_1_n_1 ,\integrate_x_reg[40]_i_1_n_2 ,\integrate_x_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ad_x[15],ad_x[15],ad_x[15]}),
        .O({\integrate_x_reg[40]_i_1_n_4 ,\integrate_x_reg[40]_i_1_n_5 ,\integrate_x_reg[40]_i_1_n_6 ,\integrate_x_reg[40]_i_1_n_7 }),
        .S({\integrate_x[40]_i_2_n_0 ,\integrate_x[40]_i_3_n_0 ,\integrate_x[40]_i_4_n_0 ,\integrate_x[40]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[40]_i_1_n_6 ),
        .Q(integrate_x_reg[41]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[40]_i_1_n_5 ),
        .Q(integrate_x_reg[42]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[40]_i_1_n_4 ),
        .Q(integrate_x_reg[43]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[4]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[4] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[4]_i_1 
       (.CI(\integrate_x_reg[0]_i_1_n_0 ),
        .CO({\integrate_x_reg[4]_i_1_n_0 ,\integrate_x_reg[4]_i_1_n_1 ,\integrate_x_reg[4]_i_1_n_2 ,\integrate_x_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_x[7:4]),
        .O({\integrate_x_reg[4]_i_1_n_4 ,\integrate_x_reg[4]_i_1_n_5 ,\integrate_x_reg[4]_i_1_n_6 ,\integrate_x_reg[4]_i_1_n_7 }),
        .S({\integrate_x[4]_i_2_n_0 ,\integrate_x[4]_i_3_n_0 ,\integrate_x[4]_i_4_n_0 ,\integrate_x[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[4]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[5] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[4]_i_1_n_5 ),
        .Q(\integrate_x_reg_n_0_[6] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[4]_i_1_n_4 ),
        .Q(\integrate_x_reg_n_0_[7] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[8]_i_1_n_7 ),
        .Q(\integrate_x_reg_n_0_[8] ),
        .R(integrate_z));
  CARRY4 \integrate_x_reg[8]_i_1 
       (.CI(\integrate_x_reg[4]_i_1_n_0 ),
        .CO({\integrate_x_reg[8]_i_1_n_0 ,\integrate_x_reg[8]_i_1_n_1 ,\integrate_x_reg[8]_i_1_n_2 ,\integrate_x_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_x[11:8]),
        .O({\integrate_x_reg[8]_i_1_n_4 ,\integrate_x_reg[8]_i_1_n_5 ,\integrate_x_reg[8]_i_1_n_6 ,\integrate_x_reg[8]_i_1_n_7 }),
        .S({\integrate_x[8]_i_2_n_0 ,\integrate_x[8]_i_3_n_0 ,\integrate_x[8]_i_4_n_0 ,\integrate_x[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_x_reg[8]_i_1_n_6 ),
        .Q(\integrate_x_reg_n_0_[9] ),
        .R(integrate_z));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[0]_i_2 
       (.I0(ad_y[3]),
        .I1(\integrate_y_reg_n_0_[3] ),
        .O(\integrate_y[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[0]_i_3 
       (.I0(ad_y[2]),
        .I1(\integrate_y_reg_n_0_[2] ),
        .O(\integrate_y[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[0]_i_4 
       (.I0(ad_y[1]),
        .I1(\integrate_y_reg_n_0_[1] ),
        .O(\integrate_y[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[0]_i_5 
       (.I0(ad_y[0]),
        .I1(\integrate_y_reg_n_0_[0] ),
        .O(\integrate_y[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[12]_i_2 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[15] ),
        .O(\integrate_y[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[12]_i_3 
       (.I0(ad_y[14]),
        .I1(\integrate_y_reg_n_0_[14] ),
        .O(\integrate_y[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[12]_i_4 
       (.I0(ad_y[13]),
        .I1(\integrate_y_reg_n_0_[13] ),
        .O(\integrate_y[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[12]_i_5 
       (.I0(ad_y[12]),
        .I1(\integrate_y_reg_n_0_[12] ),
        .O(\integrate_y[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[16]_i_2 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[19] ),
        .O(\integrate_y[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[16]_i_3 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[18] ),
        .O(\integrate_y[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[16]_i_4 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[17] ),
        .O(\integrate_y[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[16]_i_5 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[16] ),
        .O(\integrate_y[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[20]_i_2 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[23] ),
        .O(\integrate_y[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[20]_i_3 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[22] ),
        .O(\integrate_y[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[20]_i_4 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[21] ),
        .O(\integrate_y[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[20]_i_5 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[20] ),
        .O(\integrate_y[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[24]_i_2 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[27] ),
        .O(\integrate_y[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[24]_i_3 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[26] ),
        .O(\integrate_y[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[24]_i_4 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[25] ),
        .O(\integrate_y[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[24]_i_5 
       (.I0(ad_y[15]),
        .I1(\integrate_y_reg_n_0_[24] ),
        .O(\integrate_y[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[28]_i_2 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[31]),
        .O(\integrate_y[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[28]_i_3 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[30]),
        .O(\integrate_y[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[28]_i_4 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[29]),
        .O(\integrate_y[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[28]_i_5 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[28]),
        .O(\integrate_y[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[32]_i_2 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[35]),
        .O(\integrate_y[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[32]_i_3 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[34]),
        .O(\integrate_y[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[32]_i_4 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[33]),
        .O(\integrate_y[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[32]_i_5 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[32]),
        .O(\integrate_y[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[36]_i_2 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[39]),
        .O(\integrate_y[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[36]_i_3 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[38]),
        .O(\integrate_y[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[36]_i_4 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[37]),
        .O(\integrate_y[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[36]_i_5 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[36]),
        .O(\integrate_y[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[40]_i_2 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[43]),
        .O(\integrate_y[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[40]_i_3 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[42]),
        .O(\integrate_y[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[40]_i_4 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[41]),
        .O(\integrate_y[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[40]_i_5 
       (.I0(ad_y[15]),
        .I1(integrate_y_reg[40]),
        .O(\integrate_y[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[4]_i_2 
       (.I0(ad_y[7]),
        .I1(\integrate_y_reg_n_0_[7] ),
        .O(\integrate_y[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[4]_i_3 
       (.I0(ad_y[6]),
        .I1(\integrate_y_reg_n_0_[6] ),
        .O(\integrate_y[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[4]_i_4 
       (.I0(ad_y[5]),
        .I1(\integrate_y_reg_n_0_[5] ),
        .O(\integrate_y[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[4]_i_5 
       (.I0(ad_y[4]),
        .I1(\integrate_y_reg_n_0_[4] ),
        .O(\integrate_y[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[8]_i_2 
       (.I0(ad_y[11]),
        .I1(\integrate_y_reg_n_0_[11] ),
        .O(\integrate_y[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[8]_i_3 
       (.I0(ad_y[10]),
        .I1(\integrate_y_reg_n_0_[10] ),
        .O(\integrate_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[8]_i_4 
       (.I0(ad_y[9]),
        .I1(\integrate_y_reg_n_0_[9] ),
        .O(\integrate_y[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_y[8]_i_5 
       (.I0(ad_y[8]),
        .I1(\integrate_y_reg_n_0_[8] ),
        .O(\integrate_y[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[0]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[0] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\integrate_y_reg[0]_i_1_n_0 ,\integrate_y_reg[0]_i_1_n_1 ,\integrate_y_reg[0]_i_1_n_2 ,\integrate_y_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_y[3:0]),
        .O({\integrate_y_reg[0]_i_1_n_4 ,\integrate_y_reg[0]_i_1_n_5 ,\integrate_y_reg[0]_i_1_n_6 ,\integrate_y_reg[0]_i_1_n_7 }),
        .S({\integrate_y[0]_i_2_n_0 ,\integrate_y[0]_i_3_n_0 ,\integrate_y[0]_i_4_n_0 ,\integrate_y[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[8]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[10] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[8]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[11] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[12]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[12] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[12]_i_1 
       (.CI(\integrate_y_reg[8]_i_1_n_0 ),
        .CO({\integrate_y_reg[12]_i_1_n_0 ,\integrate_y_reg[12]_i_1_n_1 ,\integrate_y_reg[12]_i_1_n_2 ,\integrate_y_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_y[15:12]),
        .O({\integrate_y_reg[12]_i_1_n_4 ,\integrate_y_reg[12]_i_1_n_5 ,\integrate_y_reg[12]_i_1_n_6 ,\integrate_y_reg[12]_i_1_n_7 }),
        .S({\integrate_y[12]_i_2_n_0 ,\integrate_y[12]_i_3_n_0 ,\integrate_y[12]_i_4_n_0 ,\integrate_y[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[12]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[13] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[12]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[14] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[12]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[15] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[16]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[16] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[16]_i_1 
       (.CI(\integrate_y_reg[12]_i_1_n_0 ),
        .CO({\integrate_y_reg[16]_i_1_n_0 ,\integrate_y_reg[16]_i_1_n_1 ,\integrate_y_reg[16]_i_1_n_2 ,\integrate_y_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[16]_i_1_n_4 ,\integrate_y_reg[16]_i_1_n_5 ,\integrate_y_reg[16]_i_1_n_6 ,\integrate_y_reg[16]_i_1_n_7 }),
        .S({\integrate_y[16]_i_2_n_0 ,\integrate_y[16]_i_3_n_0 ,\integrate_y[16]_i_4_n_0 ,\integrate_y[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[16]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[17] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[16]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[18] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[16]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[19] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[0]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[1] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[20]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[20] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[20]_i_1 
       (.CI(\integrate_y_reg[16]_i_1_n_0 ),
        .CO({\integrate_y_reg[20]_i_1_n_0 ,\integrate_y_reg[20]_i_1_n_1 ,\integrate_y_reg[20]_i_1_n_2 ,\integrate_y_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[20]_i_1_n_4 ,\integrate_y_reg[20]_i_1_n_5 ,\integrate_y_reg[20]_i_1_n_6 ,\integrate_y_reg[20]_i_1_n_7 }),
        .S({\integrate_y[20]_i_2_n_0 ,\integrate_y[20]_i_3_n_0 ,\integrate_y[20]_i_4_n_0 ,\integrate_y[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[20]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[21] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[20]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[22] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[20]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[23] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[24]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[24] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[24]_i_1 
       (.CI(\integrate_y_reg[20]_i_1_n_0 ),
        .CO({\integrate_y_reg[24]_i_1_n_0 ,\integrate_y_reg[24]_i_1_n_1 ,\integrate_y_reg[24]_i_1_n_2 ,\integrate_y_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[24]_i_1_n_4 ,\integrate_y_reg[24]_i_1_n_5 ,\integrate_y_reg[24]_i_1_n_6 ,\integrate_y_reg[24]_i_1_n_7 }),
        .S({\integrate_y[24]_i_2_n_0 ,\integrate_y[24]_i_3_n_0 ,\integrate_y[24]_i_4_n_0 ,\integrate_y[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[24]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[25] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[24]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[26] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[24]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[27] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[28]_i_1_n_7 ),
        .Q(integrate_y_reg[28]),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[28]_i_1 
       (.CI(\integrate_y_reg[24]_i_1_n_0 ),
        .CO({\integrate_y_reg[28]_i_1_n_0 ,\integrate_y_reg[28]_i_1_n_1 ,\integrate_y_reg[28]_i_1_n_2 ,\integrate_y_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[28]_i_1_n_4 ,\integrate_y_reg[28]_i_1_n_5 ,\integrate_y_reg[28]_i_1_n_6 ,\integrate_y_reg[28]_i_1_n_7 }),
        .S({\integrate_y[28]_i_2_n_0 ,\integrate_y[28]_i_3_n_0 ,\integrate_y[28]_i_4_n_0 ,\integrate_y[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[28]_i_1_n_6 ),
        .Q(integrate_y_reg[29]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[0]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[2] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[28]_i_1_n_5 ),
        .Q(integrate_y_reg[30]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[28]_i_1_n_4 ),
        .Q(integrate_y_reg[31]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[32]_i_1_n_7 ),
        .Q(integrate_y_reg[32]),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[32]_i_1 
       (.CI(\integrate_y_reg[28]_i_1_n_0 ),
        .CO({\integrate_y_reg[32]_i_1_n_0 ,\integrate_y_reg[32]_i_1_n_1 ,\integrate_y_reg[32]_i_1_n_2 ,\integrate_y_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[32]_i_1_n_4 ,\integrate_y_reg[32]_i_1_n_5 ,\integrate_y_reg[32]_i_1_n_6 ,\integrate_y_reg[32]_i_1_n_7 }),
        .S({\integrate_y[32]_i_2_n_0 ,\integrate_y[32]_i_3_n_0 ,\integrate_y[32]_i_4_n_0 ,\integrate_y[32]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[32]_i_1_n_6 ),
        .Q(integrate_y_reg[33]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[32]_i_1_n_5 ),
        .Q(integrate_y_reg[34]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[32]_i_1_n_4 ),
        .Q(integrate_y_reg[35]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[36]_i_1_n_7 ),
        .Q(integrate_y_reg[36]),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[36]_i_1 
       (.CI(\integrate_y_reg[32]_i_1_n_0 ),
        .CO({\integrate_y_reg[36]_i_1_n_0 ,\integrate_y_reg[36]_i_1_n_1 ,\integrate_y_reg[36]_i_1_n_2 ,\integrate_y_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_y[15],ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[36]_i_1_n_4 ,\integrate_y_reg[36]_i_1_n_5 ,\integrate_y_reg[36]_i_1_n_6 ,\integrate_y_reg[36]_i_1_n_7 }),
        .S({\integrate_y[36]_i_2_n_0 ,\integrate_y[36]_i_3_n_0 ,\integrate_y[36]_i_4_n_0 ,\integrate_y[36]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[36]_i_1_n_6 ),
        .Q(integrate_y_reg[37]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[36]_i_1_n_5 ),
        .Q(integrate_y_reg[38]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[36]_i_1_n_4 ),
        .Q(integrate_y_reg[39]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[0]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[3] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[40]_i_1_n_7 ),
        .Q(integrate_y_reg[40]),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[40]_i_1 
       (.CI(\integrate_y_reg[36]_i_1_n_0 ),
        .CO({\NLW_integrate_y_reg[40]_i_1_CO_UNCONNECTED [3],\integrate_y_reg[40]_i_1_n_1 ,\integrate_y_reg[40]_i_1_n_2 ,\integrate_y_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ad_y[15],ad_y[15],ad_y[15]}),
        .O({\integrate_y_reg[40]_i_1_n_4 ,\integrate_y_reg[40]_i_1_n_5 ,\integrate_y_reg[40]_i_1_n_6 ,\integrate_y_reg[40]_i_1_n_7 }),
        .S({\integrate_y[40]_i_2_n_0 ,\integrate_y[40]_i_3_n_0 ,\integrate_y[40]_i_4_n_0 ,\integrate_y[40]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[40]_i_1_n_6 ),
        .Q(integrate_y_reg[41]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[40]_i_1_n_5 ),
        .Q(integrate_y_reg[42]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[40]_i_1_n_4 ),
        .Q(integrate_y_reg[43]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[4]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[4] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[4]_i_1 
       (.CI(\integrate_y_reg[0]_i_1_n_0 ),
        .CO({\integrate_y_reg[4]_i_1_n_0 ,\integrate_y_reg[4]_i_1_n_1 ,\integrate_y_reg[4]_i_1_n_2 ,\integrate_y_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_y[7:4]),
        .O({\integrate_y_reg[4]_i_1_n_4 ,\integrate_y_reg[4]_i_1_n_5 ,\integrate_y_reg[4]_i_1_n_6 ,\integrate_y_reg[4]_i_1_n_7 }),
        .S({\integrate_y[4]_i_2_n_0 ,\integrate_y[4]_i_3_n_0 ,\integrate_y[4]_i_4_n_0 ,\integrate_y[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[4]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[5] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[4]_i_1_n_5 ),
        .Q(\integrate_y_reg_n_0_[6] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[4]_i_1_n_4 ),
        .Q(\integrate_y_reg_n_0_[7] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[8]_i_1_n_7 ),
        .Q(\integrate_y_reg_n_0_[8] ),
        .R(integrate_z));
  CARRY4 \integrate_y_reg[8]_i_1 
       (.CI(\integrate_y_reg[4]_i_1_n_0 ),
        .CO({\integrate_y_reg[8]_i_1_n_0 ,\integrate_y_reg[8]_i_1_n_1 ,\integrate_y_reg[8]_i_1_n_2 ,\integrate_y_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_y[11:8]),
        .O({\integrate_y_reg[8]_i_1_n_4 ,\integrate_y_reg[8]_i_1_n_5 ,\integrate_y_reg[8]_i_1_n_6 ,\integrate_y_reg[8]_i_1_n_7 }),
        .S({\integrate_y[8]_i_2_n_0 ,\integrate_y[8]_i_3_n_0 ,\integrate_y[8]_i_4_n_0 ,\integrate_y[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_y_reg[8]_i_1_n_6 ),
        .Q(\integrate_y_reg_n_0_[9] ),
        .R(integrate_z));
  LUT2 #(
    .INIT(4'hB)) 
    \integrate_z[0]_i_1 
       (.I0(angle_reset),
        .I1(system_reset),
        .O(integrate_z));
  LUT5 #(
    .INIT(32'h00008000)) 
    \integrate_z[0]_i_2 
       (.I0(calibrate_timer_reg__0[3]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[2]),
        .I3(calibrate_timer_reg__0[0]),
        .I4(\avg_x[15]_i_3_n_0 ),
        .O(\integrate_z[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[0]_i_4 
       (.I0(ad_z[3]),
        .I1(\integrate_z_reg_n_0_[3] ),
        .O(\integrate_z[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[0]_i_5 
       (.I0(ad_z[2]),
        .I1(\integrate_z_reg_n_0_[2] ),
        .O(\integrate_z[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[0]_i_6 
       (.I0(ad_z[1]),
        .I1(\integrate_z_reg_n_0_[1] ),
        .O(\integrate_z[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[0]_i_7 
       (.I0(ad_z[0]),
        .I1(\integrate_z_reg_n_0_[0] ),
        .O(\integrate_z[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[12]_i_2 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[15] ),
        .O(\integrate_z[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[12]_i_3 
       (.I0(ad_z[14]),
        .I1(\integrate_z_reg_n_0_[14] ),
        .O(\integrate_z[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[12]_i_4 
       (.I0(ad_z[13]),
        .I1(\integrate_z_reg_n_0_[13] ),
        .O(\integrate_z[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[12]_i_5 
       (.I0(ad_z[12]),
        .I1(\integrate_z_reg_n_0_[12] ),
        .O(\integrate_z[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[16]_i_2 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[19] ),
        .O(\integrate_z[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[16]_i_3 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[18] ),
        .O(\integrate_z[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[16]_i_4 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[17] ),
        .O(\integrate_z[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[16]_i_5 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[16] ),
        .O(\integrate_z[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[20]_i_2 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[23] ),
        .O(\integrate_z[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[20]_i_3 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[22] ),
        .O(\integrate_z[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[20]_i_4 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[21] ),
        .O(\integrate_z[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[20]_i_5 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[20] ),
        .O(\integrate_z[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[24]_i_2 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[27] ),
        .O(\integrate_z[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[24]_i_3 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[26] ),
        .O(\integrate_z[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[24]_i_4 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[25] ),
        .O(\integrate_z[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[24]_i_5 
       (.I0(ad_z[15]),
        .I1(\integrate_z_reg_n_0_[24] ),
        .O(\integrate_z[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[28]_i_2 
       (.I0(ad_z[15]),
        .I1(D[3]),
        .O(\integrate_z[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[28]_i_3 
       (.I0(ad_z[15]),
        .I1(D[2]),
        .O(\integrate_z[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[28]_i_4 
       (.I0(ad_z[15]),
        .I1(D[1]),
        .O(\integrate_z[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[28]_i_5 
       (.I0(ad_z[15]),
        .I1(D[0]),
        .O(\integrate_z[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[32]_i_2 
       (.I0(ad_z[15]),
        .I1(D[7]),
        .O(\integrate_z[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[32]_i_3 
       (.I0(ad_z[15]),
        .I1(D[6]),
        .O(\integrate_z[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[32]_i_4 
       (.I0(ad_z[15]),
        .I1(D[5]),
        .O(\integrate_z[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[32]_i_5 
       (.I0(ad_z[15]),
        .I1(D[4]),
        .O(\integrate_z[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[36]_i_2 
       (.I0(ad_z[15]),
        .I1(D[11]),
        .O(\integrate_z[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[36]_i_3 
       (.I0(ad_z[15]),
        .I1(D[10]),
        .O(\integrate_z[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[36]_i_4 
       (.I0(ad_z[15]),
        .I1(D[9]),
        .O(\integrate_z[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[36]_i_5 
       (.I0(ad_z[15]),
        .I1(D[8]),
        .O(\integrate_z[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[40]_i_2 
       (.I0(ad_z[15]),
        .I1(D[15]),
        .O(\integrate_z[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[40]_i_3 
       (.I0(ad_z[15]),
        .I1(D[14]),
        .O(\integrate_z[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[40]_i_4 
       (.I0(ad_z[15]),
        .I1(D[13]),
        .O(\integrate_z[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[40]_i_5 
       (.I0(ad_z[15]),
        .I1(D[12]),
        .O(\integrate_z[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[4]_i_2 
       (.I0(ad_z[7]),
        .I1(\integrate_z_reg_n_0_[7] ),
        .O(\integrate_z[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[4]_i_3 
       (.I0(ad_z[6]),
        .I1(\integrate_z_reg_n_0_[6] ),
        .O(\integrate_z[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[4]_i_4 
       (.I0(ad_z[5]),
        .I1(\integrate_z_reg_n_0_[5] ),
        .O(\integrate_z[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[4]_i_5 
       (.I0(ad_z[4]),
        .I1(\integrate_z_reg_n_0_[4] ),
        .O(\integrate_z[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[8]_i_2 
       (.I0(ad_z[11]),
        .I1(\integrate_z_reg_n_0_[11] ),
        .O(\integrate_z[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[8]_i_3 
       (.I0(ad_z[10]),
        .I1(\integrate_z_reg_n_0_[10] ),
        .O(\integrate_z[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[8]_i_4 
       (.I0(ad_z[9]),
        .I1(\integrate_z_reg_n_0_[9] ),
        .O(\integrate_z[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \integrate_z[8]_i_5 
       (.I0(ad_z[8]),
        .I1(\integrate_z_reg_n_0_[8] ),
        .O(\integrate_z[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[0]_i_3_n_7 ),
        .Q(\integrate_z_reg_n_0_[0] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\integrate_z_reg[0]_i_3_n_0 ,\integrate_z_reg[0]_i_3_n_1 ,\integrate_z_reg[0]_i_3_n_2 ,\integrate_z_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_z[3:0]),
        .O({\integrate_z_reg[0]_i_3_n_4 ,\integrate_z_reg[0]_i_3_n_5 ,\integrate_z_reg[0]_i_3_n_6 ,\integrate_z_reg[0]_i_3_n_7 }),
        .S({\integrate_z[0]_i_4_n_0 ,\integrate_z[0]_i_5_n_0 ,\integrate_z[0]_i_6_n_0 ,\integrate_z[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[8]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[10] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[8]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[11] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[12]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[12] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[12]_i_1 
       (.CI(\integrate_z_reg[8]_i_1_n_0 ),
        .CO({\integrate_z_reg[12]_i_1_n_0 ,\integrate_z_reg[12]_i_1_n_1 ,\integrate_z_reg[12]_i_1_n_2 ,\integrate_z_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_z[15:12]),
        .O({\integrate_z_reg[12]_i_1_n_4 ,\integrate_z_reg[12]_i_1_n_5 ,\integrate_z_reg[12]_i_1_n_6 ,\integrate_z_reg[12]_i_1_n_7 }),
        .S({\integrate_z[12]_i_2_n_0 ,\integrate_z[12]_i_3_n_0 ,\integrate_z[12]_i_4_n_0 ,\integrate_z[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[12]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[13] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[12]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[14] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[12]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[15] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[16]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[16] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[16]_i_1 
       (.CI(\integrate_z_reg[12]_i_1_n_0 ),
        .CO({\integrate_z_reg[16]_i_1_n_0 ,\integrate_z_reg[16]_i_1_n_1 ,\integrate_z_reg[16]_i_1_n_2 ,\integrate_z_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[16]_i_1_n_4 ,\integrate_z_reg[16]_i_1_n_5 ,\integrate_z_reg[16]_i_1_n_6 ,\integrate_z_reg[16]_i_1_n_7 }),
        .S({\integrate_z[16]_i_2_n_0 ,\integrate_z[16]_i_3_n_0 ,\integrate_z[16]_i_4_n_0 ,\integrate_z[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[16]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[17] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[16]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[18] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[16]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[19] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[0]_i_3_n_6 ),
        .Q(\integrate_z_reg_n_0_[1] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[20]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[20] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[20]_i_1 
       (.CI(\integrate_z_reg[16]_i_1_n_0 ),
        .CO({\integrate_z_reg[20]_i_1_n_0 ,\integrate_z_reg[20]_i_1_n_1 ,\integrate_z_reg[20]_i_1_n_2 ,\integrate_z_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[20]_i_1_n_4 ,\integrate_z_reg[20]_i_1_n_5 ,\integrate_z_reg[20]_i_1_n_6 ,\integrate_z_reg[20]_i_1_n_7 }),
        .S({\integrate_z[20]_i_2_n_0 ,\integrate_z[20]_i_3_n_0 ,\integrate_z[20]_i_4_n_0 ,\integrate_z[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[20]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[21] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[20]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[22] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[20]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[23] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[24]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[24] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[24]_i_1 
       (.CI(\integrate_z_reg[20]_i_1_n_0 ),
        .CO({\integrate_z_reg[24]_i_1_n_0 ,\integrate_z_reg[24]_i_1_n_1 ,\integrate_z_reg[24]_i_1_n_2 ,\integrate_z_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[24]_i_1_n_4 ,\integrate_z_reg[24]_i_1_n_5 ,\integrate_z_reg[24]_i_1_n_6 ,\integrate_z_reg[24]_i_1_n_7 }),
        .S({\integrate_z[24]_i_2_n_0 ,\integrate_z[24]_i_3_n_0 ,\integrate_z[24]_i_4_n_0 ,\integrate_z[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[24]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[25] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[24]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[26] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[24]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[27] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[28]_i_1_n_7 ),
        .Q(D[0]),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[28]_i_1 
       (.CI(\integrate_z_reg[24]_i_1_n_0 ),
        .CO({\integrate_z_reg[28]_i_1_n_0 ,\integrate_z_reg[28]_i_1_n_1 ,\integrate_z_reg[28]_i_1_n_2 ,\integrate_z_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[28]_i_1_n_4 ,\integrate_z_reg[28]_i_1_n_5 ,\integrate_z_reg[28]_i_1_n_6 ,\integrate_z_reg[28]_i_1_n_7 }),
        .S({\integrate_z[28]_i_2_n_0 ,\integrate_z[28]_i_3_n_0 ,\integrate_z[28]_i_4_n_0 ,\integrate_z[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[28]_i_1_n_6 ),
        .Q(D[1]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[0]_i_3_n_5 ),
        .Q(\integrate_z_reg_n_0_[2] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[28]_i_1_n_5 ),
        .Q(D[2]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[28]_i_1_n_4 ),
        .Q(D[3]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[32]_i_1_n_7 ),
        .Q(D[4]),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[32]_i_1 
       (.CI(\integrate_z_reg[28]_i_1_n_0 ),
        .CO({\integrate_z_reg[32]_i_1_n_0 ,\integrate_z_reg[32]_i_1_n_1 ,\integrate_z_reg[32]_i_1_n_2 ,\integrate_z_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[32]_i_1_n_4 ,\integrate_z_reg[32]_i_1_n_5 ,\integrate_z_reg[32]_i_1_n_6 ,\integrate_z_reg[32]_i_1_n_7 }),
        .S({\integrate_z[32]_i_2_n_0 ,\integrate_z[32]_i_3_n_0 ,\integrate_z[32]_i_4_n_0 ,\integrate_z[32]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[32]_i_1_n_6 ),
        .Q(D[5]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[32]_i_1_n_5 ),
        .Q(D[6]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[32]_i_1_n_4 ),
        .Q(D[7]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[36]_i_1_n_7 ),
        .Q(D[8]),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[36]_i_1 
       (.CI(\integrate_z_reg[32]_i_1_n_0 ),
        .CO({\integrate_z_reg[36]_i_1_n_0 ,\integrate_z_reg[36]_i_1_n_1 ,\integrate_z_reg[36]_i_1_n_2 ,\integrate_z_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ad_z[15],ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[36]_i_1_n_4 ,\integrate_z_reg[36]_i_1_n_5 ,\integrate_z_reg[36]_i_1_n_6 ,\integrate_z_reg[36]_i_1_n_7 }),
        .S({\integrate_z[36]_i_2_n_0 ,\integrate_z[36]_i_3_n_0 ,\integrate_z[36]_i_4_n_0 ,\integrate_z[36]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[36]_i_1_n_6 ),
        .Q(D[9]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[36]_i_1_n_5 ),
        .Q(D[10]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[36]_i_1_n_4 ),
        .Q(D[11]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[0]_i_3_n_4 ),
        .Q(\integrate_z_reg_n_0_[3] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[40]_i_1_n_7 ),
        .Q(D[12]),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[40]_i_1 
       (.CI(\integrate_z_reg[36]_i_1_n_0 ),
        .CO({\NLW_integrate_z_reg[40]_i_1_CO_UNCONNECTED [3],\integrate_z_reg[40]_i_1_n_1 ,\integrate_z_reg[40]_i_1_n_2 ,\integrate_z_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ad_z[15],ad_z[15],ad_z[15]}),
        .O({\integrate_z_reg[40]_i_1_n_4 ,\integrate_z_reg[40]_i_1_n_5 ,\integrate_z_reg[40]_i_1_n_6 ,\integrate_z_reg[40]_i_1_n_7 }),
        .S({\integrate_z[40]_i_2_n_0 ,\integrate_z[40]_i_3_n_0 ,\integrate_z[40]_i_4_n_0 ,\integrate_z[40]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[40]_i_1_n_6 ),
        .Q(D[13]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[40]_i_1_n_5 ),
        .Q(D[14]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[40]_i_1_n_4 ),
        .Q(D[15]),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[4]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[4] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[4]_i_1 
       (.CI(\integrate_z_reg[0]_i_3_n_0 ),
        .CO({\integrate_z_reg[4]_i_1_n_0 ,\integrate_z_reg[4]_i_1_n_1 ,\integrate_z_reg[4]_i_1_n_2 ,\integrate_z_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_z[7:4]),
        .O({\integrate_z_reg[4]_i_1_n_4 ,\integrate_z_reg[4]_i_1_n_5 ,\integrate_z_reg[4]_i_1_n_6 ,\integrate_z_reg[4]_i_1_n_7 }),
        .S({\integrate_z[4]_i_2_n_0 ,\integrate_z[4]_i_3_n_0 ,\integrate_z[4]_i_4_n_0 ,\integrate_z[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[4]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[5] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[4]_i_1_n_5 ),
        .Q(\integrate_z_reg_n_0_[6] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[4]_i_1_n_4 ),
        .Q(\integrate_z_reg_n_0_[7] ),
        .R(integrate_z));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[8]_i_1_n_7 ),
        .Q(\integrate_z_reg_n_0_[8] ),
        .R(integrate_z));
  CARRY4 \integrate_z_reg[8]_i_1 
       (.CI(\integrate_z_reg[4]_i_1_n_0 ),
        .CO({\integrate_z_reg[8]_i_1_n_0 ,\integrate_z_reg[8]_i_1_n_1 ,\integrate_z_reg[8]_i_1_n_2 ,\integrate_z_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ad_z[11:8]),
        .O({\integrate_z_reg[8]_i_1_n_4 ,\integrate_z_reg[8]_i_1_n_5 ,\integrate_z_reg[8]_i_1_n_6 ,\integrate_z_reg[8]_i_1_n_7 }),
        .S({\integrate_z[8]_i_2_n_0 ,\integrate_z[8]_i_3_n_0 ,\integrate_z[8]_i_4_n_0 ,\integrate_z[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integrate_z_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\integrate_z[0]_i_2_n_0 ),
        .D(\integrate_z_reg[8]_i_1_n_6 ),
        .Q(\integrate_z_reg_n_0_[9] ),
        .R(integrate_z));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[0]_i_1 
       (.I0(integrate_x_reg[28]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[0]),
        .O(\integrate_x_reg[43]_0 [0]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[10]_i_1 
       (.I0(integrate_x_reg[38]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[10]),
        .O(\integrate_x_reg[43]_0 [10]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[11]_i_1 
       (.I0(integrate_x_reg[39]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[11]),
        .O(\integrate_x_reg[43]_0 [11]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[12]_i_1 
       (.I0(integrate_x_reg[40]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[12]),
        .O(\integrate_x_reg[43]_0 [12]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[13]_i_1 
       (.I0(integrate_x_reg[41]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[13]),
        .O(\integrate_x_reg[43]_0 [13]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[14]_i_1 
       (.I0(integrate_x_reg[42]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[14]),
        .O(\integrate_x_reg[43]_0 [14]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[15]_i_2 
       (.I0(integrate_x_reg[43]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[15]),
        .O(\integrate_x_reg[43]_0 [15]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[1]_i_1 
       (.I0(integrate_x_reg[29]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[1]),
        .O(\integrate_x_reg[43]_0 [1]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[2]_i_1 
       (.I0(integrate_x_reg[30]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[2]),
        .O(\integrate_x_reg[43]_0 [2]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[3]_i_1 
       (.I0(integrate_x_reg[31]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[3]),
        .O(\integrate_x_reg[43]_0 [3]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[4]_i_1 
       (.I0(integrate_x_reg[32]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[4]),
        .O(\integrate_x_reg[43]_0 [4]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[5]_i_1 
       (.I0(integrate_x_reg[33]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[5]),
        .O(\integrate_x_reg[43]_0 [5]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[6]_i_1 
       (.I0(integrate_x_reg[34]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[6]),
        .O(\integrate_x_reg[43]_0 [6]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[7]_i_2 
       (.I0(integrate_x_reg[35]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[7]),
        .O(\integrate_x_reg[43]_0 [7]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[8]_i_1 
       (.I0(integrate_x_reg[36]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[8]),
        .O(\integrate_x_reg[43]_0 [8]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[9]_i_1 
       (.I0(integrate_x_reg[37]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[9]),
        .O(\integrate_x_reg[43]_0 [9]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[0]_i_1 
       (.I0(integrate_y_reg[28]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[0]),
        .O(\integrate_y_reg[43]_0 [0]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[10]_i_1 
       (.I0(integrate_y_reg[38]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[10]),
        .O(\integrate_y_reg[43]_0 [10]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[11]_i_1 
       (.I0(integrate_y_reg[39]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[11]),
        .O(\integrate_y_reg[43]_0 [11]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[12]_i_1 
       (.I0(integrate_y_reg[40]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[12]),
        .O(\integrate_y_reg[43]_0 [12]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[13]_i_1 
       (.I0(integrate_y_reg[41]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[13]),
        .O(\integrate_y_reg[43]_0 [13]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[14]_i_1 
       (.I0(integrate_y_reg[42]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[14]),
        .O(\integrate_y_reg[43]_0 [14]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[15]_i_2 
       (.I0(integrate_y_reg[43]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[15]),
        .O(\integrate_y_reg[43]_0 [15]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[1]_i_1 
       (.I0(integrate_y_reg[29]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[1]),
        .O(\integrate_y_reg[43]_0 [1]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[2]_i_1 
       (.I0(integrate_y_reg[30]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[2]),
        .O(\integrate_y_reg[43]_0 [2]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[3]_i_1 
       (.I0(integrate_y_reg[31]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[3]),
        .O(\integrate_y_reg[43]_0 [3]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[4]_i_1 
       (.I0(integrate_y_reg[32]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[4]),
        .O(\integrate_y_reg[43]_0 [4]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[5]_i_1 
       (.I0(integrate_y_reg[33]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[5]),
        .O(\integrate_y_reg[43]_0 [5]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[6]_i_1 
       (.I0(integrate_y_reg[34]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[6]),
        .O(\integrate_y_reg[43]_0 [6]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[7]_i_2 
       (.I0(integrate_y_reg[35]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[7]),
        .O(\integrate_y_reg[43]_0 [7]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[8]_i_1 
       (.I0(integrate_y_reg[36]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[8]),
        .O(\integrate_y_reg[43]_0 [8]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg2[9]_i_1 
       (.I0(integrate_y_reg[37]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[9]),
        .O(\integrate_y_reg[43]_0 [9]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[0]_i_1 
       (.I0(D[0]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[0]),
        .O(\integrate_z_reg[43]_0 [0]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[10]_i_1 
       (.I0(D[10]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[10]),
        .O(\integrate_z_reg[43]_0 [10]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[11]_i_1 
       (.I0(D[11]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[11]),
        .O(\integrate_z_reg[43]_0 [11]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[12]_i_1 
       (.I0(D[12]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[12]),
        .O(\integrate_z_reg[43]_0 [12]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[13]_i_1 
       (.I0(D[13]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[13]),
        .O(\integrate_z_reg[43]_0 [13]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[14]_i_1 
       (.I0(D[14]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[14]),
        .O(\integrate_z_reg[43]_0 [14]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[15]_i_2 
       (.I0(D[15]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[15]),
        .O(\integrate_z_reg[43]_0 [15]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[1]_i_1 
       (.I0(D[1]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[1]),
        .O(\integrate_z_reg[43]_0 [1]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[2]_i_1 
       (.I0(D[2]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[2]),
        .O(\integrate_z_reg[43]_0 [2]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[3]_i_1 
       (.I0(D[3]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[3]),
        .O(\integrate_z_reg[43]_0 [3]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[4]_i_1 
       (.I0(D[4]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[4]),
        .O(\integrate_z_reg[43]_0 [4]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[5]_i_1 
       (.I0(D[5]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[5]),
        .O(\integrate_z_reg[43]_0 [5]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[6]_i_1 
       (.I0(D[6]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[6]),
        .O(\integrate_z_reg[43]_0 [6]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[7]_i_2 
       (.I0(D[7]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[7]),
        .O(\integrate_z_reg[43]_0 [7]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[8]_i_1 
       (.I0(D[8]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[8]),
        .O(\integrate_z_reg[43]_0 [8]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg3[9]_i_1 
       (.I0(D[9]),
        .I1(\slv_reg1_reg[0] ),
        .I2(\slv_reg1_reg[0]_0 ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wdata[9]),
        .O(\integrate_z_reg[43]_0 [9]));
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    \sum_x[0]_i_1 
       (.I0(calibrate_timer_reg__0[2]),
        .I1(calibrate_timer_reg__0[1]),
        .I2(calibrate_timer_reg__0[3]),
        .I3(\avg_x[15]_i_3_n_0 ),
        .I4(angle_reset),
        .O(sum_x));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[0]_i_3 
       (.I0(angular_rate_x[3]),
        .I1(\sum_x_reg_n_0_[3] ),
        .O(\sum_x[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[0]_i_4 
       (.I0(angular_rate_x[2]),
        .I1(\sum_x_reg_n_0_[2] ),
        .O(\sum_x[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[0]_i_5 
       (.I0(angular_rate_x[1]),
        .I1(\sum_x_reg_n_0_[1] ),
        .O(\sum_x[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[0]_i_6 
       (.I0(angular_rate_x[0]),
        .I1(\sum_x_reg_n_0_[0] ),
        .O(\sum_x[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[12]_i_2 
       (.I0(angular_rate_x[15]),
        .I1(p_1_in[7]),
        .O(\sum_x[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[12]_i_3 
       (.I0(angular_rate_x[14]),
        .I1(p_1_in[6]),
        .O(\sum_x[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[12]_i_4 
       (.I0(angular_rate_x[13]),
        .I1(p_1_in[5]),
        .O(\sum_x[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[12]_i_5 
       (.I0(angular_rate_x[12]),
        .I1(p_1_in[4]),
        .O(\sum_x[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[4]_i_2 
       (.I0(angular_rate_x[7]),
        .I1(\sum_x_reg_n_0_[7] ),
        .O(\sum_x[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[4]_i_3 
       (.I0(angular_rate_x[6]),
        .I1(\sum_x_reg_n_0_[6] ),
        .O(\sum_x[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[4]_i_4 
       (.I0(angular_rate_x[5]),
        .I1(\sum_x_reg_n_0_[5] ),
        .O(\sum_x[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[4]_i_5 
       (.I0(angular_rate_x[4]),
        .I1(\sum_x_reg_n_0_[4] ),
        .O(\sum_x[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[8]_i_2 
       (.I0(angular_rate_x[11]),
        .I1(p_1_in[3]),
        .O(\sum_x[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[8]_i_3 
       (.I0(angular_rate_x[10]),
        .I1(p_1_in[2]),
        .O(\sum_x[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[8]_i_4 
       (.I0(angular_rate_x[9]),
        .I1(p_1_in[1]),
        .O(\sum_x[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_x[8]_i_5 
       (.I0(angular_rate_x[8]),
        .I1(p_1_in[0]),
        .O(\sum_x[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[0]_i_2_n_7 ),
        .Q(\sum_x_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \sum_x_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sum_x_reg[0]_i_2_n_0 ,\sum_x_reg[0]_i_2_n_1 ,\sum_x_reg[0]_i_2_n_2 ,\sum_x_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_x[3:0]),
        .O({\sum_x_reg[0]_i_2_n_4 ,\sum_x_reg[0]_i_2_n_5 ,\sum_x_reg[0]_i_2_n_6 ,\sum_x_reg[0]_i_2_n_7 }),
        .S({\sum_x[0]_i_3_n_0 ,\sum_x[0]_i_4_n_0 ,\sum_x[0]_i_5_n_0 ,\sum_x[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[8]_i_1_n_5 ),
        .Q(p_1_in[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[8]_i_1_n_4 ),
        .Q(p_1_in[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[12]_i_1_n_7 ),
        .Q(p_1_in[4]),
        .R(clear));
  CARRY4 \sum_x_reg[12]_i_1 
       (.CI(\sum_x_reg[8]_i_1_n_0 ),
        .CO({\sum_x_reg[12]_i_1_n_0 ,\sum_x_reg[12]_i_1_n_1 ,\sum_x_reg[12]_i_1_n_2 ,\sum_x_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_x[15:12]),
        .O({\sum_x_reg[12]_i_1_n_4 ,\sum_x_reg[12]_i_1_n_5 ,\sum_x_reg[12]_i_1_n_6 ,\sum_x_reg[12]_i_1_n_7 }),
        .S({\sum_x[12]_i_2_n_0 ,\sum_x[12]_i_3_n_0 ,\sum_x[12]_i_4_n_0 ,\sum_x[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[12]_i_1_n_6 ),
        .Q(p_1_in[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[12]_i_1_n_5 ),
        .Q(p_1_in[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[12]_i_1_n_4 ),
        .Q(p_1_in[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[16]_i_1_n_7 ),
        .Q(p_1_in[8]),
        .R(clear));
  CARRY4 \sum_x_reg[16]_i_1 
       (.CI(\sum_x_reg[12]_i_1_n_0 ),
        .CO({\sum_x_reg[16]_i_1_n_0 ,\sum_x_reg[16]_i_1_n_1 ,\sum_x_reg[16]_i_1_n_2 ,\sum_x_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_x_reg[16]_i_1_n_4 ,\sum_x_reg[16]_i_1_n_5 ,\sum_x_reg[16]_i_1_n_6 ,\sum_x_reg[16]_i_1_n_7 }),
        .S(p_1_in[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[16]_i_1_n_6 ),
        .Q(p_1_in[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[16]_i_1_n_5 ),
        .Q(p_1_in[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[16]_i_1_n_4 ),
        .Q(p_1_in[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[0]_i_2_n_6 ),
        .Q(\sum_x_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[20]_i_1_n_7 ),
        .Q(p_1_in[12]),
        .R(clear));
  CARRY4 \sum_x_reg[20]_i_1 
       (.CI(\sum_x_reg[16]_i_1_n_0 ),
        .CO({\NLW_sum_x_reg[20]_i_1_CO_UNCONNECTED [3],\sum_x_reg[20]_i_1_n_1 ,\sum_x_reg[20]_i_1_n_2 ,\sum_x_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_x_reg[20]_i_1_n_4 ,\sum_x_reg[20]_i_1_n_5 ,\sum_x_reg[20]_i_1_n_6 ,\sum_x_reg[20]_i_1_n_7 }),
        .S(p_1_in[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[20]_i_1_n_6 ),
        .Q(p_1_in[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[20]_i_1_n_5 ),
        .Q(p_1_in[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[20]_i_1_n_4 ),
        .Q(p_1_in[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[0]_i_2_n_5 ),
        .Q(\sum_x_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[0]_i_2_n_4 ),
        .Q(\sum_x_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[4]_i_1_n_7 ),
        .Q(\sum_x_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \sum_x_reg[4]_i_1 
       (.CI(\sum_x_reg[0]_i_2_n_0 ),
        .CO({\sum_x_reg[4]_i_1_n_0 ,\sum_x_reg[4]_i_1_n_1 ,\sum_x_reg[4]_i_1_n_2 ,\sum_x_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_x[7:4]),
        .O({\sum_x_reg[4]_i_1_n_4 ,\sum_x_reg[4]_i_1_n_5 ,\sum_x_reg[4]_i_1_n_6 ,\sum_x_reg[4]_i_1_n_7 }),
        .S({\sum_x[4]_i_2_n_0 ,\sum_x[4]_i_3_n_0 ,\sum_x[4]_i_4_n_0 ,\sum_x[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[4]_i_1_n_6 ),
        .Q(\sum_x_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[4]_i_1_n_5 ),
        .Q(\sum_x_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[4]_i_1_n_4 ),
        .Q(\sum_x_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[8]_i_1_n_7 ),
        .Q(p_1_in[0]),
        .R(clear));
  CARRY4 \sum_x_reg[8]_i_1 
       (.CI(\sum_x_reg[4]_i_1_n_0 ),
        .CO({\sum_x_reg[8]_i_1_n_0 ,\sum_x_reg[8]_i_1_n_1 ,\sum_x_reg[8]_i_1_n_2 ,\sum_x_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_x[11:8]),
        .O({\sum_x_reg[8]_i_1_n_4 ,\sum_x_reg[8]_i_1_n_5 ,\sum_x_reg[8]_i_1_n_6 ,\sum_x_reg[8]_i_1_n_7 }),
        .S({\sum_x[8]_i_2_n_0 ,\sum_x[8]_i_3_n_0 ,\sum_x[8]_i_4_n_0 ,\sum_x[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_x_reg[8]_i_1_n_6 ),
        .Q(p_1_in[1]),
        .R(clear));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[0]_i_2 
       (.I0(angular_rate_y[3]),
        .I1(\sum_y_reg_n_0_[3] ),
        .O(\sum_y[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[0]_i_3 
       (.I0(angular_rate_y[2]),
        .I1(\sum_y_reg_n_0_[2] ),
        .O(\sum_y[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[0]_i_4 
       (.I0(angular_rate_y[1]),
        .I1(\sum_y_reg_n_0_[1] ),
        .O(\sum_y[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[0]_i_5 
       (.I0(angular_rate_y[0]),
        .I1(\sum_y_reg_n_0_[0] ),
        .O(\sum_y[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[12]_i_2 
       (.I0(angular_rate_y[15]),
        .I1(sum_y_reg[15]),
        .O(\sum_y[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[12]_i_3 
       (.I0(angular_rate_y[14]),
        .I1(sum_y_reg[14]),
        .O(\sum_y[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[12]_i_4 
       (.I0(angular_rate_y[13]),
        .I1(sum_y_reg[13]),
        .O(\sum_y[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[12]_i_5 
       (.I0(angular_rate_y[12]),
        .I1(sum_y_reg[12]),
        .O(\sum_y[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[4]_i_2 
       (.I0(angular_rate_y[7]),
        .I1(\sum_y_reg_n_0_[7] ),
        .O(\sum_y[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[4]_i_3 
       (.I0(angular_rate_y[6]),
        .I1(\sum_y_reg_n_0_[6] ),
        .O(\sum_y[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[4]_i_4 
       (.I0(angular_rate_y[5]),
        .I1(\sum_y_reg_n_0_[5] ),
        .O(\sum_y[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[4]_i_5 
       (.I0(angular_rate_y[4]),
        .I1(\sum_y_reg_n_0_[4] ),
        .O(\sum_y[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[8]_i_2 
       (.I0(angular_rate_y[11]),
        .I1(sum_y_reg[11]),
        .O(\sum_y[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[8]_i_3 
       (.I0(angular_rate_y[10]),
        .I1(sum_y_reg[10]),
        .O(\sum_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[8]_i_4 
       (.I0(angular_rate_y[9]),
        .I1(sum_y_reg[9]),
        .O(\sum_y[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_y[8]_i_5 
       (.I0(angular_rate_y[8]),
        .I1(sum_y_reg[8]),
        .O(\sum_y[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[0]_i_1_n_7 ),
        .Q(\sum_y_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \sum_y_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_y_reg[0]_i_1_n_0 ,\sum_y_reg[0]_i_1_n_1 ,\sum_y_reg[0]_i_1_n_2 ,\sum_y_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_y[3:0]),
        .O({\sum_y_reg[0]_i_1_n_4 ,\sum_y_reg[0]_i_1_n_5 ,\sum_y_reg[0]_i_1_n_6 ,\sum_y_reg[0]_i_1_n_7 }),
        .S({\sum_y[0]_i_2_n_0 ,\sum_y[0]_i_3_n_0 ,\sum_y[0]_i_4_n_0 ,\sum_y[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[8]_i_1_n_5 ),
        .Q(sum_y_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[8]_i_1_n_4 ),
        .Q(sum_y_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[12]_i_1_n_7 ),
        .Q(sum_y_reg[12]),
        .R(clear));
  CARRY4 \sum_y_reg[12]_i_1 
       (.CI(\sum_y_reg[8]_i_1_n_0 ),
        .CO({\sum_y_reg[12]_i_1_n_0 ,\sum_y_reg[12]_i_1_n_1 ,\sum_y_reg[12]_i_1_n_2 ,\sum_y_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_y[15:12]),
        .O({\sum_y_reg[12]_i_1_n_4 ,\sum_y_reg[12]_i_1_n_5 ,\sum_y_reg[12]_i_1_n_6 ,\sum_y_reg[12]_i_1_n_7 }),
        .S({\sum_y[12]_i_2_n_0 ,\sum_y[12]_i_3_n_0 ,\sum_y[12]_i_4_n_0 ,\sum_y[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[12]_i_1_n_6 ),
        .Q(sum_y_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[12]_i_1_n_5 ),
        .Q(sum_y_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[12]_i_1_n_4 ),
        .Q(sum_y_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[16]_i_1_n_7 ),
        .Q(sum_y_reg[16]),
        .R(clear));
  CARRY4 \sum_y_reg[16]_i_1 
       (.CI(\sum_y_reg[12]_i_1_n_0 ),
        .CO({\sum_y_reg[16]_i_1_n_0 ,\sum_y_reg[16]_i_1_n_1 ,\sum_y_reg[16]_i_1_n_2 ,\sum_y_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_y_reg[16]_i_1_n_4 ,\sum_y_reg[16]_i_1_n_5 ,\sum_y_reg[16]_i_1_n_6 ,\sum_y_reg[16]_i_1_n_7 }),
        .S(sum_y_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[16]_i_1_n_6 ),
        .Q(sum_y_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[16]_i_1_n_5 ),
        .Q(sum_y_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[16]_i_1_n_4 ),
        .Q(sum_y_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[0]_i_1_n_6 ),
        .Q(\sum_y_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[20]_i_1_n_7 ),
        .Q(sum_y_reg[20]),
        .R(clear));
  CARRY4 \sum_y_reg[20]_i_1 
       (.CI(\sum_y_reg[16]_i_1_n_0 ),
        .CO({\NLW_sum_y_reg[20]_i_1_CO_UNCONNECTED [3],\sum_y_reg[20]_i_1_n_1 ,\sum_y_reg[20]_i_1_n_2 ,\sum_y_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_y_reg[20]_i_1_n_4 ,\sum_y_reg[20]_i_1_n_5 ,\sum_y_reg[20]_i_1_n_6 ,\sum_y_reg[20]_i_1_n_7 }),
        .S(sum_y_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[20]_i_1_n_6 ),
        .Q(sum_y_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[20]_i_1_n_5 ),
        .Q(sum_y_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[20]_i_1_n_4 ),
        .Q(sum_y_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[0]_i_1_n_5 ),
        .Q(\sum_y_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[0]_i_1_n_4 ),
        .Q(\sum_y_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[4]_i_1_n_7 ),
        .Q(\sum_y_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \sum_y_reg[4]_i_1 
       (.CI(\sum_y_reg[0]_i_1_n_0 ),
        .CO({\sum_y_reg[4]_i_1_n_0 ,\sum_y_reg[4]_i_1_n_1 ,\sum_y_reg[4]_i_1_n_2 ,\sum_y_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_y[7:4]),
        .O({\sum_y_reg[4]_i_1_n_4 ,\sum_y_reg[4]_i_1_n_5 ,\sum_y_reg[4]_i_1_n_6 ,\sum_y_reg[4]_i_1_n_7 }),
        .S({\sum_y[4]_i_2_n_0 ,\sum_y[4]_i_3_n_0 ,\sum_y[4]_i_4_n_0 ,\sum_y[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[4]_i_1_n_6 ),
        .Q(\sum_y_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[4]_i_1_n_5 ),
        .Q(\sum_y_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[4]_i_1_n_4 ),
        .Q(\sum_y_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[8]_i_1_n_7 ),
        .Q(sum_y_reg[8]),
        .R(clear));
  CARRY4 \sum_y_reg[8]_i_1 
       (.CI(\sum_y_reg[4]_i_1_n_0 ),
        .CO({\sum_y_reg[8]_i_1_n_0 ,\sum_y_reg[8]_i_1_n_1 ,\sum_y_reg[8]_i_1_n_2 ,\sum_y_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_y[11:8]),
        .O({\sum_y_reg[8]_i_1_n_4 ,\sum_y_reg[8]_i_1_n_5 ,\sum_y_reg[8]_i_1_n_6 ,\sum_y_reg[8]_i_1_n_7 }),
        .S({\sum_y[8]_i_2_n_0 ,\sum_y[8]_i_3_n_0 ,\sum_y[8]_i_4_n_0 ,\sum_y[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_y_reg[8]_i_1_n_6 ),
        .Q(sum_y_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[0]_i_2 
       (.I0(angular_rate_z[3]),
        .I1(\sum_z_reg_n_0_[3] ),
        .O(\sum_z[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[0]_i_3 
       (.I0(angular_rate_z[2]),
        .I1(\sum_z_reg_n_0_[2] ),
        .O(\sum_z[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[0]_i_4 
       (.I0(angular_rate_z[1]),
        .I1(\sum_z_reg_n_0_[1] ),
        .O(\sum_z[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[0]_i_5 
       (.I0(angular_rate_z[0]),
        .I1(\sum_z_reg_n_0_[0] ),
        .O(\sum_z[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[12]_i_2 
       (.I0(angular_rate_z[15]),
        .I1(sum_z_reg[15]),
        .O(\sum_z[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[12]_i_3 
       (.I0(angular_rate_z[14]),
        .I1(sum_z_reg[14]),
        .O(\sum_z[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[12]_i_4 
       (.I0(angular_rate_z[13]),
        .I1(sum_z_reg[13]),
        .O(\sum_z[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[12]_i_5 
       (.I0(angular_rate_z[12]),
        .I1(sum_z_reg[12]),
        .O(\sum_z[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[4]_i_2 
       (.I0(angular_rate_z[7]),
        .I1(\sum_z_reg_n_0_[7] ),
        .O(\sum_z[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[4]_i_3 
       (.I0(angular_rate_z[6]),
        .I1(\sum_z_reg_n_0_[6] ),
        .O(\sum_z[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[4]_i_4 
       (.I0(angular_rate_z[5]),
        .I1(\sum_z_reg_n_0_[5] ),
        .O(\sum_z[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[4]_i_5 
       (.I0(angular_rate_z[4]),
        .I1(\sum_z_reg_n_0_[4] ),
        .O(\sum_z[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[8]_i_2 
       (.I0(angular_rate_z[11]),
        .I1(sum_z_reg[11]),
        .O(\sum_z[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[8]_i_3 
       (.I0(angular_rate_z[10]),
        .I1(sum_z_reg[10]),
        .O(\sum_z[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[8]_i_4 
       (.I0(angular_rate_z[9]),
        .I1(sum_z_reg[9]),
        .O(\sum_z[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_z[8]_i_5 
       (.I0(angular_rate_z[8]),
        .I1(sum_z_reg[8]),
        .O(\sum_z[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[0]_i_1_n_7 ),
        .Q(\sum_z_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \sum_z_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_z_reg[0]_i_1_n_0 ,\sum_z_reg[0]_i_1_n_1 ,\sum_z_reg[0]_i_1_n_2 ,\sum_z_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_z[3:0]),
        .O({\sum_z_reg[0]_i_1_n_4 ,\sum_z_reg[0]_i_1_n_5 ,\sum_z_reg[0]_i_1_n_6 ,\sum_z_reg[0]_i_1_n_7 }),
        .S({\sum_z[0]_i_2_n_0 ,\sum_z[0]_i_3_n_0 ,\sum_z[0]_i_4_n_0 ,\sum_z[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[8]_i_1_n_5 ),
        .Q(sum_z_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[8]_i_1_n_4 ),
        .Q(sum_z_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[12]_i_1_n_7 ),
        .Q(sum_z_reg[12]),
        .R(clear));
  CARRY4 \sum_z_reg[12]_i_1 
       (.CI(\sum_z_reg[8]_i_1_n_0 ),
        .CO({\sum_z_reg[12]_i_1_n_0 ,\sum_z_reg[12]_i_1_n_1 ,\sum_z_reg[12]_i_1_n_2 ,\sum_z_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_z[15:12]),
        .O({\sum_z_reg[12]_i_1_n_4 ,\sum_z_reg[12]_i_1_n_5 ,\sum_z_reg[12]_i_1_n_6 ,\sum_z_reg[12]_i_1_n_7 }),
        .S({\sum_z[12]_i_2_n_0 ,\sum_z[12]_i_3_n_0 ,\sum_z[12]_i_4_n_0 ,\sum_z[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[12]_i_1_n_6 ),
        .Q(sum_z_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[12]_i_1_n_5 ),
        .Q(sum_z_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[12]_i_1_n_4 ),
        .Q(sum_z_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[16]_i_1_n_7 ),
        .Q(sum_z_reg[16]),
        .R(clear));
  CARRY4 \sum_z_reg[16]_i_1 
       (.CI(\sum_z_reg[12]_i_1_n_0 ),
        .CO({\sum_z_reg[16]_i_1_n_0 ,\sum_z_reg[16]_i_1_n_1 ,\sum_z_reg[16]_i_1_n_2 ,\sum_z_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_z_reg[16]_i_1_n_4 ,\sum_z_reg[16]_i_1_n_5 ,\sum_z_reg[16]_i_1_n_6 ,\sum_z_reg[16]_i_1_n_7 }),
        .S(sum_z_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[16]_i_1_n_6 ),
        .Q(sum_z_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[16]_i_1_n_5 ),
        .Q(sum_z_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[16]_i_1_n_4 ),
        .Q(sum_z_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[0]_i_1_n_6 ),
        .Q(\sum_z_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[20]_i_1_n_7 ),
        .Q(sum_z_reg[20]),
        .R(clear));
  CARRY4 \sum_z_reg[20]_i_1 
       (.CI(\sum_z_reg[16]_i_1_n_0 ),
        .CO({\NLW_sum_z_reg[20]_i_1_CO_UNCONNECTED [3],\sum_z_reg[20]_i_1_n_1 ,\sum_z_reg[20]_i_1_n_2 ,\sum_z_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_z_reg[20]_i_1_n_4 ,\sum_z_reg[20]_i_1_n_5 ,\sum_z_reg[20]_i_1_n_6 ,\sum_z_reg[20]_i_1_n_7 }),
        .S(sum_z_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[20]_i_1_n_6 ),
        .Q(sum_z_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[20]_i_1_n_5 ),
        .Q(sum_z_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[20]_i_1_n_4 ),
        .Q(sum_z_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[0]_i_1_n_5 ),
        .Q(\sum_z_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[0]_i_1_n_4 ),
        .Q(\sum_z_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[4]_i_1_n_7 ),
        .Q(\sum_z_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \sum_z_reg[4]_i_1 
       (.CI(\sum_z_reg[0]_i_1_n_0 ),
        .CO({\sum_z_reg[4]_i_1_n_0 ,\sum_z_reg[4]_i_1_n_1 ,\sum_z_reg[4]_i_1_n_2 ,\sum_z_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_z[7:4]),
        .O({\sum_z_reg[4]_i_1_n_4 ,\sum_z_reg[4]_i_1_n_5 ,\sum_z_reg[4]_i_1_n_6 ,\sum_z_reg[4]_i_1_n_7 }),
        .S({\sum_z[4]_i_2_n_0 ,\sum_z[4]_i_3_n_0 ,\sum_z[4]_i_4_n_0 ,\sum_z[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[4]_i_1_n_6 ),
        .Q(\sum_z_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[4]_i_1_n_5 ),
        .Q(\sum_z_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[4]_i_1_n_4 ),
        .Q(\sum_z_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[8]_i_1_n_7 ),
        .Q(sum_z_reg[8]),
        .R(clear));
  CARRY4 \sum_z_reg[8]_i_1 
       (.CI(\sum_z_reg[4]_i_1_n_0 ),
        .CO({\sum_z_reg[8]_i_1_n_0 ,\sum_z_reg[8]_i_1_n_1 ,\sum_z_reg[8]_i_1_n_2 ,\sum_z_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(angular_rate_z[11:8]),
        .O({\sum_z_reg[8]_i_1_n_4 ,\sum_z_reg[8]_i_1_n_5 ,\sum_z_reg[8]_i_1_n_6 ,\sum_z_reg[8]_i_1_n_7 }),
        .S({\sum_z[8]_i_2_n_0 ,\sum_z[8]_i_3_n_0 ,\sum_z[8]_i_4_n_0 ,\sum_z[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_z_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sum_x),
        .D(\sum_z_reg[8]_i_1_n_6 ),
        .Q(sum_z_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "test3_v1_0" *) 
module design_1_test3_v1_0_1_0_test3_v1_0
   (leds,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    angular_rate_x,
    angular_rate_y,
    angular_rate_z,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    angle_reset,
    s00_axi_wstrb,
    s00_axi_aresetn,
    system_reset,
    s00_axi_bready,
    s00_axi_rready);
  output [15:0]leds;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [15:0]angular_rate_x;
  input [15:0]angular_rate_y;
  input [15:0]angular_rate_z;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input angle_reset;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input system_reset;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire angle_reset;
  wire [15:0]angular_rate_x;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_z;
  wire [15:0]leds;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire system_reset;

  design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI test3_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .angle_reset(angle_reset),
        .angular_rate_x(angular_rate_x),
        .angular_rate_y(angular_rate_y),
        .angular_rate_z(angular_rate_z),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .system_reset(system_reset));
endmodule

(* ORIG_REF_NAME = "test3_v1_0_S00_AXI" *) 
module design_1_test3_v1_0_1_0_test3_v1_0_S00_AXI
   (leds,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    angular_rate_x,
    angular_rate_y,
    angular_rate_z,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    angle_reset,
    s00_axi_wstrb,
    s00_axi_aresetn,
    system_reset,
    s00_axi_bready,
    s00_axi_rready);
  output [15:0]leds;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [15:0]angular_rate_x;
  input [15:0]angular_rate_y;
  input [15:0]angular_rate_z;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input angle_reset;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input system_reset;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire a1_n_16;
  wire a1_n_17;
  wire a1_n_18;
  wire a1_n_19;
  wire a1_n_20;
  wire a1_n_21;
  wire a1_n_22;
  wire a1_n_23;
  wire a1_n_24;
  wire a1_n_25;
  wire a1_n_26;
  wire a1_n_27;
  wire a1_n_28;
  wire a1_n_29;
  wire a1_n_30;
  wire a1_n_31;
  wire a1_n_32;
  wire a1_n_33;
  wire a1_n_34;
  wire a1_n_35;
  wire a1_n_36;
  wire a1_n_37;
  wire a1_n_38;
  wire a1_n_39;
  wire a1_n_40;
  wire a1_n_41;
  wire a1_n_42;
  wire a1_n_43;
  wire a1_n_44;
  wire a1_n_45;
  wire a1_n_46;
  wire a1_n_47;
  wire a1_n_48;
  wire a1_n_49;
  wire a1_n_50;
  wire a1_n_51;
  wire a1_n_52;
  wire a1_n_53;
  wire a1_n_54;
  wire a1_n_55;
  wire a1_n_56;
  wire a1_n_57;
  wire a1_n_58;
  wire a1_n_59;
  wire a1_n_60;
  wire a1_n_61;
  wire a1_n_62;
  wire a1_n_63;
  wire angle_reset;
  wire [15:0]angular_rate_x;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_z;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:0]leds;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:31]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[31]_i_3_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire system_reset;
  wire [15:0]z_angle;

  design_1_test3_v1_0_1_0_axes a1
       (.D(z_angle),
        .angle_reset(angle_reset),
        .angular_rate_x(angular_rate_x),
        .angular_rate_y(angular_rate_y),
        .angular_rate_z(angular_rate_z),
        .\integrate_x_reg[43]_0 ({a1_n_16,a1_n_17,a1_n_18,a1_n_19,a1_n_20,a1_n_21,a1_n_22,a1_n_23,a1_n_24,a1_n_25,a1_n_26,a1_n_27,a1_n_28,a1_n_29,a1_n_30,a1_n_31}),
        .\integrate_y_reg[43]_0 ({a1_n_48,a1_n_49,a1_n_50,a1_n_51,a1_n_52,a1_n_53,a1_n_54,a1_n_55,a1_n_56,a1_n_57,a1_n_58,a1_n_59,a1_n_60,a1_n_61,a1_n_62,a1_n_63}),
        .\integrate_z_reg[43]_0 ({a1_n_32,a1_n_33,a1_n_34,a1_n_35,a1_n_36,a1_n_37,a1_n_38,a1_n_39,a1_n_40,a1_n_41,a1_n_42,a1_n_43,a1_n_44,a1_n_45,a1_n_46,a1_n_47}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[0] (S_AXI_WREADY),
        .\slv_reg1_reg[0]_0 (S_AXI_AWREADY),
        .system_reset(system_reset));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(S_AXI_WREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \led_val_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[0]),
        .Q(leds[0]),
        .R(1'b0));
  FDRE \led_val_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[10]),
        .Q(leds[10]),
        .R(1'b0));
  FDRE \led_val_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[11]),
        .Q(leds[11]),
        .R(1'b0));
  FDRE \led_val_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[12]),
        .Q(leds[12]),
        .R(1'b0));
  FDRE \led_val_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[13]),
        .Q(leds[13]),
        .R(1'b0));
  FDRE \led_val_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[14]),
        .Q(leds[14]),
        .R(1'b0));
  FDRE \led_val_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[15]),
        .Q(leds[15]),
        .R(1'b0));
  FDRE \led_val_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[1]),
        .Q(leds[1]),
        .R(1'b0));
  FDRE \led_val_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[2]),
        .Q(leds[2]),
        .R(1'b0));
  FDRE \led_val_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[3]),
        .Q(leds[3]),
        .R(1'b0));
  FDRE \led_val_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[4]),
        .Q(leds[4]),
        .R(1'b0));
  FDRE \led_val_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[5]),
        .Q(leds[5]),
        .R(1'b0));
  FDRE \led_val_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[6]),
        .Q(leds[6]),
        .R(1'b0));
  FDRE \led_val_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[7]),
        .Q(leds[7]),
        .R(1'b0));
  FDRE \led_val_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[8]),
        .Q(leds[8]),
        .R(1'b0));
  FDRE \led_val_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_angle[9]),
        .Q(leds[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_31),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_21),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_20),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_19),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_18),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_17),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_16),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_30),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_29),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(slv_reg1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_28),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_27),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_26),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_25),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(a1_n_24),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_23),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(a1_n_22),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_63),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_53),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_52),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_51),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_50),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_49),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_48),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_62),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_61),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(slv_reg1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_60),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_59),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_58),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_57),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(a1_n_56),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_55),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(a1_n_54),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_aresetn),
        .O(slv_reg1));
  LUT4 #(
    .INIT(16'hFF80)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg3[31]_i_3 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(\slv_reg3[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_3_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_47),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_37),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_36),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_35),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_34),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_33),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_32),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_46),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_45),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_2_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(slv_reg1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_44),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_43),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_42),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_41),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(a1_n_40),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_39),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(a1_n_38),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
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
