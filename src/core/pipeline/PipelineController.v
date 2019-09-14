`timescale 1ns / 1ps

`include "bus.v"

module PipelineController(
  input   rst,
  // stall request signals
  input   request_from_id,
  // stall signals for each mid-stage
  output  stall_pc,
  output  stall_if,
  output  stall_id,
  output  stall_ex,
  output  stall_mem,
  output  stall_wb
);

  // assign the output of the stall signal
  assign {stall_wb, stall_mem, stall_ex, stall_id, stall_if, stall_pc} =
      request_from_id ? 6'b000111 : 6'b000000;

endmodule // PipelineController
