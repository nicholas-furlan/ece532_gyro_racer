-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar 24 15:06:47 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Documents/repos/ECE532/integration/main/final/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pmod_gyro_l3g4200d_0_0/design_1_pmod_gyro_l3g4200d_0_0_sim_netlist.vhdl
-- Design      : design_1_pmod_gyro_l3g4200d_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_gyro_l3g4200d_0_0_spi_master is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_busy : out STD_LOGIC;
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : out STD_LOGIC;
    busy_reg_0 : out STD_LOGIC;
    spi_cont_reg : out STD_LOGIC;
    state_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mosi : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[1]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \rx_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    spi_ena : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    spi_busy_prev_reg : in STD_LOGIC;
    spi_cont_reg_0 : in STD_LOGIC;
    mosi_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \angular_rate_x_int_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \angular_rate_x_int_reg[7]_0\ : in STD_LOGIC;
    \angular_rate_x_int_reg[15]\ : in STD_LOGIC;
    \angular_rate_x_int_reg[15]_0\ : in STD_LOGIC;
    \angular_rate_x_int_reg[15]_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count0_0 : in STD_LOGIC;
    \angular_rate_y_int_reg[7]\ : in STD_LOGIC;
    \angular_rate_y_int_reg[15]\ : in STD_LOGIC;
    \angular_rate_z_int_reg[15]\ : in STD_LOGIC;
    \angular_rate_z_int_reg[7]\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \spi_tx_data_reg[2]\ : in STD_LOGIC;
    spi_cont_reg_1 : in STD_LOGIC;
    spi_cont_reg_2 : in STD_LOGIC;
    \count_reg[2]_0\ : in STD_LOGIC;
    \count_reg[1]_2\ : in STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pmod_gyro_l3g4200d_0_0_spi_master : entity is "spi_master";
end design_1_pmod_gyro_l3g4200d_0_0_spi_master;

architecture STRUCTURE of design_1_pmod_gyro_l3g4200d_0_0_spi_master is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[15]_i_3_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[15]_i_4_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \angular_rate_y_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \angular_rate_z_int[7]_i_3_n_0\ : STD_LOGIC;
  signal assert_data_i_1_n_0 : STD_LOGIC;
  signal assert_data_reg_n_0 : STD_LOGIC;
  signal busy1 : STD_LOGIC;
  signal \busy1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_1\ : STD_LOGIC;
  signal \busy1_carry__0_n_2\ : STD_LOGIC;
  signal \busy1_carry__0_n_3\ : STD_LOGIC;
  signal \busy1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_n_2\ : STD_LOGIC;
  signal \busy1_carry__1_n_3\ : STD_LOGIC;
  signal busy1_carry_i_1_n_0 : STD_LOGIC;
  signal busy1_carry_i_2_n_0 : STD_LOGIC;
  signal busy1_carry_i_3_n_0 : STD_LOGIC;
  signal busy1_carry_i_4_n_0 : STD_LOGIC;
  signal busy1_carry_n_0 : STD_LOGIC;
  signal busy1_carry_n_1 : STD_LOGIC;
  signal busy1_carry_n_2 : STD_LOGIC;
  signal busy1_carry_n_3 : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal clk_toggles : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_toggles0 : STD_LOGIC;
  signal \clk_toggles[4]_i_1_n_0\ : STD_LOGIC;
  signal continue_i_1_n_0 : STD_LOGIC;
  signal continue_reg_n_0 : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal count0_1 : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[1]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_5_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_3_n_0\ : STD_LOGIC;
  signal \count[2]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal mosi_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal mosi_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal mosi_tristate_oe_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rx_buffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_buffer0 : STD_LOGIC;
  signal \rx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal sclk_i_2_n_0 : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal spi_cont : STD_LOGIC;
  signal spi_cont_i_3_n_0 : STD_LOGIC;
  signal spi_cont_i_4_n_0 : STD_LOGIC;
  signal spi_cont_i_5_n_0 : STD_LOGIC;
  signal spi_cont_i_6_n_0 : STD_LOGIC;
  signal spi_cont_i_7_n_0 : STD_LOGIC;
  signal spi_cont_i_8_n_0 : STD_LOGIC;
  signal spi_cont_i_9_n_0 : STD_LOGIC;
  signal \spi_tx_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_tx_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ss_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \ss_n[0]_i_3_n_0\ : STD_LOGIC;
  signal state_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal tx_buffer0 : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_3_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_4_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal NLW_busy1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_busy1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \angular_rate_x_int[15]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \angular_rate_y_int[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of assert_data_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_toggles[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_toggles[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_toggles[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_toggles[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[1]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of mosi_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mosi_tristate_oe_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of sclk_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of spi_busy_prev_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of spi_cont_i_6 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of spi_cont_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spi_tx_data[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_tx_data[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_tx_data[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spi_tx_data[7]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ss_n[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ss_n[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_buffer[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_buffer[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_buffer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_buffer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_buffer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_buffer[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_buffer[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_4\ : label is "soft_lutpair2";
begin
  AR(0) <= \^ar\(0);
  sclk <= \^sclk\;
  spi_busy <= \^spi_busy\;
  ss_n(0) <= \^ss_n\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303000354545554"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state_reg[2]_2\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state_reg[2]_3\,
      I5 => state(0),
      O => \FSM_sequential_state_reg[2]_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABA8A8AAA8"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => \FSM_sequential_state_reg[2]_2\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state_reg[2]_3\,
      I5 => state(1),
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABA8A8AAA8"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_1\,
      I1 => \FSM_sequential_state_reg[2]_2\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state_reg[2]_3\,
      I5 => state(2),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_9_n_0\,
      I1 => \angular_rate_x_int_reg[15]_1\,
      I2 => spi_cont_reg_2,
      I3 => spi_cont_reg_1,
      I4 => O(1),
      I5 => \count[1]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => O(0),
      I1 => O(1),
      I2 => state(1),
      I3 => \angular_rate_x_int_reg[7]\(0),
      I4 => \count[0]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => state(0),
      I1 => \^spi_busy\,
      I2 => spi_busy_prev_reg,
      I3 => \angular_rate_x_int_reg[7]\(0),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(1),
      I1 => \spi_tx_data[7]_i_4_n_0\,
      I2 => \angular_rate_x_int_reg[7]\(2),
      I3 => \angular_rate_x_int_reg[7]_0\,
      I4 => \angular_rate_x_int_reg[7]\(0),
      I5 => state(1),
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\angular_rate_x_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404040FF40404040"
    )
        port map (
      I0 => \angular_rate_x_int_reg[15]\,
      I1 => \angular_rate_x_int_reg[15]_0\,
      I2 => \angular_rate_x_int[15]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[2]_3\,
      I4 => \angular_rate_x_int_reg[15]_1\,
      I5 => \angular_rate_x_int[15]_i_4_n_0\,
      O => E(1)
    );
\angular_rate_x_int[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => state(0),
      I1 => \^spi_busy\,
      I2 => spi_busy_prev_reg,
      I3 => \angular_rate_x_int_reg[7]\(1),
      O => \angular_rate_x_int[15]_i_3_n_0\
    );
\angular_rate_x_int[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => O(1),
      I1 => count0_0,
      I2 => O(0),
      I3 => state(0),
      I4 => spi_busy_prev_reg,
      I5 => \^spi_busy\,
      O => \angular_rate_x_int[15]_i_4_n_0\
    );
\angular_rate_x_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_3\,
      I1 => \angular_rate_x_int_reg[7]\(0),
      I2 => state(1),
      I3 => \angular_rate_x_int[15]_i_4_n_0\,
      I4 => \angular_rate_x_int_reg[7]_0\,
      I5 => \angular_rate_x_int[7]_i_3_n_0\,
      O => E(0)
    );
\angular_rate_x_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(0),
      I1 => state(1),
      I2 => count0_0,
      I3 => \angular_rate_x_int_reg[7]\(2),
      I4 => \angular_rate_x_int_reg[7]\(1),
      I5 => \spi_tx_data[7]_i_4_n_0\,
      O => \angular_rate_x_int[7]_i_3_n_0\
    );
\angular_rate_y_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF101000000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[15]\,
      I1 => \angular_rate_x_int_reg[7]\(1),
      I2 => \count[2]_i_5_n_0\,
      I3 => \angular_rate_y_int_reg[15]\,
      I4 => \angular_rate_y_int[15]_i_2_n_0\,
      I5 => count0_0,
      O => \count_reg[1]_0\(1)
    );
\angular_rate_y_int[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => O(1),
      I1 => state(0),
      I2 => spi_busy_prev_reg,
      I3 => \^spi_busy\,
      I4 => O(0),
      O => \angular_rate_y_int[15]_i_2_n_0\
    );
\angular_rate_y_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20202000000000"
    )
        port map (
      I0 => \angular_rate_y_int_reg[7]\,
      I1 => \angular_rate_x_int_reg[15]_1\,
      I2 => \count[2]_i_5_n_0\,
      I3 => spi_cont_reg_0,
      I4 => \angular_rate_y_int[15]_i_2_n_0\,
      I5 => count0_0,
      O => \count_reg[1]_0\(0)
    );
\angular_rate_z_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF0800000000"
    )
        port map (
      I0 => \count[1]_i_5_n_0\,
      I1 => O(1),
      I2 => \angular_rate_y_int_reg[15]\,
      I3 => \angular_rate_x_int[15]_i_3_n_0\,
      I4 => \angular_rate_z_int_reg[15]\,
      I5 => count0_0,
      O => busy_reg_1(1)
    );
\angular_rate_z_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_3\,
      I1 => \angular_rate_z_int_reg[7]\,
      I2 => O(1),
      I3 => count0_0,
      I4 => \count[1]_i_5_n_0\,
      I5 => \angular_rate_z_int[7]_i_3_n_0\,
      O => busy_reg_1(0)
    );
\angular_rate_z_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \angular_rate_x_int[15]_i_3_n_0\,
      I1 => \angular_rate_x_int_reg[7]\(2),
      I2 => count0_0,
      I3 => state(1),
      I4 => \angular_rate_x_int_reg[7]\(0),
      I5 => \angular_rate_x_int_reg[7]_0\,
      O => \angular_rate_z_int[7]_i_3_n_0\
    );
assert_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DFFC000"
    )
        port map (
      I0 => spi_ena,
      I1 => state_0,
      I2 => busy1,
      I3 => reset_n,
      I4 => assert_data_reg_n_0,
      O => assert_data_i_1_n_0
    );
assert_data_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => assert_data_i_1_n_0,
      Q => assert_data_reg_n_0,
      R => '0'
    );
busy1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => busy1_carry_n_0,
      CO(2) => busy1_carry_n_1,
      CO(1) => busy1_carry_n_2,
      CO(0) => busy1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_busy1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => busy1_carry_i_1_n_0,
      S(2) => busy1_carry_i_2_n_0,
      S(1) => busy1_carry_i_3_n_0,
      S(0) => busy1_carry_i_4_n_0
    );
\busy1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => busy1_carry_n_0,
      CO(3) => \busy1_carry__0_n_0\,
      CO(2) => \busy1_carry__0_n_1\,
      CO(1) => \busy1_carry__0_n_2\,
      CO(0) => \busy1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \busy1_carry__0_i_1_n_0\,
      S(2) => \busy1_carry__0_i_2_n_0\,
      S(1) => \busy1_carry__0_i_3_n_0\,
      S(0) => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      I2 => \count_reg_n_0_[21]\,
      O => \busy1_carry__0_i_1_n_0\
    );
\busy1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[20]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => \count_reg_n_0_[18]\,
      O => \busy1_carry__0_i_2_n_0\
    );
\busy1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      I2 => \count_reg_n_0_[15]\,
      O => \busy1_carry__0_i_3_n_0\
    );
\busy1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[13]\,
      I2 => \count_reg_n_0_[12]\,
      O => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \busy1_carry__0_n_0\,
      CO(3) => \NLW_busy1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => busy1,
      CO(1) => \busy1_carry__1_n_2\,
      CO(0) => \busy1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \busy1_carry__1_i_1_n_0\,
      S(1) => \busy1_carry__1_i_2_n_0\,
      S(0) => \busy1_carry__1_i_3_n_0\
    );
\busy1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[30]\,
      I1 => \count_reg_n_0_[31]\,
      O => \busy1_carry__1_i_1_n_0\
    );
\busy1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      I2 => \count_reg_n_0_[27]\,
      O => \busy1_carry__1_i_2_n_0\
    );
\busy1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[25]\,
      I2 => \count_reg_n_0_[24]\,
      O => \busy1_carry__1_i_3_n_0\
    );
busy1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[9]\,
      O => busy1_carry_i_1_n_0
    );
busy1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => busy1_carry_i_2_n_0
    );
busy1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      O => busy1_carry_i_3_n_0
    );
busy1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      O => busy1_carry_i_4_n_0
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7050"
    )
        port map (
      I0 => busy1,
      I1 => continue_reg_n_0,
      I2 => state_0,
      I3 => \ss_n[0]_i_3_n_0\,
      I4 => spi_ena,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      PRE => \^ar\(0),
      Q => \^spi_busy\
    );
\clk_toggles[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_toggles(0),
      O => p_1_in(0)
    );
\clk_toggles[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EFFF00"
    )
        port map (
      I0 => clk_toggles(2),
      I1 => clk_toggles(3),
      I2 => clk_toggles(4),
      I3 => clk_toggles(1),
      I4 => clk_toggles(0),
      O => p_1_in(1)
    );
\clk_toggles[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => clk_toggles(2),
      I1 => clk_toggles(0),
      I2 => clk_toggles(1),
      O => p_1_in(2)
    );
\clk_toggles[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => clk_toggles(3),
      I1 => clk_toggles(2),
      I2 => clk_toggles(1),
      I3 => clk_toggles(0),
      O => p_1_in(3)
    );
\clk_toggles[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => spi_ena,
      I1 => reset_n,
      I2 => state_0,
      O => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => reset_n,
      I1 => busy1,
      I2 => state_0,
      O => clk_toggles0
    );
\clk_toggles[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCCCCCCCCCCC0C4"
    )
        port map (
      I0 => spi_ena,
      I1 => clk_toggles(4),
      I2 => clk_toggles(1),
      I3 => clk_toggles(0),
      I4 => clk_toggles(3),
      I5 => clk_toggles(2),
      O => p_1_in(4)
    );
\clk_toggles_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_toggles0,
      D => p_1_in(0),
      Q => clk_toggles(0),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_toggles0,
      D => p_1_in(1),
      Q => clk_toggles(1),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_toggles0,
      D => p_1_in(2),
      Q => clk_toggles(2),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_toggles0,
      D => p_1_in(3),
      Q => clk_toggles(3),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_toggles0,
      D => p_1_in(4),
      Q => clk_toggles(4),
      R => \clk_toggles[4]_i_1_n_0\
    );
continue_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B3B0080"
    )
        port map (
      I0 => state_0,
      I1 => reset_n,
      I2 => busy1,
      I3 => \tx_buffer[7]_i_3_n_0\,
      I4 => continue_reg_n_0,
      O => continue_i_1_n_0
    );
continue_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => continue_i_1_n_0,
      Q => continue_reg_n_0,
      R => '0'
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFEEEEE"
    )
        port map (
      I0 => \count[0]_i_2_n_0\,
      I1 => \count[0]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg[2]_3\,
      I3 => \angular_rate_x_int_reg[7]\(0),
      I4 => \count[0]_i_4_n_0\,
      O => \count_reg[1]_1\(0)
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFFFC00"
    )
        port map (
      I0 => busy1,
      I1 => state_0,
      I2 => spi_ena,
      I3 => reset_n,
      I4 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8800880F"
    )
        port map (
      I0 => \spi_tx_data[7]_i_4_n_0\,
      I1 => \angular_rate_x_int_reg[7]_0\,
      I2 => state(0),
      I3 => \angular_rate_x_int_reg[7]\(0),
      I4 => \count_reg[0]_1\,
      I5 => \count[0]_i_5_n_0\,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5040FFFF50400000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(1),
      I1 => \angular_rate_x_int_reg[7]\(2),
      I2 => \spi_tx_data[7]_i_4_n_0\,
      I3 => state(1),
      I4 => \angular_rate_x_int_reg[7]\(0),
      I5 => \angular_rate_y_int[15]_i_2_n_0\,
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(0),
      I1 => spi_busy_prev_reg,
      I2 => \^spi_busy\,
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAEAAAAAFAEAAAA"
    )
        port map (
      I0 => \count[0]_i_6_n_0\,
      I1 => O(0),
      I2 => \angular_rate_x_int_reg[7]\(0),
      I3 => state(1),
      I4 => \count[0]_i_4_n_0\,
      I5 => O(1),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(0),
      I1 => state(1),
      I2 => \angular_rate_x_int_reg[7]\(2),
      I3 => \angular_rate_x_int_reg[7]\(1),
      I4 => \spi_tx_data[7]_i_4_n_0\,
      O => \count[0]_i_6_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEEEEEEEE"
    )
        port map (
      I0 => \count[1]_i_2_n_0\,
      I1 => \count_reg[1]_2\,
      I2 => O(1),
      I3 => \FSM_sequential_state_reg[2]_3\,
      I4 => \angular_rate_x_int_reg[15]_1\,
      I5 => \count[1]_i_5_n_0\,
      O => \count_reg[1]_1\(1)
    );
\count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D000D000000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(2),
      I1 => \angular_rate_x_int_reg[15]\,
      I2 => \angular_rate_x_int_reg[7]\(1),
      I3 => spi_busy_prev_reg,
      I4 => \^spi_busy\,
      I5 => state(0),
      O => \count[1]_i_2_n_0\
    );
\count[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => spi_busy_prev_reg,
      I2 => state(0),
      I3 => O(0),
      O => \count[1]_i_5_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEAEAFFEAEA"
    )
        port map (
      I0 => \count_reg[2]_0\,
      I1 => \count[2]_i_3_n_0\,
      I2 => \angular_rate_y_int_reg[15]\,
      I3 => \angular_rate_x_int_reg[7]\(1),
      I4 => \count[2]_i_5_n_0\,
      I5 => \angular_rate_x_int_reg[15]\,
      O => \count_reg[1]_1\(2)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4FFFFF4F400000"
    )
        port map (
      I0 => busy1,
      I1 => count0(2),
      I2 => state_0,
      I3 => spi_ena,
      I4 => reset_n,
      I5 => \count_reg_n_0_[2]\,
      O => \count[2]_i_1__0_n_0\
    );
\count[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => spi_busy_prev_reg,
      I2 => state(0),
      I3 => O(1),
      O => \count[2]_i_3_n_0\
    );
\count[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => state(0),
      I1 => \^spi_busy\,
      I2 => spi_busy_prev_reg,
      I3 => \angular_rate_x_int_reg[7]\(2),
      O => \count[2]_i_5_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C0"
    )
        port map (
      I0 => busy1,
      I1 => reset_n,
      I2 => spi_ena,
      I3 => state_0,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => state_0,
      I1 => spi_ena,
      I2 => reset_n,
      O => count0_1
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1__0_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(10),
      Q => \count_reg_n_0_[10]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(11),
      Q => \count_reg_n_0_[11]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(12),
      Q => \count_reg_n_0_[12]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(13),
      Q => \count_reg_n_0_[13]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(14),
      Q => \count_reg_n_0_[14]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(15),
      Q => \count_reg_n_0_[15]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(16),
      Q => \count_reg_n_0_[16]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(17),
      Q => \count_reg_n_0_[17]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(18),
      Q => \count_reg_n_0_[18]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(19),
      Q => \count_reg_n_0_[19]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(1),
      Q => \count_reg_n_0_[1]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(20),
      Q => \count_reg_n_0_[20]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(21),
      Q => \count_reg_n_0_[21]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(22),
      Q => \count_reg_n_0_[22]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(23),
      Q => \count_reg_n_0_[23]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(24),
      Q => \count_reg_n_0_[24]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(25),
      Q => \count_reg_n_0_[25]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(26),
      Q => \count_reg_n_0_[26]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(27),
      Q => \count_reg_n_0_[27]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(28),
      Q => \count_reg_n_0_[28]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(29),
      Q => \count_reg_n_0_[29]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[2]_i_1__0_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(30),
      Q => \count_reg_n_0_[30]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(31),
      Q => \count_reg_n_0_[31]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(3),
      Q => \count_reg_n_0_[3]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(4),
      Q => \count_reg_n_0_[4]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(5),
      Q => \count_reg_n_0_[5]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(6),
      Q => \count_reg_n_0_[6]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(7),
      Q => \count_reg_n_0_[7]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(8),
      Q => \count_reg_n_0_[8]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0_1,
      D => count0(9),
      Q => \count_reg_n_0_[9]\,
      R => \count[31]_i_1_n_0\
    );
mosi_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mosi_tristate_oe_reg_n_0,
      I1 => mosi_0,
      O => mosi
    );
mosi_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => state_0,
      I1 => assert_data_reg_n_0,
      I2 => clk_toggles(4),
      I3 => mosi_tristate_oe_i_2_n_0,
      I4 => mosi_0,
      O => state_reg_0
    );
mosi_tristate_oe_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[7]\,
      I1 => mosi_tristate_oe_i_2_n_0,
      I2 => mosi_tristate_oe_reg_n_0,
      O => mosi_tristate_oe_i_1_n_0
    );
mosi_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F0F0F4FFF0F0F"
    )
        port map (
      I0 => clk_toggles(4),
      I1 => assert_data_reg_n_0,
      I2 => state_0,
      I3 => spi_ena,
      I4 => busy1,
      I5 => \ss_n[0]_i_3_n_0\,
      O => mosi_tristate_oe_i_2_n_0
    );
mosi_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mosi_tristate_oe_i_1_n_0,
      Q => mosi_tristate_oe_reg_n_0,
      R => '0'
    );
\rx_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => reset_n,
      I1 => busy1,
      I2 => state_0,
      I3 => \^ss_n\(0),
      I4 => assert_data_reg_n_0,
      I5 => sclk_i_2_n_0,
      O => rx_buffer0
    );
\rx_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => miso,
      Q => rx_buffer(0),
      R => '0'
    );
\rx_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(0),
      Q => rx_buffer(1),
      R => '0'
    );
\rx_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(1),
      Q => rx_buffer(2),
      R => '0'
    );
\rx_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(2),
      Q => rx_buffer(3),
      R => '0'
    );
\rx_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(3),
      Q => rx_buffer(4),
      R => '0'
    );
\rx_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(4),
      Q => rx_buffer(5),
      R => '0'
    );
\rx_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(5),
      Q => rx_buffer(6),
      R => '0'
    );
\rx_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buffer0,
      D => rx_buffer(6),
      Q => rx_buffer(7),
      R => '0'
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808088"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => continue_reg_n_0,
      I3 => \ss_n[0]_i_3_n_0\,
      I4 => spi_ena,
      O => \rx_data[7]_i_1_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(0),
      Q => \rx_data_reg[7]_0\(0)
    );
\rx_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(1),
      Q => \rx_data_reg[7]_0\(1)
    );
\rx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(2),
      Q => \rx_data_reg[7]_0\(2)
    );
\rx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(3),
      Q => \rx_data_reg[7]_0\(3)
    );
\rx_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(4),
      Q => \rx_data_reg[7]_0\(4)
    );
\rx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(5),
      Q => \rx_data_reg[7]_0\(5)
    );
\rx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(6),
      Q => \rx_data_reg[7]_0\(6)
    );
\rx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => rx_buffer(7),
      Q => \rx_data_reg[7]_0\(7)
    );
sclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF0800FF00"
    )
        port map (
      I0 => sclk_i_2_n_0,
      I1 => busy1,
      I2 => \^ss_n\(0),
      I3 => reset_n,
      I4 => state_0,
      I5 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => clk_toggles(0),
      I1 => clk_toggles(3),
      I2 => clk_toggles(2),
      I3 => clk_toggles(1),
      I4 => clk_toggles(4),
      O => sclk_i_2_n_0
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sclk_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
spi_busy_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => state(0),
      I2 => state(2),
      I3 => spi_busy_prev_reg,
      O => busy_reg_0
    );
spi_cont_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAA80"
    )
        port map (
      I0 => spi_cont,
      I1 => spi_cont_reg_0,
      I2 => spi_cont_i_3_n_0,
      I3 => spi_cont_i_4_n_0,
      I4 => spi_cont_i_5_n_0,
      I5 => spi_ena,
      O => spi_cont_reg
    );
spi_cont_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000443C773C"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(2),
      I1 => spi_cont_i_6_n_0,
      I2 => \angular_rate_x_int_reg[7]\(0),
      I3 => state(1),
      I4 => O(1),
      I5 => state(2),
      O => spi_cont
    );
spi_cont_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => state(2),
      I1 => O(1),
      I2 => O(0),
      I3 => state(0),
      I4 => spi_busy_prev_reg,
      I5 => \^spi_busy\,
      O => spi_cont_i_3_n_0
    );
spi_cont_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAE000C000C"
    )
        port map (
      I0 => spi_cont_i_7_n_0,
      I1 => spi_cont_i_8_n_0,
      I2 => spi_cont_reg_1,
      I3 => spi_cont_reg_2,
      I4 => spi_cont_i_9_n_0,
      I5 => \spi_tx_data_reg[2]\,
      O => spi_cont_i_4_n_0
    );
spi_cont_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \angular_rate_x_int[15]_i_3_n_0\,
      I1 => state(2),
      I2 => \angular_rate_x_int_reg[7]\(2),
      I3 => state(1),
      I4 => \angular_rate_x_int_reg[7]\(0),
      I5 => \angular_rate_x_int_reg[7]_0\,
      O => spi_cont_i_5_n_0
    );
spi_cont_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => spi_busy_prev_reg,
      O => spi_cont_i_6_n_0
    );
spi_cont_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => state(1),
      I1 => \angular_rate_x_int_reg[7]\(0),
      I2 => \^spi_busy\,
      I3 => state(2),
      I4 => state(0),
      O => spi_cont_i_7_n_0
    );
spi_cont_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000B00000000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => O(1),
      I4 => O(0),
      I5 => \count[0]_i_4_n_0\,
      O => spi_cont_i_8_n_0
    );
spi_cont_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => spi_busy_prev_reg,
      I3 => \^spi_busy\,
      I4 => \angular_rate_x_int_reg[7]\(0),
      I5 => state(1),
      O => spi_cont_i_9_n_0
    );
\spi_tx_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => \^spi_busy\,
      I2 => state(1),
      O => D(0)
    );
\spi_tx_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => state(1),
      I2 => state(2),
      O => D(1)
    );
\spi_tx_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => state(2),
      O => D(2)
    );
\spi_tx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF02000200"
    )
        port map (
      I0 => \spi_tx_data_reg[2]\,
      I1 => \angular_rate_x_int_reg[7]\(0),
      I2 => state(2),
      I3 => \spi_tx_data[7]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg[2]_3\,
      I5 => \spi_tx_data[7]_i_5_n_0\,
      O => \count_reg[0]_0\(0)
    );
\spi_tx_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => state(2),
      I2 => state(1),
      O => D(3)
    );
\spi_tx_data[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => spi_busy_prev_reg,
      I1 => \^spi_busy\,
      I2 => state(0),
      O => \spi_tx_data[7]_i_4_n_0\
    );
\spi_tx_data[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \angular_rate_x_int_reg[7]\(0),
      I1 => state(2),
      I2 => O(0),
      I3 => O(1),
      I4 => \count[0]_i_4_n_0\,
      O => \spi_tx_data[7]_i_5_n_0\
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \ss_n[0]_i_3_n_0\,
      I1 => busy1,
      I2 => spi_ena,
      I3 => state_0,
      O => \ss_n[0]_i_1_n_0\
    );
\ss_n[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^ar\(0)
    );
\ss_n[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => clk_toggles(4),
      I1 => clk_toggles(3),
      I2 => clk_toggles(2),
      I3 => clk_toggles(1),
      I4 => clk_toggles(0),
      O => \ss_n[0]_i_3_n_0\
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \ss_n[0]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => \^ss_n\(0)
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAFA"
    )
        port map (
      I0 => spi_ena,
      I1 => \ss_n[0]_i_3_n_0\,
      I2 => state_0,
      I3 => busy1,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => state_i_1_n_0,
      Q => state_0
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(0),
      O => \tx_buffer[0]_i_1_n_0\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(0),
      I3 => \tx_buffer_reg_n_0_[0]\,
      O => \tx_buffer[1]_i_1_n_0\
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(0),
      I3 => \tx_buffer_reg_n_0_[1]\,
      O => \tx_buffer[2]_i_1_n_0\
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(1),
      I3 => \tx_buffer_reg_n_0_[2]\,
      O => \tx_buffer[3]_i_1_n_0\
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => \tx_buffer_reg_n_0_[3]\,
      O => \tx_buffer[4]_i_1_n_0\
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(2),
      I3 => \tx_buffer_reg_n_0_[4]\,
      O => \tx_buffer[5]_i_1_n_0\
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(3),
      I3 => \tx_buffer_reg_n_0_[5]\,
      O => \tx_buffer[6]_i_1_n_0\
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF75550000"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => clk_toggles(4),
      I2 => assert_data_reg_n_0,
      I3 => state_0,
      I4 => \tx_buffer[7]_i_4_n_0\,
      I5 => \clk_toggles[4]_i_1_n_0\,
      O => tx_buffer0
    );
\tx_buffer[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \tx_buffer[7]_i_3_n_0\,
      I1 => state_0,
      I2 => Q(3),
      I3 => \tx_buffer_reg_n_0_[6]\,
      O => \tx_buffer[7]_i_2_n_0\
    );
\tx_buffer[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => spi_ena,
      I1 => clk_toggles(0),
      I2 => clk_toggles(4),
      I3 => clk_toggles(3),
      I4 => clk_toggles(2),
      I5 => clk_toggles(1),
      O => \tx_buffer[7]_i_3_n_0\
    );
\tx_buffer[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => busy1,
      I1 => reset_n,
      O => \tx_buffer[7]_i_4_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[0]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[0]\,
      R => '0'
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[1]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[1]\,
      R => '0'
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[2]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[2]\,
      R => '0'
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[3]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[3]\,
      R => '0'
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[4]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[4]\,
      R => '0'
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[5]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[5]\,
      R => '0'
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[6]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[6]\,
      R => '0'
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_buffer0,
      D => \tx_buffer[7]_i_2_n_0\,
      Q => \tx_buffer_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : out STD_LOGIC;
    state_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    angular_rate_x : out STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    angular_rate_z : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    mosi_0 : in STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d : entity is "pmod_gyro_l3g4200d";
end design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d;

architecture STRUCTURE of design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \angular_rate_x[15]_i_1_n_0\ : STD_LOGIC;
  signal angular_rate_x_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \angular_rate_x_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_10_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_5_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_6_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_7_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_8_n_0\ : STD_LOGIC;
  signal \angular_rate_x_int[7]_i_9_n_0\ : STD_LOGIC;
  signal angular_rate_y_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \angular_rate_y_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \angular_rate_y_int[7]_i_3_n_0\ : STD_LOGIC;
  signal angular_rate_z_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \angular_rate_z_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \angular_rate_z_int[7]_i_2_n_0\ : STD_LOGIC;
  signal count0_0 : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_4\ : STD_LOGIC;
  signal \count0_carry__2_n_5\ : STD_LOGIC;
  signal \count0_carry__2_n_6\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_4\ : STD_LOGIC;
  signal \count0_carry__3_n_5\ : STD_LOGIC;
  signal \count0_carry__3_n_6\ : STD_LOGIC;
  signal \count0_carry__3_n_7\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_4\ : STD_LOGIC;
  signal \count0_carry__4_n_5\ : STD_LOGIC;
  signal \count0_carry__4_n_6\ : STD_LOGIC;
  signal \count0_carry__4_n_7\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_4\ : STD_LOGIC;
  signal \count0_carry__5_n_5\ : STD_LOGIC;
  signal \count0_carry__5_n_6\ : STD_LOGIC;
  signal \count0_carry__5_n_7\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_5\ : STD_LOGIC;
  signal \count0_carry__6_n_6\ : STD_LOGIC;
  signal \count0_carry__6_n_7\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_3\ : STD_LOGIC;
  signal \count1_carry__2_n_6\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_i_6_n_0 : STD_LOGIC;
  signal count1_carry_i_7_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count1_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \count1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_3_n_0\ : STD_LOGIC;
  signal \count[1]_i_4_n_0\ : STD_LOGIC;
  signal \count[20]_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  signal \count[2]_i_4_n_0\ : STD_LOGIC;
  signal \count[2]_i_6_n_0\ : STD_LOGIC;
  signal \count[30]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_busy : STD_LOGIC;
  signal spi_busy_prev_reg_n_0 : STD_LOGIC;
  signal spi_ena : STD_LOGIC;
  signal spi_master_0_n_12 : STD_LOGIC;
  signal spi_master_0_n_13 : STD_LOGIC;
  signal spi_master_0_n_14 : STD_LOGIC;
  signal spi_master_0_n_15 : STD_LOGIC;
  signal spi_master_0_n_16 : STD_LOGIC;
  signal spi_master_0_n_17 : STD_LOGIC;
  signal spi_master_0_n_18 : STD_LOGIC;
  signal spi_master_0_n_19 : STD_LOGIC;
  signal spi_master_0_n_20 : STD_LOGIC;
  signal spi_master_0_n_21 : STD_LOGIC;
  signal spi_master_0_n_22 : STD_LOGIC;
  signal spi_master_0_n_23 : STD_LOGIC;
  signal spi_master_0_n_24 : STD_LOGIC;
  signal spi_master_0_n_25 : STD_LOGIC;
  signal spi_master_0_n_4 : STD_LOGIC;
  signal spi_master_0_n_5 : STD_LOGIC;
  signal spi_master_0_n_8 : STD_LOGIC;
  signal spi_tx_data1_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \spi_tx_data[7]_i_3_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_17\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "start:000,configure:001,pause:010,read_data:011,output_result:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "start:000,configure:001,pause:010,read_data:011,output_result:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "start:000,configure:001,pause:010,read_data:011,output_result:100,";
  attribute SOFT_HLUTNM of \angular_rate_y_int[7]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \angular_rate_y_int[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \angular_rate_z_int[15]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \angular_rate_z_int[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[1]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[1]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[2]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[2]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spi_tx_data[7]_i_3\ : label is "soft_lutpair23";
begin
  AR(0) <= \^ar\(0);
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"16"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_14_n_0\,
      I1 => \FSM_sequential_state[2]_i_15_n_0\,
      I2 => \FSM_sequential_state[2]_i_16_n_0\,
      I3 => \FSM_sequential_state[2]_i_17_n_0\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_18_n_0\,
      I1 => \count0_carry__4_n_5\,
      I2 => \count0_carry__4_n_6\,
      I3 => \count0_carry__5_n_7\,
      I4 => \count0_carry__4_n_4\,
      I5 => \FSM_sequential_state[2]_i_19_n_0\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count0_carry__2_n_4\,
      I1 => \count0_carry__3_n_7\,
      I2 => \count0_carry__2_n_6\,
      I3 => \count0_carry__2_n_5\,
      I4 => \FSM_sequential_state[2]_i_16_n_0\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count0_carry__0_n_4\,
      I1 => \count0_carry__1_n_7\,
      I2 => \count0_carry__0_n_6\,
      I3 => \count0_carry__0_n_5\,
      I4 => \FSM_sequential_state[2]_i_14_n_0\,
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count0_carry__1_n_5\,
      I1 => \count0_carry__1_n_6\,
      I2 => \count0_carry__2_n_7\,
      I3 => \count0_carry__1_n_4\,
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count0_carry__0_n_5\,
      I1 => \count0_carry__0_n_6\,
      I2 => \count0_carry__1_n_7\,
      I3 => \count0_carry__0_n_4\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count0_carry__3_n_5\,
      I1 => \count0_carry__3_n_6\,
      I2 => \count0_carry__4_n_7\,
      I3 => \count0_carry__3_n_4\,
      O => \FSM_sequential_state[2]_i_16_n_0\
    );
\FSM_sequential_state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count0_carry__2_n_5\,
      I1 => \count0_carry__2_n_6\,
      I2 => \count0_carry__3_n_7\,
      I3 => \count0_carry__2_n_4\,
      O => \FSM_sequential_state[2]_i_17_n_0\
    );
\FSM_sequential_state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count0_carry__5_n_5\,
      I1 => \count0_carry__5_n_6\,
      I2 => \count0_carry__6_n_7\,
      I3 => \count0_carry__5_n_4\,
      O => \FSM_sequential_state[2]_i_18_n_0\
    );
\FSM_sequential_state[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count0_carry_n_5,
      I1 => \count0_carry__6_n_6\,
      I2 => \count0_carry__6_n_5\,
      I3 => \count0_carry__0_n_7\,
      I4 => count0_carry_n_4,
      O => \FSM_sequential_state[2]_i_19_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEFFAEAEAE"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => state(0),
      I3 => \spi_tx_data[7]_i_3_n_0\,
      I4 => spi_master_0_n_25,
      I5 => state(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_12_n_0\,
      I1 => \FSM_sequential_state[2]_i_13_n_0\,
      I2 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count1_inferred__1/i__carry__2_n_5\,
      I1 => state(1),
      I2 => \count1_carry__2_n_6\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_14,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_13,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_12,
      Q => state(2)
    );
\angular_rate_x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => \angular_rate_x[15]_i_1_n_0\
    );
\angular_rate_x_int[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => reset_n,
      I2 => \count_reg_n_0_[2]\,
      O => \angular_rate_x_int[15]_i_2_n_0\
    );
\angular_rate_x_int[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[30]\,
      I2 => \count_reg_n_0_[31]\,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count_reg_n_0_[8]\,
      O => \angular_rate_x_int[7]_i_10_n_0\
    );
\angular_rate_x_int[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \angular_rate_x_int[7]_i_4_n_0\,
      I1 => \angular_rate_x_int[7]_i_5_n_0\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[5]\,
      I4 => \angular_rate_x_int[7]_i_6_n_0\,
      I5 => \angular_rate_x_int[7]_i_7_n_0\,
      O => \angular_rate_x_int[7]_i_2_n_0\
    );
\angular_rate_x_int[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_reg_n_0_[16]\,
      I1 => \count_reg_n_0_[17]\,
      I2 => \count_reg_n_0_[14]\,
      I3 => \count_reg_n_0_[15]\,
      I4 => \angular_rate_x_int[7]_i_8_n_0\,
      O => \angular_rate_x_int[7]_i_4_n_0\
    );
\angular_rate_x_int[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      O => \angular_rate_x_int[7]_i_5_n_0\
    );
\angular_rate_x_int[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[13]\,
      I3 => \count_reg_n_0_[12]\,
      O => \angular_rate_x_int[7]_i_6_n_0\
    );
\angular_rate_x_int[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \angular_rate_x_int[7]_i_9_n_0\,
      I1 => \count_reg_n_0_[23]\,
      I2 => \count_reg_n_0_[22]\,
      I3 => \count_reg_n_0_[25]\,
      I4 => \count_reg_n_0_[24]\,
      I5 => \angular_rate_x_int[7]_i_10_n_0\,
      O => \angular_rate_x_int[7]_i_7_n_0\
    );
\angular_rate_x_int[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[19]\,
      I1 => \count_reg_n_0_[18]\,
      I2 => \count_reg_n_0_[21]\,
      I3 => \count_reg_n_0_[20]\,
      O => \angular_rate_x_int[7]_i_8_n_0\
    );
\angular_rate_x_int[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[27]\,
      I1 => \count_reg_n_0_[26]\,
      I2 => \count_reg_n_0_[29]\,
      I3 => \count_reg_n_0_[28]\,
      O => \angular_rate_x_int[7]_i_9_n_0\
    );
\angular_rate_x_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(0),
      Q => angular_rate_x_int(0),
      R => '0'
    );
\angular_rate_x_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(2),
      Q => angular_rate_x_int(10),
      R => '0'
    );
\angular_rate_x_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(3),
      Q => angular_rate_x_int(11),
      R => '0'
    );
\angular_rate_x_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(4),
      Q => angular_rate_x_int(12),
      R => '0'
    );
\angular_rate_x_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(5),
      Q => angular_rate_x_int(13),
      R => '0'
    );
\angular_rate_x_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(6),
      Q => angular_rate_x_int(14),
      R => '0'
    );
\angular_rate_x_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(7),
      Q => angular_rate_x_int(15),
      R => '0'
    );
\angular_rate_x_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(1),
      Q => angular_rate_x_int(1),
      R => '0'
    );
\angular_rate_x_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(2),
      Q => angular_rate_x_int(2),
      R => '0'
    );
\angular_rate_x_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(3),
      Q => angular_rate_x_int(3),
      R => '0'
    );
\angular_rate_x_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(4),
      Q => angular_rate_x_int(4),
      R => '0'
    );
\angular_rate_x_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(5),
      Q => angular_rate_x_int(5),
      R => '0'
    );
\angular_rate_x_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(6),
      Q => angular_rate_x_int(6),
      R => '0'
    );
\angular_rate_x_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_16,
      D => rx_data(7),
      Q => angular_rate_x_int(7),
      R => '0'
    );
\angular_rate_x_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(0),
      Q => angular_rate_x_int(8),
      R => '0'
    );
\angular_rate_x_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_15,
      D => rx_data(1),
      Q => angular_rate_x_int(9),
      R => '0'
    );
\angular_rate_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(0),
      Q => angular_rate_x(0)
    );
\angular_rate_x_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(10),
      Q => angular_rate_x(10)
    );
\angular_rate_x_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(11),
      Q => angular_rate_x(11)
    );
\angular_rate_x_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(12),
      Q => angular_rate_x(12)
    );
\angular_rate_x_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(13),
      Q => angular_rate_x(13)
    );
\angular_rate_x_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(14),
      Q => angular_rate_x(14)
    );
\angular_rate_x_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(15),
      Q => angular_rate_x(15)
    );
\angular_rate_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(1),
      Q => angular_rate_x(1)
    );
\angular_rate_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(2),
      Q => angular_rate_x(2)
    );
\angular_rate_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(3),
      Q => angular_rate_x(3)
    );
\angular_rate_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(4),
      Q => angular_rate_x(4)
    );
\angular_rate_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(5),
      Q => angular_rate_x(5)
    );
\angular_rate_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(6),
      Q => angular_rate_x(6)
    );
\angular_rate_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(7),
      Q => angular_rate_x(7)
    );
\angular_rate_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(8),
      Q => angular_rate_x(8)
    );
\angular_rate_x_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_x_int(9),
      Q => angular_rate_x(9)
    );
\angular_rate_y_int[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \angular_rate_x_int[7]_i_2_n_0\,
      I1 => \count_reg_n_0_[1]\,
      O => \angular_rate_y_int[7]_i_2_n_0\
    );
\angular_rate_y_int[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_11_n_0\,
      I1 => \FSM_sequential_state[2]_i_13_n_0\,
      I2 => \FSM_sequential_state[2]_i_12_n_0\,
      I3 => \count_reg_n_0_[0]\,
      I4 => state(1),
      O => \angular_rate_y_int[7]_i_3_n_0\
    );
\angular_rate_y_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(0),
      Q => angular_rate_y_int(0),
      R => '0'
    );
\angular_rate_y_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(2),
      Q => angular_rate_y_int(10),
      R => '0'
    );
\angular_rate_y_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(3),
      Q => angular_rate_y_int(11),
      R => '0'
    );
\angular_rate_y_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(4),
      Q => angular_rate_y_int(12),
      R => '0'
    );
\angular_rate_y_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(5),
      Q => angular_rate_y_int(13),
      R => '0'
    );
\angular_rate_y_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(6),
      Q => angular_rate_y_int(14),
      R => '0'
    );
\angular_rate_y_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(7),
      Q => angular_rate_y_int(15),
      R => '0'
    );
\angular_rate_y_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(1),
      Q => angular_rate_y_int(1),
      R => '0'
    );
\angular_rate_y_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(2),
      Q => angular_rate_y_int(2),
      R => '0'
    );
\angular_rate_y_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(3),
      Q => angular_rate_y_int(3),
      R => '0'
    );
\angular_rate_y_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(4),
      Q => angular_rate_y_int(4),
      R => '0'
    );
\angular_rate_y_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(5),
      Q => angular_rate_y_int(5),
      R => '0'
    );
\angular_rate_y_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(6),
      Q => angular_rate_y_int(6),
      R => '0'
    );
\angular_rate_y_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_18,
      D => rx_data(7),
      Q => angular_rate_y_int(7),
      R => '0'
    );
\angular_rate_y_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(0),
      Q => angular_rate_y_int(8),
      R => '0'
    );
\angular_rate_y_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_17,
      D => rx_data(1),
      Q => angular_rate_y_int(9),
      R => '0'
    );
\angular_rate_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(0),
      Q => angular_rate_y(0)
    );
\angular_rate_y_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(10),
      Q => angular_rate_y(10)
    );
\angular_rate_y_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(11),
      Q => angular_rate_y(11)
    );
\angular_rate_y_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(12),
      Q => angular_rate_y(12)
    );
\angular_rate_y_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(13),
      Q => angular_rate_y(13)
    );
\angular_rate_y_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(14),
      Q => angular_rate_y(14)
    );
\angular_rate_y_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(15),
      Q => angular_rate_y(15)
    );
\angular_rate_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(1),
      Q => angular_rate_y(1)
    );
\angular_rate_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(2),
      Q => angular_rate_y(2)
    );
\angular_rate_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(3),
      Q => angular_rate_y(3)
    );
\angular_rate_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(4),
      Q => angular_rate_y(4)
    );
\angular_rate_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(5),
      Q => angular_rate_y(5)
    );
\angular_rate_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(6),
      Q => angular_rate_y(6)
    );
\angular_rate_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(7),
      Q => angular_rate_y(7)
    );
\angular_rate_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(8),
      Q => angular_rate_y(8)
    );
\angular_rate_y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_y_int(9),
      Q => angular_rate_y(9)
    );
\angular_rate_z_int[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => state(1),
      I1 => \count_reg_n_0_[0]\,
      I2 => \angular_rate_x_int[7]_i_2_n_0\,
      I3 => \count_reg_n_0_[2]\,
      O => \angular_rate_z_int[15]_i_2_n_0\
    );
\angular_rate_z_int[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(1),
      I1 => \count_reg_n_0_[0]\,
      O => \angular_rate_z_int[7]_i_2_n_0\
    );
\angular_rate_z_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(0),
      Q => angular_rate_z_int(0),
      R => '0'
    );
\angular_rate_z_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(2),
      Q => angular_rate_z_int(10),
      R => '0'
    );
\angular_rate_z_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(3),
      Q => angular_rate_z_int(11),
      R => '0'
    );
\angular_rate_z_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(4),
      Q => angular_rate_z_int(12),
      R => '0'
    );
\angular_rate_z_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(5),
      Q => angular_rate_z_int(13),
      R => '0'
    );
\angular_rate_z_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(6),
      Q => angular_rate_z_int(14),
      R => '0'
    );
\angular_rate_z_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(7),
      Q => angular_rate_z_int(15),
      R => '0'
    );
\angular_rate_z_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(1),
      Q => angular_rate_z_int(1),
      R => '0'
    );
\angular_rate_z_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(2),
      Q => angular_rate_z_int(2),
      R => '0'
    );
\angular_rate_z_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(3),
      Q => angular_rate_z_int(3),
      R => '0'
    );
\angular_rate_z_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(4),
      Q => angular_rate_z_int(4),
      R => '0'
    );
\angular_rate_z_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(5),
      Q => angular_rate_z_int(5),
      R => '0'
    );
\angular_rate_z_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(6),
      Q => angular_rate_z_int(6),
      R => '0'
    );
\angular_rate_z_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_20,
      D => rx_data(7),
      Q => angular_rate_z_int(7),
      R => '0'
    );
\angular_rate_z_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(0),
      Q => angular_rate_z_int(8),
      R => '0'
    );
\angular_rate_z_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_master_0_n_19,
      D => rx_data(1),
      Q => angular_rate_z_int(9),
      R => '0'
    );
\angular_rate_z_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(0),
      Q => angular_rate_z(0)
    );
\angular_rate_z_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(10),
      Q => angular_rate_z(10)
    );
\angular_rate_z_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(11),
      Q => angular_rate_z(11)
    );
\angular_rate_z_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(12),
      Q => angular_rate_z(12)
    );
\angular_rate_z_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(13),
      Q => angular_rate_z(13)
    );
\angular_rate_z_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(14),
      Q => angular_rate_z(14)
    );
\angular_rate_z_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(15),
      Q => angular_rate_z(15)
    );
\angular_rate_z_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(1),
      Q => angular_rate_z(1)
    );
\angular_rate_z_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(2),
      Q => angular_rate_z(2)
    );
\angular_rate_z_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(3),
      Q => angular_rate_z(3)
    );
\angular_rate_z_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(4),
      Q => angular_rate_z(4)
    );
\angular_rate_z_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(5),
      Q => angular_rate_z(5)
    );
\angular_rate_z_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(6),
      Q => angular_rate_z(6)
    );
\angular_rate_z_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(7),
      Q => angular_rate_z(7)
    );
\angular_rate_z_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(8),
      Q => angular_rate_z(8)
    );
\angular_rate_z_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \angular_rate_x[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => angular_rate_z_int(9),
      Q => angular_rate_z(9)
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__2_n_4\,
      O(2) => \count0_carry__2_n_5\,
      O(1) => \count0_carry__2_n_6\,
      O(0) => \count0_carry__2_n_7\,
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__3_n_4\,
      O(2) => \count0_carry__3_n_5\,
      O(1) => \count0_carry__3_n_6\,
      O(0) => \count0_carry__3_n_7\,
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__4_n_4\,
      O(2) => \count0_carry__4_n_5\,
      O(1) => \count0_carry__4_n_6\,
      O(0) => \count0_carry__4_n_7\,
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__5_n_4\,
      O(2) => \count0_carry__5_n_5\,
      O(1) => \count0_carry__5_n_6\,
      O(0) => \count0_carry__5_n_7\,
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2) => \count0_carry__6_n_5\,
      O(1) => \count0_carry__6_n_6\,
      O(0) => \count0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => count1_carry_i_1_n_0,
      DI(1) => count1_carry_i_2_n_0,
      DI(0) => count1_carry_i_3_n_0,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_4_n_0,
      S(2) => count1_carry_i_5_n_0,
      S(1) => count1_carry_i_6_n_0,
      S(0) => count1_carry_i_7_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \count1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3_n_0\,
      S(2) => \count1_carry__0_i_4_n_0\,
      S(1) => \count1_carry__0_i_5_n_0\,
      S(0) => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[18]\,
      I1 => \count_reg_n_0_[19]\,
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[15]\,
      I1 => \count_reg_n_0_[14]\,
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[21]\,
      I1 => \count_reg_n_0_[20]\,
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_n_0_[19]\,
      I1 => \count_reg_n_0_[18]\,
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[15]\,
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \count1_carry__1_n_0\,
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__1_i_2_n_0\,
      S(2) => \count1_carry__1_i_3_n_0\,
      S(1) => \count1_carry__1_i_4_n_0\,
      S(0) => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[27]\,
      I1 => \count_reg_n_0_[26]\,
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[25]\,
      I1 => \count_reg_n_0_[24]\,
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[22]\,
      I1 => \count_reg_n_0_[23]\,
      O => \count1_carry__1_i_5_n_0\
    );
\count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__1_n_0\,
      CO(3 downto 1) => \NLW_count1_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_reg_n_0_[31]\,
      O(3 downto 2) => \NLW_count1_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \count1_carry__2_n_6\,
      O(0) => \NLW_count1_carry__2_O_UNCONNECTED\(0),
      S(3 downto 1) => B"001",
      S(0) => \count1_carry__2_i_1_n_0\
    );
\count1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[31]\,
      I1 => \count_reg_n_0_[30]\,
      O => \count1_carry__2_i_1_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[9]\,
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[6]\,
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[13]\,
      I1 => \count_reg_n_0_[12]\,
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      O => count1_carry_i_5_n_0
    );
count1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => \count_reg_n_0_[8]\,
      O => count1_carry_i_6_n_0
    );
count1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      O => count1_carry_i_7_n_0
    );
\count1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count1_inferred__1/i__carry_n_0\,
      CO(2) => \count1_inferred__1/i__carry_n_1\,
      CO(1) => \count1_inferred__1/i__carry_n_2\,
      CO(0) => \count1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => \i__carry_i_3_n_0\,
      O(3 downto 0) => \NLW_count1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4_n_0\,
      S(2) => \i__carry_i_5_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\count1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_inferred__1/i__carry_n_0\,
      CO(3) => \count1_inferred__1/i__carry__0_n_0\,
      CO(2) => \count1_inferred__1/i__carry__0_n_1\,
      CO(1) => \count1_inferred__1/i__carry__0_n_2\,
      CO(0) => \count1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_2_n_0\,
      S(2) => \i__carry__0_i_3_n_0\,
      S(1) => \i__carry__0_i_4_n_0\,
      S(0) => \i__carry__0_i_5_n_0\
    );
\count1_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_inferred__1/i__carry__0_n_0\,
      CO(3) => \count1_inferred__1/i__carry__1_n_0\,
      CO(2) => \count1_inferred__1/i__carry__1_n_1\,
      CO(1) => \count1_inferred__1/i__carry__1_n_2\,
      CO(0) => \count1_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\count1_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_inferred__1/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_count1_inferred__1/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count1_inferred__1/i__carry__2_n_2\,
      CO(0) => \count1_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \count_reg_n_0_[31]\,
      DI(0) => '0',
      O(3) => \NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED\(3),
      O(2) => \count1_inferred__1/i__carry__2_n_5\,
      O(1 downto 0) => \NLW_count1_inferred__1/i__carry__2_O_UNCONNECTED\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__2_i_1_n_0\,
      S(0) => \i__carry__2_i_2_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__1_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[10]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__1_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[11]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__1_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[12]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__2_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[13]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[13]_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__2_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[14]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__2_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[15]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[15]_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__2_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[16]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[16]_i_1_n_0\
    );
\count[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__3_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[17]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[17]_i_1_n_0\
    );
\count[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__3_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[18]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[18]_i_1_n_0\
    );
\count[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__3_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[19]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[19]_i_1_n_0\
    );
\count[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044404"
    )
        port map (
      I0 => state(0),
      I1 => count0_carry_n_7,
      I2 => \count1_carry__2_n_6\,
      I3 => state(1),
      I4 => \count1_inferred__1/i__carry__2_n_5\,
      O => \count[1]_i_3_n_0\
    );
\count[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => state(1),
      O => \count[1]_i_4_n_0\
    );
\count[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__3_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[20]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[20]_i_1_n_0\
    );
\count[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__4_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[21]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[21]_i_1_n_0\
    );
\count[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__4_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[22]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[22]_i_1_n_0\
    );
\count[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__4_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[23]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[23]_i_1_n_0\
    );
\count[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__4_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[24]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[24]_i_1_n_0\
    );
\count[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__5_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[25]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[25]_i_1_n_0\
    );
\count[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__5_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[26]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[26]_i_1_n_0\
    );
\count[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__5_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[27]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[27]_i_1_n_0\
    );
\count[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__5_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[28]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[28]_i_1_n_0\
    );
\count[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__6_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[29]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[29]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300555500000000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_7_n_0\,
      I1 => count0_carry_n_7,
      I2 => spi_busy,
      I3 => spi_busy_prev_reg_n_0,
      I4 => state(0),
      I5 => count0_carry_n_6,
      O => \count[2]_i_2_n_0\
    );
\count[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_11_n_0\,
      I1 => \FSM_sequential_state[2]_i_13_n_0\,
      I2 => \FSM_sequential_state[2]_i_12_n_0\,
      I3 => state(1),
      I4 => \count_reg_n_0_[0]\,
      O => \count[2]_i_4_n_0\
    );
\count[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \angular_rate_x_int[7]_i_2_n_0\,
      I1 => \count_reg_n_0_[0]\,
      I2 => state(1),
      O => \count[2]_i_6_n_0\
    );
\count[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__6_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[30]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[30]_i_1_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset_n,
      I1 => state(2),
      O => count0_0
    );
\count[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__6_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[31]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[31]_i_2__0_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000047474747"
    )
        port map (
      I0 => \count1_inferred__1/i__carry__2_n_5\,
      I1 => state(1),
      I2 => \count1_carry__2_n_6\,
      I3 => spi_busy,
      I4 => spi_busy_prev_reg_n_0,
      I5 => state(0),
      O => \count[31]_i_3_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => count0_carry_n_5,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[3]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => count0_carry_n_4,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[4]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__0_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[5]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__0_n_6\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__0_n_5\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[7]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__0_n_4\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[8]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F888F888888888"
    )
        port map (
      I0 => \count0_carry__1_n_7\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count_reg_n_0_[9]\,
      I3 => spi_busy_prev_reg_n_0,
      I4 => spi_busy,
      I5 => state(0),
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => spi_master_0_n_23,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[10]_i_1_n_0\,
      Q => \count_reg_n_0_[10]\,
      R => '0'
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[11]_i_1_n_0\,
      Q => \count_reg_n_0_[11]\,
      R => '0'
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[12]_i_1_n_0\,
      Q => \count_reg_n_0_[12]\,
      R => '0'
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[13]_i_1_n_0\,
      Q => \count_reg_n_0_[13]\,
      R => '0'
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[14]_i_1_n_0\,
      Q => \count_reg_n_0_[14]\,
      R => '0'
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[15]_i_1_n_0\,
      Q => \count_reg_n_0_[15]\,
      R => '0'
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[16]_i_1_n_0\,
      Q => \count_reg_n_0_[16]\,
      R => '0'
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[17]_i_1_n_0\,
      Q => \count_reg_n_0_[17]\,
      R => '0'
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[18]_i_1_n_0\,
      Q => \count_reg_n_0_[18]\,
      R => '0'
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[19]_i_1_n_0\,
      Q => \count_reg_n_0_[19]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => spi_master_0_n_22,
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[20]_i_1_n_0\,
      Q => \count_reg_n_0_[20]\,
      R => '0'
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[21]_i_1_n_0\,
      Q => \count_reg_n_0_[21]\,
      R => '0'
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[22]_i_1_n_0\,
      Q => \count_reg_n_0_[22]\,
      R => '0'
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[23]_i_1_n_0\,
      Q => \count_reg_n_0_[23]\,
      R => '0'
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[24]_i_1_n_0\,
      Q => \count_reg_n_0_[24]\,
      R => '0'
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[25]_i_1_n_0\,
      Q => \count_reg_n_0_[25]\,
      R => '0'
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[26]_i_1_n_0\,
      Q => \count_reg_n_0_[26]\,
      R => '0'
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[27]_i_1_n_0\,
      Q => \count_reg_n_0_[27]\,
      R => '0'
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[28]_i_1_n_0\,
      Q => \count_reg_n_0_[28]\,
      R => '0'
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[29]_i_1_n_0\,
      Q => \count_reg_n_0_[29]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => spi_master_0_n_21,
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[30]_i_1_n_0\,
      Q => \count_reg_n_0_[30]\,
      R => '0'
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[31]_i_2__0_n_0\,
      Q => \count_reg_n_0_[31]\,
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[4]_i_1_n_0\,
      Q => \count_reg_n_0_[4]\,
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg_n_0_[5]\,
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[6]_i_1_n_0\,
      Q => \count_reg_n_0_[6]\,
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[7]_i_1_n_0\,
      Q => \count_reg_n_0_[7]\,
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[8]_i_1_n_0\,
      Q => \count_reg_n_0_[8]\,
      R => '0'
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count0_0,
      D => \count[9]_i_1_n_0\,
      Q => \count_reg_n_0_[9]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[15]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[19]\,
      I1 => \count_reg_n_0_[18]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_n_0_[15]\,
      I1 => \count_reg_n_0_[14]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[13]\,
      I1 => \count_reg_n_0_[12]\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[27]\,
      I1 => \count_reg_n_0_[26]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[25]\,
      I1 => \count_reg_n_0_[24]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[21]\,
      I1 => \count_reg_n_0_[20]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[31]\,
      I1 => \count_reg_n_0_[30]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[9]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[6]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => \count_reg_n_0_[8]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      O => \i__carry_i_7_n_0\
    );
spi_busy_prev_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_4,
      Q => spi_busy_prev_reg_n_0
    );
spi_cont_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => spi_master_0_n_5,
      Q => spi_ena
    );
spi_master_0: entity work.design_1_pmod_gyro_l3g4200d_0_0_spi_master
     port map (
      AR(0) => \^ar\(0),
      D(3) => spi_tx_data1_in(7),
      D(2) => spi_master_0_n_8,
      D(1 downto 0) => spi_tx_data1_in(3 downto 2),
      E(1) => spi_master_0_n_15,
      E(0) => spi_master_0_n_16,
      \FSM_sequential_state_reg[0]\ => spi_master_0_n_25,
      \FSM_sequential_state_reg[1]\ => spi_master_0_n_13,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_2_n_0\,
      \FSM_sequential_state_reg[2]\ => spi_master_0_n_12,
      \FSM_sequential_state_reg[2]_0\ => spi_master_0_n_14,
      \FSM_sequential_state_reg[2]_1\ => \FSM_sequential_state[2]_i_2_n_0\,
      \FSM_sequential_state_reg[2]_2\ => \FSM_sequential_state[2]_i_3_n_0\,
      \FSM_sequential_state_reg[2]_3\ => \FSM_sequential_state[2]_i_6_n_0\,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      Q(3) => tx_data(7),
      Q(2) => tx_data(5),
      Q(1 downto 0) => tx_data(3 downto 2),
      \angular_rate_x_int_reg[15]\ => \count[2]_i_6_n_0\,
      \angular_rate_x_int_reg[15]_0\ => \angular_rate_x_int[15]_i_2_n_0\,
      \angular_rate_x_int_reg[15]_1\ => \count[1]_i_4_n_0\,
      \angular_rate_x_int_reg[7]\(2) => \count_reg_n_0_[2]\,
      \angular_rate_x_int_reg[7]\(1) => \count_reg_n_0_[1]\,
      \angular_rate_x_int_reg[7]\(0) => \count_reg_n_0_[0]\,
      \angular_rate_x_int_reg[7]_0\ => \angular_rate_x_int[7]_i_2_n_0\,
      \angular_rate_y_int_reg[15]\ => \count[2]_i_4_n_0\,
      \angular_rate_y_int_reg[7]\ => \angular_rate_y_int[7]_i_2_n_0\,
      \angular_rate_z_int_reg[15]\ => \angular_rate_z_int[15]_i_2_n_0\,
      \angular_rate_z_int_reg[7]\ => \angular_rate_z_int[7]_i_2_n_0\,
      busy_reg_0 => spi_master_0_n_4,
      busy_reg_1(1) => spi_master_0_n_19,
      busy_reg_1(0) => spi_master_0_n_20,
      clk => clk,
      count0_0 => count0_0,
      \count_reg[0]_0\(0) => spi_master_0_n_24,
      \count_reg[0]_1\ => \FSM_sequential_state[2]_i_7_n_0\,
      \count_reg[1]_0\(1) => spi_master_0_n_17,
      \count_reg[1]_0\(0) => spi_master_0_n_18,
      \count_reg[1]_1\(2) => spi_master_0_n_21,
      \count_reg[1]_1\(1) => spi_master_0_n_22,
      \count_reg[1]_1\(0) => spi_master_0_n_23,
      \count_reg[1]_2\ => \count[1]_i_3_n_0\,
      \count_reg[2]_0\ => \count[2]_i_2_n_0\,
      miso => miso,
      mosi => mosi,
      mosi_0 => mosi_0,
      reset_n => reset_n,
      \rx_data_reg[7]_0\(7 downto 0) => rx_data(7 downto 0),
      sclk => sclk,
      spi_busy => spi_busy,
      spi_busy_prev_reg => spi_busy_prev_reg_n_0,
      spi_cont_reg => spi_master_0_n_5,
      spi_cont_reg_0 => \angular_rate_y_int[7]_i_3_n_0\,
      spi_cont_reg_1 => \FSM_sequential_state[2]_i_11_n_0\,
      spi_cont_reg_2 => \FSM_sequential_state[2]_i_10_n_0\,
      spi_ena => spi_ena,
      \spi_tx_data_reg[2]\ => \spi_tx_data[7]_i_3_n_0\,
      ss_n(0) => ss_n(0),
      state(2 downto 0) => state(2 downto 0),
      state_reg_0 => state_reg
    );
\spi_tx_data[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \angular_rate_x_int[7]_i_2_n_0\,
      I2 => \count_reg_n_0_[2]\,
      O => \spi_tx_data[7]_i_3_n_0\
    );
\spi_tx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_master_0_n_24,
      CLR => \^ar\(0),
      D => spi_tx_data1_in(2),
      Q => tx_data(2)
    );
\spi_tx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_master_0_n_24,
      CLR => \^ar\(0),
      D => spi_tx_data1_in(3),
      Q => tx_data(3)
    );
\spi_tx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_master_0_n_24,
      CLR => \^ar\(0),
      D => spi_master_0_n_8,
      Q => tx_data(5)
    );
\spi_tx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_master_0_n_24,
      CLR => \^ar\(0),
      D => spi_tx_data1_in(7),
      Q => tx_data(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_gyro_l3g4200d_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pmod_gyro_l3g4200d_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pmod_gyro_l3g4200d_0_0 : entity is "design_1_pmod_gyro_l3g4200d_0_0,pmod_gyro_l3g4200d,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pmod_gyro_l3g4200d_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pmod_gyro_l3g4200d_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pmod_gyro_l3g4200d_0_0 : entity is "pmod_gyro_l3g4200d,Vivado 2018.3";
end design_1_pmod_gyro_l3g4200d_0_0;

architecture STRUCTURE of design_1_pmod_gyro_l3g4200d_0_0 is
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal mosi_INST_0_i_1_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_pmod_gyro_l3g4200d_0_0_pmod_gyro_l3g4200d
     port map (
      AR(0) => inst_n_0,
      angular_rate_x(15 downto 0) => angular_rate_x(15 downto 0),
      angular_rate_y(15 downto 0) => angular_rate_y(15 downto 0),
      angular_rate_z(15 downto 0) => angular_rate_z(15 downto 0),
      clk => clk,
      miso => miso,
      mosi => mosi,
      mosi_0 => mosi_INST_0_i_1_n_0,
      reset_n => reset_n,
      sclk => sclk,
      ss_n(0) => ss_n(0),
      state_reg => inst_n_3
    );
mosi_INST_0_i_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => inst_n_0,
      D => inst_n_3,
      Q => mosi_INST_0_i_1_n_0
    );
end STRUCTURE;
