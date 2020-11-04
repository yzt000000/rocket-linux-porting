//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 16:34:21 2020
//Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
//Command     : generate_target ddr4_wrapper.bd
//Design      : ddr4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ddr4_wrapper
   (C0_DDR4_0_act_n,
    C0_DDR4_0_adr,
    C0_DDR4_0_ba,
    C0_DDR4_0_bg,
    C0_DDR4_0_ck_c,
    C0_DDR4_0_ck_t,
    C0_DDR4_0_cke,
    C0_DDR4_0_cs_n,
    C0_DDR4_0_dm_n,
    C0_DDR4_0_dq,
    C0_DDR4_0_dqs_c,
    C0_DDR4_0_dqs_t,
    C0_DDR4_0_odt,
    C0_DDR4_0_reset_n,
    C0_DDR4_S_AXI_0_araddr,
    C0_DDR4_S_AXI_0_arburst,
    C0_DDR4_S_AXI_0_arcache,
    C0_DDR4_S_AXI_0_arid,
    C0_DDR4_S_AXI_0_arlen,
    C0_DDR4_S_AXI_0_arlock,
    C0_DDR4_S_AXI_0_arprot,
    C0_DDR4_S_AXI_0_arqos,
    C0_DDR4_S_AXI_0_arready,
    C0_DDR4_S_AXI_0_arregion,
    C0_DDR4_S_AXI_0_arsize,
    C0_DDR4_S_AXI_0_arvalid,
    C0_DDR4_S_AXI_0_awaddr,
    C0_DDR4_S_AXI_0_awburst,
    C0_DDR4_S_AXI_0_awcache,
    C0_DDR4_S_AXI_0_awid,
    C0_DDR4_S_AXI_0_awlen,
    C0_DDR4_S_AXI_0_awlock,
    C0_DDR4_S_AXI_0_awprot,
    C0_DDR4_S_AXI_0_awqos,
    C0_DDR4_S_AXI_0_awready,
    C0_DDR4_S_AXI_0_awregion,
    C0_DDR4_S_AXI_0_awsize,
    C0_DDR4_S_AXI_0_awvalid,
    C0_DDR4_S_AXI_0_bid,
    C0_DDR4_S_AXI_0_bready,
    C0_DDR4_S_AXI_0_bresp,
    C0_DDR4_S_AXI_0_bvalid,
    C0_DDR4_S_AXI_0_rdata,
    C0_DDR4_S_AXI_0_rid,
    C0_DDR4_S_AXI_0_rlast,
    C0_DDR4_S_AXI_0_rready,
    C0_DDR4_S_AXI_0_rresp,
    C0_DDR4_S_AXI_0_rvalid,
    C0_DDR4_S_AXI_0_wdata,
    C0_DDR4_S_AXI_0_wlast,
    C0_DDR4_S_AXI_0_wready,
    C0_DDR4_S_AXI_0_wstrb,
    C0_DDR4_S_AXI_0_wvalid,
    c0_init_calib_complete_0,
    dbg_bus_0,
    dbg_clk_0,
    default_250mhz_clk1_clk_n,
    default_250mhz_clk1_clk_p,
    s_axi_aclk_0,
    s_axi_aresetn_0,
    sys_rst_0);
  output C0_DDR4_0_act_n;
  output [16:0]C0_DDR4_0_adr;
  output [1:0]C0_DDR4_0_ba;
  output [0:0]C0_DDR4_0_bg;
  output [0:0]C0_DDR4_0_ck_c;
  output [0:0]C0_DDR4_0_ck_t;
  output [0:0]C0_DDR4_0_cke;
  output [0:0]C0_DDR4_0_cs_n;
  inout [7:0]C0_DDR4_0_dm_n;
  inout [63:0]C0_DDR4_0_dq;
  inout [7:0]C0_DDR4_0_dqs_c;
  inout [7:0]C0_DDR4_0_dqs_t;
  output [0:0]C0_DDR4_0_odt;
  output C0_DDR4_0_reset_n;
  input [30:0]C0_DDR4_S_AXI_0_araddr;
  input [1:0]C0_DDR4_S_AXI_0_arburst;
  input [3:0]C0_DDR4_S_AXI_0_arcache;
  input [3:0]C0_DDR4_S_AXI_0_arid;
  input [7:0]C0_DDR4_S_AXI_0_arlen;
  input [0:0]C0_DDR4_S_AXI_0_arlock;
  input [2:0]C0_DDR4_S_AXI_0_arprot;
  input [3:0]C0_DDR4_S_AXI_0_arqos;
  output C0_DDR4_S_AXI_0_arready;
  input [3:0]C0_DDR4_S_AXI_0_arregion;
  input [2:0]C0_DDR4_S_AXI_0_arsize;
  input C0_DDR4_S_AXI_0_arvalid;
  input [30:0]C0_DDR4_S_AXI_0_awaddr;
  input [1:0]C0_DDR4_S_AXI_0_awburst;
  input [3:0]C0_DDR4_S_AXI_0_awcache;
  input [3:0]C0_DDR4_S_AXI_0_awid;
  input [7:0]C0_DDR4_S_AXI_0_awlen;
  input [0:0]C0_DDR4_S_AXI_0_awlock;
  input [2:0]C0_DDR4_S_AXI_0_awprot;
  input [3:0]C0_DDR4_S_AXI_0_awqos;
  output C0_DDR4_S_AXI_0_awready;
  input [3:0]C0_DDR4_S_AXI_0_awregion;
  input [2:0]C0_DDR4_S_AXI_0_awsize;
  input C0_DDR4_S_AXI_0_awvalid;
  output [3:0]C0_DDR4_S_AXI_0_bid;
  input C0_DDR4_S_AXI_0_bready;
  output [1:0]C0_DDR4_S_AXI_0_bresp;
  output C0_DDR4_S_AXI_0_bvalid;
  output [63:0]C0_DDR4_S_AXI_0_rdata;
  output [3:0]C0_DDR4_S_AXI_0_rid;
  output C0_DDR4_S_AXI_0_rlast;
  input C0_DDR4_S_AXI_0_rready;
  output [1:0]C0_DDR4_S_AXI_0_rresp;
  output C0_DDR4_S_AXI_0_rvalid;
  input [63:0]C0_DDR4_S_AXI_0_wdata;
  input C0_DDR4_S_AXI_0_wlast;
  output C0_DDR4_S_AXI_0_wready;
  input [7:0]C0_DDR4_S_AXI_0_wstrb;
  input C0_DDR4_S_AXI_0_wvalid;
  output c0_init_calib_complete_0;
  output [511:0]dbg_bus_0;
  output dbg_clk_0;
  input default_250mhz_clk1_clk_n;
  input default_250mhz_clk1_clk_p;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;
  input sys_rst_0;

  wire C0_DDR4_0_act_n;
  wire [16:0]C0_DDR4_0_adr;
  wire [1:0]C0_DDR4_0_ba;
  wire [0:0]C0_DDR4_0_bg;
  wire [0:0]C0_DDR4_0_ck_c;
  wire [0:0]C0_DDR4_0_ck_t;
  wire [0:0]C0_DDR4_0_cke;
  wire [0:0]C0_DDR4_0_cs_n;
  wire [7:0]C0_DDR4_0_dm_n;
  wire [63:0]C0_DDR4_0_dq;
  wire [7:0]C0_DDR4_0_dqs_c;
  wire [7:0]C0_DDR4_0_dqs_t;
  wire [0:0]C0_DDR4_0_odt;
  wire C0_DDR4_0_reset_n;
  wire [30:0]C0_DDR4_S_AXI_0_araddr;
  wire [1:0]C0_DDR4_S_AXI_0_arburst;
  wire [3:0]C0_DDR4_S_AXI_0_arcache;
  wire [3:0]C0_DDR4_S_AXI_0_arid;
  wire [7:0]C0_DDR4_S_AXI_0_arlen;
  wire [0:0]C0_DDR4_S_AXI_0_arlock;
  wire [2:0]C0_DDR4_S_AXI_0_arprot;
  wire [3:0]C0_DDR4_S_AXI_0_arqos;
  wire C0_DDR4_S_AXI_0_arready;
  wire [3:0]C0_DDR4_S_AXI_0_arregion;
  wire [2:0]C0_DDR4_S_AXI_0_arsize;
  wire C0_DDR4_S_AXI_0_arvalid;
  wire [30:0]C0_DDR4_S_AXI_0_awaddr;
  wire [1:0]C0_DDR4_S_AXI_0_awburst;
  wire [3:0]C0_DDR4_S_AXI_0_awcache;
  wire [3:0]C0_DDR4_S_AXI_0_awid;
  wire [7:0]C0_DDR4_S_AXI_0_awlen;
  wire [0:0]C0_DDR4_S_AXI_0_awlock;
  wire [2:0]C0_DDR4_S_AXI_0_awprot;
  wire [3:0]C0_DDR4_S_AXI_0_awqos;
  wire C0_DDR4_S_AXI_0_awready;
  wire [3:0]C0_DDR4_S_AXI_0_awregion;
  wire [2:0]C0_DDR4_S_AXI_0_awsize;
  wire C0_DDR4_S_AXI_0_awvalid;
  wire [3:0]C0_DDR4_S_AXI_0_bid;
  wire C0_DDR4_S_AXI_0_bready;
  wire [1:0]C0_DDR4_S_AXI_0_bresp;
  wire C0_DDR4_S_AXI_0_bvalid;
  wire [63:0]C0_DDR4_S_AXI_0_rdata;
  wire [3:0]C0_DDR4_S_AXI_0_rid;
  wire C0_DDR4_S_AXI_0_rlast;
  wire C0_DDR4_S_AXI_0_rready;
  wire [1:0]C0_DDR4_S_AXI_0_rresp;
  wire C0_DDR4_S_AXI_0_rvalid;
  wire [63:0]C0_DDR4_S_AXI_0_wdata;
  wire C0_DDR4_S_AXI_0_wlast;
  wire C0_DDR4_S_AXI_0_wready;
  wire [7:0]C0_DDR4_S_AXI_0_wstrb;
  wire C0_DDR4_S_AXI_0_wvalid;
  wire c0_init_calib_complete_0;
  wire [511:0]dbg_bus_0;
  wire dbg_clk_0;
  wire default_250mhz_clk1_clk_n;
  wire default_250mhz_clk1_clk_p;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;
  wire sys_rst_0;

  ddr4 ddr4_i
       (.C0_DDR4_0_act_n(C0_DDR4_0_act_n),
        .C0_DDR4_0_adr(C0_DDR4_0_adr),
        .C0_DDR4_0_ba(C0_DDR4_0_ba),
        .C0_DDR4_0_bg(C0_DDR4_0_bg),
        .C0_DDR4_0_ck_c(C0_DDR4_0_ck_c),
        .C0_DDR4_0_ck_t(C0_DDR4_0_ck_t),
        .C0_DDR4_0_cke(C0_DDR4_0_cke),
        .C0_DDR4_0_cs_n(C0_DDR4_0_cs_n),
        .C0_DDR4_0_dm_n(C0_DDR4_0_dm_n),
        .C0_DDR4_0_dq(C0_DDR4_0_dq),
        .C0_DDR4_0_dqs_c(C0_DDR4_0_dqs_c),
        .C0_DDR4_0_dqs_t(C0_DDR4_0_dqs_t),
        .C0_DDR4_0_odt(C0_DDR4_0_odt),
        .C0_DDR4_0_reset_n(C0_DDR4_0_reset_n),
        .C0_DDR4_S_AXI_0_araddr(C0_DDR4_S_AXI_0_araddr),
        .C0_DDR4_S_AXI_0_arburst(C0_DDR4_S_AXI_0_arburst),
        .C0_DDR4_S_AXI_0_arcache(C0_DDR4_S_AXI_0_arcache),
        .C0_DDR4_S_AXI_0_arid(C0_DDR4_S_AXI_0_arid),
        .C0_DDR4_S_AXI_0_arlen(C0_DDR4_S_AXI_0_arlen),
        .C0_DDR4_S_AXI_0_arlock(C0_DDR4_S_AXI_0_arlock),
        .C0_DDR4_S_AXI_0_arprot(C0_DDR4_S_AXI_0_arprot),
        .C0_DDR4_S_AXI_0_arqos(C0_DDR4_S_AXI_0_arqos),
        .C0_DDR4_S_AXI_0_arready(C0_DDR4_S_AXI_0_arready),
        .C0_DDR4_S_AXI_0_arregion(C0_DDR4_S_AXI_0_arregion),
        .C0_DDR4_S_AXI_0_arsize(C0_DDR4_S_AXI_0_arsize),
        .C0_DDR4_S_AXI_0_arvalid(C0_DDR4_S_AXI_0_arvalid),
        .C0_DDR4_S_AXI_0_awaddr(C0_DDR4_S_AXI_0_awaddr),
        .C0_DDR4_S_AXI_0_awburst(C0_DDR4_S_AXI_0_awburst),
        .C0_DDR4_S_AXI_0_awcache(C0_DDR4_S_AXI_0_awcache),
        .C0_DDR4_S_AXI_0_awid(C0_DDR4_S_AXI_0_awid),
        .C0_DDR4_S_AXI_0_awlen(C0_DDR4_S_AXI_0_awlen),
        .C0_DDR4_S_AXI_0_awlock(C0_DDR4_S_AXI_0_awlock),
        .C0_DDR4_S_AXI_0_awprot(C0_DDR4_S_AXI_0_awprot),
        .C0_DDR4_S_AXI_0_awqos(C0_DDR4_S_AXI_0_awqos),
        .C0_DDR4_S_AXI_0_awready(C0_DDR4_S_AXI_0_awready),
        .C0_DDR4_S_AXI_0_awregion(C0_DDR4_S_AXI_0_awregion),
        .C0_DDR4_S_AXI_0_awsize(C0_DDR4_S_AXI_0_awsize),
        .C0_DDR4_S_AXI_0_awvalid(C0_DDR4_S_AXI_0_awvalid),
        .C0_DDR4_S_AXI_0_bid(C0_DDR4_S_AXI_0_bid),
        .C0_DDR4_S_AXI_0_bready(C0_DDR4_S_AXI_0_bready),
        .C0_DDR4_S_AXI_0_bresp(C0_DDR4_S_AXI_0_bresp),
        .C0_DDR4_S_AXI_0_bvalid(C0_DDR4_S_AXI_0_bvalid),
        .C0_DDR4_S_AXI_0_rdata(C0_DDR4_S_AXI_0_rdata),
        .C0_DDR4_S_AXI_0_rid(C0_DDR4_S_AXI_0_rid),
        .C0_DDR4_S_AXI_0_rlast(C0_DDR4_S_AXI_0_rlast),
        .C0_DDR4_S_AXI_0_rready(C0_DDR4_S_AXI_0_rready),
        .C0_DDR4_S_AXI_0_rresp(C0_DDR4_S_AXI_0_rresp),
        .C0_DDR4_S_AXI_0_rvalid(C0_DDR4_S_AXI_0_rvalid),
        .C0_DDR4_S_AXI_0_wdata(C0_DDR4_S_AXI_0_wdata),
        .C0_DDR4_S_AXI_0_wlast(C0_DDR4_S_AXI_0_wlast),
        .C0_DDR4_S_AXI_0_wready(C0_DDR4_S_AXI_0_wready),
        .C0_DDR4_S_AXI_0_wstrb(C0_DDR4_S_AXI_0_wstrb),
        .C0_DDR4_S_AXI_0_wvalid(C0_DDR4_S_AXI_0_wvalid),
        .c0_init_calib_complete_0(c0_init_calib_complete_0),
        .dbg_bus_0(dbg_bus_0),
        .dbg_clk_0(dbg_clk_0),
        .default_250mhz_clk1_clk_n(default_250mhz_clk1_clk_n),
        .default_250mhz_clk1_clk_p(default_250mhz_clk1_clk_p),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .sys_rst_0(sys_rst_0));
endmodule
