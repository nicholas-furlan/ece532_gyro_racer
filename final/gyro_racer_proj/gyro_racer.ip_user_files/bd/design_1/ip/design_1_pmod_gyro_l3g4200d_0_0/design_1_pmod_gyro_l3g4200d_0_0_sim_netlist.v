// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 24 15:06:47 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pmod_gyro_l3g4200d_0_0/design_1_pmod_gyro_l3g4200d_0_0_sim_netlist.v
// Design      : design_1_pmod_gyro_l3g4200d_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pmod_gyro_l3g4200d_0_0,pmod_gyro_l3g4200d,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pmod_gyro_l3g4200d,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_pmod_gyro_l3g4200d_0_0
   (clk,
    reset_n,
    miso,
    sclk,
    ss_n,
    mosi,
    angular_rate_x,
    angular_rate_y,
    angular_rate_z);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input miso;
  output sclk;
  output [0:0]ss_n;
  output mosi;
  output [15:0]angular_rate_x;
  output [15:0]angular_rate_y;
  output [15:0]angular_rate_z;

  wire [15:0]angular_rate_x;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_z;
  wire clk;
  wire inst_n_0;
  wire inst_n_3;
  wire miso;
  wire mosi;
  wire mosi_INST_0_i_1_n_0;
  wire reset_n;
  wire sclk;
  wire [0:0]ss_n;

  design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d inst
       (.AR(inst_n_0),
        .angular_rate_x(angular_rate_x),
        .angular_rate_y(angular_rate_y),
        .angular_rate_z(angular_rate_z),
        .clk(clk),
        .miso(miso),
        .mosi(mosi),
        .mosi_0(mosi_INST_0_i_1_n_0),
        .reset_n(reset_n),
        .sclk(sclk),
        .ss_n(ss_n),
        .state_reg(inst_n_3));
  FDCE #(
    .INIT(1'b1)) 
    mosi_INST_0_i_1
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(inst_n_3),
        .Q(mosi_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "pmod_gyro_l3g4200d" *) 
module design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d
   (AR,
    ss_n,
    sclk,
    state_reg,
    mosi,
    angular_rate_x,
    angular_rate_y,
    angular_rate_z,
    clk,
    reset_n,
    mosi_0,
    miso);
  output [0:0]AR;
  output [0:0]ss_n;
  output sclk;
  output state_reg;
  output mosi;
  output [15:0]angular_rate_x;
  output [15:0]angular_rate_y;
  output [15:0]angular_rate_z;
  input clk;
  input reset_n;
  input mosi_0;
  input miso;

  wire [0:0]AR;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_16_n_0 ;
  wire \FSM_sequential_state[2]_i_17_n_0 ;
  wire \FSM_sequential_state[2]_i_18_n_0 ;
  wire \FSM_sequential_state[2]_i_19_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire [15:0]angular_rate_x;
  wire \angular_rate_x[15]_i_1_n_0 ;
  wire [15:0]angular_rate_x_int;
  wire \angular_rate_x_int[15]_i_2_n_0 ;
  wire \angular_rate_x_int[7]_i_10_n_0 ;
  wire \angular_rate_x_int[7]_i_2_n_0 ;
  wire \angular_rate_x_int[7]_i_4_n_0 ;
  wire \angular_rate_x_int[7]_i_5_n_0 ;
  wire \angular_rate_x_int[7]_i_6_n_0 ;
  wire \angular_rate_x_int[7]_i_7_n_0 ;
  wire \angular_rate_x_int[7]_i_8_n_0 ;
  wire \angular_rate_x_int[7]_i_9_n_0 ;
  wire [15:0]angular_rate_y;
  wire [15:0]angular_rate_y_int;
  wire \angular_rate_y_int[7]_i_2_n_0 ;
  wire \angular_rate_y_int[7]_i_3_n_0 ;
  wire [15:0]angular_rate_z;
  wire [15:0]angular_rate_z_int;
  wire \angular_rate_z_int[15]_i_2_n_0 ;
  wire \angular_rate_z_int[7]_i_2_n_0 ;
  wire clk;
  wire count0_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_i_5_n_0;
  wire count1_carry__0_i_6_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_i_4_n_0;
  wire count1_carry__1_i_5_n_0;
  wire count1_carry__1_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry__2_i_1_n_0;
  wire count1_carry__2_n_3;
  wire count1_carry__2_n_6;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count1_inferred__1/i__carry__0_n_0 ;
  wire \count1_inferred__1/i__carry__0_n_1 ;
  wire \count1_inferred__1/i__carry__0_n_2 ;
  wire \count1_inferred__1/i__carry__0_n_3 ;
  wire \count1_inferred__1/i__carry__1_n_0 ;
  wire \count1_inferred__1/i__carry__1_n_1 ;
  wire \count1_inferred__1/i__carry__1_n_2 ;
  wire \count1_inferred__1/i__carry__1_n_3 ;
  wire \count1_inferred__1/i__carry__2_n_2 ;
  wire \count1_inferred__1/i__carry__2_n_3 ;
  wire \count1_inferred__1/i__carry__2_n_5 ;
  wire \count1_inferred__1/i__carry_n_0 ;
  wire \count1_inferred__1/i__carry_n_1 ;
  wire \count1_inferred__1/i__carry_n_2 ;
  wire \count1_inferred__1/i__carry_n_3 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_1_n_0 ;
  wire \count[17]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire \count[19]_i_1_n_0 ;
  wire \count[1]_i_3_n_0 ;
  wire \count[1]_i_4_n_0 ;
  wire \count[20]_i_1_n_0 ;
  wire \count[21]_i_1_n_0 ;
  wire \count[22]_i_1_n_0 ;
  wire \count[23]_i_1_n_0 ;
  wire \count[24]_i_1_n_0 ;
  wire \count[25]_i_1_n_0 ;
  wire \count[26]_i_1_n_0 ;
  wire \count[27]_i_1_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[29]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[2]_i_4_n_0 ;
  wire \count[2]_i_6_n_0 ;
  wire \count[30]_i_1_n_0 ;
  wire \count[31]_i_2__0_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire miso;
  wire mosi;
  wire mosi_0;
  wire reset_n;
  wire [7:0]rx_data;
  wire sclk;
  wire spi_busy;
  wire spi_busy_prev_reg_n_0;
  wire spi_ena;
  wire spi_master_0_n_12;
  wire spi_master_0_n_13;
  wire spi_master_0_n_14;
  wire spi_master_0_n_15;
  wire spi_master_0_n_16;
  wire spi_master_0_n_17;
  wire spi_master_0_n_18;
  wire spi_master_0_n_19;
  wire spi_master_0_n_20;
  wire spi_master_0_n_21;
  wire spi_master_0_n_22;
  wire spi_master_0_n_23;
  wire spi_master_0_n_24;
  wire spi_master_0_n_25;
  wire spi_master_0_n_4;
  wire spi_master_0_n_5;
  wire spi_master_0_n_8;
  wire [7:2]spi_tx_data1_in;
  wire \spi_tx_data[7]_i_3_n_0 ;
  wire [0:0]ss_n;
  wire [2:0]state;
  wire state_reg;
  wire [7:2]tx_data;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_count1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_count1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_count1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_count1_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW_count1_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\FSM_sequential_state[2]_i_14_n_0 ),
        .I1(\FSM_sequential_state[2]_i_15_n_0 ),
        .I2(\FSM_sequential_state[2]_i_16_n_0 ),
        .I3(\FSM_sequential_state[2]_i_17_n_0 ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\FSM_sequential_state[2]_i_18_n_0 ),
        .I1(count0_carry__4_n_5),
        .I2(count0_carry__4_n_6),
        .I3(count0_carry__5_n_7),
        .I4(count0_carry__4_n_4),
        .I5(\FSM_sequential_state[2]_i_19_n_0 ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(count0_carry__2_n_4),
        .I1(count0_carry__3_n_7),
        .I2(count0_carry__2_n_6),
        .I3(count0_carry__2_n_5),
        .I4(\FSM_sequential_state[2]_i_16_n_0 ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(count0_carry__0_n_4),
        .I1(count0_carry__1_n_7),
        .I2(count0_carry__0_n_6),
        .I3(count0_carry__0_n_5),
        .I4(\FSM_sequential_state[2]_i_14_n_0 ),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(count0_carry__1_n_5),
        .I1(count0_carry__1_n_6),
        .I2(count0_carry__2_n_7),
        .I3(count0_carry__1_n_4),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(count0_carry__0_n_5),
        .I1(count0_carry__0_n_6),
        .I2(count0_carry__1_n_7),
        .I3(count0_carry__0_n_4),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_16 
       (.I0(count0_carry__3_n_5),
        .I1(count0_carry__3_n_6),
        .I2(count0_carry__4_n_7),
        .I3(count0_carry__3_n_4),
        .O(\FSM_sequential_state[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_17 
       (.I0(count0_carry__2_n_5),
        .I1(count0_carry__2_n_6),
        .I2(count0_carry__3_n_7),
        .I3(count0_carry__2_n_4),
        .O(\FSM_sequential_state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_18 
       (.I0(count0_carry__5_n_5),
        .I1(count0_carry__5_n_6),
        .I2(count0_carry__6_n_7),
        .I3(count0_carry__5_n_4),
        .O(\FSM_sequential_state[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_19 
       (.I0(count0_carry_n_5),
        .I1(count0_carry__6_n_6),
        .I2(count0_carry__6_n_5),
        .I3(count0_carry__0_n_7),
        .I4(count0_carry_n_4),
        .O(\FSM_sequential_state[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(state[0]),
        .I3(\spi_tx_data[7]_i_3_n_0 ),
        .I4(spi_master_0_n_25),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_12_n_0 ),
        .I1(\FSM_sequential_state[2]_i_13_n_0 ),
        .I2(\FSM_sequential_state[2]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\count1_inferred__1/i__carry__2_n_5 ),
        .I1(state[1]),
        .I2(count1_carry__2_n_6),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "start:000,configure:001,pause:010,read_data:011,output_result:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_14),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "start:000,configure:001,pause:010,read_data:011,output_result:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_13),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "start:000,configure:001,pause:010,read_data:011,output_result:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_12),
        .Q(state[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \angular_rate_x[15]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\angular_rate_x[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \angular_rate_x_int[15]_i_2 
       (.I0(state[2]),
        .I1(reset_n),
        .I2(\count_reg_n_0_[2] ),
        .O(\angular_rate_x_int[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \angular_rate_x_int[7]_i_10 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[30] ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count_reg_n_0_[8] ),
        .O(\angular_rate_x_int[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \angular_rate_x_int[7]_i_2 
       (.I0(\angular_rate_x_int[7]_i_4_n_0 ),
        .I1(\angular_rate_x_int[7]_i_5_n_0 ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\angular_rate_x_int[7]_i_6_n_0 ),
        .I5(\angular_rate_x_int[7]_i_7_n_0 ),
        .O(\angular_rate_x_int[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \angular_rate_x_int[7]_i_4 
       (.I0(\count_reg_n_0_[16] ),
        .I1(\count_reg_n_0_[17] ),
        .I2(\count_reg_n_0_[14] ),
        .I3(\count_reg_n_0_[15] ),
        .I4(\angular_rate_x_int[7]_i_8_n_0 ),
        .O(\angular_rate_x_int[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \angular_rate_x_int[7]_i_5 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .O(\angular_rate_x_int[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \angular_rate_x_int[7]_i_6 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[12] ),
        .O(\angular_rate_x_int[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \angular_rate_x_int[7]_i_7 
       (.I0(\angular_rate_x_int[7]_i_9_n_0 ),
        .I1(\count_reg_n_0_[23] ),
        .I2(\count_reg_n_0_[22] ),
        .I3(\count_reg_n_0_[25] ),
        .I4(\count_reg_n_0_[24] ),
        .I5(\angular_rate_x_int[7]_i_10_n_0 ),
        .O(\angular_rate_x_int[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \angular_rate_x_int[7]_i_8 
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[18] ),
        .I2(\count_reg_n_0_[21] ),
        .I3(\count_reg_n_0_[20] ),
        .O(\angular_rate_x_int[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \angular_rate_x_int[7]_i_9 
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[26] ),
        .I2(\count_reg_n_0_[29] ),
        .I3(\count_reg_n_0_[28] ),
        .O(\angular_rate_x_int[7]_i_9_n_0 ));
  FDRE \angular_rate_x_int_reg[0] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[0]),
        .Q(angular_rate_x_int[0]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[10] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[2]),
        .Q(angular_rate_x_int[10]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[11] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[3]),
        .Q(angular_rate_x_int[11]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[12] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[4]),
        .Q(angular_rate_x_int[12]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[13] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[5]),
        .Q(angular_rate_x_int[13]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[14] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[6]),
        .Q(angular_rate_x_int[14]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[15] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[7]),
        .Q(angular_rate_x_int[15]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[1] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[1]),
        .Q(angular_rate_x_int[1]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[2] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[2]),
        .Q(angular_rate_x_int[2]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[3] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[3]),
        .Q(angular_rate_x_int[3]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[4] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[4]),
        .Q(angular_rate_x_int[4]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[5] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[5]),
        .Q(angular_rate_x_int[5]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[6] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[6]),
        .Q(angular_rate_x_int[6]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[7] 
       (.C(clk),
        .CE(spi_master_0_n_16),
        .D(rx_data[7]),
        .Q(angular_rate_x_int[7]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[8] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[0]),
        .Q(angular_rate_x_int[8]),
        .R(1'b0));
  FDRE \angular_rate_x_int_reg[9] 
       (.C(clk),
        .CE(spi_master_0_n_15),
        .D(rx_data[1]),
        .Q(angular_rate_x_int[9]),
        .R(1'b0));
  FDCE \angular_rate_x_reg[0] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[0]),
        .Q(angular_rate_x[0]));
  FDCE \angular_rate_x_reg[10] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[10]),
        .Q(angular_rate_x[10]));
  FDCE \angular_rate_x_reg[11] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[11]),
        .Q(angular_rate_x[11]));
  FDCE \angular_rate_x_reg[12] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[12]),
        .Q(angular_rate_x[12]));
  FDCE \angular_rate_x_reg[13] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[13]),
        .Q(angular_rate_x[13]));
  FDCE \angular_rate_x_reg[14] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[14]),
        .Q(angular_rate_x[14]));
  FDCE \angular_rate_x_reg[15] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[15]),
        .Q(angular_rate_x[15]));
  FDCE \angular_rate_x_reg[1] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[1]),
        .Q(angular_rate_x[1]));
  FDCE \angular_rate_x_reg[2] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[2]),
        .Q(angular_rate_x[2]));
  FDCE \angular_rate_x_reg[3] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[3]),
        .Q(angular_rate_x[3]));
  FDCE \angular_rate_x_reg[4] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[4]),
        .Q(angular_rate_x[4]));
  FDCE \angular_rate_x_reg[5] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[5]),
        .Q(angular_rate_x[5]));
  FDCE \angular_rate_x_reg[6] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[6]),
        .Q(angular_rate_x[6]));
  FDCE \angular_rate_x_reg[7] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[7]),
        .Q(angular_rate_x[7]));
  FDCE \angular_rate_x_reg[8] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[8]),
        .Q(angular_rate_x[8]));
  FDCE \angular_rate_x_reg[9] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_x_int[9]),
        .Q(angular_rate_x[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \angular_rate_y_int[7]_i_2 
       (.I0(\angular_rate_x_int[7]_i_2_n_0 ),
        .I1(\count_reg_n_0_[1] ),
        .O(\angular_rate_y_int[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \angular_rate_y_int[7]_i_3 
       (.I0(\FSM_sequential_state[2]_i_11_n_0 ),
        .I1(\FSM_sequential_state[2]_i_13_n_0 ),
        .I2(\FSM_sequential_state[2]_i_12_n_0 ),
        .I3(\count_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\angular_rate_y_int[7]_i_3_n_0 ));
  FDRE \angular_rate_y_int_reg[0] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[0]),
        .Q(angular_rate_y_int[0]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[10] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[2]),
        .Q(angular_rate_y_int[10]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[11] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[3]),
        .Q(angular_rate_y_int[11]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[12] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[4]),
        .Q(angular_rate_y_int[12]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[13] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[5]),
        .Q(angular_rate_y_int[13]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[14] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[6]),
        .Q(angular_rate_y_int[14]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[15] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[7]),
        .Q(angular_rate_y_int[15]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[1] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[1]),
        .Q(angular_rate_y_int[1]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[2] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[2]),
        .Q(angular_rate_y_int[2]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[3] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[3]),
        .Q(angular_rate_y_int[3]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[4] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[4]),
        .Q(angular_rate_y_int[4]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[5] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[5]),
        .Q(angular_rate_y_int[5]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[6] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[6]),
        .Q(angular_rate_y_int[6]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[7] 
       (.C(clk),
        .CE(spi_master_0_n_18),
        .D(rx_data[7]),
        .Q(angular_rate_y_int[7]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[8] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[0]),
        .Q(angular_rate_y_int[8]),
        .R(1'b0));
  FDRE \angular_rate_y_int_reg[9] 
       (.C(clk),
        .CE(spi_master_0_n_17),
        .D(rx_data[1]),
        .Q(angular_rate_y_int[9]),
        .R(1'b0));
  FDCE \angular_rate_y_reg[0] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[0]),
        .Q(angular_rate_y[0]));
  FDCE \angular_rate_y_reg[10] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[10]),
        .Q(angular_rate_y[10]));
  FDCE \angular_rate_y_reg[11] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[11]),
        .Q(angular_rate_y[11]));
  FDCE \angular_rate_y_reg[12] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[12]),
        .Q(angular_rate_y[12]));
  FDCE \angular_rate_y_reg[13] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[13]),
        .Q(angular_rate_y[13]));
  FDCE \angular_rate_y_reg[14] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[14]),
        .Q(angular_rate_y[14]));
  FDCE \angular_rate_y_reg[15] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[15]),
        .Q(angular_rate_y[15]));
  FDCE \angular_rate_y_reg[1] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[1]),
        .Q(angular_rate_y[1]));
  FDCE \angular_rate_y_reg[2] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[2]),
        .Q(angular_rate_y[2]));
  FDCE \angular_rate_y_reg[3] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[3]),
        .Q(angular_rate_y[3]));
  FDCE \angular_rate_y_reg[4] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[4]),
        .Q(angular_rate_y[4]));
  FDCE \angular_rate_y_reg[5] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[5]),
        .Q(angular_rate_y[5]));
  FDCE \angular_rate_y_reg[6] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[6]),
        .Q(angular_rate_y[6]));
  FDCE \angular_rate_y_reg[7] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[7]),
        .Q(angular_rate_y[7]));
  FDCE \angular_rate_y_reg[8] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[8]),
        .Q(angular_rate_y[8]));
  FDCE \angular_rate_y_reg[9] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_y_int[9]),
        .Q(angular_rate_y[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \angular_rate_z_int[15]_i_2 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\angular_rate_x_int[7]_i_2_n_0 ),
        .I3(\count_reg_n_0_[2] ),
        .O(\angular_rate_z_int[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \angular_rate_z_int[7]_i_2 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\angular_rate_z_int[7]_i_2_n_0 ));
  FDRE \angular_rate_z_int_reg[0] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[0]),
        .Q(angular_rate_z_int[0]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[10] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[2]),
        .Q(angular_rate_z_int[10]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[11] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[3]),
        .Q(angular_rate_z_int[11]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[12] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[4]),
        .Q(angular_rate_z_int[12]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[13] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[5]),
        .Q(angular_rate_z_int[13]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[14] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[6]),
        .Q(angular_rate_z_int[14]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[15] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[7]),
        .Q(angular_rate_z_int[15]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[1] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[1]),
        .Q(angular_rate_z_int[1]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[2] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[2]),
        .Q(angular_rate_z_int[2]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[3] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[3]),
        .Q(angular_rate_z_int[3]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[4] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[4]),
        .Q(angular_rate_z_int[4]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[5] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[5]),
        .Q(angular_rate_z_int[5]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[6] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[6]),
        .Q(angular_rate_z_int[6]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[7] 
       (.C(clk),
        .CE(spi_master_0_n_20),
        .D(rx_data[7]),
        .Q(angular_rate_z_int[7]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[8] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[0]),
        .Q(angular_rate_z_int[8]),
        .R(1'b0));
  FDRE \angular_rate_z_int_reg[9] 
       (.C(clk),
        .CE(spi_master_0_n_19),
        .D(rx_data[1]),
        .Q(angular_rate_z_int[9]),
        .R(1'b0));
  FDCE \angular_rate_z_reg[0] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[0]),
        .Q(angular_rate_z[0]));
  FDCE \angular_rate_z_reg[10] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[10]),
        .Q(angular_rate_z[10]));
  FDCE \angular_rate_z_reg[11] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[11]),
        .Q(angular_rate_z[11]));
  FDCE \angular_rate_z_reg[12] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[12]),
        .Q(angular_rate_z[12]));
  FDCE \angular_rate_z_reg[13] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[13]),
        .Q(angular_rate_z[13]));
  FDCE \angular_rate_z_reg[14] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[14]),
        .Q(angular_rate_z[14]));
  FDCE \angular_rate_z_reg[15] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[15]),
        .Q(angular_rate_z[15]));
  FDCE \angular_rate_z_reg[1] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[1]),
        .Q(angular_rate_z[1]));
  FDCE \angular_rate_z_reg[2] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[2]),
        .Q(angular_rate_z[2]));
  FDCE \angular_rate_z_reg[3] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[3]),
        .Q(angular_rate_z[3]));
  FDCE \angular_rate_z_reg[4] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[4]),
        .Q(angular_rate_z[4]));
  FDCE \angular_rate_z_reg[5] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[5]),
        .Q(angular_rate_z[5]));
  FDCE \angular_rate_z_reg[6] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[6]),
        .Q(angular_rate_z[6]));
  FDCE \angular_rate_z_reg[7] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[7]),
        .Q(angular_rate_z[7]));
  FDCE \angular_rate_z_reg[8] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[8]),
        .Q(angular_rate_z[8]));
  FDCE \angular_rate_z_reg[9] 
       (.C(clk),
        .CE(\angular_rate_x[15]_i_1_n_0 ),
        .CLR(AR),
        .D(angular_rate_z_int[9]),
        .Q(angular_rate_z[9]));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_4_n_0,count1_carry_i_5_n_0,count1_carry_i_6_n_0,count1_carry_i_7_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__0_i_1_n_0,1'b0,count1_carry__0_i_2_n_0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0,count1_carry__0_i_5_n_0,count1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry__0_i_1
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .O(count1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2
       (.I0(\count_reg_n_0_[15] ),
        .I1(\count_reg_n_0_[14] ),
        .O(count1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_3
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .O(count1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry__0_i_4
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[18] ),
        .O(count1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_5
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .O(count1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_6
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[15] ),
        .O(count1_carry__0_i_6_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({count1_carry__1_n_0,count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count1_carry__1_i_1_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0,count1_carry__1_i_4_n_0,count1_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_1
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .O(count1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .O(count1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[26] ),
        .O(count1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_4
       (.I0(\count_reg_n_0_[25] ),
        .I1(\count_reg_n_0_[24] ),
        .O(count1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5
       (.I0(\count_reg_n_0_[22] ),
        .I1(\count_reg_n_0_[23] ),
        .O(count1_carry__1_i_5_n_0));
  CARRY4 count1_carry__2
       (.CI(count1_carry__1_n_0),
        .CO({NLW_count1_carry__2_CO_UNCONNECTED[3:1],count1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_reg_n_0_[31] }),
        .O({NLW_count1_carry__2_O_UNCONNECTED[3:2],count1_carry__2_n_6,NLW_count1_carry__2_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,1'b1,count1_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_1
       (.I0(\count_reg_n_0_[31] ),
        .I1(\count_reg_n_0_[30] ),
        .O(count1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_1
       (.I0(\count_reg_n_0_[11] ),
        .O(count1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[9] ),
        .O(count1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .O(count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_4
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .O(count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_5
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .O(count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_6
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[8] ),
        .O(count1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_7
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .O(count1_carry_i_7_n_0));
  CARRY4 \count1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\count1_inferred__1/i__carry_n_0 ,\count1_inferred__1/i__carry_n_1 ,\count1_inferred__1/i__carry_n_2 ,\count1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}),
        .O(\NLW_count1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  CARRY4 \count1_inferred__1/i__carry__0 
       (.CI(\count1_inferred__1/i__carry_n_0 ),
        .CO({\count1_inferred__1/i__carry__0_n_0 ,\count1_inferred__1/i__carry__0_n_1 ,\count1_inferred__1/i__carry__0_n_2 ,\count1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,1'b0}),
        .O(\NLW_count1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0}));
  CARRY4 \count1_inferred__1/i__carry__1 
       (.CI(\count1_inferred__1/i__carry__0_n_0 ),
        .CO({\count1_inferred__1/i__carry__1_n_0 ,\count1_inferred__1/i__carry__1_n_1 ,\count1_inferred__1/i__carry__1_n_2 ,\count1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \count1_inferred__1/i__carry__2 
       (.CI(\count1_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_count1_inferred__1/i__carry__2_CO_UNCONNECTED [3:2],\count1_inferred__1/i__carry__2_n_2 ,\count1_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\count_reg_n_0_[31] ,1'b0}),
        .O({\NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED [3],\count1_inferred__1/i__carry__2_n_5 ,\NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED [1:0]}),
        .S({1'b0,1'b1,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[10]_i_1 
       (.I0(count0_carry__1_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[10] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[11]_i_1 
       (.I0(count0_carry__1_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[11] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[12]_i_1 
       (.I0(count0_carry__1_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[12] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[13]_i_1 
       (.I0(count0_carry__2_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[13] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[14]_i_1 
       (.I0(count0_carry__2_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[14] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[15]_i_1 
       (.I0(count0_carry__2_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[15] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[16]_i_1 
       (.I0(count0_carry__2_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[16] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[17]_i_1 
       (.I0(count0_carry__3_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[17] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[18]_i_1 
       (.I0(count0_carry__3_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[18] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[19]_i_1 
       (.I0(count0_carry__3_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[19] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00044404)) 
    \count[1]_i_3 
       (.I0(state[0]),
        .I1(count0_carry_n_7),
        .I2(count1_carry__2_n_6),
        .I3(state[1]),
        .I4(\count1_inferred__1/i__carry__2_n_5 ),
        .O(\count[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count[1]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .I1(state[1]),
        .O(\count[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[20]_i_1 
       (.I0(count0_carry__3_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[20] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[21]_i_1 
       (.I0(count0_carry__4_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[21] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[22]_i_1 
       (.I0(count0_carry__4_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[22] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[23]_i_1 
       (.I0(count0_carry__4_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[23] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[24]_i_1 
       (.I0(count0_carry__4_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[24] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[25]_i_1 
       (.I0(count0_carry__5_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[25] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[26]_i_1 
       (.I0(count0_carry__5_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[26] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[27]_i_1 
       (.I0(count0_carry__5_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[27] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[28]_i_1 
       (.I0(count0_carry__5_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[28] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[29]_i_1 
       (.I0(count0_carry__6_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[29] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0300555500000000)) 
    \count[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(count0_carry_n_7),
        .I2(spi_busy),
        .I3(spi_busy_prev_reg_n_0),
        .I4(state[0]),
        .I5(count0_carry_n_6),
        .O(\count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \count[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_11_n_0 ),
        .I1(\FSM_sequential_state[2]_i_13_n_0 ),
        .I2(\FSM_sequential_state[2]_i_12_n_0 ),
        .I3(state[1]),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \count[2]_i_6 
       (.I0(\angular_rate_x_int[7]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[1]),
        .O(\count[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[30]_i_1 
       (.I0(count0_carry__6_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[30] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[31]_i_1 
       (.I0(reset_n),
        .I1(state[2]),
        .O(count0_0));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[31]_i_2__0 
       (.I0(count0_carry__6_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[31] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000047474747)) 
    \count[31]_i_3 
       (.I0(\count1_inferred__1/i__carry__2_n_5 ),
        .I1(state[1]),
        .I2(count1_carry__2_n_6),
        .I3(spi_busy),
        .I4(spi_busy_prev_reg_n_0),
        .I5(state[0]),
        .O(\count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[3]_i_1 
       (.I0(count0_carry_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[4]_i_1 
       (.I0(count0_carry_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[4] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[5]_i_1 
       (.I0(count0_carry__0_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[5] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[6]_i_1 
       (.I0(count0_carry__0_n_6),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[7]_i_1 
       (.I0(count0_carry__0_n_5),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[8]_i_1 
       (.I0(count0_carry__0_n_4),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[8] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F888888888)) 
    \count[9]_i_1 
       (.I0(count0_carry__1_n_7),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count_reg_n_0_[9] ),
        .I3(spi_busy_prev_reg_n_0),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count0_0),
        .D(spi_master_0_n_23),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[10]_i_1_n_0 ),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[12]_i_1_n_0 ),
        .Q(\count_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[13]_i_1_n_0 ),
        .Q(\count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[14]_i_1_n_0 ),
        .Q(\count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[15]_i_1_n_0 ),
        .Q(\count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[16]_i_1_n_0 ),
        .Q(\count_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[17]_i_1_n_0 ),
        .Q(\count_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[18]_i_1_n_0 ),
        .Q(\count_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[19]_i_1_n_0 ),
        .Q(\count_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count0_0),
        .D(spi_master_0_n_22),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[20]_i_1_n_0 ),
        .Q(\count_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[21]_i_1_n_0 ),
        .Q(\count_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[22]_i_1_n_0 ),
        .Q(\count_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[23]_i_1_n_0 ),
        .Q(\count_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[24]_i_1_n_0 ),
        .Q(\count_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[25]_i_1_n_0 ),
        .Q(\count_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[26]_i_1_n_0 ),
        .Q(\count_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[27]_i_1_n_0 ),
        .Q(\count_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[28]_i_1_n_0 ),
        .Q(\count_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[29]_i_1_n_0 ),
        .Q(\count_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count0_0),
        .D(spi_master_0_n_21),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[30]_i_1_n_0 ),
        .Q(\count_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[31]_i_2__0_n_0 ),
        .Q(\count_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[7]_i_1_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[8]_i_1_n_0 ),
        .Q(\count_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count0_0),
        .D(\count[9]_i_1_n_0 ),
        .Q(\count_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_1
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[15] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[18] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4
       (.I0(\count_reg_n_0_[15] ),
        .I1(\count_reg_n_0_[14] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[26] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(\count_reg_n_0_[25] ),
        .I1(\count_reg_n_0_[24] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(\count_reg_n_0_[31] ),
        .I1(\count_reg_n_0_[30] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[9] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_5
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[8] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .O(i__carry_i_7_n_0));
  FDCE spi_busy_prev_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_4),
        .Q(spi_busy_prev_reg_n_0));
  FDCE spi_cont_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_master_0_n_5),
        .Q(spi_ena));
  design_1_pmod_gyro_l3g4200d_0_0_spi_master spi_master_0
       (.AR(AR),
        .D({spi_tx_data1_in[7],spi_master_0_n_8,spi_tx_data1_in[3:2]}),
        .E({spi_master_0_n_15,spi_master_0_n_16}),
        .\FSM_sequential_state_reg[0] (spi_master_0_n_25),
        .\FSM_sequential_state_reg[1] (spi_master_0_n_13),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state[1]_i_2_n_0 ),
        .\FSM_sequential_state_reg[2] (spi_master_0_n_12),
        .\FSM_sequential_state_reg[2]_0 (spi_master_0_n_14),
        .\FSM_sequential_state_reg[2]_1 (\FSM_sequential_state[2]_i_2_n_0 ),
        .\FSM_sequential_state_reg[2]_2 (\FSM_sequential_state[2]_i_3_n_0 ),
        .\FSM_sequential_state_reg[2]_3 (\FSM_sequential_state[2]_i_6_n_0 ),
        .O({count0_carry_n_6,count0_carry_n_7}),
        .Q({tx_data[7],tx_data[5],tx_data[3:2]}),
        .\angular_rate_x_int_reg[15] (\count[2]_i_6_n_0 ),
        .\angular_rate_x_int_reg[15]_0 (\angular_rate_x_int[15]_i_2_n_0 ),
        .\angular_rate_x_int_reg[15]_1 (\count[1]_i_4_n_0 ),
        .\angular_rate_x_int_reg[7] ({\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count_reg_n_0_[0] }),
        .\angular_rate_x_int_reg[7]_0 (\angular_rate_x_int[7]_i_2_n_0 ),
        .\angular_rate_y_int_reg[15] (\count[2]_i_4_n_0 ),
        .\angular_rate_y_int_reg[7] (\angular_rate_y_int[7]_i_2_n_0 ),
        .\angular_rate_z_int_reg[15] (\angular_rate_z_int[15]_i_2_n_0 ),
        .\angular_rate_z_int_reg[7] (\angular_rate_z_int[7]_i_2_n_0 ),
        .busy_reg_0(spi_master_0_n_4),
        .busy_reg_1({spi_master_0_n_19,spi_master_0_n_20}),
        .clk(clk),
        .count0_0(count0_0),
        .\count_reg[0]_0 (spi_master_0_n_24),
        .\count_reg[0]_1 (\FSM_sequential_state[2]_i_7_n_0 ),
        .\count_reg[1]_0 ({spi_master_0_n_17,spi_master_0_n_18}),
        .\count_reg[1]_1 ({spi_master_0_n_21,spi_master_0_n_22,spi_master_0_n_23}),
        .\count_reg[1]_2 (\count[1]_i_3_n_0 ),
        .\count_reg[2]_0 (\count[2]_i_2_n_0 ),
        .miso(miso),
        .mosi(mosi),
        .mosi_0(mosi_0),
        .reset_n(reset_n),
        .\rx_data_reg[7]_0 (rx_data),
        .sclk(sclk),
        .spi_busy(spi_busy),
        .spi_busy_prev_reg(spi_busy_prev_reg_n_0),
        .spi_cont_reg(spi_master_0_n_5),
        .spi_cont_reg_0(\angular_rate_y_int[7]_i_3_n_0 ),
        .spi_cont_reg_1(\FSM_sequential_state[2]_i_11_n_0 ),
        .spi_cont_reg_2(\FSM_sequential_state[2]_i_10_n_0 ),
        .spi_ena(spi_ena),
        .\spi_tx_data_reg[2] (\spi_tx_data[7]_i_3_n_0 ),
        .ss_n(ss_n),
        .state(state),
        .state_reg_0(state_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spi_tx_data[7]_i_3 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\angular_rate_x_int[7]_i_2_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .O(\spi_tx_data[7]_i_3_n_0 ));
  FDCE \spi_tx_data_reg[2] 
       (.C(clk),
        .CE(spi_master_0_n_24),
        .CLR(AR),
        .D(spi_tx_data1_in[2]),
        .Q(tx_data[2]));
  FDCE \spi_tx_data_reg[3] 
       (.C(clk),
        .CE(spi_master_0_n_24),
        .CLR(AR),
        .D(spi_tx_data1_in[3]),
        .Q(tx_data[3]));
  FDCE \spi_tx_data_reg[5] 
       (.C(clk),
        .CE(spi_master_0_n_24),
        .CLR(AR),
        .D(spi_master_0_n_8),
        .Q(tx_data[5]));
  FDCE \spi_tx_data_reg[7] 
       (.C(clk),
        .CE(spi_master_0_n_24),
        .CLR(AR),
        .D(spi_tx_data1_in[7]),
        .Q(tx_data[7]));
endmodule

(* ORIG_REF_NAME = "spi_master" *) 
module design_1_pmod_gyro_l3g4200d_0_0_spi_master
   (AR,
    spi_busy,
    ss_n,
    sclk,
    busy_reg_0,
    spi_cont_reg,
    state_reg_0,
    D,
    mosi,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2]_0 ,
    E,
    \count_reg[1]_0 ,
    busy_reg_1,
    \count_reg[1]_1 ,
    \count_reg[0]_0 ,
    \FSM_sequential_state_reg[0] ,
    \rx_data_reg[7]_0 ,
    clk,
    reset_n,
    spi_ena,
    state,
    spi_busy_prev_reg,
    spi_cont_reg_0,
    mosi_0,
    Q,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[2]_2 ,
    \FSM_sequential_state_reg[2]_3 ,
    \FSM_sequential_state_reg[1]_0 ,
    \angular_rate_x_int_reg[7] ,
    \angular_rate_x_int_reg[7]_0 ,
    \angular_rate_x_int_reg[15] ,
    \angular_rate_x_int_reg[15]_0 ,
    \angular_rate_x_int_reg[15]_1 ,
    O,
    count0_0,
    \angular_rate_y_int_reg[7] ,
    \angular_rate_y_int_reg[15] ,
    \angular_rate_z_int_reg[15] ,
    \angular_rate_z_int_reg[7] ,
    \count_reg[0]_1 ,
    \spi_tx_data_reg[2] ,
    spi_cont_reg_1,
    spi_cont_reg_2,
    \count_reg[2]_0 ,
    \count_reg[1]_2 ,
    miso);
  output [0:0]AR;
  output spi_busy;
  output [0:0]ss_n;
  output sclk;
  output busy_reg_0;
  output spi_cont_reg;
  output state_reg_0;
  output [3:0]D;
  output mosi;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2]_0 ;
  output [1:0]E;
  output [1:0]\count_reg[1]_0 ;
  output [1:0]busy_reg_1;
  output [2:0]\count_reg[1]_1 ;
  output [0:0]\count_reg[0]_0 ;
  output \FSM_sequential_state_reg[0] ;
  output [7:0]\rx_data_reg[7]_0 ;
  input clk;
  input reset_n;
  input spi_ena;
  input [2:0]state;
  input spi_busy_prev_reg;
  input spi_cont_reg_0;
  input mosi_0;
  input [3:0]Q;
  input \FSM_sequential_state_reg[2]_1 ;
  input \FSM_sequential_state_reg[2]_2 ;
  input \FSM_sequential_state_reg[2]_3 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input [2:0]\angular_rate_x_int_reg[7] ;
  input \angular_rate_x_int_reg[7]_0 ;
  input \angular_rate_x_int_reg[15] ;
  input \angular_rate_x_int_reg[15]_0 ;
  input \angular_rate_x_int_reg[15]_1 ;
  input [1:0]O;
  input count0_0;
  input \angular_rate_y_int_reg[7] ;
  input \angular_rate_y_int_reg[15] ;
  input \angular_rate_z_int_reg[15] ;
  input \angular_rate_z_int_reg[7] ;
  input \count_reg[0]_1 ;
  input \spi_tx_data_reg[2] ;
  input spi_cont_reg_1;
  input spi_cont_reg_2;
  input \count_reg[2]_0 ;
  input \count_reg[1]_2 ;
  input miso;

  wire [0:0]AR;
  wire [3:0]D;
  wire [1:0]E;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[2]_3 ;
  wire [1:0]O;
  wire [3:0]Q;
  wire \angular_rate_x_int[15]_i_3_n_0 ;
  wire \angular_rate_x_int[15]_i_4_n_0 ;
  wire \angular_rate_x_int[7]_i_3_n_0 ;
  wire \angular_rate_x_int_reg[15] ;
  wire \angular_rate_x_int_reg[15]_0 ;
  wire \angular_rate_x_int_reg[15]_1 ;
  wire [2:0]\angular_rate_x_int_reg[7] ;
  wire \angular_rate_x_int_reg[7]_0 ;
  wire \angular_rate_y_int[15]_i_2_n_0 ;
  wire \angular_rate_y_int_reg[15] ;
  wire \angular_rate_y_int_reg[7] ;
  wire \angular_rate_z_int[7]_i_3_n_0 ;
  wire \angular_rate_z_int_reg[15] ;
  wire \angular_rate_z_int_reg[7] ;
  wire assert_data_i_1_n_0;
  wire assert_data_reg_n_0;
  wire busy1;
  wire busy1_carry__0_i_1_n_0;
  wire busy1_carry__0_i_2_n_0;
  wire busy1_carry__0_i_3_n_0;
  wire busy1_carry__0_i_4_n_0;
  wire busy1_carry__0_n_0;
  wire busy1_carry__0_n_1;
  wire busy1_carry__0_n_2;
  wire busy1_carry__0_n_3;
  wire busy1_carry__1_i_1_n_0;
  wire busy1_carry__1_i_2_n_0;
  wire busy1_carry__1_i_3_n_0;
  wire busy1_carry__1_n_2;
  wire busy1_carry__1_n_3;
  wire busy1_carry_i_1_n_0;
  wire busy1_carry_i_2_n_0;
  wire busy1_carry_i_3_n_0;
  wire busy1_carry_i_4_n_0;
  wire busy1_carry_n_0;
  wire busy1_carry_n_1;
  wire busy1_carry_n_2;
  wire busy1_carry_n_3;
  wire busy_i_1_n_0;
  wire busy_reg_0;
  wire [1:0]busy_reg_1;
  wire clk;
  wire [4:0]clk_toggles;
  wire clk_toggles0;
  wire \clk_toggles[4]_i_1_n_0 ;
  wire continue_i_1_n_0;
  wire continue_reg_n_0;
  wire [31:1]count0;
  wire count0_0;
  wire count0_1;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[1]_i_2_n_0 ;
  wire \count[1]_i_5_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[2]_i_3_n_0 ;
  wire \count[2]_i_5_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire [0:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire [1:0]\count_reg[1]_0 ;
  wire [2:0]\count_reg[1]_1 ;
  wire \count_reg[1]_2 ;
  wire \count_reg[2]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire miso;
  wire mosi;
  wire mosi_0;
  wire mosi_tristate_oe_i_1_n_0;
  wire mosi_tristate_oe_i_2_n_0;
  wire mosi_tristate_oe_reg_n_0;
  wire [4:0]p_1_in;
  wire reset_n;
  wire [7:0]rx_buffer;
  wire rx_buffer0;
  wire \rx_data[7]_i_1_n_0 ;
  wire [7:0]\rx_data_reg[7]_0 ;
  wire sclk;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire spi_busy;
  wire spi_busy_prev_reg;
  wire spi_cont;
  wire spi_cont_i_3_n_0;
  wire spi_cont_i_4_n_0;
  wire spi_cont_i_5_n_0;
  wire spi_cont_i_6_n_0;
  wire spi_cont_i_7_n_0;
  wire spi_cont_i_8_n_0;
  wire spi_cont_i_9_n_0;
  wire spi_cont_reg;
  wire spi_cont_reg_0;
  wire spi_cont_reg_1;
  wire spi_cont_reg_2;
  wire spi_ena;
  wire \spi_tx_data[7]_i_4_n_0 ;
  wire \spi_tx_data[7]_i_5_n_0 ;
  wire \spi_tx_data_reg[2] ;
  wire [0:0]ss_n;
  wire \ss_n[0]_i_1_n_0 ;
  wire \ss_n[0]_i_3_n_0 ;
  wire [2:0]state;
  wire state_0;
  wire state_i_1_n_0;
  wire state_reg_0;
  wire tx_buffer0;
  wire \tx_buffer[0]_i_1_n_0 ;
  wire \tx_buffer[1]_i_1_n_0 ;
  wire \tx_buffer[2]_i_1_n_0 ;
  wire \tx_buffer[3]_i_1_n_0 ;
  wire \tx_buffer[4]_i_1_n_0 ;
  wire \tx_buffer[5]_i_1_n_0 ;
  wire \tx_buffer[6]_i_1_n_0 ;
  wire \tx_buffer[7]_i_2_n_0 ;
  wire \tx_buffer[7]_i_3_n_0 ;
  wire \tx_buffer[7]_i_4_n_0 ;
  wire \tx_buffer_reg_n_0_[0] ;
  wire \tx_buffer_reg_n_0_[1] ;
  wire \tx_buffer_reg_n_0_[2] ;
  wire \tx_buffer_reg_n_0_[3] ;
  wire \tx_buffer_reg_n_0_[4] ;
  wire \tx_buffer_reg_n_0_[5] ;
  wire \tx_buffer_reg_n_0_[6] ;
  wire \tx_buffer_reg_n_0_[7] ;
  wire [3:0]NLW_busy1_carry_O_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_busy1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0303000354545554)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[2]_2 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_3 ),
        .I5(state[0]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[2]_2 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_3 ),
        .I5(state[1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_1 ),
        .I1(\FSM_sequential_state_reg[2]_2 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_3 ),
        .I5(state[2]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_9_n_0 ),
        .I1(\angular_rate_x_int_reg[15]_1 ),
        .I2(spi_cont_reg_2),
        .I3(spi_cont_reg_1),
        .I4(O[1]),
        .I5(\count[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(O[0]),
        .I1(O[1]),
        .I2(state[1]),
        .I3(\angular_rate_x_int_reg[7] [0]),
        .I4(\count[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(state[0]),
        .I1(spi_busy),
        .I2(spi_busy_prev_reg),
        .I3(\angular_rate_x_int_reg[7] [0]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\angular_rate_x_int_reg[7] [1]),
        .I1(\spi_tx_data[7]_i_4_n_0 ),
        .I2(\angular_rate_x_int_reg[7] [2]),
        .I3(\angular_rate_x_int_reg[7]_0 ),
        .I4(\angular_rate_x_int_reg[7] [0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h404040FF40404040)) 
    \angular_rate_x_int[15]_i_1 
       (.I0(\angular_rate_x_int_reg[15] ),
        .I1(\angular_rate_x_int_reg[15]_0 ),
        .I2(\angular_rate_x_int[15]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_3 ),
        .I4(\angular_rate_x_int_reg[15]_1 ),
        .I5(\angular_rate_x_int[15]_i_4_n_0 ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \angular_rate_x_int[15]_i_3 
       (.I0(state[0]),
        .I1(spi_busy),
        .I2(spi_busy_prev_reg),
        .I3(\angular_rate_x_int_reg[7] [1]),
        .O(\angular_rate_x_int[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \angular_rate_x_int[15]_i_4 
       (.I0(O[1]),
        .I1(count0_0),
        .I2(O[0]),
        .I3(state[0]),
        .I4(spi_busy_prev_reg),
        .I5(spi_busy),
        .O(\angular_rate_x_int[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \angular_rate_x_int[7]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_3 ),
        .I1(\angular_rate_x_int_reg[7] [0]),
        .I2(state[1]),
        .I3(\angular_rate_x_int[15]_i_4_n_0 ),
        .I4(\angular_rate_x_int_reg[7]_0 ),
        .I5(\angular_rate_x_int[7]_i_3_n_0 ),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \angular_rate_x_int[7]_i_3 
       (.I0(\angular_rate_x_int_reg[7] [0]),
        .I1(state[1]),
        .I2(count0_0),
        .I3(\angular_rate_x_int_reg[7] [2]),
        .I4(\angular_rate_x_int_reg[7] [1]),
        .I5(\spi_tx_data[7]_i_4_n_0 ),
        .O(\angular_rate_x_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10FF101000000000)) 
    \angular_rate_y_int[15]_i_1 
       (.I0(\angular_rate_x_int_reg[15] ),
        .I1(\angular_rate_x_int_reg[7] [1]),
        .I2(\count[2]_i_5_n_0 ),
        .I3(\angular_rate_y_int_reg[15] ),
        .I4(\angular_rate_y_int[15]_i_2_n_0 ),
        .I5(count0_0),
        .O(\count_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \angular_rate_y_int[15]_i_2 
       (.I0(O[1]),
        .I1(state[0]),
        .I2(spi_busy_prev_reg),
        .I3(spi_busy),
        .I4(O[0]),
        .O(\angular_rate_y_int[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20202000000000)) 
    \angular_rate_y_int[7]_i_1 
       (.I0(\angular_rate_y_int_reg[7] ),
        .I1(\angular_rate_x_int_reg[15]_1 ),
        .I2(\count[2]_i_5_n_0 ),
        .I3(spi_cont_reg_0),
        .I4(\angular_rate_y_int[15]_i_2_n_0 ),
        .I5(count0_0),
        .O(\count_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h0808FF0800000000)) 
    \angular_rate_z_int[15]_i_1 
       (.I0(\count[1]_i_5_n_0 ),
        .I1(O[1]),
        .I2(\angular_rate_y_int_reg[15] ),
        .I3(\angular_rate_x_int[15]_i_3_n_0 ),
        .I4(\angular_rate_z_int_reg[15] ),
        .I5(count0_0),
        .O(busy_reg_1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \angular_rate_z_int[7]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_3 ),
        .I1(\angular_rate_z_int_reg[7] ),
        .I2(O[1]),
        .I3(count0_0),
        .I4(\count[1]_i_5_n_0 ),
        .I5(\angular_rate_z_int[7]_i_3_n_0 ),
        .O(busy_reg_1[0]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \angular_rate_z_int[7]_i_3 
       (.I0(\angular_rate_x_int[15]_i_3_n_0 ),
        .I1(\angular_rate_x_int_reg[7] [2]),
        .I2(count0_0),
        .I3(state[1]),
        .I4(\angular_rate_x_int_reg[7] [0]),
        .I5(\angular_rate_x_int_reg[7]_0 ),
        .O(\angular_rate_z_int[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h1DFFC000)) 
    assert_data_i_1
       (.I0(spi_ena),
        .I1(state_0),
        .I2(busy1),
        .I3(reset_n),
        .I4(assert_data_reg_n_0),
        .O(assert_data_i_1_n_0));
  FDRE assert_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(assert_data_i_1_n_0),
        .Q(assert_data_reg_n_0),
        .R(1'b0));
  CARRY4 busy1_carry
       (.CI(1'b0),
        .CO({busy1_carry_n_0,busy1_carry_n_1,busy1_carry_n_2,busy1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry_O_UNCONNECTED[3:0]),
        .S({busy1_carry_i_1_n_0,busy1_carry_i_2_n_0,busy1_carry_i_3_n_0,busy1_carry_i_4_n_0}));
  CARRY4 busy1_carry__0
       (.CI(busy1_carry_n_0),
        .CO({busy1_carry__0_n_0,busy1_carry__0_n_1,busy1_carry__0_n_2,busy1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__0_O_UNCONNECTED[3:0]),
        .S({busy1_carry__0_i_1_n_0,busy1_carry__0_i_2_n_0,busy1_carry__0_i_3_n_0,busy1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_1
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[21] ),
        .O(busy1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_2
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[18] ),
        .O(busy1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_3
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[15] ),
        .O(busy1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_4
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[12] ),
        .O(busy1_carry__0_i_4_n_0));
  CARRY4 busy1_carry__1
       (.CI(busy1_carry__0_n_0),
        .CO({NLW_busy1_carry__1_CO_UNCONNECTED[3],busy1,busy1_carry__1_n_2,busy1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,busy1_carry__1_i_1_n_0,busy1_carry__1_i_2_n_0,busy1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    busy1_carry__1_i_1
       (.I0(\count_reg_n_0_[30] ),
        .I1(\count_reg_n_0_[31] ),
        .O(busy1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[27] ),
        .O(busy1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[24] ),
        .O(busy1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_1
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .O(busy1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(busy1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(busy1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    busy1_carry_i_4
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .O(busy1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F7F7050)) 
    busy_i_1
       (.I0(busy1),
        .I1(continue_reg_n_0),
        .I2(state_0),
        .I3(\ss_n[0]_i_3_n_0 ),
        .I4(spi_ena),
        .O(busy_i_1_n_0));
  FDPE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(AR),
        .Q(spi_busy));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_toggles[0]_i_1 
       (.I0(clk_toggles[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00EFFF00)) 
    \clk_toggles[1]_i_1 
       (.I0(clk_toggles[2]),
        .I1(clk_toggles[3]),
        .I2(clk_toggles[4]),
        .I3(clk_toggles[1]),
        .I4(clk_toggles[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clk_toggles[2]_i_1 
       (.I0(clk_toggles[2]),
        .I1(clk_toggles[0]),
        .I2(clk_toggles[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clk_toggles[3]_i_1 
       (.I0(clk_toggles[3]),
        .I1(clk_toggles[2]),
        .I2(clk_toggles[1]),
        .I3(clk_toggles[0]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \clk_toggles[4]_i_1 
       (.I0(spi_ena),
        .I1(reset_n),
        .I2(state_0),
        .O(\clk_toggles[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clk_toggles[4]_i_2 
       (.I0(reset_n),
        .I1(busy1),
        .I2(state_0),
        .O(clk_toggles0));
  LUT6 #(
    .INIT(64'h3CCCCCCCCCCCC0C4)) 
    \clk_toggles[4]_i_3 
       (.I0(spi_ena),
        .I1(clk_toggles[4]),
        .I2(clk_toggles[1]),
        .I3(clk_toggles[0]),
        .I4(clk_toggles[3]),
        .I5(clk_toggles[2]),
        .O(p_1_in[4]));
  FDRE \clk_toggles_reg[0] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(p_1_in[0]),
        .Q(clk_toggles[0]),
        .R(\clk_toggles[4]_i_1_n_0 ));
  FDRE \clk_toggles_reg[1] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(p_1_in[1]),
        .Q(clk_toggles[1]),
        .R(\clk_toggles[4]_i_1_n_0 ));
  FDRE \clk_toggles_reg[2] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(p_1_in[2]),
        .Q(clk_toggles[2]),
        .R(\clk_toggles[4]_i_1_n_0 ));
  FDRE \clk_toggles_reg[3] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(p_1_in[3]),
        .Q(clk_toggles[3]),
        .R(\clk_toggles[4]_i_1_n_0 ));
  FDRE \clk_toggles_reg[4] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(p_1_in[4]),
        .Q(clk_toggles[4]),
        .R(\clk_toggles[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3B3B0080)) 
    continue_i_1
       (.I0(state_0),
        .I1(reset_n),
        .I2(busy1),
        .I3(\tx_buffer[7]_i_3_n_0 ),
        .I4(continue_reg_n_0),
        .O(continue_i_1_n_0));
  FDRE continue_reg
       (.C(clk),
        .CE(1'b1),
        .D(continue_i_1_n_0),
        .Q(continue_reg_n_0),
        .R(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'hEEFEEEEE)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_3 ),
        .I3(\angular_rate_x_int_reg[7] [0]),
        .I4(\count[0]_i_4_n_0 ),
        .O(\count_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'hBBFFFC00)) 
    \count[0]_i_1__0 
       (.I0(busy1),
        .I1(state_0),
        .I2(spi_ena),
        .I3(reset_n),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8800880F)) 
    \count[0]_i_2 
       (.I0(\spi_tx_data[7]_i_4_n_0 ),
        .I1(\angular_rate_x_int_reg[7]_0 ),
        .I2(state[0]),
        .I3(\angular_rate_x_int_reg[7] [0]),
        .I4(\count_reg[0]_1 ),
        .I5(\count[0]_i_5_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5040FFFF50400000)) 
    \count[0]_i_3 
       (.I0(\angular_rate_x_int_reg[7] [1]),
        .I1(\angular_rate_x_int_reg[7] [2]),
        .I2(\spi_tx_data[7]_i_4_n_0 ),
        .I3(state[1]),
        .I4(\angular_rate_x_int_reg[7] [0]),
        .I5(\angular_rate_y_int[15]_i_2_n_0 ),
        .O(\count[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \count[0]_i_4 
       (.I0(state[0]),
        .I1(spi_busy_prev_reg),
        .I2(spi_busy),
        .O(\count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABAEAAAAAFAEAAAA)) 
    \count[0]_i_5 
       (.I0(\count[0]_i_6_n_0 ),
        .I1(O[0]),
        .I2(\angular_rate_x_int_reg[7] [0]),
        .I3(state[1]),
        .I4(\count[0]_i_4_n_0 ),
        .I5(O[1]),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \count[0]_i_6 
       (.I0(\angular_rate_x_int_reg[7] [0]),
        .I1(state[1]),
        .I2(\angular_rate_x_int_reg[7] [2]),
        .I3(\angular_rate_x_int_reg[7] [1]),
        .I4(\spi_tx_data[7]_i_4_n_0 ),
        .O(\count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    \count[1]_i_1 
       (.I0(\count[1]_i_2_n_0 ),
        .I1(\count_reg[1]_2 ),
        .I2(O[1]),
        .I3(\FSM_sequential_state_reg[2]_3 ),
        .I4(\angular_rate_x_int_reg[15]_1 ),
        .I5(\count[1]_i_5_n_0 ),
        .O(\count_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hD0D000D000000000)) 
    \count[1]_i_2 
       (.I0(\angular_rate_x_int_reg[7] [2]),
        .I1(\angular_rate_x_int_reg[15] ),
        .I2(\angular_rate_x_int_reg[7] [1]),
        .I3(spi_busy_prev_reg),
        .I4(spi_busy),
        .I5(state[0]),
        .O(\count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \count[1]_i_5 
       (.I0(spi_busy),
        .I1(spi_busy_prev_reg),
        .I2(state[0]),
        .I3(O[0]),
        .O(\count[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAEAEAFFEAEA)) 
    \count[2]_i_1 
       (.I0(\count_reg[2]_0 ),
        .I1(\count[2]_i_3_n_0 ),
        .I2(\angular_rate_y_int_reg[15] ),
        .I3(\angular_rate_x_int_reg[7] [1]),
        .I4(\count[2]_i_5_n_0 ),
        .I5(\angular_rate_x_int_reg[15] ),
        .O(\count_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h4F4FFFFF4F400000)) 
    \count[2]_i_1__0 
       (.I0(busy1),
        .I1(count0[2]),
        .I2(state_0),
        .I3(spi_ena),
        .I4(reset_n),
        .I5(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \count[2]_i_3 
       (.I0(spi_busy),
        .I1(spi_busy_prev_reg),
        .I2(state[0]),
        .I3(O[1]),
        .O(\count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \count[2]_i_5 
       (.I0(state[0]),
        .I1(spi_busy),
        .I2(spi_busy_prev_reg),
        .I3(\angular_rate_x_int_reg[7] [2]),
        .O(\count[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \count[31]_i_1 
       (.I0(busy1),
        .I1(reset_n),
        .I2(spi_ena),
        .I3(state_0),
        .O(\count[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \count[31]_i_2 
       (.I0(state_0),
        .I1(spi_ena),
        .I2(reset_n),
        .O(count0_1));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(count0_1),
        .D(count0[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mosi_INST_0
       (.I0(mosi_tristate_oe_reg_n_0),
        .I1(mosi_0),
        .O(mosi));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    mosi_INST_0_i_2
       (.I0(state_0),
        .I1(assert_data_reg_n_0),
        .I2(clk_toggles[4]),
        .I3(mosi_tristate_oe_i_2_n_0),
        .I4(mosi_0),
        .O(state_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mosi_tristate_oe_i_1
       (.I0(\tx_buffer_reg_n_0_[7] ),
        .I1(mosi_tristate_oe_i_2_n_0),
        .I2(mosi_tristate_oe_reg_n_0),
        .O(mosi_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'h4F4F0F0F4FFF0F0F)) 
    mosi_tristate_oe_i_2
       (.I0(clk_toggles[4]),
        .I1(assert_data_reg_n_0),
        .I2(state_0),
        .I3(spi_ena),
        .I4(busy1),
        .I5(\ss_n[0]_i_3_n_0 ),
        .O(mosi_tristate_oe_i_2_n_0));
  FDRE mosi_tristate_oe_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_tristate_oe_i_1_n_0),
        .Q(mosi_tristate_oe_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rx_buffer[7]_i_1 
       (.I0(reset_n),
        .I1(busy1),
        .I2(state_0),
        .I3(ss_n),
        .I4(assert_data_reg_n_0),
        .I5(sclk_i_2_n_0),
        .O(rx_buffer0));
  FDRE \rx_buffer_reg[0] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(miso),
        .Q(rx_buffer[0]),
        .R(1'b0));
  FDRE \rx_buffer_reg[1] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[0]),
        .Q(rx_buffer[1]),
        .R(1'b0));
  FDRE \rx_buffer_reg[2] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[1]),
        .Q(rx_buffer[2]),
        .R(1'b0));
  FDRE \rx_buffer_reg[3] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[2]),
        .Q(rx_buffer[3]),
        .R(1'b0));
  FDRE \rx_buffer_reg[4] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[3]),
        .Q(rx_buffer[4]),
        .R(1'b0));
  FDRE \rx_buffer_reg[5] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[4]),
        .Q(rx_buffer[5]),
        .R(1'b0));
  FDRE \rx_buffer_reg[6] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[5]),
        .Q(rx_buffer[6]),
        .R(1'b0));
  FDRE \rx_buffer_reg[7] 
       (.C(clk),
        .CE(rx_buffer0),
        .D(rx_buffer[6]),
        .Q(rx_buffer[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80808088)) 
    \rx_data[7]_i_1 
       (.I0(state_0),
        .I1(busy1),
        .I2(continue_reg_n_0),
        .I3(\ss_n[0]_i_3_n_0 ),
        .I4(spi_ena),
        .O(\rx_data[7]_i_1_n_0 ));
  FDCE \rx_data_reg[0] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[0]),
        .Q(\rx_data_reg[7]_0 [0]));
  FDCE \rx_data_reg[1] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[1]),
        .Q(\rx_data_reg[7]_0 [1]));
  FDCE \rx_data_reg[2] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[2]),
        .Q(\rx_data_reg[7]_0 [2]));
  FDCE \rx_data_reg[3] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[3]),
        .Q(\rx_data_reg[7]_0 [3]));
  FDCE \rx_data_reg[4] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[4]),
        .Q(\rx_data_reg[7]_0 [4]));
  FDCE \rx_data_reg[5] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[5]),
        .Q(\rx_data_reg[7]_0 [5]));
  FDCE \rx_data_reg[6] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[6]),
        .Q(\rx_data_reg[7]_0 [6]));
  FDCE \rx_data_reg[7] 
       (.C(clk),
        .CE(\rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(rx_buffer[7]),
        .Q(\rx_data_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF0800FF00)) 
    sclk_i_1
       (.I0(sclk_i_2_n_0),
        .I1(busy1),
        .I2(ss_n),
        .I3(reset_n),
        .I4(state_0),
        .I5(sclk),
        .O(sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    sclk_i_2
       (.I0(clk_toggles[0]),
        .I1(clk_toggles[3]),
        .I2(clk_toggles[2]),
        .I3(clk_toggles[1]),
        .I4(clk_toggles[4]),
        .O(sclk_i_2_n_0));
  FDRE sclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    spi_busy_prev_i_1
       (.I0(spi_busy),
        .I1(state[0]),
        .I2(state[2]),
        .I3(spi_busy_prev_reg),
        .O(busy_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    spi_cont_i_1
       (.I0(spi_cont),
        .I1(spi_cont_reg_0),
        .I2(spi_cont_i_3_n_0),
        .I3(spi_cont_i_4_n_0),
        .I4(spi_cont_i_5_n_0),
        .I5(spi_ena),
        .O(spi_cont_reg));
  LUT6 #(
    .INIT(64'h00000000443C773C)) 
    spi_cont_i_2
       (.I0(\angular_rate_x_int_reg[7] [2]),
        .I1(spi_cont_i_6_n_0),
        .I2(\angular_rate_x_int_reg[7] [0]),
        .I3(state[1]),
        .I4(O[1]),
        .I5(state[2]),
        .O(spi_cont));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    spi_cont_i_3
       (.I0(state[2]),
        .I1(O[1]),
        .I2(O[0]),
        .I3(state[0]),
        .I4(spi_busy_prev_reg),
        .I5(spi_busy),
        .O(spi_cont_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAAE000C000C)) 
    spi_cont_i_4
       (.I0(spi_cont_i_7_n_0),
        .I1(spi_cont_i_8_n_0),
        .I2(spi_cont_reg_1),
        .I3(spi_cont_reg_2),
        .I4(spi_cont_i_9_n_0),
        .I5(\spi_tx_data_reg[2] ),
        .O(spi_cont_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    spi_cont_i_5
       (.I0(\angular_rate_x_int[15]_i_3_n_0 ),
        .I1(state[2]),
        .I2(\angular_rate_x_int_reg[7] [2]),
        .I3(state[1]),
        .I4(\angular_rate_x_int_reg[7] [0]),
        .I5(\angular_rate_x_int_reg[7]_0 ),
        .O(spi_cont_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    spi_cont_i_6
       (.I0(spi_busy),
        .I1(spi_busy_prev_reg),
        .O(spi_cont_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    spi_cont_i_7
       (.I0(state[1]),
        .I1(\angular_rate_x_int_reg[7] [0]),
        .I2(spi_busy),
        .I3(state[2]),
        .I4(state[0]),
        .O(spi_cont_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000B00000000)) 
    spi_cont_i_8
       (.I0(\angular_rate_x_int_reg[7] [0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(\count[0]_i_4_n_0 ),
        .O(spi_cont_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    spi_cont_i_9
       (.I0(state[0]),
        .I1(state[2]),
        .I2(spi_busy_prev_reg),
        .I3(spi_busy),
        .I4(\angular_rate_x_int_reg[7] [0]),
        .I5(state[1]),
        .O(spi_cont_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spi_tx_data[2]_i_1 
       (.I0(state[2]),
        .I1(spi_busy),
        .I2(state[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \spi_tx_data[3]_i_1 
       (.I0(spi_busy),
        .I1(state[1]),
        .I2(state[2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \spi_tx_data[5]_i_1 
       (.I0(spi_busy),
        .I1(state[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \spi_tx_data[7]_i_1 
       (.I0(\spi_tx_data_reg[2] ),
        .I1(\angular_rate_x_int_reg[7] [0]),
        .I2(state[2]),
        .I3(\spi_tx_data[7]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_3 ),
        .I5(\spi_tx_data[7]_i_5_n_0 ),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spi_tx_data[7]_i_2 
       (.I0(spi_busy),
        .I1(state[2]),
        .I2(state[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \spi_tx_data[7]_i_4 
       (.I0(spi_busy_prev_reg),
        .I1(spi_busy),
        .I2(state[0]),
        .O(\spi_tx_data[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \spi_tx_data[7]_i_5 
       (.I0(\angular_rate_x_int_reg[7] [0]),
        .I1(state[2]),
        .I2(O[0]),
        .I3(O[1]),
        .I4(\count[0]_i_4_n_0 ),
        .O(\spi_tx_data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \ss_n[0]_i_1 
       (.I0(\ss_n[0]_i_3_n_0 ),
        .I1(busy1),
        .I2(spi_ena),
        .I3(state_0),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ss_n[0]_i_2 
       (.I0(reset_n),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \ss_n[0]_i_3 
       (.I0(clk_toggles[4]),
        .I1(clk_toggles[3]),
        .I2(clk_toggles[2]),
        .I3(clk_toggles[1]),
        .I4(clk_toggles[0]),
        .O(\ss_n[0]_i_3_n_0 ));
  FDPE \ss_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ss_n[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(ss_n));
  LUT4 #(
    .INIT(16'hEAFA)) 
    state_i_1
       (.I0(spi_ena),
        .I1(\ss_n[0]_i_3_n_0 ),
        .I2(state_0),
        .I3(busy1),
        .O(state_i_1_n_0));
  FDCE state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(state_i_1_n_0),
        .Q(state_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \tx_buffer[0]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[0]),
        .O(\tx_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[1]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[0]),
        .I3(\tx_buffer_reg_n_0_[0] ),
        .O(\tx_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[2]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[0]),
        .I3(\tx_buffer_reg_n_0_[1] ),
        .O(\tx_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[3]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[1]),
        .I3(\tx_buffer_reg_n_0_[2] ),
        .O(\tx_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tx_buffer[4]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(\tx_buffer_reg_n_0_[3] ),
        .O(\tx_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[5]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[2]),
        .I3(\tx_buffer_reg_n_0_[4] ),
        .O(\tx_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[6]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[3]),
        .I3(\tx_buffer_reg_n_0_[5] ),
        .O(\tx_buffer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75550000)) 
    \tx_buffer[7]_i_1 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(clk_toggles[4]),
        .I2(assert_data_reg_n_0),
        .I3(state_0),
        .I4(\tx_buffer[7]_i_4_n_0 ),
        .I5(\clk_toggles[4]_i_1_n_0 ),
        .O(tx_buffer0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF870)) 
    \tx_buffer[7]_i_2 
       (.I0(\tx_buffer[7]_i_3_n_0 ),
        .I1(state_0),
        .I2(Q[3]),
        .I3(\tx_buffer_reg_n_0_[6] ),
        .O(\tx_buffer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \tx_buffer[7]_i_3 
       (.I0(spi_ena),
        .I1(clk_toggles[0]),
        .I2(clk_toggles[4]),
        .I3(clk_toggles[3]),
        .I4(clk_toggles[2]),
        .I5(clk_toggles[1]),
        .O(\tx_buffer[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_buffer[7]_i_4 
       (.I0(busy1),
        .I1(reset_n),
        .O(\tx_buffer[7]_i_4_n_0 ));
  FDRE \tx_buffer_reg[0] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[0]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[1] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[1]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[2] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[2]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[3] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[3]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[4] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[4]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[5] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[5]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[6] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[6]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[7] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[7]_i_2_n_0 ),
        .Q(\tx_buffer_reg_n_0_[7] ),
        .R(1'b0));
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
