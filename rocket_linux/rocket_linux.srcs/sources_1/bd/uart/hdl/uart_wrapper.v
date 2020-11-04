//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Oct 30 16:38:01 2020
//Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
//Command     : generate_target uart_wrapper.bd
//Design      : uart_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_wrapper
   (ACLK_0,
    ARESETN_0,
    S00_AXI_0_araddr,
    S00_AXI_0_arburst,
    S00_AXI_0_arcache,
    S00_AXI_0_arid,
    S00_AXI_0_arlen,
    S00_AXI_0_arlock,
    S00_AXI_0_arprot,
    S00_AXI_0_arqos,
    S00_AXI_0_arready,
    S00_AXI_0_arsize,
    S00_AXI_0_arvalid,
    S00_AXI_0_awaddr,
    S00_AXI_0_awburst,
    S00_AXI_0_awcache,
    S00_AXI_0_awid,
    S00_AXI_0_awlen,
    S00_AXI_0_awlock,
    S00_AXI_0_awprot,
    S00_AXI_0_awqos,
    S00_AXI_0_awready,
    S00_AXI_0_awsize,
    S00_AXI_0_awvalid,
    S00_AXI_0_bid,
    S00_AXI_0_bready,
    S00_AXI_0_bresp,
    S00_AXI_0_bvalid,
    S00_AXI_0_rdata,
    S00_AXI_0_rid,
    S00_AXI_0_rlast,
    S00_AXI_0_rready,
    S00_AXI_0_rresp,
    S00_AXI_0_rvalid,
    S00_AXI_0_wdata,
    S00_AXI_0_wlast,
    S00_AXI_0_wready,
    S00_AXI_0_wstrb,
    S00_AXI_0_wvalid,
    SPI_0_0_io0_io,
    SPI_0_0_io1_io,
    SPI_0_0_sck_io,
    SPI_0_0_ss_io,
    rs232_uart_baudoutn,
    rs232_uart_ctsn,
    rs232_uart_dcdn,
    rs232_uart_ddis,
    rs232_uart_dsrn,
    rs232_uart_dtrn,
    rs232_uart_out1n,
    rs232_uart_out2n,
    rs232_uart_ri,
    rs232_uart_rtsn,
    rs232_uart_rxd,
    rs232_uart_rxrdyn,
    rs232_uart_txd,
    rs232_uart_txrdyn,
    uart16550_irpt,
    uart_rtl_baudoutn,
    uart_rtl_ctsn,
    uart_rtl_dcdn,
    uart_rtl_ddis,
    uart_rtl_dsrn,
    uart_rtl_dtrn,
    uart_rtl_out1n,
    uart_rtl_out2n,
    uart_rtl_ri,
    uart_rtl_rtsn,
    uart_rtl_rxd,
    uart_rtl_rxrdyn,
    uart_rtl_txd,
    uart_rtl_txrdyn,
    uartlite_irpt);
  input ACLK_0;
  input ARESETN_0;
  input [30:0]S00_AXI_0_araddr;
  input [1:0]S00_AXI_0_arburst;
  input [3:0]S00_AXI_0_arcache;
  input [3:0]S00_AXI_0_arid;
  input [7:0]S00_AXI_0_arlen;
  input [0:0]S00_AXI_0_arlock;
  input [2:0]S00_AXI_0_arprot;
  input [3:0]S00_AXI_0_arqos;
  output [0:0]S00_AXI_0_arready;
  input [2:0]S00_AXI_0_arsize;
  input [0:0]S00_AXI_0_arvalid;
  input [30:0]S00_AXI_0_awaddr;
  input [1:0]S00_AXI_0_awburst;
  input [3:0]S00_AXI_0_awcache;
  input [3:0]S00_AXI_0_awid;
  input [7:0]S00_AXI_0_awlen;
  input [0:0]S00_AXI_0_awlock;
  input [2:0]S00_AXI_0_awprot;
  input [3:0]S00_AXI_0_awqos;
  output [0:0]S00_AXI_0_awready;
  input [2:0]S00_AXI_0_awsize;
  input [0:0]S00_AXI_0_awvalid;
  output [3:0]S00_AXI_0_bid;
  input [0:0]S00_AXI_0_bready;
  output [1:0]S00_AXI_0_bresp;
  output [0:0]S00_AXI_0_bvalid;
  output [63:0]S00_AXI_0_rdata;
  output [3:0]S00_AXI_0_rid;
  output [0:0]S00_AXI_0_rlast;
  input [0:0]S00_AXI_0_rready;
  output [1:0]S00_AXI_0_rresp;
  output [0:0]S00_AXI_0_rvalid;
  input [63:0]S00_AXI_0_wdata;
  input [0:0]S00_AXI_0_wlast;
  output [0:0]S00_AXI_0_wready;
  input [7:0]S00_AXI_0_wstrb;
  input [0:0]S00_AXI_0_wvalid;
  inout SPI_0_0_io0_io;
  inout SPI_0_0_io1_io;
  inout SPI_0_0_sck_io;
  inout [0:0]SPI_0_0_ss_io;
  output rs232_uart_baudoutn;
  input rs232_uart_ctsn;
  input rs232_uart_dcdn;
  output rs232_uart_ddis;
  input rs232_uart_dsrn;
  output rs232_uart_dtrn;
  output rs232_uart_out1n;
  output rs232_uart_out2n;
  input rs232_uart_ri;
  output rs232_uart_rtsn;
  input rs232_uart_rxd;
  output rs232_uart_rxrdyn;
  output rs232_uart_txd;
  output rs232_uart_txrdyn;
  output uart16550_irpt;
  output uart_rtl_baudoutn;
  input uart_rtl_ctsn;
  input uart_rtl_dcdn;
  output uart_rtl_ddis;
  input uart_rtl_dsrn;
  output uart_rtl_dtrn;
  output uart_rtl_out1n;
  output uart_rtl_out2n;
  input uart_rtl_ri;
  output uart_rtl_rtsn;
  input uart_rtl_rxd;
  output uart_rtl_rxrdyn;
  output uart_rtl_txd;
  output uart_rtl_txrdyn;
  output uartlite_irpt;

  wire ACLK_0;
  wire ARESETN_0;
  wire [30:0]S00_AXI_0_araddr;
  wire [1:0]S00_AXI_0_arburst;
  wire [3:0]S00_AXI_0_arcache;
  wire [3:0]S00_AXI_0_arid;
  wire [7:0]S00_AXI_0_arlen;
  wire [0:0]S00_AXI_0_arlock;
  wire [2:0]S00_AXI_0_arprot;
  wire [3:0]S00_AXI_0_arqos;
  wire [0:0]S00_AXI_0_arready;
  wire [2:0]S00_AXI_0_arsize;
  wire [0:0]S00_AXI_0_arvalid;
  wire [30:0]S00_AXI_0_awaddr;
  wire [1:0]S00_AXI_0_awburst;
  wire [3:0]S00_AXI_0_awcache;
  wire [3:0]S00_AXI_0_awid;
  wire [7:0]S00_AXI_0_awlen;
  wire [0:0]S00_AXI_0_awlock;
  wire [2:0]S00_AXI_0_awprot;
  wire [3:0]S00_AXI_0_awqos;
  wire [0:0]S00_AXI_0_awready;
  wire [2:0]S00_AXI_0_awsize;
  wire [0:0]S00_AXI_0_awvalid;
  wire [3:0]S00_AXI_0_bid;
  wire [0:0]S00_AXI_0_bready;
  wire [1:0]S00_AXI_0_bresp;
  wire [0:0]S00_AXI_0_bvalid;
  wire [63:0]S00_AXI_0_rdata;
  wire [3:0]S00_AXI_0_rid;
  wire [0:0]S00_AXI_0_rlast;
  wire [0:0]S00_AXI_0_rready;
  wire [1:0]S00_AXI_0_rresp;
  wire [0:0]S00_AXI_0_rvalid;
  wire [63:0]S00_AXI_0_wdata;
  wire [0:0]S00_AXI_0_wlast;
  wire [0:0]S00_AXI_0_wready;
  wire [7:0]S00_AXI_0_wstrb;
  wire [0:0]S00_AXI_0_wvalid;
  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_io;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_io;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_sck_i;
  wire SPI_0_0_sck_io;
  wire SPI_0_0_sck_o;
  wire SPI_0_0_sck_t;
  wire [0:0]SPI_0_0_ss_i_0;
  wire [0:0]SPI_0_0_ss_io_0;
  wire [0:0]SPI_0_0_ss_o_0;
  wire SPI_0_0_ss_t;
  wire rs232_uart_baudoutn;
  wire rs232_uart_ctsn;
  wire rs232_uart_dcdn;
  wire rs232_uart_ddis;
  wire rs232_uart_dsrn;
  wire rs232_uart_dtrn;
  wire rs232_uart_out1n;
  wire rs232_uart_out2n;
  wire rs232_uart_ri;
  wire rs232_uart_rtsn;
  wire rs232_uart_rxd;
  wire rs232_uart_rxrdyn;
  wire rs232_uart_txd;
  wire rs232_uart_txrdyn;
  wire uart16550_irpt;
  wire uart_rtl_baudoutn;
  wire uart_rtl_ctsn;
  wire uart_rtl_dcdn;
  wire uart_rtl_ddis;
  wire uart_rtl_dsrn;
  wire uart_rtl_dtrn;
  wire uart_rtl_out1n;
  wire uart_rtl_out2n;
  wire uart_rtl_ri;
  wire uart_rtl_rtsn;
  wire uart_rtl_rxd;
  wire uart_rtl_rxrdyn;
  wire uart_rtl_txd;
  wire uart_rtl_txrdyn;
  wire uartlite_irpt;

  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(SPI_0_0_io0_io),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(SPI_0_0_io1_io),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_sck_iobuf
       (.I(SPI_0_0_sck_o),
        .IO(SPI_0_0_sck_io),
        .O(SPI_0_0_sck_i),
        .T(SPI_0_0_sck_t));
  IOBUF SPI_0_0_ss_iobuf_0
       (.I(SPI_0_0_ss_o_0),
        .IO(SPI_0_0_ss_io[0]),
        .O(SPI_0_0_ss_i_0),
        .T(SPI_0_0_ss_t));
  uart uart_i
       (.ACLK_0(ACLK_0),
        .ARESETN_0(ARESETN_0),
        .S00_AXI_0_araddr(S00_AXI_0_araddr),
        .S00_AXI_0_arburst(S00_AXI_0_arburst),
        .S00_AXI_0_arcache(S00_AXI_0_arcache),
        .S00_AXI_0_arid(S00_AXI_0_arid),
        .S00_AXI_0_arlen(S00_AXI_0_arlen),
        .S00_AXI_0_arlock(S00_AXI_0_arlock),
        .S00_AXI_0_arprot(S00_AXI_0_arprot),
        .S00_AXI_0_arqos(S00_AXI_0_arqos),
        .S00_AXI_0_arready(S00_AXI_0_arready),
        .S00_AXI_0_arsize(S00_AXI_0_arsize),
        .S00_AXI_0_arvalid(S00_AXI_0_arvalid),
        .S00_AXI_0_awaddr(S00_AXI_0_awaddr),
        .S00_AXI_0_awburst(S00_AXI_0_awburst),
        .S00_AXI_0_awcache(S00_AXI_0_awcache),
        .S00_AXI_0_awid(S00_AXI_0_awid),
        .S00_AXI_0_awlen(S00_AXI_0_awlen),
        .S00_AXI_0_awlock(S00_AXI_0_awlock),
        .S00_AXI_0_awprot(S00_AXI_0_awprot),
        .S00_AXI_0_awqos(S00_AXI_0_awqos),
        .S00_AXI_0_awready(S00_AXI_0_awready),
        .S00_AXI_0_awsize(S00_AXI_0_awsize),
        .S00_AXI_0_awvalid(S00_AXI_0_awvalid),
        .S00_AXI_0_bid(S00_AXI_0_bid),
        .S00_AXI_0_bready(S00_AXI_0_bready),
        .S00_AXI_0_bresp(S00_AXI_0_bresp),
        .S00_AXI_0_bvalid(S00_AXI_0_bvalid),
        .S00_AXI_0_rdata(S00_AXI_0_rdata),
        .S00_AXI_0_rid(S00_AXI_0_rid),
        .S00_AXI_0_rlast(S00_AXI_0_rlast),
        .S00_AXI_0_rready(S00_AXI_0_rready),
        .S00_AXI_0_rresp(S00_AXI_0_rresp),
        .S00_AXI_0_rvalid(S00_AXI_0_rvalid),
        .S00_AXI_0_wdata(S00_AXI_0_wdata),
        .S00_AXI_0_wlast(S00_AXI_0_wlast),
        .S00_AXI_0_wready(S00_AXI_0_wready),
        .S00_AXI_0_wstrb(S00_AXI_0_wstrb),
        .S00_AXI_0_wvalid(S00_AXI_0_wvalid),
        .SPI_0_0_io0_i(SPI_0_0_io0_i),
        .SPI_0_0_io0_o(SPI_0_0_io0_o),
        .SPI_0_0_io0_t(SPI_0_0_io0_t),
        .SPI_0_0_io1_i(SPI_0_0_io1_i),
        .SPI_0_0_io1_o(SPI_0_0_io1_o),
        .SPI_0_0_io1_t(SPI_0_0_io1_t),
        .SPI_0_0_sck_i(SPI_0_0_sck_i),
        .SPI_0_0_sck_o(SPI_0_0_sck_o),
        .SPI_0_0_sck_t(SPI_0_0_sck_t),
        .SPI_0_0_ss_i(SPI_0_0_ss_i_0),
        .SPI_0_0_ss_o(SPI_0_0_ss_o_0),
        .SPI_0_0_ss_t(SPI_0_0_ss_t),
        .rs232_uart_baudoutn(rs232_uart_baudoutn),
        .rs232_uart_ctsn(rs232_uart_ctsn),
        .rs232_uart_dcdn(rs232_uart_dcdn),
        .rs232_uart_ddis(rs232_uart_ddis),
        .rs232_uart_dsrn(rs232_uart_dsrn),
        .rs232_uart_dtrn(rs232_uart_dtrn),
        .rs232_uart_out1n(rs232_uart_out1n),
        .rs232_uart_out2n(rs232_uart_out2n),
        .rs232_uart_ri(rs232_uart_ri),
        .rs232_uart_rtsn(rs232_uart_rtsn),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_rxrdyn(rs232_uart_rxrdyn),
        .rs232_uart_txd(rs232_uart_txd),
        .rs232_uart_txrdyn(rs232_uart_txrdyn),
        .uart16550_irpt(uart16550_irpt),
        .uart_rtl_baudoutn(uart_rtl_baudoutn),
        .uart_rtl_ctsn(uart_rtl_ctsn),
        .uart_rtl_dcdn(uart_rtl_dcdn),
        .uart_rtl_ddis(uart_rtl_ddis),
        .uart_rtl_dsrn(uart_rtl_dsrn),
        .uart_rtl_dtrn(uart_rtl_dtrn),
        .uart_rtl_out1n(uart_rtl_out1n),
        .uart_rtl_out2n(uart_rtl_out2n),
        .uart_rtl_ri(uart_rtl_ri),
        .uart_rtl_rtsn(uart_rtl_rtsn),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_rxrdyn(uart_rtl_rxrdyn),
        .uart_rtl_txd(uart_rtl_txd),
        .uart_rtl_txrdyn(uart_rtl_txrdyn),
        .uartlite_irpt(uartlite_irpt));
endmodule
