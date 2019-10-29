`timescale 1ns / 1ps

`include "bus.v"

`define HI_IN_RANGE(v, l, u)  (v[31:28] >= (l) && v[31:28] <= (u))

module StaticMMU(
  input       [`ADDR_BUS] rom_addr_in,
  input       [`ADDR_BUS] ram_addr_in,
  output  reg [`ADDR_BUS] rom_addr_out,
  output  reg [`ADDR_BUS] ram_addr_out
);

  always @(*) begin
    if (rom_addr_in[31:28] <= 4'h7) begin
      rom_addr_out <= rom_addr_in;
    end
    else if (`HI_IN_RANGE(rom_addr_in, 4'h8, 4'h9)) begin
      rom_addr_out <= {rom_addr_in[31:28] - 4'h8, rom_addr_in[27:0]};
    end
    else if (`HI_IN_RANGE(rom_addr_in, 4'ha, 4'hb)) begin
      rom_addr_out <= {rom_addr_in[31:28] - 4'ha, rom_addr_in[27:0]};
    end
    else if (`HI_IN_RANGE(rom_addr_in, 4'hc, 4'hd)) begin
      rom_addr_out <= rom_addr_in;
    end
    else begin  // 32'he000_0000, 32'hffff_ffff
      rom_addr_out <= rom_addr_in;
    end
  end

  always @(*) begin
    if (ram_addr_in[31:28] <= 4'h7) begin
      ram_addr_out <= ram_addr_in;
    end
    else if (`HI_IN_RANGE(ram_addr_in, 4'h8, 4'h9)) begin
      ram_addr_out <= {ram_addr_in[31:28] - 4'h8, ram_addr_in[27:0]};
    end
    else if (`HI_IN_RANGE(ram_addr_in, 4'ha, 4'hb)) begin
      ram_addr_out <= {ram_addr_in[31:28] - 4'ha, ram_addr_in[27:0]};
    end
    else if (`HI_IN_RANGE(ram_addr_in, 4'hc, 4'hd)) begin
      ram_addr_out <= ram_addr_in;
    end
    else begin  // 32'he000_0000, 32'hffff_ffff
      ram_addr_out <= ram_addr_in;
    end
  end

endmodule // StaticMMU
