//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 16:34:21 2020
//Host        : DESKTOP-2K0B056 running 64-bit major release  (build 9200)
//Command     : generate_target ddr4.bd
//Design      : ddr4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ddr4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ddr4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ddr4.hwdef" *) 
module ddr4
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR4_0, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART EDY4016AABG-DR-F, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output C0_DDR4_0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 ADR" *) output [16:0]C0_DDR4_0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 BA" *) output [1:0]C0_DDR4_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 BG" *) output [0:0]C0_DDR4_0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 CK_C" *) output [0:0]C0_DDR4_0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 CK_T" *) output [0:0]C0_DDR4_0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 CKE" *) output [0:0]C0_DDR4_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 CS_N" *) output [0:0]C0_DDR4_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 DM_N" *) inout [7:0]C0_DDR4_0_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 DQ" *) inout [63:0]C0_DDR4_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 DQS_C" *) inout [7:0]C0_DDR4_0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 DQS_T" *) inout [7:0]C0_DDR4_0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 ODT" *) output [0:0]C0_DDR4_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4_0 RESET_N" *) output C0_DDR4_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR4_S_AXI_0, ADDR_WIDTH 31, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN ddr4_s_axi_aclk_0, DATA_WIDTH 64, FREQ_HZ 10000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [30:0]C0_DDR4_S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARBURST" *) input [1:0]C0_DDR4_S_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARCACHE" *) input [3:0]C0_DDR4_S_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARID" *) input [3:0]C0_DDR4_S_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARLEN" *) input [7:0]C0_DDR4_S_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARLOCK" *) input [0:0]C0_DDR4_S_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARPROT" *) input [2:0]C0_DDR4_S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARQOS" *) input [3:0]C0_DDR4_S_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARREADY" *) output C0_DDR4_S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARREGION" *) input [3:0]C0_DDR4_S_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARSIZE" *) input [2:0]C0_DDR4_S_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 ARVALID" *) input C0_DDR4_S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWADDR" *) input [30:0]C0_DDR4_S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWBURST" *) input [1:0]C0_DDR4_S_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWCACHE" *) input [3:0]C0_DDR4_S_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWID" *) input [3:0]C0_DDR4_S_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWLEN" *) input [7:0]C0_DDR4_S_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWLOCK" *) input [0:0]C0_DDR4_S_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWPROT" *) input [2:0]C0_DDR4_S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWQOS" *) input [3:0]C0_DDR4_S_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWREADY" *) output C0_DDR4_S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWREGION" *) input [3:0]C0_DDR4_S_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWSIZE" *) input [2:0]C0_DDR4_S_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 AWVALID" *) input C0_DDR4_S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 BID" *) output [3:0]C0_DDR4_S_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 BREADY" *) input C0_DDR4_S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 BRESP" *) output [1:0]C0_DDR4_S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 BVALID" *) output C0_DDR4_S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RDATA" *) output [63:0]C0_DDR4_S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RID" *) output [3:0]C0_DDR4_S_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RLAST" *) output C0_DDR4_S_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RREADY" *) input C0_DDR4_S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RRESP" *) output [1:0]C0_DDR4_S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 RVALID" *) output C0_DDR4_S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 WDATA" *) input [63:0]C0_DDR4_S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 WLAST" *) input C0_DDR4_S_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 WREADY" *) output C0_DDR4_S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 WSTRB" *) input [7:0]C0_DDR4_S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR4_S_AXI_0 WVALID" *) input C0_DDR4_S_AXI_0_wvalid;
  output c0_init_calib_complete_0;
  output [511:0]dbg_bus_0;
  output dbg_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_250mhz_clk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME default_250mhz_clk1, CAN_DEBUG false, FREQ_HZ 250000000" *) input default_250mhz_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_250mhz_clk1 CLK_P" *) input default_250mhz_clk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF C0_DDR4_S_AXI_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN ddr4_s_axi_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst_0;

  wire [30:0]C0_DDR4_S_AXI_0_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI_0_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI_0_1_ARCACHE;
  wire [3:0]C0_DDR4_S_AXI_0_1_ARID;
  wire [7:0]C0_DDR4_S_AXI_0_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI_0_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI_0_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI_0_1_ARQOS;
  wire C0_DDR4_S_AXI_0_1_ARREADY;
  wire [3:0]C0_DDR4_S_AXI_0_1_ARREGION;
  wire [2:0]C0_DDR4_S_AXI_0_1_ARSIZE;
  wire C0_DDR4_S_AXI_0_1_ARVALID;
  wire [30:0]C0_DDR4_S_AXI_0_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI_0_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI_0_1_AWCACHE;
  wire [3:0]C0_DDR4_S_AXI_0_1_AWID;
  wire [7:0]C0_DDR4_S_AXI_0_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI_0_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI_0_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI_0_1_AWQOS;
  wire C0_DDR4_S_AXI_0_1_AWREADY;
  wire [3:0]C0_DDR4_S_AXI_0_1_AWREGION;
  wire [2:0]C0_DDR4_S_AXI_0_1_AWSIZE;
  wire C0_DDR4_S_AXI_0_1_AWVALID;
  wire [3:0]C0_DDR4_S_AXI_0_1_BID;
  wire C0_DDR4_S_AXI_0_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_0_1_BRESP;
  wire C0_DDR4_S_AXI_0_1_BVALID;
  wire [63:0]C0_DDR4_S_AXI_0_1_RDATA;
  wire [3:0]C0_DDR4_S_AXI_0_1_RID;
  wire C0_DDR4_S_AXI_0_1_RLAST;
  wire C0_DDR4_S_AXI_0_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_0_1_RRESP;
  wire C0_DDR4_S_AXI_0_1_RVALID;
  wire [63:0]C0_DDR4_S_AXI_0_1_WDATA;
  wire C0_DDR4_S_AXI_0_1_WLAST;
  wire C0_DDR4_S_AXI_0_1_WREADY;
  wire [7:0]C0_DDR4_S_AXI_0_1_WSTRB;
  wire C0_DDR4_S_AXI_0_1_WVALID;
  wire [30:0]axi_clock_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_ARCACHE;
  wire [3:0]axi_clock_converter_0_M_AXI_ARID;
  wire [7:0]axi_clock_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_ARQOS;
  wire axi_clock_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_ARSIZE;
  wire axi_clock_converter_0_M_AXI_ARVALID;
  wire [30:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_AWCACHE;
  wire [3:0]axi_clock_converter_0_M_AXI_AWID;
  wire [7:0]axi_clock_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_AWQOS;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_AWSIZE;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire [3:0]axi_clock_converter_0_M_AXI_BID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [63:0]axi_clock_converter_0_M_AXI_RDATA;
  wire [3:0]axi_clock_converter_0_M_AXI_RID;
  wire axi_clock_converter_0_M_AXI_RLAST;
  wire axi_clock_converter_0_M_AXI_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_RRESP;
  wire axi_clock_converter_0_M_AXI_RVALID;
  wire [63:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WLAST;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire [7:0]axi_clock_converter_0_M_AXI_WSTRB;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [0:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_0_c0_init_calib_complete;
  wire [511:0]ddr4_0_dbg_bus;
  wire ddr4_0_dbg_clk;
  wire default_250mhz_clk1_1_CLK_N;
  wire default_250mhz_clk1_1_CLK_P;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;
  wire sys_rst_0_1;
  wire [0:0]util_vector_logic_0_Res;

  assign C0_DDR4_0_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign C0_DDR4_0_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign C0_DDR4_0_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign C0_DDR4_0_bg[0] = ddr4_0_C0_DDR4_BG;
  assign C0_DDR4_0_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign C0_DDR4_0_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign C0_DDR4_0_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign C0_DDR4_0_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign C0_DDR4_0_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign C0_DDR4_0_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign C0_DDR4_S_AXI_0_1_ARADDR = C0_DDR4_S_AXI_0_araddr[30:0];
  assign C0_DDR4_S_AXI_0_1_ARBURST = C0_DDR4_S_AXI_0_arburst[1:0];
  assign C0_DDR4_S_AXI_0_1_ARCACHE = C0_DDR4_S_AXI_0_arcache[3:0];
  assign C0_DDR4_S_AXI_0_1_ARID = C0_DDR4_S_AXI_0_arid[3:0];
  assign C0_DDR4_S_AXI_0_1_ARLEN = C0_DDR4_S_AXI_0_arlen[7:0];
  assign C0_DDR4_S_AXI_0_1_ARLOCK = C0_DDR4_S_AXI_0_arlock[0];
  assign C0_DDR4_S_AXI_0_1_ARPROT = C0_DDR4_S_AXI_0_arprot[2:0];
  assign C0_DDR4_S_AXI_0_1_ARQOS = C0_DDR4_S_AXI_0_arqos[3:0];
  assign C0_DDR4_S_AXI_0_1_ARREGION = C0_DDR4_S_AXI_0_arregion[3:0];
  assign C0_DDR4_S_AXI_0_1_ARSIZE = C0_DDR4_S_AXI_0_arsize[2:0];
  assign C0_DDR4_S_AXI_0_1_ARVALID = C0_DDR4_S_AXI_0_arvalid;
  assign C0_DDR4_S_AXI_0_1_AWADDR = C0_DDR4_S_AXI_0_awaddr[30:0];
  assign C0_DDR4_S_AXI_0_1_AWBURST = C0_DDR4_S_AXI_0_awburst[1:0];
  assign C0_DDR4_S_AXI_0_1_AWCACHE = C0_DDR4_S_AXI_0_awcache[3:0];
  assign C0_DDR4_S_AXI_0_1_AWID = C0_DDR4_S_AXI_0_awid[3:0];
  assign C0_DDR4_S_AXI_0_1_AWLEN = C0_DDR4_S_AXI_0_awlen[7:0];
  assign C0_DDR4_S_AXI_0_1_AWLOCK = C0_DDR4_S_AXI_0_awlock[0];
  assign C0_DDR4_S_AXI_0_1_AWPROT = C0_DDR4_S_AXI_0_awprot[2:0];
  assign C0_DDR4_S_AXI_0_1_AWQOS = C0_DDR4_S_AXI_0_awqos[3:0];
  assign C0_DDR4_S_AXI_0_1_AWREGION = C0_DDR4_S_AXI_0_awregion[3:0];
  assign C0_DDR4_S_AXI_0_1_AWSIZE = C0_DDR4_S_AXI_0_awsize[2:0];
  assign C0_DDR4_S_AXI_0_1_AWVALID = C0_DDR4_S_AXI_0_awvalid;
  assign C0_DDR4_S_AXI_0_1_BREADY = C0_DDR4_S_AXI_0_bready;
  assign C0_DDR4_S_AXI_0_1_RREADY = C0_DDR4_S_AXI_0_rready;
  assign C0_DDR4_S_AXI_0_1_WDATA = C0_DDR4_S_AXI_0_wdata[63:0];
  assign C0_DDR4_S_AXI_0_1_WLAST = C0_DDR4_S_AXI_0_wlast;
  assign C0_DDR4_S_AXI_0_1_WSTRB = C0_DDR4_S_AXI_0_wstrb[7:0];
  assign C0_DDR4_S_AXI_0_1_WVALID = C0_DDR4_S_AXI_0_wvalid;
  assign C0_DDR4_S_AXI_0_arready = C0_DDR4_S_AXI_0_1_ARREADY;
  assign C0_DDR4_S_AXI_0_awready = C0_DDR4_S_AXI_0_1_AWREADY;
  assign C0_DDR4_S_AXI_0_bid[3:0] = C0_DDR4_S_AXI_0_1_BID;
  assign C0_DDR4_S_AXI_0_bresp[1:0] = C0_DDR4_S_AXI_0_1_BRESP;
  assign C0_DDR4_S_AXI_0_bvalid = C0_DDR4_S_AXI_0_1_BVALID;
  assign C0_DDR4_S_AXI_0_rdata[63:0] = C0_DDR4_S_AXI_0_1_RDATA;
  assign C0_DDR4_S_AXI_0_rid[3:0] = C0_DDR4_S_AXI_0_1_RID;
  assign C0_DDR4_S_AXI_0_rlast = C0_DDR4_S_AXI_0_1_RLAST;
  assign C0_DDR4_S_AXI_0_rresp[1:0] = C0_DDR4_S_AXI_0_1_RRESP;
  assign C0_DDR4_S_AXI_0_rvalid = C0_DDR4_S_AXI_0_1_RVALID;
  assign C0_DDR4_S_AXI_0_wready = C0_DDR4_S_AXI_0_1_WREADY;
  assign c0_init_calib_complete_0 = ddr4_0_c0_init_calib_complete;
  assign dbg_bus_0[511:0] = ddr4_0_dbg_bus;
  assign dbg_clk_0 = ddr4_0_dbg_clk;
  assign default_250mhz_clk1_1_CLK_N = default_250mhz_clk1_clk_n;
  assign default_250mhz_clk1_1_CLK_P = default_250mhz_clk1_clk_p;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  assign sys_rst_0_1 = sys_rst_0;
  ddr4_axi_clock_converter_0_0 axi_clock_converter_0
       (.m_axi_aclk(ddr4_0_c0_ddr4_ui_clk),
        .m_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .m_axi_aresetn(util_vector_logic_0_Res),
        .m_axi_arid(axi_clock_converter_0_M_AXI_ARID),
        .m_axi_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_clock_converter_0_M_AXI_AWID),
        .m_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .m_axi_bid(axi_clock_converter_0_M_AXI_BID),
        .m_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .m_axi_rid(axi_clock_converter_0_M_AXI_RID),
        .m_axi_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(C0_DDR4_S_AXI_0_1_ARADDR),
        .s_axi_arburst(C0_DDR4_S_AXI_0_1_ARBURST),
        .s_axi_arcache(C0_DDR4_S_AXI_0_1_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arid(C0_DDR4_S_AXI_0_1_ARID),
        .s_axi_arlen(C0_DDR4_S_AXI_0_1_ARLEN),
        .s_axi_arlock(C0_DDR4_S_AXI_0_1_ARLOCK),
        .s_axi_arprot(C0_DDR4_S_AXI_0_1_ARPROT),
        .s_axi_arqos(C0_DDR4_S_AXI_0_1_ARQOS),
        .s_axi_arready(C0_DDR4_S_AXI_0_1_ARREADY),
        .s_axi_arregion(C0_DDR4_S_AXI_0_1_ARREGION),
        .s_axi_arsize(C0_DDR4_S_AXI_0_1_ARSIZE),
        .s_axi_arvalid(C0_DDR4_S_AXI_0_1_ARVALID),
        .s_axi_awaddr(C0_DDR4_S_AXI_0_1_AWADDR),
        .s_axi_awburst(C0_DDR4_S_AXI_0_1_AWBURST),
        .s_axi_awcache(C0_DDR4_S_AXI_0_1_AWCACHE),
        .s_axi_awid(C0_DDR4_S_AXI_0_1_AWID),
        .s_axi_awlen(C0_DDR4_S_AXI_0_1_AWLEN),
        .s_axi_awlock(C0_DDR4_S_AXI_0_1_AWLOCK),
        .s_axi_awprot(C0_DDR4_S_AXI_0_1_AWPROT),
        .s_axi_awqos(C0_DDR4_S_AXI_0_1_AWQOS),
        .s_axi_awready(C0_DDR4_S_AXI_0_1_AWREADY),
        .s_axi_awregion(C0_DDR4_S_AXI_0_1_AWREGION),
        .s_axi_awsize(C0_DDR4_S_AXI_0_1_AWSIZE),
        .s_axi_awvalid(C0_DDR4_S_AXI_0_1_AWVALID),
        .s_axi_bid(C0_DDR4_S_AXI_0_1_BID),
        .s_axi_bready(C0_DDR4_S_AXI_0_1_BREADY),
        .s_axi_bresp(C0_DDR4_S_AXI_0_1_BRESP),
        .s_axi_bvalid(C0_DDR4_S_AXI_0_1_BVALID),
        .s_axi_rdata(C0_DDR4_S_AXI_0_1_RDATA),
        .s_axi_rid(C0_DDR4_S_AXI_0_1_RID),
        .s_axi_rlast(C0_DDR4_S_AXI_0_1_RLAST),
        .s_axi_rready(C0_DDR4_S_AXI_0_1_RREADY),
        .s_axi_rresp(C0_DDR4_S_AXI_0_1_RRESP),
        .s_axi_rvalid(C0_DDR4_S_AXI_0_1_RVALID),
        .s_axi_wdata(C0_DDR4_S_AXI_0_1_WDATA),
        .s_axi_wlast(C0_DDR4_S_AXI_0_1_WLAST),
        .s_axi_wready(C0_DDR4_S_AXI_0_1_WREADY),
        .s_axi_wstrb(C0_DDR4_S_AXI_0_1_WSTRB),
        .s_axi_wvalid(C0_DDR4_S_AXI_0_1_WVALID));
  ddr4_ddr4_0_0 ddr4_0
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(util_vector_logic_0_Res),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(C0_DDR4_0_dm_n[7:0]),
        .c0_ddr4_dq(C0_DDR4_0_dq[63:0]),
        .c0_ddr4_dqs_c(C0_DDR4_0_dqs_c[7:0]),
        .c0_ddr4_dqs_t(C0_DDR4_0_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_clock_converter_0_M_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_clock_converter_0_M_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_clock_converter_0_M_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_clock_converter_0_M_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_0_c0_init_calib_complete),
        .c0_sys_clk_n(default_250mhz_clk1_1_CLK_N),
        .c0_sys_clk_p(default_250mhz_clk1_1_CLK_P),
        .dbg_bus(ddr4_0_dbg_bus),
        .dbg_clk(ddr4_0_dbg_clk),
        .sys_rst(sys_rst_0_1));
  ddr4_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .Res(util_vector_logic_0_Res));
endmodule
