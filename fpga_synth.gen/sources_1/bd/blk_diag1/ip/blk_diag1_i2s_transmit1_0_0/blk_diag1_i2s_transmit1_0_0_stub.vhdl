-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Sep 12 00:57:12 2024
-- Host        : DESKTOP-9UI98RB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Matt/Documents/Vivado_Projects/fpga_synth/fpga_synth.gen/sources_1/bd/blk_diag1/ip/blk_diag1_i2s_transmit1_0_0/blk_diag1_i2s_transmit1_0_0_stub.vhdl
-- Design      : blk_diag1_i2s_transmit1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blk_diag1_i2s_transmit1_0_0 is
  Port ( 
    sck : in STD_LOGIC;
    ws : in STD_LOGIC;
    sd : out STD_LOGIC;
    data_left : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_right : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end blk_diag1_i2s_transmit1_0_0;

architecture stub of blk_diag1_i2s_transmit1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sck,ws,sd,data_left[23:0],data_right[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2s_transmit1,Vivado 2021.1";
begin
end;
