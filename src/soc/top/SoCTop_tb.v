`timescale 1ns / 1ps

module SoCTop_tb();

  reg clk, rst_n;

  SoCTop soc_top(
    .clk          (clk),
    .rst_n        (rst_n),
    .UART_rxd     (1'b0),
    .UART_txd     (),
    .SPI_mosi     (),
    .SPI_miso     (),
    .SPI_ss       (),
    .SPI_sck      (),
    .SPI_io2      (),
    .SPI_io3      (),
    .CFG_mosi     (),
    .CFG_miso     (),
    .CFG_ss       (),
    .VGA_r        (),
    .VGA_g        (),
    .VGA_b        (),
    .VGA_hsync    (),
    .VGA_vsync    (),
    .led          (),
    .led_rg0      (),
    .led_rg1      (),
    .num_csn      (),
    .num_a_g      (),
    .num_a_g_dp   (),
    .btn_key_col  (),
    .btn_key_row  (4'b0),
    .btn_step     (2'b0),
    .switch       (8'b0),

    .DDR_dq       (),
    .DDR_addr     (),
    .DDR_ba       (),
    .DDR_ras_n    (),
    .DDR_cas_n    (),
    .DDR_we_n     (),
    .DDR_odt      (),
    .DDR_reset_n  (),
    .DDR_cke      (),
    .DDR_dm       (),
    .DDR_dqs_p    (),
    .DDR_dqs_n    (),
    .DDR_ck_p     (),
    .DDR_ck_n     (),

    .LCD_data     (),
    .LCD_nrst     (),
    .LCD_csel     (),
    .LCD_rd       (),
    .LCD_rs       (),
    .LCD_wr       (),
    .LCD_lighton  ()
  );

  always begin
    #5 clk <= ~clk;
  end

  initial begin
    clk <= 0;
    rst_n <= 0;
    #7 rst_n <= 1;
  end

endmodule // SoCTop_tb
