`timescale 1ns / 1ps

`include "tb.v"
`include "bus.v"

module RAM_tb(
  input clk,
  input rst_n
);

  wire rst = ~rst_n;
  `GEN_TICK(clk, rst);

  // input signals
  reg ram_en;
  reg[`MEM_SEL_BUS] ram_write_en;
  reg[`ADDR_BUS] ram_addr;
  reg[`DATA_BUS] ram_write_data;

  // output signals
  wire[`DATA_BUS] ram_read_data;

  RAM ram(
    .clk            (clk),
    .rst            (rst),
    .ram_en         (ram_en),
    .ram_write_en   (ram_write_en),
    .ram_addr       (ram_addr),
    .ram_write_data (ram_write_data),
    .ram_read_data  (ram_read_data)
  );

  always @(posedge clk) begin
    if (rst) begin
      ram_en <= 0;
      ram_write_en <= 0;
      ram_addr <= 0;
      ram_write_data <= 0;
    end
    else begin
      case (`TICK)
        0: begin
          $display("write word to 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b1111;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h12345678;
        end
        1: begin
          $display("read word from 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
        2: begin
          $display("write byte to 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0001;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000012;
        end
        3: begin
          $display("read word from 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
        4: begin
          $display("write byte to 0x00000001");
          ram_en <= 1;
          ram_write_en <= 4'b0010;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h0000ef00;
        end
        5: begin
          $display("read word from 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
        6: begin
          $display("write byte to 0x00000002");
          ram_en <= 1;
          ram_write_en <= 4'b0100;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00cd0000;
        end
        7: begin
          $display("read word from 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
        8: begin
          $display("write byte to 0x00000003");
          ram_en <= 1;
          ram_write_en <= 4'b1000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'hab000000;
        end
        9: begin
          $display("read word from 0x00000000");
          ram_en <= 1;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
        10: begin
          ram_en <= 0;
          ram_write_en <= 4'b0000;
          ram_addr <= 32'h00000000;
          ram_write_data <= 32'h00000000;
        end
      endcase
    end

    `DISPLAY("ram_read_data", ram_read_data);
    $display("");
    `END_AT_TICK(11);
  end

endmodule // RAM_tb
