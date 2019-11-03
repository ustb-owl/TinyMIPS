// from https://github.com/trivialmips/nontrivial-mips
// modified by: MaxXing, 2019-11

`timescale 1ns / 1ps

`include "iobuf.v"

module SoCTop(
  input           clk,
  input           rst_n,
  // UART
  input           UART_rxd,
  output          UART_txd,
  // plugable SPI flash
  inout           SPI_mosi,
  inout           SPI_miso,
  inout           SPI_ss,
  inout           SPI_sck,
  inout           SPI_io2,
  inout           SPI_io3,
  // non-plugable CFG SPI flash
  inout           CFG_mosi,
  inout           CFG_miso,
  inout           CFG_ss,
  // VGA (use inout for high-Z output)
  inout   [3:0]   VGA_r,
  inout   [3:0]   VGA_g,
  inout   [3:0]   VGA_b,
  output          VGA_hsync,
  output          VGA_vsync,
  // GPIO
  output  [15:0]  led,
  output  [1:0]   led_rg0,
  output  [1:0]   led_rg1,
  output  [7:0]   num_csn,
  output  [6:0]   num_a_g,
  output          num_a_g_dp,
  output  [3:0]   btn_key_col,
  input   [3:0]   btn_key_row,
  input   [1:0]   btn_step,
  input   [7:0]   switch,
  // DDR3
  inout   [15:0]  DDR_dq,
  output  [12:0]  DDR_addr,
  output  [2:0]   DDR_ba,
  output          DDR_ras_n,
  output          DDR_cas_n,
  output          DDR_we_n,
  output          DDR_odt,
  output          DDR_reset_n,
  output          DDR_cke,
  output  [1:0]   DDR_dm,
  inout   [1:0]   DDR_dqs_p,
  inout   [1:0]   DDR_dqs_n,
  output          DDR_ck_p,
  output          DDR_ck_n,
  // LCD
  inout   [15:0]  LCD_data,
  output          LCD_nrst,
  output          LCD_csel,
  output          LCD_rd,
  output          LCD_rs,
  output          LCD_wr,
  output          LCD_lighton
);

  // plugable SPI flash
  `IOBUF_GEN(SPI_mosi, SPI_io0)
  `IOBUF_GEN(SPI_miso, SPI_io1)
  `IOBUF_GEN_SIMPLE(SPI_io2)
  `IOBUF_GEN_SIMPLE(SPI_io3)
  `IOBUF_GEN_SIMPLE(SPI_ss)
  `IOBUF_GEN_SIMPLE(SPI_sck)

  // non-plugable CFG SPI flash
  `IOBUF_GEN(CFG_mosi, CFG_io0)
  `IOBUF_GEN(CFG_miso, CFG_io1)
  `IOBUF_GEN_SIMPLE(CFG_ss)

  // GPIO
  // not provided in confreg IP
  assign num_a_g_dp = 1'b0;

  // LCD
  `IOBUF_GEN_VEC(16, LCD_data, LCD_data_tri)

  // VGA
  wire [5:0] VGA_red, VGA_green, VGA_blue;
  genvar VGA_i;
  generate
    for (VGA_i = 0; VGA_i < 4; VGA_i = VGA_i+1) begin : VGA_gen
      // match on-board DAC built by resistor
      assign VGA_r[VGA_i] = VGA_red[VGA_i+2] ? 1'b1 : 1'bZ;
      assign VGA_g[VGA_i] = VGA_green[VGA_i+2] ? 1'b1 : 1'bZ;
      assign VGA_b[VGA_i] = VGA_blue[VGA_i+2] ? 1'b1 : 1'bZ;
    end
  endgenerate

  // initialize block design
  TinySoC tinysoc_inst(
    .clk            (clk),
    .rst_n          (rst_n),
    // UART
    .UART_txd       (UART_txd),
    .UART_rxd       (UART_rxd),
    .UART_ctsn      (1'b0),
    .UART_dcdn      (1'b0),
    .UART_dsrn      (1'b0),
    .UART_ri        (1'b1),
    // plugable SPI flash
    .SPI_io0_i      (SPI_io0_i),
    .SPI_io0_o      (SPI_io0_o),
    .SPI_io0_t      (SPI_io0_t),
    .SPI_io1_i      (SPI_io1_i),
    .SPI_io1_o      (SPI_io1_o),
    .SPI_io1_t      (SPI_io1_t),
    .SPI_io2_i      (SPI_io2_i),
    .SPI_io2_o      (SPI_io2_o),
    .SPI_io2_t      (SPI_io2_t),
    .SPI_io3_i      (SPI_io3_i),
    .SPI_io3_o      (SPI_io3_o),
    .SPI_io3_t      (SPI_io3_t),
    .SPI_sck_i      (SPI_sck_i),
    .SPI_sck_o      (SPI_sck_o),
    .SPI_sck_t      (SPI_sck_t),
    .SPI_ss_i       (SPI_ss_i),
    .SPI_ss_o       (SPI_ss_o),
    .SPI_ss_t       (SPI_ss_t),
    // non-plugable CFG SPI flash
    .CFG_io0_i      (CFG_io0_i),
    .CFG_io0_o      (CFG_io0_o),
    .CFG_io0_t      (CFG_io0_t),
    .CFG_io1_i      (CFG_io1_i),
    .CFG_io1_o      (CFG_io1_o),
    .CFG_io1_t      (CFG_io1_t),
    .CFG_ss_i       (CFG_ss_i),
    .CFG_ss_o       (CFG_ss_o),
    .CFG_ss_t       (CFG_ss_t),
    // VGA
    .VGA_hsync      (VGA_hsync),
    .VGA_vsync      (VGA_vsync),
    .VGA_red        (VGA_red),
    .VGA_green      (VGA_green),
    .VGA_blue       (VGA_blue),
    .VGA_clk        (),
    .VGA_de         (),
    .VGA_dps        (),
    // GPIO
    .led            (led),
    .led_rg0        (led_rg0),
    .led_rg1        (led_rg1),
    .num_csn        (num_csn),
    .num_a_g        (num_a_g),
    .btn_key_col    (btn_key_col),
    .btn_key_row    (btn_key_row),
    .btn_step       (btn_step),
    .switch         (switch),
    // DDR3
    .DDR_dq         (DDR_dq),
    .DDR_addr       (DDR_addr),
    .DDR_ba         (DDR_ba),
    .DDR_ras_n      (DDR_ras_n),
    .DDR_cas_n      (DDR_cas_n),
    .DDR_we_n       (DDR_we_n),
    .DDR_odt        (DDR_odt),
    .DDR_reset_n    (DDR_reset_n),
    .DDR_cke        (DDR_cke),
    .DDR_dm         (DDR_dm),
    .DDR_dqs_p      (DDR_dqs_p),
    .DDR_dqs_n      (DDR_dqs_n),
    .DDR_ck_p       (DDR_ck_p),
    .DDR_ck_n       (DDR_ck_n),
    // LCD
    .LCD_data_tri_i (LCD_data_tri_i),
    .LCD_data_tri_o (LCD_data_tri_o),
    .LCD_data_tri_t (LCD_data_tri_t),
    .LCD_nrst       (LCD_nrst),
    .LCD_csel       (LCD_csel),
    .LCD_rd         (LCD_rd),
    .LCD_rs         (LCD_rs),
    .LCD_wr         (LCD_wr),
    .LCD_lighton    (LCD_lighton)
  );

endmodule // SoCTop
