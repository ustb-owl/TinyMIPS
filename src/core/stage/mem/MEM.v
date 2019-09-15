`timescale 1ns / 1ps

`include "bus.v"

module MEM(
  // memory accessing signals
  input                       mem_read_flag_in,
  input                       mem_write_flag_in,
  input                       mem_sign_ext_flag_in,
  input       [`MEM_SEL_BUS]  mem_sel_in,
  input       [`DATA_BUS]     mem_write_data,
  // from EX stage
  input       [`DATA_BUS]     result_in,
  input                       reg_write_en_in,
  input       [`REG_ADDR_BUS] reg_write_addr_in,
  input       [`ADDR_BUS]     current_pc_addr_in,
  // RAM control signals
  output                      ram_en,
  output      [`MEM_SEL_BUS]  ram_write_en,
  output      [`ADDR_BUS]     ram_addr,
  output  reg [`DATA_BUS]     ram_write_data,
  // to ID stage
  output                      mem_load_flag,
  // to WB stage
  output                      mem_read_flag_out,
  output                      mem_write_flag_out,
  output                      mem_sign_ext_flag_out,
  output      [`MEM_SEL_BUS]  mem_sel_out,
  output      [`DATA_BUS]     result_out,
  output                      reg_write_en_out,
  output      [`REG_ADDR_BUS] reg_write_addr_out,
  output      [`ADDR_BUS]     current_pc_addr_out
);

  // internal ram_write_sel control signal
  reg[`MEM_SEL_BUS] ram_write_sel;

  // to ID stage
  assign mem_load_flag = mem_read_flag_in;
  // to WB stage
  assign mem_read_flag_out = mem_read_flag_in;
  assign mem_write_flag_out = mem_write_flag_in;
  assign mem_sign_ext_flag_out = mem_sign_ext_flag_in;
  assign mem_sel_out = mem_sel_in;
  assign result_out = result_in;
  assign reg_write_en_out = reg_write_en_in;
  assign reg_write_addr_out = reg_write_addr_in;
  assign current_pc_addr_out = current_pc_addr_in;

  wire[`ADDR_BUS] address = result_in;

  // generate ram_en signal
  assign ram_en = mem_write_flag_in || mem_read_flag_in;

  // generate ram_write_en signal
  assign ram_write_en = mem_write_flag_in ? ram_write_sel : 0;

  // generate ram_write_addr signal
  assign ram_addr = mem_write_flag_in || mem_read_flag_in
      ? {address[31:2], 2'b00} : 0;

  // generate ram_write_sel signal
  always @(*) begin
    if (mem_write_flag_in) begin
      if (mem_sel_in == 4'b0001) begin   // byte
        case (address[1:0])
          2'b00: ram_write_sel <= 4'b0001;
          2'b01: ram_write_sel <= 4'b0010;
          2'b10: ram_write_sel <= 4'b0100;
          2'b11: ram_write_sel <= 4'b1000;
          default: ram_write_sel <= 4'b0000;
        endcase
      end
      else if (mem_sel_in == 4'b1111) begin   // word
        case (address[1:0])
          2'b00: ram_write_sel <= 4'b1111;
          default: ram_write_sel <= 4'b0000;
        endcase
      end
      else begin
        ram_write_sel <= 4'b0000;
      end
    end
    else begin
      ram_write_sel <= 4'b0000;
    end
  end

  // generate ram_write_data signal
  always @(*) begin
    if (mem_write_flag_in) begin
      if (mem_sel_in == 4'b0001) begin
        case (address[1:0])
          2'b00: ram_write_data <= mem_write_data;
          2'b01: ram_write_data <= mem_write_data << 8;
          2'b10: ram_write_data <= mem_write_data << 16;
          2'b11: ram_write_data <= mem_write_data << 24;
        endcase
      end
      else if (mem_sel_in == 4'b1111) begin
        case (address[1:0])
          2'b00: ram_write_data <= mem_write_data;
          default: ram_write_data <= 0;
        endcase
      end
      else begin
        ram_write_data <= 0;
      end
    end
    else begin
      ram_write_data <= 0;
    end
  end

endmodule // MEM
