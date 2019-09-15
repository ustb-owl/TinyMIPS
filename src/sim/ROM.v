`timescale 1ns / 1ps

`include "bus.v"
`include "sim.v"

module ROM(
  input                   rom_en,
  input   [`MEM_SEL_BUS]  rom_write_en,
  input   [`ADDR_BUS]     rom_addr,
  input   [`DATA_BUS]     rom_write_data,
  output  [`DATA_BUS]     rom_read_data
);

  reg[7:0] inst_mem[`INST_MEM_BUS];

  // initialize with program
  initial begin
    $readmemh("inst_rom.bin", inst_mem);
  end

  assign rom_read_data[7:0] = rom_en ? inst_mem[rom_addr[`INST_MEM_ADDR_WIDTH - 1:0] + 3] : 0;
  assign rom_read_data[15:8] = rom_en ? inst_mem[rom_addr[`INST_MEM_ADDR_WIDTH - 1:0] + 2] : 0;
  assign rom_read_data[23:16] = rom_en ? inst_mem[rom_addr[`INST_MEM_ADDR_WIDTH - 1:0] + 1] : 0;
  assign rom_read_data[31:24] = rom_en ? inst_mem[rom_addr[`INST_MEM_ADDR_WIDTH - 1:0] + 0] : 0;

endmodule // ROM
