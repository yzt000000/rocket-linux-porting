//
// Copyright (c) 2016-2017 SiFive, Inc. -- Proprietary and Confidential
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of SiFive, Inc. The intellectual and technical concepts
// contained herein are proprietary to SiFive, Inc. and may be covered
// by U.S. and Foreign Patents, patents in process, and are protected by
// trade secret or copyright law.
//
// This work may not be copied, modified, re-published, uploaded,
// executed, or distributed in any way, in any medium, whether in whole
// or in part, without prior written permission from SiFive, Inc.
//
// The copyright notice above does not evidence any actual or intended
// publication or disclosure of this source code, which includes
// information that is confidential and/or proprietary, and is a trade
// secret, of SiFive, Inc.
//

module rocket_fpga_top(
  input CPU_RESET,
  input CLK_IN_P,
  input CLK_IN_N,
  input C0_SYS_CLK_0_clk_n,
  input C0_SYS_CLK_0_clk_p,
  output C0_DDR4_0_act_n,
  output [16:0]C0_DDR4_0_adr,
  output [1:0]C0_DDR4_0_ba,
  output [0:0]C0_DDR4_0_bg,
  output [0:0]C0_DDR4_0_ck_c,
  output [0:0]C0_DDR4_0_ck_t,
  output [0:0]C0_DDR4_0_cke,
  output [0:0]C0_DDR4_0_cs_n,
  inout [7:0]C0_DDR4_0_dm_n,
  inout [63:0]C0_DDR4_0_dq,
  inout [7:0]C0_DDR4_0_dqs_c,
  inout [7:0]C0_DDR4_0_dqs_t,
  output [0:0]C0_DDR4_0_odt,
  output C0_DDR4_0_reset_n,

  
  
  input JTAG_TCK,
  input JTAG_TMS,
  input JTAG_TDI,
  output JTAG_TDO,
  input JTAG_SRST,
  input  JTAG_TRST,
  output logic [7:0]LED,
  input UART_RXD,
  output UART_TXD,
  input  UART_RXD1,
  output UART_TXD1,
  inout  SPI_SDI,
  inout  SPI_SDO,
  inout  SPI_SCK,
  inout  SPI_CS
);

logic RESETn ;
assign RESETn = ~CPU_RESET;

//localparam int unsigned SCR1_CORE_FREQUENCY     = 25000000;

// --- LED ----------------------------------------------

// --- Heartbeat ----------------------------------------
logic [31:0]                        rtc_counter;
logic                               tick_2Hz;
logic                               heartbeat;

//logic [7:0]                         gpio_io;
//=======================================================
//  Signals / Variables declarations
//=======================================================
logic                               pll_rst_in;
logic                               pll_locked;
logic                               clk_riscv;
logic                               hard_rst_in_n;
logic   [1:0]                       hard_rst_in_sync;
logic                               hard_rst_n;
logic                               jtag_trst_n;

logic                               rtc_clock;


assign pll_rst_in_n     = RESETn;
assign hard_rst_in_n    = RESETn & pll_locked & jtag_srst_n;

always_ff @(posedge clk_riscv, negedge hard_rst_in_n)
begin
    if (~hard_rst_in_n) begin
        hard_rst_in_sync[0] <= 1'b0;
        hard_rst_in_sync[1] <= 1'b0;
    end
    else begin
        hard_rst_in_sync[0] <= hard_rst_in_n;
        hard_rst_in_sync[1] <= hard_rst_in_sync[0];
    end
end
assign hard_rst_n = hard_rst_in_sync[1];

//instance pll

  clock_wrapper i_clock
 (
  // Clock out ports
  //.clk_out1(),     // 200M , chipscope sample clock 
  .clk_out1_0(clk_riscv),     // 50M
 // .clk_out2(rtc_clock),     // 10M
  // Status and control signals
  .resetn_0(pll_rst_in_n), // input reset
  .locked_0(pll_locked),       // output locked
 // Clock in ports
  .CLK_IN1_D_0_clk_p(CLK_IN_P),    // input clk_in1_p
  .CLK_IN1_D_0_clk_n(CLK_IN_N));    // input clk_in1_n




min_soc_ref i_min_soc(
    // Control
    .clk                     (clk_riscv                   ),      //input   logic                                   clk                    // System clock
    .rst_n                   (hard_rst_n                  ),      //input   logic                                   rst_n                  // Reset signal
                                     
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
    .C0_SYS_CLK_0_clk_n        (C0_SYS_CLK_0_clk_n   ),  // input 
    .C0_SYS_CLK_0_clk_p        (C0_SYS_CLK_0_clk_p   ),  // input 
                                                                    //// Fuses
                                                                    //// -- JTAG I/F
    //.trst_n                  (jtag_trst_n                 ),      //input   logic                                   trst_n
    .tck                     (jtag_tck                    ),      //input   logic                                   tck
    .tms                     (jtag_tms                    ),      //input   logic                                   tms
    .tdi                     (jtag_tdi                    ),      //input   logic                                   tdi
    .tdo                     (jtag_tdo                    ),      //output  logic                                   tdo
    .tdo_en                  (jtag_tdo_en                 ),       //output  logic                                   tdo_en
    .spi_sdi                 (SPI_SDI                     ),
    .spi_sdo                 (SPI_SDO                     ),
    .spi_sck                 (SPI_SCK                     ),
    .spi_cs                  (SPI_CS                      ),   
    .UART_RXD1               (UART_RXD1                   ),
    .UART_TXD1               (UART_TXD1                   ),                                  
   .UART_TXD                    (UART_TXD                     ),      //output  logic                                   tx_o
   .UART_RXD                    (UART_RXD                     )      //input   logic                                   rx_i
  // .gpio_io                 (gpio_io                     )       //inout           [7:0]                           gpio_io           

);
localparam int unsigned SCR1_CORE_FREQUENCY     = 25000000;

always_ff @(posedge clk_riscv, negedge hard_rst_n)
begin
    if (~hard_rst_n) begin
        rtc_counter     <= '0;
        tick_2Hz        <= 1'b0;
    end
    else begin
        if (rtc_counter == '0) begin
            rtc_counter <= (SCR1_CORE_FREQUENCY/2);
            tick_2Hz    <= 1'b1;
        end
        else begin
            rtc_counter <= rtc_counter - 1'b1;
            tick_2Hz    <= 1'b0;
        end
    end
end

always_ff @(posedge clk_riscv, negedge hard_rst_n)
begin
    if (~hard_rst_n) begin
        heartbeat       <= 1'b0;
    end
    else begin
        if (tick_2Hz) begin
            heartbeat   <= ~heartbeat;
        end
    end
end


assign JTAG_TDO         = (jtag_tdo_en == 1'b1) ? jtag_tdo : 1'bZ;
assign jtag_srst_n      = JTAG_SRST ;
assign jtag_trst_n      = JTAG_TRST ;
assign jtag_tck         = JTAG_TCK    ;
assign jtag_tms         = JTAG_TMS    ;
assign jtag_tdi         = JTAG_TDI    ;



assign LED[0] = heartbeat;
assign LED[1] = ~hard_rst_n;
assign LED[2] = pll_locked;
assign LED[3] = jtag_srst_n;
assign LED[4] = jtag_trst_n;
assign LED[5] = RESETn;


//assign UART_TXD = uart_tx ;
//assign uart_rx = UART_RX ;




 endmodule
