`timescale 1ns / 1ps

`include "bus.v"

module RegFile(
  input                       clk,
  input                       rst,
  // read channel #1
  input                       read_en_1,
  input       [`REG_ADDR_BUS] read_addr_1,
  output  reg [`DATA_BUS]     read_data_1,
  // read channel #2
  input                       read_en_2,
  input       [`REG_ADDR_BUS] read_addr_2,
  output  reg [`DATA_BUS]     read_data_2,
  // write channel
  input                       write_en,
  input       [`REG_ADDR_BUS] write_addr,
  input       [`DATA_BUS]     write_data
);

  reg[`DATA_BUS] registers[0:31];
  integer i;

  // writing
  always @(posedge clk) begin
    if (rst) begin
      for (i = 0; i < 32; i = i + 1) begin
        registers[i] <= 0;
      end
    end
    else if (write_en && |write_addr) begin
      registers[write_addr] <= write_data;
    end
  end

  // reading #1
  always @(*) begin
    if (rst) begin
      read_data_1 <= 0;
    end
    else if (read_addr_1 == write_addr && write_en && read_en_1) begin
      // forward data to output
      read_data_1 <= write_data;
    end
    else if (read_en_1) begin
      read_data_1 <= registers[read_addr_1];
    end
    else begin
      read_data_1 <= 0;
    end
  end

  // reading @2
  always @(*) begin
    if (rst) begin
      read_data_2 <= 0;
    end
    else if (read_addr_2 == write_addr && write_en && read_en_2) begin
      // forward data to output
      read_data_2 <= write_data;
    end
    else if (read_en_2) begin
      read_data_2 <= registers[read_addr_2];
    end
    else begin
      read_data_2 <= 0;
    end
  end

endmodule // RegFile
