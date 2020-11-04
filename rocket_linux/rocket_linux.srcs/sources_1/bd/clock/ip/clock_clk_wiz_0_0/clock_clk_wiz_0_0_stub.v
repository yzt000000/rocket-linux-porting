// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Oct 27 16:48:34 2020
// Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jason/fpga/joe_rocket/joe_rocket.srcs/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_stub.v
// Design      : clock_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clock_clk_wiz_0_0(clk_out1, resetn, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
