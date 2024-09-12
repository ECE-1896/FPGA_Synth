// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Sep 12 02:34:21 2024
// Host        : DESKTOP-9UI98RB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Matt/Documents/Vivado_Projects/fpga_synth/fpga_synth.gen/sources_1/bd/blk_diag1/ip/blk_diag1_clock_divider_2_0/blk_diag1_clock_divider_2_0_stub.v
// Design      : blk_diag1_clock_divider_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "clock_divider,Vivado 2021.1" *)
module blk_diag1_clock_divider_2_0(clk_in, rst, clk_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst,clk_out" */;
  input clk_in;
  input rst;
  output clk_out;
endmodule
