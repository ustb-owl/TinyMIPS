`timescale 1ns / 1ps

`include "bus.v"

module WB(
  // RAM data
  input       [`DATA_BUS]     ram_read_data,
  // memory accessing signals
  input                       mem_read_flag,
  input                       mem_write_flag,
  input                       mem_sign_ext_flag,
  input       [`MEM_SEL_BUS]  mem_sel,
  // from MEM stage
  input       [`DATA_BUS]     result_in,
  input                       reg_write_en_in,
  input       [`REG_ADDR_BUS] reg_write_addr_in,
  input       [`ADDR_BUS]     current_pc_addr_in,
  // regfile control
  output  reg [`DATA_BUS]     result_out,
  output                      reg_write_en_out,
  output      [`REG_ADDR_BUS] reg_write_addr_out,
  // debug signals
  output                      debug_reg_write_en,
  output      [`ADDR_BUS]     debug_pc_addr_out
);

  assign reg_write_en_out = reg_write_en_in;
  assign reg_write_addr_out = reg_write_addr_in;
  assign debug_reg_write_en = reg_write_en_out;
  assign debug_pc_addr_out = current_pc_addr_in;

  wire[`ADDR_BUS] address = result_in;

  // generate result_out signal
  // because load instructions will use this signal
  always @(*) begin
    if (mem_read_flag) begin
      if (mem_sel == 4'b0001) begin
        case(address[1:0])
          2'b00: result_out <= mem_sign_ext_flag ? {{24{ram_read_data[7]}}, ram_read_data[7:0]} : {24'b0, ram_read_data[7:0]};
          2'b01: result_out <= mem_sign_ext_flag ? {{24{ram_read_data[15]}}, ram_read_data[15:8]} : {24'b0, ram_read_data[15:8]};
          2'b10: result_out <= mem_sign_ext_flag ? {{24{ram_read_data[23]}}, ram_read_data[23:16]} : {24'b0, ram_read_data[23:16]};
          2'b11: result_out <= mem_sign_ext_flag ? {{24{ram_read_data[31]}}, ram_read_data[31:24]} : {24'b0, ram_read_data[31:24]};
        endcase
      end
      else if (mem_sel == 4'b1111) begin
        case (address[1:0])
          2'b00: result_out <= ram_read_data;
          default: result_out <= 0;
        endcase
      end
      else begin
        result_out <= 0;
      end
    end
    else if (mem_write_flag) begin
      result_out <= 0;
    end
    else begin
      result_out <= result_in;
    end
  end

endmodule // WB
