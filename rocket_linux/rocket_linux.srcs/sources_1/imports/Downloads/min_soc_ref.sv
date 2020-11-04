module min_soc_ref
( 
  input   clk, // @[:freechips.rocketchip.system.DefaultConfig.fir@176558.4]
  input   rst_n, // @[:freechips.rocketchip.system.DefaultConfig.fir@176559.4]
  input   tck,
  input   tms,
  input   tdi,

  output           C0_DDR4_0_act_n,
  output [16:0]    C0_DDR4_0_adr,
  output [1:0]     C0_DDR4_0_ba,
  output [0:0]     C0_DDR4_0_bg,
  output [0:0]     C0_DDR4_0_ck_c,
  output [0:0]     C0_DDR4_0_ck_t,
  output [0:0]     C0_DDR4_0_cke,
  output [0:0]     C0_DDR4_0_cs_n,
  inout [7:0]      C0_DDR4_0_dm_n,
  inout [63:0]     C0_DDR4_0_dq,
  inout [7:0]      C0_DDR4_0_dqs_c,
  inout [7:0]      C0_DDR4_0_dqs_t,
  output [0:0]     C0_DDR4_0_odt,
  output           C0_DDR4_0_reset_n,
  input            C0_SYS_CLK_0_clk_n,
  input            C0_SYS_CLK_0_clk_p,

  input   UART_RXD,
  output  UART_TXD,
  input   UART_RXD1,
  output  UART_TXD1,
  output  tdo,
  output  tdo_en,
  inout   spi_sdi,
  inout   spi_sdo,
  inout   spi_cs,
  inout   spi_sck
);
  wire  clcok;
  wire  reset;
  wire  dut_clock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_reset; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_jtag_TCK; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_jtag_TMS; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_jtag_TDI; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_jtag_TDO_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_jtag_TDO_driven; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_systemjtag_reset; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [10:0] dut_debug_systemjtag_mfr_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_ndreset; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_debug_dmactive; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_interrupts; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_aw_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_aw_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_aw_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [31:0] dut_mem_axi4_0_aw_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mem_axi4_0_aw_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mem_axi4_0_aw_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mem_axi4_0_aw_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_aw_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_aw_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mem_axi4_0_aw_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_aw_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_w_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_w_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [63:0] dut_mem_axi4_0_w_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mem_axi4_0_w_bits_strb; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_w_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_b_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_b_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_b_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mem_axi4_0_b_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_ar_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_ar_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_ar_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [31:0] dut_mem_axi4_0_ar_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mem_axi4_0_ar_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mem_axi4_0_ar_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mem_axi4_0_ar_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_ar_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_ar_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mem_axi4_0_ar_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_ar_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_r_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_r_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mem_axi4_0_r_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [63:0] dut_mem_axi4_0_r_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mem_axi4_0_r_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mem_axi4_0_r_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_aw_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_aw_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_aw_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [30:0] dut_mmio_axi4_0_aw_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mmio_axi4_0_aw_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mmio_axi4_0_aw_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mmio_axi4_0_aw_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_aw_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_aw_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mmio_axi4_0_aw_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_aw_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_w_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_w_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [63:0] dut_mmio_axi4_0_w_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mmio_axi4_0_w_bits_strb; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_w_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_b_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_b_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_b_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mmio_axi4_0_b_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_ar_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_ar_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_ar_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [30:0] dut_mmio_axi4_0_ar_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [7:0] dut_mmio_axi4_0_ar_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mmio_axi4_0_ar_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mmio_axi4_0_ar_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_ar_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_ar_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [2:0] dut_mmio_axi4_0_ar_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_ar_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_r_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_r_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [3:0] dut_mmio_axi4_0_r_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [63:0] dut_mmio_axi4_0_r_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire [1:0] dut_mmio_axi4_0_r_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  dut_mmio_axi4_0_r_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@177808.4]
  wire  mem_clock; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_reset; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_aw_ready; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_aw_valid; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [3:0] mem_io_axi4_0_aw_bits_id; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [30:0] mem_io_axi4_0_aw_bits_addr; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [7:0] mem_io_axi4_0_aw_bits_len; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [2:0] mem_io_axi4_0_aw_bits_size; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [1:0] mem_io_axi4_0_aw_bits_burst; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_w_ready; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_w_valid; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [63:0] mem_io_axi4_0_w_bits_data; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [7:0] mem_io_axi4_0_w_bits_strb; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_w_bits_last; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_b_ready; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_b_valid; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [3:0] mem_io_axi4_0_b_bits_id; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [1:0] mem_io_axi4_0_b_bits_resp; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_ar_ready; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_ar_valid; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [3:0] mem_io_axi4_0_ar_bits_id; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [30:0] mem_io_axi4_0_ar_bits_addr; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [7:0] mem_io_axi4_0_ar_bits_len; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [2:0] mem_io_axi4_0_ar_bits_size; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [1:0] mem_io_axi4_0_ar_bits_burst; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_r_ready; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_r_valid; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [3:0] mem_io_axi4_0_r_bits_id; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [63:0] mem_io_axi4_0_r_bits_data; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire [1:0] mem_io_axi4_0_r_bits_resp; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mem_io_axi4_0_r_bits_last; // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@177823.4]
  wire  mmio_mem_clock; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_reset; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_aw_ready; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_aw_valid; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [3:0] mmio_mem_io_axi4_0_aw_bits_id; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [30:0] mmio_mem_io_axi4_0_aw_bits_addr; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [7:0] mmio_mem_io_axi4_0_aw_bits_len; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [2:0] mmio_mem_io_axi4_0_aw_bits_size; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [1:0] mmio_mem_io_axi4_0_aw_bits_burst; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_w_ready; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_w_valid; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [63:0] mmio_mem_io_axi4_0_w_bits_data; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [7:0] mmio_mem_io_axi4_0_w_bits_strb; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_w_bits_last; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_b_ready; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_b_valid; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [3:0] mmio_mem_io_axi4_0_b_bits_id; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [1:0] mmio_mem_io_axi4_0_b_bits_resp; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_ar_ready; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_ar_valid; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [3:0] mmio_mem_io_axi4_0_ar_bits_id; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [30:0] mmio_mem_io_axi4_0_ar_bits_addr; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [7:0] mmio_mem_io_axi4_0_ar_bits_len; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [2:0] mmio_mem_io_axi4_0_ar_bits_size; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [1:0] mmio_mem_io_axi4_0_ar_bits_burst; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_r_ready; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_r_valid; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [3:0] mmio_mem_io_axi4_0_r_bits_id; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [63:0] mmio_mem_io_axi4_0_r_bits_data; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire [1:0] mmio_mem_io_axi4_0_r_bits_resp; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4]
  wire  mmio_mem_io_axi4_0_r_bits_last; // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@177831.4] 
  wire [1:0] ldut_interrupts;
  wire uartlite_irpt;
  wire uart16550_irpt;



  wire [31:0] plusarg_reader_out; 
  wire  _T_9; 
  wire [30:0] _GEN_0; 
  wire [31:0] _T_10; 
  wire  _T_12;
  assign ldut_interrupts = {uart16550_irpt,uartlite_irpt}; 
  top dut ( 
    .clock(dut_clock),
    .reset(dut_reset),
    .ldut_interrupts(ldut_interrupts),
    .ldut_debug_systemjtag_jtag_TCK(dut_debug_systemjtag_jtag_TCK),
    .ldut_debug_systemjtag_jtag_TMS(dut_debug_systemjtag_jtag_TMS),
    .ldut_debug_systemjtag_jtag_TDI(dut_debug_systemjtag_jtag_TDI),
    .ldut_debug_systemjtag_jtag_TDO_data(dut_debug_systemjtag_jtag_TDO_data),
    .ldut_debug_systemjtag_jtag_TDO_driven(dut_debug_systemjtag_jtag_TDO_driven),
    .ldut_mem_axi4_0_aw_ready(dut_mem_axi4_0_aw_ready),
    .ldut_mem_axi4_0_aw_valid(dut_mem_axi4_0_aw_valid),
    .ldut_mem_axi4_0_aw_bits_id(dut_mem_axi4_0_aw_bits_id),
    .ldut_mem_axi4_0_aw_bits_addr(dut_mem_axi4_0_aw_bits_addr),
    .ldut_mem_axi4_0_aw_bits_len(dut_mem_axi4_0_aw_bits_len),
    .ldut_mem_axi4_0_aw_bits_size(dut_mem_axi4_0_aw_bits_size),
    .ldut_mem_axi4_0_aw_bits_burst(dut_mem_axi4_0_aw_bits_burst),
    .ldut_mem_axi4_0_aw_bits_lock(dut_mem_axi4_0_aw_bits_lock),
    .ldut_mem_axi4_0_aw_bits_cache(dut_mem_axi4_0_aw_bits_cache),
    .ldut_mem_axi4_0_aw_bits_prot(dut_mem_axi4_0_aw_bits_prot),
    .ldut_mem_axi4_0_aw_bits_qos(dut_mem_axi4_0_aw_bits_qos),
    .ldut_mem_axi4_0_w_ready(dut_mem_axi4_0_w_ready),
    .ldut_mem_axi4_0_w_valid(dut_mem_axi4_0_w_valid),
    .ldut_mem_axi4_0_w_bits_data(dut_mem_axi4_0_w_bits_data),
    .ldut_mem_axi4_0_w_bits_strb(dut_mem_axi4_0_w_bits_strb),
    .ldut_mem_axi4_0_w_bits_last(dut_mem_axi4_0_w_bits_last),
    .ldut_mem_axi4_0_b_ready(dut_mem_axi4_0_b_ready),
    .ldut_mem_axi4_0_b_valid(dut_mem_axi4_0_b_valid),
    .ldut_mem_axi4_0_b_bits_id(dut_mem_axi4_0_b_bits_id),
    .ldut_mem_axi4_0_b_bits_resp(dut_mem_axi4_0_b_bits_resp),
    .ldut_mem_axi4_0_ar_ready(dut_mem_axi4_0_ar_ready),
    .ldut_mem_axi4_0_ar_valid(dut_mem_axi4_0_ar_valid),
    .ldut_mem_axi4_0_ar_bits_id(dut_mem_axi4_0_ar_bits_id),
    .ldut_mem_axi4_0_ar_bits_addr(dut_mem_axi4_0_ar_bits_addr),
    .ldut_mem_axi4_0_ar_bits_len(dut_mem_axi4_0_ar_bits_len),
    .ldut_mem_axi4_0_ar_bits_size(dut_mem_axi4_0_ar_bits_size),
    .ldut_mem_axi4_0_ar_bits_burst(dut_mem_axi4_0_ar_bits_burst),
    .ldut_mem_axi4_0_ar_bits_lock(dut_mem_axi4_0_ar_bits_lock),
    .ldut_mem_axi4_0_ar_bits_cache(dut_mem_axi4_0_ar_bits_cache),
    .ldut_mem_axi4_0_ar_bits_prot(dut_mem_axi4_0_ar_bits_prot),
    .ldut_mem_axi4_0_ar_bits_qos(dut_mem_axi4_0_ar_bits_qos),
    .ldut_mem_axi4_0_r_ready(dut_mem_axi4_0_r_ready),
    .ldut_mem_axi4_0_r_valid(dut_mem_axi4_0_r_valid),
    .ldut_mem_axi4_0_r_bits_id(dut_mem_axi4_0_r_bits_id),
    .ldut_mem_axi4_0_r_bits_data(dut_mem_axi4_0_r_bits_data),
    .ldut_mem_axi4_0_r_bits_resp(dut_mem_axi4_0_r_bits_resp),
    .ldut_mem_axi4_0_r_bits_last(dut_mem_axi4_0_r_bits_last),
    .ldut_mmio_axi4_0_aw_ready(dut_mmio_axi4_0_aw_ready),
    .ldut_mmio_axi4_0_aw_valid(dut_mmio_axi4_0_aw_valid),
    .ldut_mmio_axi4_0_aw_bits_id(dut_mmio_axi4_0_aw_bits_id),
    .ldut_mmio_axi4_0_aw_bits_addr(dut_mmio_axi4_0_aw_bits_addr),
    .ldut_mmio_axi4_0_aw_bits_len(dut_mmio_axi4_0_aw_bits_len),
    .ldut_mmio_axi4_0_aw_bits_size(dut_mmio_axi4_0_aw_bits_size),
    .ldut_mmio_axi4_0_aw_bits_burst(dut_mmio_axi4_0_aw_bits_burst),
    .ldut_mmio_axi4_0_aw_bits_lock(dut_mmio_axi4_0_aw_bits_lock),
    .ldut_mmio_axi4_0_aw_bits_cache(dut_mmio_axi4_0_aw_bits_cache),
    .ldut_mmio_axi4_0_aw_bits_prot(dut_mmio_axi4_0_aw_bits_prot),
    .ldut_mmio_axi4_0_aw_bits_qos(dut_mmio_axi4_0_aw_bits_qos),
    .ldut_mmio_axi4_0_w_ready(dut_mmio_axi4_0_w_ready),
    .ldut_mmio_axi4_0_w_valid(dut_mmio_axi4_0_w_valid),
    .ldut_mmio_axi4_0_w_bits_data(dut_mmio_axi4_0_w_bits_data),
    .ldut_mmio_axi4_0_w_bits_strb(dut_mmio_axi4_0_w_bits_strb),
    .ldut_mmio_axi4_0_w_bits_last(dut_mmio_axi4_0_w_bits_last),
    .ldut_mmio_axi4_0_b_ready(dut_mmio_axi4_0_b_ready),
    .ldut_mmio_axi4_0_b_valid(dut_mmio_axi4_0_b_valid),
    .ldut_mmio_axi4_0_b_bits_id(dut_mmio_axi4_0_b_bits_id),
    .ldut_mmio_axi4_0_b_bits_resp(dut_mmio_axi4_0_b_bits_resp),
    .ldut_mmio_axi4_0_ar_ready(dut_mmio_axi4_0_ar_ready),
    .ldut_mmio_axi4_0_ar_valid(dut_mmio_axi4_0_ar_valid),
    .ldut_mmio_axi4_0_ar_bits_id(dut_mmio_axi4_0_ar_bits_id),
    .ldut_mmio_axi4_0_ar_bits_addr(dut_mmio_axi4_0_ar_bits_addr),
    .ldut_mmio_axi4_0_ar_bits_len(dut_mmio_axi4_0_ar_bits_len),
    .ldut_mmio_axi4_0_ar_bits_size(dut_mmio_axi4_0_ar_bits_size),
    .ldut_mmio_axi4_0_ar_bits_burst(dut_mmio_axi4_0_ar_bits_burst),
    .ldut_mmio_axi4_0_ar_bits_lock(dut_mmio_axi4_0_ar_bits_lock),
    .ldut_mmio_axi4_0_ar_bits_cache(dut_mmio_axi4_0_ar_bits_cache),
    .ldut_mmio_axi4_0_ar_bits_prot(dut_mmio_axi4_0_ar_bits_prot),
    .ldut_mmio_axi4_0_ar_bits_qos(dut_mmio_axi4_0_ar_bits_qos),
    .ldut_mmio_axi4_0_r_ready(dut_mmio_axi4_0_r_ready),
    .ldut_mmio_axi4_0_r_valid(dut_mmio_axi4_0_r_valid),
    .ldut_mmio_axi4_0_r_bits_id(dut_mmio_axi4_0_r_bits_id),
    .ldut_mmio_axi4_0_r_bits_data(dut_mmio_axi4_0_r_bits_data),
    .ldut_mmio_axi4_0_r_bits_resp(dut_mmio_axi4_0_r_bits_resp),
    .ldut_mmio_axi4_0_r_bits_last(dut_mmio_axi4_0_r_bits_last),
    .io_success ()
  );
//  SimAXIMem mem ( 
//    .clock(mem_clock),
//    .reset(mem_reset),
//    .io_axi4_0_aw_ready(mem_io_axi4_0_aw_ready),
//    .io_axi4_0_aw_valid(mem_io_axi4_0_aw_valid),
//    .io_axi4_0_aw_bits_id(mem_io_axi4_0_aw_bits_id),
//    .io_axi4_0_aw_bits_addr(mem_io_axi4_0_aw_bits_addr),
//    .io_axi4_0_aw_bits_len(mem_io_axi4_0_aw_bits_len),
//    .io_axi4_0_aw_bits_size(mem_io_axi4_0_aw_bits_size),
//    .io_axi4_0_aw_bits_burst(mem_io_axi4_0_aw_bits_burst),
//    .io_axi4_0_w_ready(mem_io_axi4_0_w_ready),
//    .io_axi4_0_w_valid(mem_io_axi4_0_w_valid),
//    .io_axi4_0_w_bits_data(mem_io_axi4_0_w_bits_data),
//    .io_axi4_0_w_bits_strb(mem_io_axi4_0_w_bits_strb),
//    .io_axi4_0_w_bits_last(mem_io_axi4_0_w_bits_last),
//    .io_axi4_0_b_ready(mem_io_axi4_0_b_ready),
//    .io_axi4_0_b_valid(mem_io_axi4_0_b_valid),
//    .io_axi4_0_b_bits_id(mem_io_axi4_0_b_bits_id),
//    .io_axi4_0_b_bits_resp(mem_io_axi4_0_b_bits_resp),
//    .io_axi4_0_ar_ready(mem_io_axi4_0_ar_ready),
//    .io_axi4_0_ar_valid(mem_io_axi4_0_ar_valid),
//    .io_axi4_0_ar_bits_id(mem_io_axi4_0_ar_bits_id),
//    .io_axi4_0_ar_bits_addr(mem_io_axi4_0_ar_bits_addr),
//    .io_axi4_0_ar_bits_len(mem_io_axi4_0_ar_bits_len),
//    .io_axi4_0_ar_bits_size(mem_io_axi4_0_ar_bits_size),
//    .io_axi4_0_ar_bits_burst(mem_io_axi4_0_ar_bits_burst),
//    .io_axi4_0_r_ready(mem_io_axi4_0_r_ready),
//    .io_axi4_0_r_valid(mem_io_axi4_0_r_valid),
//    .io_axi4_0_r_bits_id(mem_io_axi4_0_r_bits_id),
//    .io_axi4_0_r_bits_data(mem_io_axi4_0_r_bits_data),
//    .io_axi4_0_r_bits_resp(mem_io_axi4_0_r_bits_resp),
//    .io_axi4_0_r_bits_last(mem_io_axi4_0_r_bits_last)
//  );
//  SimAXIMem_1 mmio_mem ( 
//    .clock(mmio_mem_clock),
//    .reset(mmio_mem_reset),
//    .io_axi4_0_aw_ready(mmio_mem_io_axi4_0_aw_ready),
//    .io_axi4_0_aw_valid(mmio_mem_io_axi4_0_aw_valid),
//    .io_axi4_0_aw_bits_id(mmio_mem_io_axi4_0_aw_bits_id),
//    .io_axi4_0_aw_bits_addr(mmio_mem_io_axi4_0_aw_bits_addr),
//    .io_axi4_0_aw_bits_len(mmio_mem_io_axi4_0_aw_bits_len),
//    .io_axi4_0_aw_bits_size(mmio_mem_io_axi4_0_aw_bits_size),
//    .io_axi4_0_aw_bits_burst(mmio_mem_io_axi4_0_aw_bits_burst),
//    .io_axi4_0_w_ready(mmio_mem_io_axi4_0_w_ready),
//    .io_axi4_0_w_valid(mmio_mem_io_axi4_0_w_valid),
//    .io_axi4_0_w_bits_data(mmio_mem_io_axi4_0_w_bits_data),
//    .io_axi4_0_w_bits_strb(mmio_mem_io_axi4_0_w_bits_strb),
//    .io_axi4_0_w_bits_last(mmio_mem_io_axi4_0_w_bits_last),
//    .io_axi4_0_b_ready(mmio_mem_io_axi4_0_b_ready),
//    .io_axi4_0_b_valid(mmio_mem_io_axi4_0_b_valid),
//    .io_axi4_0_b_bits_id(mmio_mem_io_axi4_0_b_bits_id),
//    .io_axi4_0_b_bits_resp(mmio_mem_io_axi4_0_b_bits_resp),
//    .io_axi4_0_ar_ready(mmio_mem_io_axi4_0_ar_ready),
//    .io_axi4_0_ar_valid(mmio_mem_io_axi4_0_ar_valid),
//    .io_axi4_0_ar_bits_id(mmio_mem_io_axi4_0_ar_bits_id),
//    .io_axi4_0_ar_bits_addr(mmio_mem_io_axi4_0_ar_bits_addr),
//    .io_axi4_0_ar_bits_len(mmio_mem_io_axi4_0_ar_bits_len),
//    .io_axi4_0_ar_bits_size(mmio_mem_io_axi4_0_ar_bits_size),
//    .io_axi4_0_ar_bits_burst(mmio_mem_io_axi4_0_ar_bits_burst),
//    .io_axi4_0_r_ready(mmio_mem_io_axi4_0_r_ready),
//    .io_axi4_0_r_valid(mmio_mem_io_axi4_0_r_valid),
//    .io_axi4_0_r_bits_id(mmio_mem_io_axi4_0_r_bits_id),
//    .io_axi4_0_r_bits_data(mmio_mem_io_axi4_0_r_bits_data),
//    .io_axi4_0_r_bits_resp(mmio_mem_io_axi4_0_r_bits_resp),
//    .io_axi4_0_r_bits_last(mmio_mem_io_axi4_0_r_bits_last)
//  );
wire c0_ddr4_ui_clk_sync_rst_0; 
  ddr4_wrapper  mem ( // @[Ports.scala 76:15:freechips.rocketchip.system.DefaultConfig.fir@176580.4]
    .C0_DDR4_0_act_n           (C0_DDR4_0_act_n      ),
    .C0_DDR4_0_adr             (C0_DDR4_0_adr        ),
    .C0_DDR4_0_ba              (C0_DDR4_0_ba         ),
    .C0_DDR4_0_bg              (C0_DDR4_0_bg         ),
    .C0_DDR4_0_ck_c            (C0_DDR4_0_ck_c       ),
    .C0_DDR4_0_ck_t            (C0_DDR4_0_ck_t       ),
    .C0_DDR4_0_cke             (C0_DDR4_0_cke        ),
    .C0_DDR4_0_cs_n            (C0_DDR4_0_cs_n       ),
    .C0_DDR4_0_dm_n            (C0_DDR4_0_dm_n       ),
    .C0_DDR4_0_dq              (C0_DDR4_0_dq         ),
    .C0_DDR4_0_dqs_c           (C0_DDR4_0_dqs_c      ),
    .C0_DDR4_0_dqs_t           (C0_DDR4_0_dqs_t      ),
    .C0_DDR4_0_odt             (C0_DDR4_0_odt        ),
    .C0_DDR4_0_reset_n         (C0_DDR4_0_reset_n    ),

//    .clock(mem_clock),
//    .reset(mem_reset),
    .C0_DDR4_S_AXI_0_awready             (mem_io_axi4_0_aw_ready             ),
    .C0_DDR4_S_AXI_0_awvalid             (mem_io_axi4_0_aw_valid             ),
    .C0_DDR4_S_AXI_0_awid                (mem_io_axi4_0_aw_bits_id           ),
    .C0_DDR4_S_AXI_0_awaddr              (mem_io_axi4_0_aw_bits_addr         ),
    .C0_DDR4_S_AXI_0_awlen               (mem_io_axi4_0_aw_bits_len          ),
    .C0_DDR4_S_AXI_0_awsize              (mem_io_axi4_0_aw_bits_size         ),
    .C0_DDR4_S_AXI_0_awburst             (mem_io_axi4_0_aw_bits_burst        ),
    .C0_DDR4_S_AXI_0_wready              (mem_io_axi4_0_w_ready              ),
    .C0_DDR4_S_AXI_0_wvalid              (mem_io_axi4_0_w_valid              ),
    .C0_DDR4_S_AXI_0_wdata               (mem_io_axi4_0_w_bits_data          ),
    .C0_DDR4_S_AXI_0_wstrb               (mem_io_axi4_0_w_bits_strb          ),
    .C0_DDR4_S_AXI_0_wlast               (mem_io_axi4_0_w_bits_last          ),
    .C0_DDR4_S_AXI_0_bready              (mem_io_axi4_0_b_ready              ),
    .C0_DDR4_S_AXI_0_bvalid              (mem_io_axi4_0_b_valid              ),
    .C0_DDR4_S_AXI_0_bid                 (mem_io_axi4_0_b_bits_id            ),
    .C0_DDR4_S_AXI_0_bresp               (mem_io_axi4_0_b_bits_resp          ),
    .C0_DDR4_S_AXI_0_arready             (mem_io_axi4_0_ar_ready             ),
    .C0_DDR4_S_AXI_0_arvalid             (mem_io_axi4_0_ar_valid             ),
    .C0_DDR4_S_AXI_0_arid                (mem_io_axi4_0_ar_bits_id           ),
    .C0_DDR4_S_AXI_0_araddr              (mem_io_axi4_0_ar_bits_addr         ),
    .C0_DDR4_S_AXI_0_arlen               (mem_io_axi4_0_ar_bits_len          ),
    .C0_DDR4_S_AXI_0_arsize              (mem_io_axi4_0_ar_bits_size         ),
    .C0_DDR4_S_AXI_0_arburst             (mem_io_axi4_0_ar_bits_burst        ),
    .C0_DDR4_S_AXI_0_rready              (mem_io_axi4_0_r_ready              ),
    .C0_DDR4_S_AXI_0_rvalid              (mem_io_axi4_0_r_valid              ),
    .C0_DDR4_S_AXI_0_rid                 (mem_io_axi4_0_r_bits_id            ),
    .C0_DDR4_S_AXI_0_rdata               (mem_io_axi4_0_r_bits_data          ),
    .C0_DDR4_S_AXI_0_rresp               (mem_io_axi4_0_r_bits_resp          ),
    .C0_DDR4_S_AXI_0_rlast               (mem_io_axi4_0_r_bits_last          ),
    
    .default_250mhz_clk1_clk_n           (C0_SYS_CLK_0_clk_n                 ),  // input 
    .default_250mhz_clk1_clk_p           (C0_SYS_CLK_0_clk_p                 ),  // input 
    .c0_init_calib_complete_0            (                                   ),  // output 
    .dbg_bus_0                           (                                   ),  // output 
    .dbg_clk_0                           (                                   ),  // output 
    .s_axi_aclk_0                        (clock                              ),
    .s_axi_aresetn_0                     (~reset                             ),
    .sys_rst_0                           (reset                              )   // input 
   
  );

  wire  [31:0]              uart_prdata                ;                                                                       
  wire                      uart_pready                ;
  wire                      uart_pslverr               ;
  
  wire  [31:0]              uart_paddr                 ;        // From u_bus_matrix of bus_matrix.v
  wire                      uart_penable               ;        // From u_bus_matrix of bus_matrix.v
  wire                      uart_psel                  ;        // From u_bus_matrix of bus_matrix.v
  wire  [31:0]              uart_pwdata                ;        // From u_bus_matrix of bus_matrix.v
  wire                      uart_pwrite                ;        // From u_bus_matrix of bus_matrix.v





  uart_wrapper mmio_mem ( // @[Ports.scala 121:13:freechips.rocketchip.system.DefaultConfig.fir@176588.4]
    .ACLK_0(mmio_mem_clock),
    .ARESETN_0(~mmio_mem_reset),
    
    //.APB_M_0_paddr             (uart_paddr[30:0]   ),
    //.APB_M_0_penable           (uart_penable       ),
    //.APB_M_0_prdata            (uart_prdata        ),
    //.APB_M_0_pready            (uart_pready        ),
    //.APB_M_0_psel              (uart_psel          ),
    //.APB_M_0_pslverr           (uart_pslverr       ),
    //.APB_M_0_pwdata            (uart_pwdata        ),
    //.APB_M_0_pwrite            (uart_pwrite        ),
    
    .S00_AXI_0_awready(mmio_mem_io_axi4_0_aw_ready),
    .S00_AXI_0_awvalid(mmio_mem_io_axi4_0_aw_valid),
    .S00_AXI_0_awid(mmio_mem_io_axi4_0_aw_bits_id),
    .S00_AXI_0_awaddr(mmio_mem_io_axi4_0_aw_bits_addr),
    .S00_AXI_0_awlen(mmio_mem_io_axi4_0_aw_bits_len),
    .S00_AXI_0_awsize(mmio_mem_io_axi4_0_aw_bits_size),
    .S00_AXI_0_awburst(mmio_mem_io_axi4_0_aw_bits_burst),
    .S00_AXI_0_wready(mmio_mem_io_axi4_0_w_ready),
    .S00_AXI_0_wvalid(mmio_mem_io_axi4_0_w_valid),
    .S00_AXI_0_wdata(mmio_mem_io_axi4_0_w_bits_data),
    .S00_AXI_0_wstrb(mmio_mem_io_axi4_0_w_bits_strb),
    .S00_AXI_0_wlast(mmio_mem_io_axi4_0_w_bits_last),
    .S00_AXI_0_bready(mmio_mem_io_axi4_0_b_ready),
    .S00_AXI_0_bvalid(mmio_mem_io_axi4_0_b_valid),
    .S00_AXI_0_bid(mmio_mem_io_axi4_0_b_bits_id),
    .S00_AXI_0_bresp(mmio_mem_io_axi4_0_b_bits_resp),
    .S00_AXI_0_arready(mmio_mem_io_axi4_0_ar_ready),
    .S00_AXI_0_arvalid(mmio_mem_io_axi4_0_ar_valid),
    .S00_AXI_0_arid(mmio_mem_io_axi4_0_ar_bits_id),
    .S00_AXI_0_araddr(mmio_mem_io_axi4_0_ar_bits_addr),
    .S00_AXI_0_arlen(mmio_mem_io_axi4_0_ar_bits_len),
    .S00_AXI_0_arsize(mmio_mem_io_axi4_0_ar_bits_size),
    .S00_AXI_0_arburst(mmio_mem_io_axi4_0_ar_bits_burst),
    .S00_AXI_0_rready(mmio_mem_io_axi4_0_r_ready),
    .S00_AXI_0_rvalid(mmio_mem_io_axi4_0_r_valid),
    .S00_AXI_0_rid(mmio_mem_io_axi4_0_r_bits_id),
    .S00_AXI_0_rdata(mmio_mem_io_axi4_0_r_bits_data),
    .S00_AXI_0_rresp(mmio_mem_io_axi4_0_r_bits_resp),
    .S00_AXI_0_rlast(mmio_mem_io_axi4_0_r_bits_last),
    .SPI_0_0_io0_io(spi_sdi),
    .SPI_0_0_io1_io(spi_sdo),
    .SPI_0_0_sck_io(spi_sck),
    .SPI_0_0_ss_io(spi_cs),
    .uartlite_irpt(uartlite_irpt),
    .uart16550_irpt(uart16550_irpt),
    .rs232_uart_baudoutn(),
    .rs232_uart_ctsn(1'b1),
    .rs232_uart_dcdn(1'b1),
    .rs232_uart_ddis(),
    .rs232_uart_dsrn(1'b1),
    .rs232_uart_dtrn(),
    .rs232_uart_out1n(),
    .rs232_uart_out2n(),
    .rs232_uart_ri(1'b1),
    .rs232_uart_rtsn(),
    .rs232_uart_rxd(UART_RXD1),
    .rs232_uart_rxrdyn(),
    .rs232_uart_txd(UART_TXD1),
    .rs232_uart_txrdyn(),
    .uart_rtl_baudoutn(),
    .uart_rtl_ctsn(1'b1),
    .uart_rtl_dcdn(1'b1),
    .uart_rtl_ddis(),
    .uart_rtl_dsrn(1'b1),
    .uart_rtl_dtrn(),
    .uart_rtl_out1n(),
    .uart_rtl_out2n(),
    .uart_rtl_ri(1'b1),
    .uart_rtl_rtsn(),
    .uart_rtl_rxd(UART_RXD),
    .uart_rtl_rxrdyn(),
    .uart_rtl_txd(UART_TXD),
    .uart_rtl_txrdyn()
  );
  
  //apb_uart_sv #(
  //            .APB_ADDR_WIDTH    ( 12 )   //APB slaves are 4KB by default
  //)
  //u_apb_uart_sv
  //(/**/
  //            .RSTN                           (~mmio_mem_reset                     ),
  //            .CLK                            (mmio_mem_clock                      ),
  //
  //            .rx_i                           (UART_RXD                            ),
  //            .tx_o                           (UART_TXD                            ),
  //            .event_o                        (                                    ),
  //            // Outputs
  //            .PRDATA                         (uart_prdata[31:0]                   ),
  //            .PREADY                         (uart_pready                         ),
  //            .PSLVERR                        (uart_pslverr                        ),
  //            // Inputs                                                                                                        
  //            .PSEL                           (uart_psel                           ),
  //            .PENABLE                        (uart_penable                        ),
  //            .PADDR                          (uart_paddr[13:2]                    ), // depend on APB_ADDR_WIDTH
  //            .PWDATA                         (uart_pwdata[31:0]                   ),
  //            .PWRITE                         (uart_pwrite                         )
  // 
  // );
  












  plusarg_reader #(.FORMAT("jtag_rbb_enable=%d"), .DEFAULT(0)) plusarg_reader ( 
    .out(plusarg_reader_out)
  );

  assign clock = clk;
  assign reset = ~rst_n;
  assign dut_debug_systemjtag_jtag_TCK = tck;
  assign dut_debug_systemjtag_jtag_TMS = tms;
  assign dut_debug_systemjtag_jtag_TDI = tdi;
  assign tdo = dut_debug_systemjtag_jtag_TDO_data;
  assign tdo_en = dut_debug_systemjtag_jtag_TDO_driven;






  assign _T_10 = {{1'd0}, _GEN_0}; 
  assign _T_12 = reset == 1'h0; 

  assign dut_clock = clock; 
  assign dut_reset = reset | dut_debug_ndreset; 



  assign dut_debug_systemjtag_reset = reset; 
  assign dut_debug_systemjtag_mfr_id = 11'h0; 
  assign dut_interrupts = 2'h0; 
  assign dut_mem_axi4_0_aw_ready = mem_io_axi4_0_aw_ready; 
  assign dut_mem_axi4_0_w_ready = mem_io_axi4_0_w_ready; 
  assign dut_mem_axi4_0_b_valid = mem_io_axi4_0_b_valid; 
  assign dut_mem_axi4_0_b_bits_id = mem_io_axi4_0_b_bits_id; 
  assign dut_mem_axi4_0_b_bits_resp = mem_io_axi4_0_b_bits_resp; 
  assign dut_mem_axi4_0_ar_ready = mem_io_axi4_0_ar_ready; 
  assign dut_mem_axi4_0_r_valid = mem_io_axi4_0_r_valid; 
  assign dut_mem_axi4_0_r_bits_id = mem_io_axi4_0_r_bits_id; 
  assign dut_mem_axi4_0_r_bits_data = mem_io_axi4_0_r_bits_data; 
  assign dut_mem_axi4_0_r_bits_resp = mem_io_axi4_0_r_bits_resp; 
  assign dut_mem_axi4_0_r_bits_last = mem_io_axi4_0_r_bits_last; 
  assign dut_mmio_axi4_0_aw_ready = mmio_mem_io_axi4_0_aw_ready; 
  assign dut_mmio_axi4_0_w_ready = mmio_mem_io_axi4_0_w_ready; 
  assign dut_mmio_axi4_0_b_valid = mmio_mem_io_axi4_0_b_valid; 
  assign dut_mmio_axi4_0_b_bits_id = mmio_mem_io_axi4_0_b_bits_id; 
  assign dut_mmio_axi4_0_b_bits_resp = mmio_mem_io_axi4_0_b_bits_resp; 
  assign dut_mmio_axi4_0_ar_ready = mmio_mem_io_axi4_0_ar_ready; 
  assign dut_mmio_axi4_0_r_valid = mmio_mem_io_axi4_0_r_valid; 
  assign dut_mmio_axi4_0_r_bits_id = mmio_mem_io_axi4_0_r_bits_id; 
  assign dut_mmio_axi4_0_r_bits_data = mmio_mem_io_axi4_0_r_bits_data; 
  assign dut_mmio_axi4_0_r_bits_resp = mmio_mem_io_axi4_0_r_bits_resp; 
  assign dut_mmio_axi4_0_r_bits_last = mmio_mem_io_axi4_0_r_bits_last; 
  assign dut_l2_frontend_bus_axi4_0_aw_valid = 1'h0; 
  assign dut_l2_frontend_bus_axi4_0_aw_bits_id = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_addr = 33'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_len = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_size = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_burst = 2'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_lock = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_cache = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_prot = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_qos = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_w_valid = 1'h0; 
  assign dut_l2_frontend_bus_axi4_0_w_bits_data = 64'h0;
  assign dut_l2_frontend_bus_axi4_0_w_bits_strb = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_w_bits_last = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_b_ready = 1'h0; 
  assign dut_l2_frontend_bus_axi4_0_ar_valid = 1'h0; 
  assign dut_l2_frontend_bus_axi4_0_ar_bits_id = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_addr = 33'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_len = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_size = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_burst = 2'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_lock = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_cache = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_prot = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_qos = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_r_ready = 1'h0; 
  assign mem_clock = clock; 
  assign mem_reset = reset; 
  assign mem_io_axi4_0_aw_valid = dut_mem_axi4_0_aw_valid; 
  assign mem_io_axi4_0_aw_bits_id = dut_mem_axi4_0_aw_bits_id; 
  assign mem_io_axi4_0_aw_bits_addr = dut_mem_axi4_0_aw_bits_addr[30:0]; 
  assign mem_io_axi4_0_aw_bits_len = dut_mem_axi4_0_aw_bits_len; 
  assign mem_io_axi4_0_aw_bits_size = dut_mem_axi4_0_aw_bits_size; 
  assign mem_io_axi4_0_aw_bits_burst = dut_mem_axi4_0_aw_bits_burst; 
  assign mem_io_axi4_0_w_valid = dut_mem_axi4_0_w_valid; 
  assign mem_io_axi4_0_w_bits_data = dut_mem_axi4_0_w_bits_data; 
  assign mem_io_axi4_0_w_bits_strb = dut_mem_axi4_0_w_bits_strb; 
  assign mem_io_axi4_0_w_bits_last = dut_mem_axi4_0_w_bits_last; 
  assign mem_io_axi4_0_b_ready = dut_mem_axi4_0_b_ready; 
  assign mem_io_axi4_0_ar_valid = dut_mem_axi4_0_ar_valid; 
  assign mem_io_axi4_0_ar_bits_id = dut_mem_axi4_0_ar_bits_id; 
  assign mem_io_axi4_0_ar_bits_addr = dut_mem_axi4_0_ar_bits_addr[30:0]; 
  assign mem_io_axi4_0_ar_bits_len = dut_mem_axi4_0_ar_bits_len; 
  assign mem_io_axi4_0_ar_bits_size = dut_mem_axi4_0_ar_bits_size; 
  assign mem_io_axi4_0_ar_bits_burst = dut_mem_axi4_0_ar_bits_burst; 
  assign mem_io_axi4_0_r_ready = dut_mem_axi4_0_r_ready; 
  assign mmio_mem_clock = clock; 
  assign mmio_mem_reset = reset; 
  assign mmio_mem_io_axi4_0_aw_valid = dut_mmio_axi4_0_aw_valid; 
  assign mmio_mem_io_axi4_0_aw_bits_id = dut_mmio_axi4_0_aw_bits_id; 
  assign mmio_mem_io_axi4_0_aw_bits_addr = dut_mmio_axi4_0_aw_bits_addr[30:0]; 
  assign mmio_mem_io_axi4_0_aw_bits_len = dut_mmio_axi4_0_aw_bits_len; 
  assign mmio_mem_io_axi4_0_aw_bits_size = dut_mmio_axi4_0_aw_bits_size; 
  assign mmio_mem_io_axi4_0_aw_bits_burst = dut_mmio_axi4_0_aw_bits_burst; 
  assign mmio_mem_io_axi4_0_w_valid = dut_mmio_axi4_0_w_valid; 
  assign mmio_mem_io_axi4_0_w_bits_data = dut_mmio_axi4_0_w_bits_data; 
  assign mmio_mem_io_axi4_0_w_bits_strb = dut_mmio_axi4_0_w_bits_strb; 
  assign mmio_mem_io_axi4_0_w_bits_last = dut_mmio_axi4_0_w_bits_last; 
  assign mmio_mem_io_axi4_0_b_ready = dut_mmio_axi4_0_b_ready; 
  assign mmio_mem_io_axi4_0_ar_valid = dut_mmio_axi4_0_ar_valid; 
  assign mmio_mem_io_axi4_0_ar_bits_id = dut_mmio_axi4_0_ar_bits_id; 
  assign mmio_mem_io_axi4_0_ar_bits_addr = dut_mmio_axi4_0_ar_bits_addr[30:0]; 
  assign mmio_mem_io_axi4_0_ar_bits_len = dut_mmio_axi4_0_ar_bits_len; 
  assign mmio_mem_io_axi4_0_ar_bits_size = dut_mmio_axi4_0_ar_bits_size; 
  assign mmio_mem_io_axi4_0_ar_bits_burst = dut_mmio_axi4_0_ar_bits_burst; 
  assign mmio_mem_io_axi4_0_r_ready = dut_mmio_axi4_0_r_ready; 





endmodule
