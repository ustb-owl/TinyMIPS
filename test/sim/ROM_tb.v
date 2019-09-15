`timescale 1ns / 1ps

`include "tb.v"
`include "bus.v"

module ROM_tb(
  input clk,
  input rst_n
);

  wire rst = ~rst_n;
  `GEN_TICK(clk, rst);

  // input signals
  reg rom_en;
  reg[`ADDR_BUS] rom_addr;

  // output signals
  wire[`DATA_BUS] rom_read_data;

  ROM rom(
    .rom_en         (rom_en),
    .rom_write_en   (0),
    .rom_addr       (rom_addr),
    .rom_write_data (0),
    .rom_read_data  (rom_read_data)
  );

  always @(posedge clk) begin
    if (rst) begin
      rom_en <= 0;
      rom_addr <= 0;
    end
    else begin
      case (`TICK)
        0: begin
          $display("read word from 0xbfc00000");
          rom_en <= 1;
          rom_addr <= 32'hbfc00000;
        end
        1: begin
          $display("read word from 0xbfc00004");
          rom_en <= 1;
          rom_addr <= 32'hbfc00004;
        end
        2: begin
          $display("read word from 0xbfc00008");
          rom_en <= 1;
          rom_addr <= 32'hbfc00008;
        end
        3: begin
          $display("read word from 0xbfc0000c");
          rom_en <= 1;
          rom_addr <= 32'hbfc0000c;
        end
        4: begin
          rom_en <= 0;
          rom_addr <= 32'h00000000;
        end
      endcase
    end

    `DISPLAY("rom_read_data", rom_read_data);
    $display("");
    `END_AT_TICK(5);
  end

endmodule // ROM_tb
