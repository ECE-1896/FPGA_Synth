-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Sep 12 00:57:11 2024
-- Host        : DESKTOP-9UI98RB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Matt/Documents/Vivado_Projects/fpga_synth/fpga_synth.gen/sources_1/bd/blk_diag1/ip/blk_diag1_clock_divider_2_2/blk_diag1_clock_divider_2_2_sim_netlist.vhdl
-- Design      : blk_diag1_clock_divider_2_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_diag1_clock_divider_2_2_clock_divider is
  port (
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_diag1_clock_divider_2_2_clock_divider : entity is "clock_divider";
end blk_diag1_clock_divider_2_2_clock_divider;

architecture STRUCTURE of blk_diag1_clock_divider_2_2_clock_divider is
  signal clk_div_i_1_n_0 : STD_LOGIC;
  signal \^clk_out\ : STD_LOGIC;
begin
  clk_out <= \^clk_out\;
clk_div_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_out\,
      O => clk_div_i_1_n_0
    );
clk_div_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => rst,
      D => clk_div_i_1_n_0,
      Q => \^clk_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_diag1_clock_divider_2_2 is
  port (
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blk_diag1_clock_divider_2_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_diag1_clock_divider_2_2 : entity is "blk_diag1_clock_divider_2_2,clock_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_diag1_clock_divider_2_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of blk_diag1_clock_divider_2_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of blk_diag1_clock_divider_2_2 : entity is "clock_divider,Vivado 2021.1";
end blk_diag1_clock_divider_2_2;

architecture STRUCTURE of blk_diag1_clock_divider_2_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.blk_diag1_clock_divider_2_2_clock_divider
     port map (
      clk_in => clk_in,
      clk_out => clk_out,
      rst => rst
    );
end STRUCTURE;
