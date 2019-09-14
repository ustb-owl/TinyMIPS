`timescale 1ns / 1ps

`include "bus.v"

module EXMEM(
  input                   clk,
  input                   rst,
  input                   stall_current_stage,
  input                   stall_next_stage,
  // input from EX stage
  input                   mem_read_flag_in,
  input                   mem_write_flag_in,
  input                   mem_sign_ext_flag_in,
  input   [`MEM_SEL_BUS]  mem_sel_in,
  input   [`DATA_BUS]     mem_write_data_in,
  input   [`DATA_BUS]     result_in,
  input                   reg_write_en_in,
  input   [`REG_ADDR_BUS] reg_write_addr_in,
  input   [`ADDR_BUS]     current_pc_addr_in,
  // output to MEM stage
  output                  mem_read_flag_out,
  output                  mem_write_flag_out,
  output                  mem_sign_ext_flag_out,
  output  [`MEM_SEL_BUS]  mem_sel_out,
  output  [`DATA_BUS]     mem_write_data_out,
  // output to WB stage
  output  [`DATA_BUS]     result_out,
  output                  reg_write_en_out,
  output  [`REG_ADDR_BUS] reg_write_addr_out,
  output  [`ADDR_BUS]     current_pc_addr_out
);

  PipelineDeliver #(1) ff_mem_read_flag(
    clk, rst,
    stall_current_stage, stall_next_stage,
    mem_read_flag_in, mem_read_flag_out
  );

  PipelineDeliver #(1) ff_mem_write_flag(
    clk, rst,
    stall_current_stage, stall_next_stage,
    mem_write_flag_in, mem_write_flag_out
  );

  PipelineDeliver #(1) ff_mem_sign_ext_flag(
    clk, rst,
    stall_current_stage, stall_next_stage,
    mem_sign_ext_flag_in, mem_sign_ext_flag_out
  );

  PipelineDeliver #(`MEM_SEL_BUS_WIDTH) ff_mem_sel(
    clk, rst,
    stall_current_stage, stall_next_stage,
    mem_sel_in, mem_sel_out
  );

  PipelineDeliver #(`DATA_BUS_WIDTH) ff_mem_write_data(
    clk, rst,
    stall_current_stage, stall_next_stage,
    mem_write_data_in, mem_write_data_out
  );

  PipelineDeliver #(`DATA_BUS_WIDTH) ff_result(
    clk, rst,
    stall_current_stage, stall_next_stage,
    result_in, result_out
  );

  PipelineDeliver #(1) ff_reg_write_en(
    clk, rst,
    stall_current_stage, stall_next_stage,
    reg_write_en_in, reg_write_en_out
  );

  PipelineDeliver #(`REG_ADDR_BUS_WIDTH) ff_reg_write_addr(
    clk, rst,
    stall_current_stage, stall_next_stage,
    reg_write_addr_in, reg_write_addr_out
  );

  PipelineDeliver #(`ADDR_BUS_WIDTH) ff_current_pc_addr(
    clk, rst,
    stall_current_stage, stall_next_stage,
    current_pc_addr_in, current_pc_addr_out
  );

endmodule // EXMEM
