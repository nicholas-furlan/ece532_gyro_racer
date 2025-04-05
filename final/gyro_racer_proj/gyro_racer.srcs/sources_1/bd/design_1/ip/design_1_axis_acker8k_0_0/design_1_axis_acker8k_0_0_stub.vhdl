-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  1 04:27:45 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_axis_acker8k_0_0/design_1_axis_acker8k_0_0_stub.vhdl
-- Design      : design_1_axis_acker8k_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axis_acker8k_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_axis_acker8k_0_0;

architecture stub of design_1_axis_acker8k_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,out_data[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_acker8k,Vivado 2018.3";
begin
end;
