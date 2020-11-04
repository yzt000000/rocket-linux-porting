 set_property -dict {PACKAGE_PIN G32 IOSTANDARD DIFF_SSTL12} [get_ports CLK_IN_N]
 set_property -dict {PACKAGE_PIN H32 IOSTANDARD DIFF_SSTL12} [get_ports CLK_IN_P]

  set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS12} [get_ports CPU_RESET]
  set_property -dict {PACKAGE_PIN N28 IOSTANDARD LVCMOS18} [get_ports JTAG_TDO]
  set_property -dict {PACKAGE_PIN M30 IOSTANDARD LVCMOS18} [get_ports JTAG_TRST]
  set_property -dict {PACKAGE_PIN N30 IOSTANDARD LVCMOS18} [get_ports JTAG_TCK]
  set_property -dict {PACKAGE_PIN P29 IOSTANDARD LVCMOS18} [get_ports JTAG_TDI]
  set_property -dict {PACKAGE_PIN L31 IOSTANDARD LVCMOS18} [get_ports JTAG_TMS]
  set_property -dict {PACKAGE_PIN M31 IOSTANDARD LVCMOS18} [get_ports JTAG_SRST] 
  
  
  set_property PULLUP true [get_ports JTAG_TRST]
  set_property PULLUP true [get_ports JTAG_SRST]
  set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets JTAG_TCK_IBUF_inst/O]   
  
  create_clock -period 100.000 -waveform {0.000 50.000} [get_ports JTAG_TCK]
  create_clock -name core_clock -period 32 [get_pins i_clock/clock_i/clk_out1_0]
  set_clock_groups -asynchronous -group [get_clocks core_clock] -group [get_clocks JTAG_TCK]

  set_property -dict {PACKAGE_PIN AT32 IOSTANDARD LVCMOS12} [get_ports LED[0]]
  set_property -dict {PACKAGE_PIN AV34 IOSTANDARD LVCMOS12} [get_ports LED[1]]
  set_property -dict {PACKAGE_PIN AY30 IOSTANDARD LVCMOS12} [get_ports LED[2]]
  set_property -dict {PACKAGE_PIN BB32 IOSTANDARD LVCMOS12} [get_ports LED[3]]
  set_property -dict {PACKAGE_PIN BF32 IOSTANDARD LVCMOS12} [get_ports LED[4]]
  set_property -dict {PACKAGE_PIN AU37 IOSTANDARD LVCMOS12} [get_ports LED[5]]
  set_property -dict {PACKAGE_PIN AV36 IOSTANDARD LVCMOS12} [get_ports LED[6]]
  set_property -dict {PACKAGE_PIN BA37 IOSTANDARD LVCMOS12} [get_ports LED[7]]

 set_property -dict {PACKAGE_PIN AW25 IOSTANDARD LVCMOS18} [get_ports UART_RXD]
 set_property -dict {PACKAGE_PIN BB21 IOSTANDARD LVCMOS18} [get_ports UART_TXD]
 
 set_property -dict {PACKAGE_PIN AY14 IOSTANDARD LVCMOS18} [get_ports UART_RXD1]
 set_property -dict {PACKAGE_PIN AY15 IOSTANDARD LVCMOS18} [get_ports UART_TXD1]
 
 set_property -dict {PACKAGE_PIN AV16 IOSTANDARD LVCMOS18} [get_ports SPI_SDI]
 set_property -dict {PACKAGE_PIN AU16 IOSTANDARD LVCMOS18} [get_ports SPI_SDO]
 set_property -dict {PACKAGE_PIN AT15 IOSTANDARD LVCMOS18} [get_ports SPI_SCK]
 set_property -dict {PACKAGE_PIN AT16 IOSTANDARD LVCMOS18} [get_ports SPI_CS]
 
 
#create_clock -period 20.000 -name u_led_display_driver/CFGMCLK -waveform {0.000 10.000} [get_pins {u_led_display_driver/STARTUPE3_inst/CFGMCLK}]

# 250 MHZ clk
set_property PACKAGE_PIN E12 [ get_ports "C0_SYS_CLK_0_clk_p" ]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "C0_SYS_CLK_0_clk_p" ]
set_property PACKAGE_PIN D12 [ get_ports "C0_SYS_CLK_0_clk_n" ]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "C0_SYS_CLK_0_clk_n" ]

set_property PACKAGE_PIN E13      [get_ports "C0_DDR4_0_act_n"] ;
set_property PACKAGE_PIN D14      [get_ports "C0_DDR4_0_adr[0]"] ;
set_property PACKAGE_PIN C12      [get_ports "C0_DDR4_0_adr[10]"] ;
set_property PACKAGE_PIN B13      [get_ports "C0_DDR4_0_adr[11]"] ;
set_property PACKAGE_PIN C13      [get_ports "C0_DDR4_0_adr[12]"] ;
set_property PACKAGE_PIN D15      [get_ports "C0_DDR4_0_adr[13]"] ;
set_property PACKAGE_PIN H14      [get_ports "C0_DDR4_0_adr[14]"] ;
set_property PACKAGE_PIN H15      [get_ports "C0_DDR4_0_adr[15]"] ;
set_property PACKAGE_PIN F15      [get_ports "C0_DDR4_0_adr[16]"] ;
set_property PACKAGE_PIN B15      [get_ports "C0_DDR4_0_adr[1]"] ;
set_property PACKAGE_PIN B16      [get_ports "C0_DDR4_0_adr[2]"] ;
set_property PACKAGE_PIN C14      [get_ports "C0_DDR4_0_adr[3]"] ;
set_property PACKAGE_PIN C15      [get_ports "C0_DDR4_0_adr[4]"] ;
set_property PACKAGE_PIN A13      [get_ports "C0_DDR4_0_adr[5]"] ;
set_property PACKAGE_PIN A14      [get_ports "C0_DDR4_0_adr[6]"] ;
set_property PACKAGE_PIN A15      [get_ports "C0_DDR4_0_adr[7]"] ;
set_property PACKAGE_PIN A16      [get_ports "C0_DDR4_0_adr[8]"] ;
set_property PACKAGE_PIN B12      [get_ports "C0_DDR4_0_adr[9]"] ;
set_property PACKAGE_PIN G15      [get_ports "C0_DDR4_0_ba[0]"] ;
set_property PACKAGE_PIN G13      [get_ports "C0_DDR4_0_ba[1]"] ;
set_property PACKAGE_PIN H13      [get_ports "C0_DDR4_0_bg[0]"] ;
set_property PACKAGE_PIN E14      [get_ports "C0_DDR4_0_ck_c[0]"] ;
set_property PACKAGE_PIN F14      [get_ports "C0_DDR4_0_ck_t[0]"] ;
set_property PACKAGE_PIN A10      [get_ports "C0_DDR4_0_cke[0]"] ;
set_property PACKAGE_PIN F13      [get_ports "C0_DDR4_0_cs_n[0]"] ;
set_property PACKAGE_PIN G11      [get_ports "C0_DDR4_0_dm_n[0]"] ;
set_property PACKAGE_PIN R18      [get_ports "C0_DDR4_0_dm_n[1]"] ;
set_property PACKAGE_PIN K17      [get_ports "C0_DDR4_0_dm_n[2]"] ;
set_property PACKAGE_PIN G18      [get_ports "C0_DDR4_0_dm_n[3]"] ;
set_property PACKAGE_PIN B18      [get_ports "C0_DDR4_0_dm_n[4]"] ;
set_property PACKAGE_PIN P20      [get_ports "C0_DDR4_0_dm_n[5]"] ;
set_property PACKAGE_PIN L23      [get_ports "C0_DDR4_0_dm_n[6]"] ;
set_property PACKAGE_PIN G22      [get_ports "C0_DDR4_0_dm_n[7]"] ;
#set_property PACKAGE_PIN E24      [get_ports "C0_DDR4_0_dm_dbi_n[8]"] ;
#set_property PACKAGE_PIN C9       [get_ports "C0_DDR4_0_dm_dbi_n[9]"] ;
set_property PACKAGE_PIN F11      [get_ports "C0_DDR4_0_dq[0]"] ;
set_property PACKAGE_PIN M18      [get_ports "C0_DDR4_0_dq[10]"] ;
set_property PACKAGE_PIN M17      [get_ports "C0_DDR4_0_dq[11]"] ;
set_property PACKAGE_PIN N19      [get_ports "C0_DDR4_0_dq[12]"] ;
set_property PACKAGE_PIN N18      [get_ports "C0_DDR4_0_dq[13]"] ;
set_property PACKAGE_PIN N17      [get_ports "C0_DDR4_0_dq[14]"] ;
set_property PACKAGE_PIN M16      [get_ports "C0_DDR4_0_dq[15]"] ;
set_property PACKAGE_PIN L16      [get_ports "C0_DDR4_0_dq[16]"] ;
set_property PACKAGE_PIN K16      [get_ports "C0_DDR4_0_dq[17]"] ;
set_property PACKAGE_PIN L18      [get_ports "C0_DDR4_0_dq[18]"] ;
set_property PACKAGE_PIN K18      [get_ports "C0_DDR4_0_dq[19]"] ;
set_property PACKAGE_PIN E11      [get_ports "C0_DDR4_0_dq[1]"] ;
set_property PACKAGE_PIN J17      [get_ports "C0_DDR4_0_dq[20]"] ;
set_property PACKAGE_PIN H17      [get_ports "C0_DDR4_0_dq[21]"] ;
set_property PACKAGE_PIN H19      [get_ports "C0_DDR4_0_dq[22]"] ;
set_property PACKAGE_PIN H18      [get_ports "C0_DDR4_0_dq[23]"] ;
set_property PACKAGE_PIN F19      [get_ports "C0_DDR4_0_dq[24]"] ;
set_property PACKAGE_PIN F18      [get_ports "C0_DDR4_0_dq[25]"] ;
set_property PACKAGE_PIN E19      [get_ports "C0_DDR4_0_dq[26]"] ;
set_property PACKAGE_PIN E18      [get_ports "C0_DDR4_0_dq[27]"] ;
set_property PACKAGE_PIN G20      [get_ports "C0_DDR4_0_dq[28]"] ;
set_property PACKAGE_PIN F20      [get_ports "C0_DDR4_0_dq[29]"] ;
set_property PACKAGE_PIN F10      [get_ports "C0_DDR4_0_dq[2]"] ;
set_property PACKAGE_PIN E17      [get_ports "C0_DDR4_0_dq[30]"] ;
set_property PACKAGE_PIN D16      [get_ports "C0_DDR4_0_dq[31]"] ;
set_property PACKAGE_PIN D17      [get_ports "C0_DDR4_0_dq[32]"] ;
set_property PACKAGE_PIN C17      [get_ports "C0_DDR4_0_dq[33]"] ;
set_property PACKAGE_PIN C19      [get_ports "C0_DDR4_0_dq[34]"] ;
set_property PACKAGE_PIN C18      [get_ports "C0_DDR4_0_dq[35]"] ;
set_property PACKAGE_PIN D20      [get_ports "C0_DDR4_0_dq[36]"] ;
set_property PACKAGE_PIN D19      [get_ports "C0_DDR4_0_dq[37]"] ;
set_property PACKAGE_PIN C20      [get_ports "C0_DDR4_0_dq[38]"] ;
set_property PACKAGE_PIN B20      [get_ports "C0_DDR4_0_dq[39]"] ;
set_property PACKAGE_PIN F9       [get_ports "C0_DDR4_0_dq[3]"] ;
set_property PACKAGE_PIN N23      [get_ports "C0_DDR4_0_dq[40]"] ;
set_property PACKAGE_PIN M23      [get_ports "C0_DDR4_0_dq[41]"] ;
set_property PACKAGE_PIN R21      [get_ports "C0_DDR4_0_dq[42]"] ;
set_property PACKAGE_PIN P21      [get_ports "C0_DDR4_0_dq[43]"] ;
set_property PACKAGE_PIN R22      [get_ports "C0_DDR4_0_dq[44]"] ;
set_property PACKAGE_PIN P22      [get_ports "C0_DDR4_0_dq[45]"] ;
set_property PACKAGE_PIN T23      [get_ports "C0_DDR4_0_dq[46]"] ;
set_property PACKAGE_PIN R23      [get_ports "C0_DDR4_0_dq[47]"] ;
set_property PACKAGE_PIN K24      [get_ports "C0_DDR4_0_dq[48]"] ;
set_property PACKAGE_PIN J24      [get_ports "C0_DDR4_0_dq[49]"] ;
set_property PACKAGE_PIN H12      [get_ports "C0_DDR4_0_dq[4]"] ;
set_property PACKAGE_PIN M21      [get_ports "C0_DDR4_0_dq[50]"] ;
set_property PACKAGE_PIN L21      [get_ports "C0_DDR4_0_dq[51]"] ;
set_property PACKAGE_PIN K21      [get_ports "C0_DDR4_0_dq[52]"] ;
set_property PACKAGE_PIN J21      [get_ports "C0_DDR4_0_dq[53]"] ;
set_property PACKAGE_PIN K22      [get_ports "C0_DDR4_0_dq[54]"] ;
set_property PACKAGE_PIN J22      [get_ports "C0_DDR4_0_dq[55]"] ;
set_property PACKAGE_PIN H23      [get_ports "C0_DDR4_0_dq[56]"] ;
set_property PACKAGE_PIN H22      [get_ports "C0_DDR4_0_dq[57]"] ;
set_property PACKAGE_PIN E23      [get_ports "C0_DDR4_0_dq[58]"] ;
set_property PACKAGE_PIN E22      [get_ports "C0_DDR4_0_dq[59]"] ;
set_property PACKAGE_PIN G12      [get_ports "C0_DDR4_0_dq[5]"] ;
set_property PACKAGE_PIN F21      [get_ports "C0_DDR4_0_dq[60]"] ;
set_property PACKAGE_PIN E21      [get_ports "C0_DDR4_0_dq[61]"] ;
set_property PACKAGE_PIN F24      [get_ports "C0_DDR4_0_dq[62]"] ;
set_property PACKAGE_PIN F23      [get_ports "C0_DDR4_0_dq[63]"] ;
#set_property PACKAGE_PIN A24      [get_ports "C0_DDR4_0_dq[64]"] ;
#set_property PACKAGE_PIN A23      [get_ports "C0_DDR4_0_dq[65]"] ;
#set_property PACKAGE_PIN C24      [get_ports "C0_DDR4_0_dq[66]"] ;
#set_property PACKAGE_PIN C23      [get_ports "C0_DDR4_0_dq[67]"] ;
#set_property PACKAGE_PIN B23      [get_ports "C0_DDR4_0_dq[68]"] ;
#set_property PACKAGE_PIN B22      [get_ports "C0_DDR4_0_dq[69]"] ;
set_property PACKAGE_PIN E9       [get_ports "C0_DDR4_0_dq[6]"] ;
#set_property PACKAGE_PIN B21      [get_ports "C0_DDR4_0_dq[70]"] ;
#set_property PACKAGE_PIN A21      [get_ports "C0_DDR4_0_dq[71]"] ;
#set_property PACKAGE_PIN D7       [get_ports "C0_DDR4_0_dq[72]"] ;
#set_property PACKAGE_PIN C7       [get_ports "C0_DDR4_0_dq[73]"] ;
#set_property PACKAGE_PIN B8       [get_ports "C0_DDR4_0_dq[74]"] ;
#set_property PACKAGE_PIN B7       [get_ports "C0_DDR4_0_dq[75]"] ;
#set_property PACKAGE_PIN C10      [get_ports "C0_DDR4_0_dq[76]"] ;
#set_property PACKAGE_PIN B10      [get_ports "C0_DDR4_0_dq[77]"] ;
#set_property PACKAGE_PIN B11      [get_ports "C0_DDR4_0_dq[78]"] ;
#set_property PACKAGE_PIN A11      [get_ports "C0_DDR4_0_dq[79]"] ;
set_property PACKAGE_PIN D9       [get_ports "C0_DDR4_0_dq[7]"] ;
set_property PACKAGE_PIN R19      [get_ports "C0_DDR4_0_dq[8]"] ;
set_property PACKAGE_PIN P19      [get_ports "C0_DDR4_0_dq[9]"] ;
set_property PACKAGE_PIN D10      [get_ports "C0_DDR4_0_dqs_c[0]"] ;
set_property PACKAGE_PIN P16      [get_ports "C0_DDR4_0_dqs_c[1]"] ;
set_property PACKAGE_PIN J19      [get_ports "C0_DDR4_0_dqs_c[2]"] ;
set_property PACKAGE_PIN E16      [get_ports "C0_DDR4_0_dqs_c[3]"] ;
set_property PACKAGE_PIN A18      [get_ports "C0_DDR4_0_dqs_c[4]"] ;
set_property PACKAGE_PIN M22      [get_ports "C0_DDR4_0_dqs_c[5]"] ;
set_property PACKAGE_PIN L20      [get_ports "C0_DDR4_0_dqs_c[6]"] ;
set_property PACKAGE_PIN G23      [get_ports "C0_DDR4_0_dqs_c[7]"] ;
#set_property PACKAGE_PIN C22      [get_ports "C0_DDR4_0_dqs_c[8]"] ;
#set_property PACKAGE_PIN A8       [get_ports "C0_DDR4_0_dqs_c[9]"] ;
set_property PACKAGE_PIN D11      [get_ports "C0_DDR4_0_dqs_t[0]"] ;
set_property PACKAGE_PIN P17      [get_ports "C0_DDR4_0_dqs_t[1]"] ;
set_property PACKAGE_PIN K19      [get_ports "C0_DDR4_0_dqs_t[2]"] ;
set_property PACKAGE_PIN F16      [get_ports "C0_DDR4_0_dqs_t[3]"] ;
set_property PACKAGE_PIN A19      [get_ports "C0_DDR4_0_dqs_t[4]"] ;
set_property PACKAGE_PIN N22      [get_ports "C0_DDR4_0_dqs_t[5]"] ;
set_property PACKAGE_PIN M20      [get_ports "C0_DDR4_0_dqs_t[6]"] ;
set_property PACKAGE_PIN H24      [get_ports "C0_DDR4_0_dqs_t[7]"] ;
#set_property PACKAGE_PIN D22      [get_ports "C0_DDR4_0_dqs_t[8]"] ;
#set_property PACKAGE_PIN A9       [get_ports "C0_DDR4_0_dqs_t[9]"] ;
set_property PACKAGE_PIN C8       [get_ports "C0_DDR4_0_odt[0]"] ;
set_property PACKAGE_PIN N20      [get_ports "C0_DDR4_0_reset_n"] ;






  
