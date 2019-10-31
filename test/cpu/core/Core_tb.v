`timescale 1ns / 1ps

`include "tb.v"
`include "bus.v"

module Core_tb(
  input clk,
  input rst_n
);

  wire rst = ~rst_n;
  `GEN_TICK(clk, rst);

  wire                rom_en;
  wire[`MEM_SEL_BUS]  rom_write_en;
  wire[`ADDR_BUS]     rom_addr;
  wire[`DATA_BUS]     rom_read_data, rom_write_data;
  wire                ram_en;
  wire[`MEM_SEL_BUS]  ram_write_en;
  wire[`ADDR_BUS]     ram_addr;
  wire[`DATA_BUS]     ram_read_data, ram_write_data;
  wire                debug_reg_write_en;
  wire[`REG_ADDR_BUS] debug_reg_write_addr;
  wire[`DATA_BUS]     debug_reg_write_data;
  wire[`ADDR_BUS]     debug_pc_addr;

  Core core(
    .clk                  (clk),
    .rst                  (rst),
    .stall                (0),

    .rom_en               (rom_en),
    .rom_write_en         (rom_write_en),
    .rom_addr             (rom_addr),
    .rom_read_data        (rom_read_data),
    .rom_write_data       (rom_write_data),

    .ram_en               (ram_en),
    .ram_write_en         (ram_write_en),
    .ram_addr             (ram_addr),
    .ram_read_data        (ram_read_data),
    .ram_write_data       (ram_write_data),

    .debug_reg_write_en   (debug_reg_write_en),
    .debug_reg_write_addr (debug_reg_write_addr),
    .debug_reg_write_data (debug_reg_write_data),
    .debug_pc_addr        (debug_pc_addr)
  );

  RAM ram(
    .clk            (clk),
    .ram_en         (ram_en),
    .ram_write_en   (ram_write_en),
    .ram_addr       (ram_addr),
    .ram_write_data (ram_write_data),
    .ram_read_data  (ram_read_data)
  );

  ROM rom(
    .clk            (clk),
    .rom_en         (rom_en),
    .rom_write_en   (rom_write_en),
    .rom_addr       (rom_addr),
    .rom_write_data (rom_write_data),
    .rom_read_data  (rom_read_data)
  );

  always @(posedge clk) begin
    `DISPLAY("debug_reg_write_en  ", debug_reg_write_en);
    `DISPLAY("debug_reg_write_addr", debug_reg_write_addr);
    `DISPLAY("debug_reg_write_data", debug_reg_write_data);
    `DISPLAY("debug_pc_addr       ", debug_pc_addr);
    $display("");
    // `END_AT_TICK(15);
    if (debug_reg_write_data == 32'habcd0000) $finish;
  end

endmodule // Core_tb
