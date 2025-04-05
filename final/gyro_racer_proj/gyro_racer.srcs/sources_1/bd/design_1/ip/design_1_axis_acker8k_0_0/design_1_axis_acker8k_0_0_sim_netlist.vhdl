-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  1 04:27:45 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_axis_acker8k_0_0/design_1_axis_acker8k_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_acker8k_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_acker8k_0_0_axis_acker8k is
  port (
    s_axis_tready : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    resetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_acker8k_0_0_axis_acker8k : entity is "axis_acker8k";
end design_1_axis_acker8k_0_0_axis_acker8k;

architecture STRUCTURE of design_1_axis_acker8k_0_0_axis_acker8k is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \out_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_10_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_11_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_12_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_8_n_0\ : STD_LOGIC;
  signal \out_data[7]_i_9_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_10_n_0 : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_i_5_n_0 : STD_LOGIC;
  signal s_axis_tready_i_6_n_0 : STD_LOGIC;
  signal s_axis_tready_i_7_n_0 : STD_LOGIC;
  signal s_axis_tready_i_8_n_0 : STD_LOGIC;
  signal s_axis_tready_i_9_n_0 : STD_LOGIC;
  signal saved_value : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \saved_value[31]_i_1_n_0\ : STD_LOGIC;
  signal \saved_value[31]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_data[7]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_data[7]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axis_tready_i_5 : label is "soft_lutpair0";
begin
  s_axis_tready <= \^s_axis_tready\;
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tready_i_2_n_0,
      I1 => resetn,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
\out_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(24),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(16),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[0]_i_2_n_0\,
      O => p_1_in(0)
    );
\out_data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(0),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(8),
      O => \out_data[0]_i_2_n_0\
    );
\out_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(25),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(17),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[1]_i_2_n_0\,
      O => p_1_in(1)
    );
\out_data[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(1),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(9),
      O => \out_data[1]_i_2_n_0\
    );
\out_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(26),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(18),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\out_data[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(2),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(10),
      O => \out_data[2]_i_2_n_0\
    );
\out_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(27),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(19),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\out_data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(3),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(11),
      O => \out_data[3]_i_2_n_0\
    );
\out_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(28),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(20),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[4]_i_2_n_0\,
      O => p_1_in(4)
    );
\out_data[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(4),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(12),
      O => \out_data[4]_i_2_n_0\
    );
\out_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(29),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(21),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[5]_i_2_n_0\,
      O => p_1_in(5)
    );
\out_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(5),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(13),
      O => \out_data[5]_i_2_n_0\
    );
\out_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(30),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(22),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\out_data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(6),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(14),
      O => \out_data[6]_i_2_n_0\
    );
\out_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => resetn,
      O => \out_data[7]_i_1_n_0\
    );
\out_data[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(5),
      I3 => counter_reg(6),
      I4 => counter_reg(2),
      O => \out_data[7]_i_10_n_0\
    );
\out_data[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(10),
      O => \out_data[7]_i_11_n_0\
    );
\out_data[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000E000F0000000"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      I4 => counter_reg(5),
      I5 => counter_reg(4),
      O => \out_data[7]_i_12_n_0\
    );
\out_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => saved_value(31),
      I1 => \out_data[7]_i_3_n_0\,
      I2 => saved_value(23),
      I3 => \out_data[7]_i_4_n_0\,
      I4 => \out_data[7]_i_5_n_0\,
      O => p_1_in(7)
    );
\out_data[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEECEEEE"
    )
        port map (
      I0 => counter_reg(15),
      I1 => s_axis_tready_i_5_n_0,
      I2 => counter_reg(14),
      I3 => counter_reg(13),
      I4 => \out_data[7]_i_6_n_0\,
      O => \out_data[7]_i_3_n_0\
    );
\out_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
        port map (
      I0 => \out_data[7]_i_7_n_0\,
      I1 => counter_reg(13),
      I2 => counter_reg(14),
      I3 => \out_data[7]_i_8_n_0\,
      I4 => s_axis_tready_i_4_n_0,
      I5 => counter_reg(9),
      O => \out_data[7]_i_4_n_0\
    );
\out_data[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => saved_value(7),
      I1 => \out_data[7]_i_7_n_0\,
      I2 => \out_data[7]_i_9_n_0\,
      I3 => counter_reg(14),
      I4 => saved_value(15),
      O => \out_data[7]_i_5_n_0\
    );
\out_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FFFFFFFFFF"
    )
        port map (
      I0 => \out_data[7]_i_10_n_0\,
      I1 => counter_reg(8),
      I2 => counter_reg(7),
      I3 => counter_reg(9),
      I4 => \out_data[7]_i_11_n_0\,
      I5 => counter_reg(12),
      O => \out_data[7]_i_6_n_0\
    );
\out_data[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(15),
      I1 => s_axis_tready_i_10_n_0,
      I2 => s_axis_tready_i_9_n_0,
      I3 => s_axis_tready_i_8_n_0,
      I4 => s_axis_tready_i_7_n_0,
      O => \out_data[7]_i_7_n_0\
    );
\out_data[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(6),
      I4 => counter_reg(8),
      I5 => counter_reg(7),
      O => \out_data[7]_i_8_n_0\
    );
\out_data[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => counter_reg(8),
      I1 => \out_data[7]_i_11_n_0\,
      I2 => counter_reg(9),
      I3 => \out_data[7]_i_12_n_0\,
      I4 => counter_reg(12),
      I5 => counter_reg(13),
      O => \out_data[7]_i_9_n_0\
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => out_data(0),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => out_data(1),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => out_data(2),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => out_data(3),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => out_data(4),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => out_data(5),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => out_data(6),
      R => \out_data[7]_i_1_n_0\
    );
\out_data_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => out_data(7),
      S => \out_data[7]_i_1_n_0\
    );
s_axis_tready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axis_tready_i_2_n_0,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => resetn,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(31),
      I1 => counter_reg(20),
      I2 => counter_reg(21),
      I3 => counter_reg(25),
      O => s_axis_tready_i_10_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888880"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(14),
      I2 => s_axis_tready_i_3_n_0,
      I3 => s_axis_tready_i_4_n_0,
      I4 => counter_reg(13),
      I5 => s_axis_tready_i_5_n_0,
      O => s_axis_tready_i_2_n_0
    );
s_axis_tready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2000000"
    )
        port map (
      I0 => counter_reg(6),
      I1 => s_axis_tready_i_6_n_0,
      I2 => counter_reg(7),
      I3 => counter_reg(8),
      I4 => counter_reg(9),
      O => s_axis_tready_i_3_n_0
    );
s_axis_tready_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(10),
      I2 => counter_reg(11),
      O => s_axis_tready_i_4_n_0
    );
s_axis_tready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tready_i_7_n_0,
      I1 => s_axis_tready_i_8_n_0,
      I2 => s_axis_tready_i_9_n_0,
      I3 => s_axis_tready_i_10_n_0,
      O => s_axis_tready_i_5_n_0
    );
s_axis_tready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111111111111"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => counter_reg(0),
      I3 => counter_reg(1),
      I4 => counter_reg(3),
      I5 => counter_reg(2),
      O => s_axis_tready_i_6_n_0
    );
s_axis_tready_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(27),
      I2 => counter_reg(18),
      I3 => counter_reg(29),
      O => s_axis_tready_i_7_n_0
    );
s_axis_tready_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(28),
      I2 => counter_reg(19),
      I3 => counter_reg(26),
      O => s_axis_tready_i_8_n_0
    );
s_axis_tready_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(23),
      I2 => counter_reg(22),
      I3 => counter_reg(30),
      O => s_axis_tready_i_9_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
\saved_value[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \saved_value[31]_i_1_n_0\
    );
\saved_value[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tready_i_2_n_0,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      O => \saved_value[31]_i_2_n_0\
    );
\saved_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => saved_value(0),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(10),
      Q => saved_value(10),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(11),
      Q => saved_value(11),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(12),
      Q => saved_value(12),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(13),
      Q => saved_value(13),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(14),
      Q => saved_value(14),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(15),
      Q => saved_value(15),
      S => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(16),
      Q => saved_value(16),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(17),
      Q => saved_value(17),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(18),
      Q => saved_value(18),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(19),
      Q => saved_value(19),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => saved_value(1),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(20),
      Q => saved_value(20),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(21),
      Q => saved_value(21),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(22),
      Q => saved_value(22),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(23),
      Q => saved_value(23),
      S => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(24),
      Q => saved_value(24),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(25),
      Q => saved_value(25),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(26),
      Q => saved_value(26),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(27),
      Q => saved_value(27),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(28),
      Q => saved_value(28),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(29),
      Q => saved_value(29),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => saved_value(2),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(30),
      Q => saved_value(30),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(31),
      Q => saved_value(31),
      S => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => saved_value(3),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => saved_value(4),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => saved_value(5),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => saved_value(6),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => saved_value(7),
      S => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(8),
      Q => saved_value(8),
      R => \saved_value[31]_i_1_n_0\
    );
\saved_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \saved_value[31]_i_2_n_0\,
      D => s_axis_tdata(9),
      Q => saved_value(9),
      R => \saved_value[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_acker8k_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_acker8k_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_acker8k_0_0 : entity is "design_1_axis_acker8k_0_0,axis_acker8k,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_acker8k_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_acker8k_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_acker8k_0_0 : entity is "axis_acker8k,Vivado 2018.3";
end design_1_axis_acker8k_0_0;

architecture STRUCTURE of design_1_axis_acker8k_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
inst: entity work.design_1_axis_acker8k_0_0_axis_acker8k
     port map (
      clk => clk,
      out_data(7 downto 0) => out_data(7 downto 0),
      resetn => resetn,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
