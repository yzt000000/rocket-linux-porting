//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 16:34:41 2020
//Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
//Command     : generate_target clock_wrapper.bd
//Design      : clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_wrapper
   (CLK_IN1_D_0_clk_n,
    CLK_IN1_D_0_clk_p,
    clk_out1_0,
    locked_0,
    resetn_0);
  input CLK_IN1_D_0_clk_n;
  input CLK_IN1_D_0_clk_p;
  output clk_out1_0;
  output locked_0;
  input resetn_0;

  wire CLK_IN1_D_0_clk_n;
  wire CLK_IN1_D_0_clk_p;
  wire clk_out1_0;
  wire locked_0;
  wire resetn_0;

  clock clock_i
       (.CLK_IN1_D_0_clk_n(CLK_IN1_D_0_clk_n),
        .CLK_IN1_D_0_clk_p(CLK_IN1_D_0_clk_p),
        .clk_out1_0(clk_out1_0),
        .locked_0(locked_0),
        .resetn_0(resetn_0));
endmodule
