-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Mar 22 17:28:29 2025
-- Host        : DESKTOP-7S7RS8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Documents/repos/ECE532/gyro_racer/gyro_racer.srcs/sources_1/bd/design_1/ip/design_1_vid_to_vga_mixer_0_0/design_1_vid_to_vga_mixer_0_0_sim_netlist.vhdl
-- Design      : design_1_vid_to_vga_mixer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vid_to_vga_mixer_0_0 is
  port (
    active : in STD_LOGIC;
    rgba_background : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rgba_sprites : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync_n : out STD_LOGIC;
    vsync_n : out STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vid_to_vga_mixer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vid_to_vga_mixer_0_0 : entity is "design_1_vid_to_vga_mixer_0_0,vid_to_vga_mixer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vid_to_vga_mixer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_vid_to_vga_mixer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_vid_to_vga_mixer_0_0 : entity is "vid_to_vga_mixer,Vivado 2018.3";
end design_1_vid_to_vga_mixer_0_0;

architecture STRUCTURE of design_1_vid_to_vga_mixer_0_0 is
  signal \red[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\blue[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(8),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(8),
      O => blue(0)
    );
\blue[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(9),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(9),
      O => blue(1)
    );
\blue[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(10),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(10),
      O => blue(2)
    );
\blue[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(11),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(11),
      O => blue(3)
    );
\green[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(4),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(4),
      O => green(0)
    );
\green[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(5),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(5),
      O => green(1)
    );
\green[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(6),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(6),
      O => green(2)
    );
\green[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(7),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(7),
      O => green(3)
    );
hsync_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hsync,
      O => hsync_n
    );
\red[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(0),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(0),
      O => red(0)
    );
\red[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(1),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(1),
      O => red(1)
    );
\red[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(2),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(2),
      O => red(2)
    );
\red[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800080"
    )
        port map (
      I0 => active,
      I1 => rgba_background(3),
      I2 => \red[3]_INST_0_i_1_n_0\,
      I3 => \red[3]_INST_0_i_2_n_0\,
      I4 => rgba_sprites(3),
      O => red(3)
    );
\red[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rgba_background(13),
      I1 => rgba_background(12),
      I2 => rgba_background(14),
      I3 => rgba_background(15),
      O => \red[3]_INST_0_i_1_n_0\
    );
\red[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rgba_sprites(13),
      I1 => rgba_sprites(12),
      I2 => rgba_sprites(14),
      I3 => rgba_sprites(15),
      O => \red[3]_INST_0_i_2_n_0\
    );
vsync_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vsync,
      O => vsync_n
    );
end STRUCTURE;
