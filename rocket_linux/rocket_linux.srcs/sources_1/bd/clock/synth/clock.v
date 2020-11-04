//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 16:34:41 2020
//Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
//Command     : generate_target clock.bd
//Design      : clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "clock.hwdef" *) 
module clock
   (CLK_IN1_D_0_clk_n,
    CLK_IN1_D_0_clk_p,
    clk_out1_0,
    locked_0,
    resetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1_D_0, CAN_DEBUG false, FREQ_HZ 156250000" *) input CLK_IN1_D_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_P" *) input CLK_IN1_D_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN clock_clk_wiz_0_0_clk_out1, FREQ_HZ 31250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
  output locked_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn_0;

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire resetn_0_1;

  assign CLK_IN1_D_0_1_CLK_N = CLK_IN1_D_0_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = CLK_IN1_D_0_clk_p;
  assign clk_out1_0 = clk_wiz_0_clk_out1;
  assign locked_0 = clk_wiz_0_locked;
  assign resetn_0_1 = resetn_0;
  clock_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(resetn_0_1));
endmodule
