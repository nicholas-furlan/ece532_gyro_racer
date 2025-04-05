// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  1 04:27:45 2025
// Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_axis_acker8k_0_0/design_1_axis_acker8k_0_0_sim_netlist.v
// Design      : design_1_axis_acker8k_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_acker8k_0_0,axis_acker8k,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_acker8k,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_axis_acker8k_0_0
   (clk,
    resetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    out_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  output [7:0]out_data;

  wire clk;
  wire [7:0]out_data;
  wire resetn;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  design_1_axis_acker8k_0_0_axis_acker8k inst
       (.clk(clk),
        .out_data(out_data),
        .resetn(resetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_acker8k" *) 
module design_1_axis_acker8k_0_0_axis_acker8k
   (s_axis_tready,
    out_data,
    resetn,
    s_axis_tvalid,
    clk,
    s_axis_tdata);
  output s_axis_tready;
  output [7:0]out_data;
  input resetn;
  input s_axis_tvalid;
  input clk;
  input [31:0]s_axis_tdata;

  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [7:0]out_data;
  wire \out_data[0]_i_2_n_0 ;
  wire \out_data[1]_i_2_n_0 ;
  wire \out_data[2]_i_2_n_0 ;
  wire \out_data[3]_i_2_n_0 ;
  wire \out_data[4]_i_2_n_0 ;
  wire \out_data[5]_i_2_n_0 ;
  wire \out_data[6]_i_2_n_0 ;
  wire \out_data[7]_i_10_n_0 ;
  wire \out_data[7]_i_11_n_0 ;
  wire \out_data[7]_i_12_n_0 ;
  wire \out_data[7]_i_1_n_0 ;
  wire \out_data[7]_i_3_n_0 ;
  wire \out_data[7]_i_4_n_0 ;
  wire \out_data[7]_i_5_n_0 ;
  wire \out_data[7]_i_6_n_0 ;
  wire \out_data[7]_i_7_n_0 ;
  wire \out_data[7]_i_8_n_0 ;
  wire \out_data[7]_i_9_n_0 ;
  wire [7:0]p_1_in;
  wire resetn;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_i_10_n_0;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_2_n_0;
  wire s_axis_tready_i_3_n_0;
  wire s_axis_tready_i_4_n_0;
  wire s_axis_tready_i_5_n_0;
  wire s_axis_tready_i_6_n_0;
  wire s_axis_tready_i_7_n_0;
  wire s_axis_tready_i_8_n_0;
  wire s_axis_tready_i_9_n_0;
  wire s_axis_tvalid;
  wire [31:0]saved_value;
  wire \saved_value[31]_i_1_n_0 ;
  wire \saved_value[31]_i_2_n_0 ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \counter[0]_i_1 
       (.I0(s_axis_tready_i_2_n_0),
        .I1(resetn),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[0]_i_1 
       (.I0(saved_value[24]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[16]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[0]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[0]_i_2 
       (.I0(saved_value[0]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[8]),
        .O(\out_data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[1]_i_1 
       (.I0(saved_value[25]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[17]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[1]_i_2 
       (.I0(saved_value[1]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[9]),
        .O(\out_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[2]_i_1 
       (.I0(saved_value[26]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[18]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[2]_i_2 
       (.I0(saved_value[2]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[10]),
        .O(\out_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[3]_i_1 
       (.I0(saved_value[27]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[19]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[3]_i_2 
       (.I0(saved_value[3]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[11]),
        .O(\out_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[4]_i_1 
       (.I0(saved_value[28]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[20]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[4]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[4]_i_2 
       (.I0(saved_value[4]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[12]),
        .O(\out_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[5]_i_1 
       (.I0(saved_value[29]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[21]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[5]_i_2 
       (.I0(saved_value[5]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[13]),
        .O(\out_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[6]_i_1 
       (.I0(saved_value[30]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[22]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[6]_i_2 
       (.I0(saved_value[6]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[14]),
        .O(\out_data[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_data[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(resetn),
        .O(\out_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out_data[7]_i_10 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .I4(counter_reg[2]),
        .O(\out_data[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out_data[7]_i_11 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(\out_data[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF000E000F0000000)) 
    \out_data[7]_i_12 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\out_data[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_data[7]_i_2 
       (.I0(saved_value[31]),
        .I1(\out_data[7]_i_3_n_0 ),
        .I2(saved_value[23]),
        .I3(\out_data[7]_i_4_n_0 ),
        .I4(\out_data[7]_i_5_n_0 ),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hEEECEEEE)) 
    \out_data[7]_i_3 
       (.I0(counter_reg[15]),
        .I1(s_axis_tready_i_5_n_0),
        .I2(counter_reg[14]),
        .I3(counter_reg[13]),
        .I4(\out_data[7]_i_6_n_0 ),
        .O(\out_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \out_data[7]_i_4 
       (.I0(\out_data[7]_i_7_n_0 ),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(\out_data[7]_i_8_n_0 ),
        .I4(s_axis_tready_i_4_n_0),
        .I5(counter_reg[9]),
        .O(\out_data[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \out_data[7]_i_5 
       (.I0(saved_value[7]),
        .I1(\out_data[7]_i_7_n_0 ),
        .I2(\out_data[7]_i_9_n_0 ),
        .I3(counter_reg[14]),
        .I4(saved_value[15]),
        .O(\out_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000001FFFFFFFFFF)) 
    \out_data[7]_i_6 
       (.I0(\out_data[7]_i_10_n_0 ),
        .I1(counter_reg[8]),
        .I2(counter_reg[7]),
        .I3(counter_reg[9]),
        .I4(\out_data[7]_i_11_n_0 ),
        .I5(counter_reg[12]),
        .O(\out_data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_data[7]_i_7 
       (.I0(counter_reg[15]),
        .I1(s_axis_tready_i_10_n_0),
        .I2(s_axis_tready_i_9_n_0),
        .I3(s_axis_tready_i_8_n_0),
        .I4(s_axis_tready_i_7_n_0),
        .O(\out_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \out_data[7]_i_8 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[6]),
        .I4(counter_reg[8]),
        .I5(counter_reg[7]),
        .O(\out_data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \out_data[7]_i_9 
       (.I0(counter_reg[8]),
        .I1(\out_data[7]_i_11_n_0 ),
        .I2(counter_reg[9]),
        .I3(\out_data[7]_i_12_n_0 ),
        .I4(counter_reg[12]),
        .I5(counter_reg[13]),
        .O(\out_data[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(out_data[0]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(out_data[1]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(out_data[2]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(out_data[3]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(out_data[4]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(out_data[5]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(out_data[6]),
        .R(\out_data[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(out_data[7]),
        .S(\out_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    s_axis_tready_i_1
       (.I0(s_axis_tready_i_2_n_0),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(resetn),
        .O(s_axis_tready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_10
       (.I0(counter_reg[31]),
        .I1(counter_reg[20]),
        .I2(counter_reg[21]),
        .I3(counter_reg[25]),
        .O(s_axis_tready_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    s_axis_tready_i_2
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(s_axis_tready_i_3_n_0),
        .I3(s_axis_tready_i_4_n_0),
        .I4(counter_reg[13]),
        .I5(s_axis_tready_i_5_n_0),
        .O(s_axis_tready_i_2_n_0));
  LUT5 #(
    .INIT(32'hF2000000)) 
    s_axis_tready_i_3
       (.I0(counter_reg[6]),
        .I1(s_axis_tready_i_6_n_0),
        .I2(counter_reg[7]),
        .I3(counter_reg[8]),
        .I4(counter_reg[9]),
        .O(s_axis_tready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_axis_tready_i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[10]),
        .I2(counter_reg[11]),
        .O(s_axis_tready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_5
       (.I0(s_axis_tready_i_7_n_0),
        .I1(s_axis_tready_i_8_n_0),
        .I2(s_axis_tready_i_9_n_0),
        .I3(s_axis_tready_i_10_n_0),
        .O(s_axis_tready_i_5_n_0));
  LUT6 #(
    .INIT(64'h0111111111111111)) 
    s_axis_tready_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[3]),
        .I5(counter_reg[2]),
        .O(s_axis_tready_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_7
       (.I0(counter_reg[16]),
        .I1(counter_reg[27]),
        .I2(counter_reg[18]),
        .I3(counter_reg[29]),
        .O(s_axis_tready_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_8
       (.I0(counter_reg[24]),
        .I1(counter_reg[28]),
        .I2(counter_reg[19]),
        .I3(counter_reg[26]),
        .O(s_axis_tready_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_9
       (.I0(counter_reg[17]),
        .I1(counter_reg[23]),
        .I2(counter_reg[22]),
        .I3(counter_reg[30]),
        .O(s_axis_tready_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \saved_value[31]_i_1 
       (.I0(resetn),
        .O(\saved_value[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \saved_value[31]_i_2 
       (.I0(s_axis_tready_i_2_n_0),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .O(\saved_value[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[0] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(saved_value[0]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[10] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(saved_value[10]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[11] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(saved_value[11]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[12] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(saved_value[12]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[13] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(saved_value[13]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[14] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(saved_value[14]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \saved_value_reg[15] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(saved_value[15]),
        .S(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[16] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(saved_value[16]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[17] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(saved_value[17]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[18] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(saved_value[18]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[19] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(saved_value[19]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[1] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(saved_value[1]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[20] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(saved_value[20]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[21] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(saved_value[21]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[22] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(saved_value[22]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \saved_value_reg[23] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(saved_value[23]),
        .S(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[24] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(saved_value[24]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[25] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(saved_value[25]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[26] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(saved_value[26]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[27] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(saved_value[27]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[28] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(saved_value[28]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[29] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(saved_value[29]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[2] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(saved_value[2]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[30] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(saved_value[30]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \saved_value_reg[31] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(saved_value[31]),
        .S(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[3] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(saved_value[3]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[4] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(saved_value[4]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[5] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(saved_value[5]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[6] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(saved_value[6]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \saved_value_reg[7] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(saved_value[7]),
        .S(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[8] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(saved_value[8]),
        .R(\saved_value[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saved_value_reg[9] 
       (.C(clk),
        .CE(\saved_value[31]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(saved_value[9]),
        .R(\saved_value[31]_i_1_n_0 ));
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
