-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  1 04:14:06 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Documents/repos/ECE532/integration/main/final/gyro_racer_audio/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_pwm_generator_0_0/design_1_pwm_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_pwm_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_generator_0_0_pwm_generator is
  port (
    pwm_signal : out STD_LOGIC;
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    pwm_duty : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwm_generator_0_0_pwm_generator : entity is "pwm_generator";
end design_1_pwm_generator_0_0_pwm_generator;

architecture STRUCTURE of design_1_pwm_generator_0_0_pwm_generator is
  signal counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pwm_signal\ : STD_LOGIC;
  signal pwm_signal_i_1_n_0 : STD_LOGIC;
  signal pwm_signal_i_2_n_0 : STD_LOGIC;
  signal pwm_signal_i_4_n_0 : STD_LOGIC;
  signal pwm_signal_i_5_n_0 : STD_LOGIC;
  signal pwm_signal_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pwm_signal_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pwm_signal_i_6 : label is "soft_lutpair1";
begin
  pwm_signal <= \^pwm_signal\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      O => \p_0_in__0\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      O => \p_0_in__0\(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => \p_0_in__0\(0),
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => \p_0_in__0\(1),
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => \p_0_in__0\(2),
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => \p_0_in__0\(3),
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => \p_0_in__0\(4),
      Q => counter_reg(4)
    );
pwm_signal_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in,
      I1 => pwm_signal_i_4_n_0,
      I2 => \^pwm_signal\,
      O => pwm_signal_i_1_n_0
    );
pwm_signal_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => pwm_signal_i_2_n_0
    );
pwm_signal_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      O => p_0_in
    );
pwm_signal_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB2BB22B2"
    )
        port map (
      I0 => counter_reg(4),
      I1 => pwm_duty(4),
      I2 => counter_reg(3),
      I3 => pwm_duty(3),
      I4 => pwm_signal_i_5_n_0,
      I5 => pwm_signal_i_6_n_0,
      O => pwm_signal_i_4_n_0
    );
pwm_signal_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => pwm_duty(0),
      I1 => counter_reg(0),
      I2 => pwm_duty(1),
      I3 => counter_reg(1),
      I4 => pwm_duty(2),
      I5 => counter_reg(2),
      O => pwm_signal_i_5_n_0
    );
pwm_signal_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000001"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => counter_reg(2),
      O => pwm_signal_i_6_n_0
    );
pwm_signal_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_signal_i_2_n_0,
      D => pwm_signal_i_1_n_0,
      Q => \^pwm_signal\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pwm_duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pwm_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwm_generator_0_0 : entity is "design_1_pwm_generator_0_0,pwm_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pwm_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pwm_generator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pwm_generator_0_0 : entity is "pwm_generator,Vivado 2018.3";
end design_1_pwm_generator_0_0;

architecture STRUCTURE of design_1_pwm_generator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_pwm_generator_0_0_pwm_generator
     port map (
      clk => clk,
      pwm_duty(4 downto 0) => pwm_duty(7 downto 3),
      pwm_signal => pwm_signal,
      rstn => rstn
    );
end STRUCTURE;
