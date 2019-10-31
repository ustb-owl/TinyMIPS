`timescale 1ns / 1ps

`include "bus.v"
`include "sim.v"

module RAM(
  input                       clk,
  input                       ram_en,
  input       [`MEM_SEL_BUS]  ram_write_en,
  input       [`ADDR_BUS]     ram_addr,
  input       [`DATA_BUS]     ram_write_data,
  output  reg [`DATA_BUS]     ram_read_data
);

  reg[7:0] data_mem0[`DATA_MEM_BUS];
  reg[7:0] data_mem1[`DATA_MEM_BUS];
  reg[7:0] data_mem2[`DATA_MEM_BUS];
  reg[7:0] data_mem3[`DATA_MEM_BUS];

  // write operation
  always @(posedge clk) begin
    if (ram_en && |ram_write_en) begin
      if (ram_write_en[3]) data_mem3[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]] <= ram_write_data[31:24];
      if (ram_write_en[2]) data_mem2[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]] <= ram_write_data[23:16];
      if (ram_write_en[1]) data_mem1[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]] <= ram_write_data[15:8];
      if (ram_write_en[0]) data_mem0[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]] <= ram_write_data[7:0];
    end
  end

  // read operation
  always @(*) begin
    if (!ram_en || |ram_write_en) begin
      ram_read_data <= 0;
    end
    else begin
      ram_read_data <= {
        data_mem3[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]],
        data_mem2[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]],
        data_mem1[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]],
        data_mem0[ram_addr[`DATA_MEM_ADDR_WIDTH + 1:2]]
      };
    end
  end

endmodule // RAM
