`timescale 1ns / 1ps

`include "bus.v"

module PipelineController(
  // stall request signals
  input   request_from_id,
  // stall whole pipeline
  input   stall_all,
  // stall signals for each mid-stage
  output  stall_pc,
  output  stall_if,
  output  stall_id,
  output  stall_ex,
  output  stall_mem,
  output  stall_wb
);

  reg[5:0] stall;

  // assign the output of the stall signal
  assign {stall_wb, stall_mem, stall_ex,
          stall_id, stall_if, stall_pc} = stall;

  always @(*) begin
    if (stall_all) begin
      stall <= 6'b111111;
    end
    else if (request_from_id) begin
      stall <= 6'b000111;
    end
    else begin
      stall <= 6'b000000;
    end
  end

endmodule // PipelineController
