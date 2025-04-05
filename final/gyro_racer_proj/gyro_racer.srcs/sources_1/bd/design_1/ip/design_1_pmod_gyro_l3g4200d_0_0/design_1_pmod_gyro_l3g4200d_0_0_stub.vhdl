-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar 24 15:06:47 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pmod_gyro_l3g4200d_0_0/design_1_pmod_gyro_l3g4200d_0_0_stub.vhdl
-- Design      : design_1_pmod_gyro_l3g4200d_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pmod_gyro_l3g4200d_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    miso : in STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mosi : out STD_LOGIC;
    angular_rate_x : out STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_z : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_pmod_gyro_l3g4200d_0_0;

architecture stub of design_1_pmod_gyro_l3g4200d_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,miso,sclk,ss_n[0:0],mosi,angular_rate_x[15:0],angular_rate_y[15:0],angular_rate_z[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pmod_gyro_l3g4200d,Vivado 2018.3";
begin
end;
