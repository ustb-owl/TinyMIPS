`timescale 1ns / 1ps

`include "bus.v"

module AXIAdapter(
  input                   clk,
  input                   rst,
  // SRAM channel
  input                   sram_en,
  output                  sram_ready,
  input   [`MEM_SEL_BUS]  sram_write_en,
  input   [`ADDR_BUS]     sram_addr,
  output  [`DATA_BUS]     sram_read_data,
  input   [`DATA_BUS]     sram_write_data,
  // AXI read address channel
  output  [3:0]           arid,
  output  [31:0]          araddr,
  output  [7:0]           arlen,
  output  [2:0]           arsize,
  output  [1:0]           arburst,
  output  [1:0]           arlock,
  output  [3:0]           arcache,
  output  [2:0]           arprot,
  output                  arvalid,
  input                   arready,
  // AXI read data channel
  input   [3:0]           rid,
  input   [31:0]          rdata,
  input   [1:0]           rresp,
  input                   rlast,
  input                   rvalid,
  output                  rready,
  // AXI write address channel
  output  [3:0]           awid,
  output  [31:0]          awaddr,
  output  [7:0]           awlen,
  output  [2:0]           awsize,
  output  [1:0]           awburst,
  output  [1:0]           awlock,
  output  [3:0]           awcache,
  output  [2:0]           awprot,
  output                  awvalid,
  input                   awready,
  // AXI write data channel
  output  [3:0]           wid,
  output  [31:0]          wdata,
  output  [3:0]           wstrb,
  output                  wlast,
  output                  wvalid,
  input                   wready,
  // AXI write response channel
  input   [3:0]           bid,
  input   [1:0]           bresp,
  input                   bvalid,
  output                  bready
);

  // AXI control
  reg [31:0]  axi_addr;
  reg [2:0]   axi_size;
  reg         axi_ren, axi_wen, axi_wvalid;

  // read address
  assign arid     = 4'b0;
  assign araddr   = axi_addr;
  assign arlen    = 8'd0;
  assign arsize   = axi_size;
  assign arburst  = 2'b00;
  assign arlock   = 2'b0;
  assign arcache  = 4'b0;
  assign arprot   = 3'b0;
  assign arvalid  = axi_ren;

  // read data
  assign rready   = 1'b1;

  // write address
  assign awid     = 4'b0;
  assign awaddr   = axi_addr;
  assign awlen    = 8'd0;
  assign awsize   = axi_size;
  assign awburst  = 2'b00;
  assign awlock   = 2'b0;
  assign awcache  = 4'b0;
  assign awprot   = 3'b0;
  assign awvalid  = axi_wen;

  // write data
  assign wid      = 4'b0;
  assign wdata    = sram_write_data;
  assign wstrb    = sram_write_en;
  assign wlast    = axi_wvalid;
  assign wvalid   = axi_wvalid;

  // write response
  assign bready   = 1'b1;

  // generate read/write size & address
  always @(*) begin
    case (sram_write_en)
      4'b0001: begin
        axi_size <= 3'b000;
        axi_addr <= {sram_addr[31:2], 2'b00};
      end
      4'b0010: begin
        axi_size <= 3'b000;
        axi_addr <= {sram_addr[31:2], 2'b01};
      end
      4'b0100: begin
        axi_size <= 3'b000;
        axi_addr <= {sram_addr[31:2], 2'b10};
      end
      4'b1000: begin
        axi_size <= 3'b000;
        axi_addr <= {sram_addr[31:2], 2'b11};
      end
      4'b0011: begin
        axi_size <= 3'b001;
        axi_addr <= {sram_addr[31:2], 2'b00};
      end
      4'b1100: begin
        axi_size <= 3'b001;
        axi_addr <= {sram_addr[31:2], 2'b10};
      end
      4'b1111: begin
        axi_size <= 3'b010;
        axi_addr <= {sram_addr[31:2], 2'b00};
      end
      default: begin
        axi_size <= 3'b000;
        axi_addr <= 32'h00000000;
      end
    endcase
  end

  // FSM of adapter
  reg [2:0] state, next_state;

  // state definition
  localparam kStateIdle = 0, kStateRAddr = 1, kStateRData = 2,
             kStateWAddr = 3, kStateWData = 4;

  // switch to next state
  always @(posedge clk) begin
    if (rst) begin
      state <= kStateIdle;
    end
    else begin
      state <= next_state;
    end
  end

  // select next state
  always @(*) begin
    case (state)
      kStateIdle: begin
        if (sram_en) begin
          next_state <= |sram_write_en ? kStateRAddr : kStateWAddr;
        end
        else begin
          next_state <= kStateIdle;
        end
      end
      kStateRAddr: begin
        next_state <= arready ? kStateRData : kStateRAddr;
      end
      kStateRData: begin
        next_state <= rlast ? kStateIdle : kStateRData;
      end
      kStateWAddr: begin
        next_state <= awready ? kStateWData : kStateWAddr;
      end
      kStateWData: begin
        next_state <= wlast ? kStateIdle : kStateWData;
      end
      default: begin
        next_state <= kStateIdle;
      end
    endcase
  end

  // send/receive data to/from AXI bus
  reg [31:0]  read_data;
  assign sram_ready     = state == kStateIdle;
  assign sram_read_data = read_data;

  always @(posedge clk) begin
    if (rst) begin
      axi_ren     <= 0;
      axi_wen     <= 0;
      axi_wvalid  <= 0;
      read_data   <= 0;
    end
    else begin
      case (state)
        kStateRAddr: begin
          axi_ren     <= 1;
          axi_wen     <= 0;
          axi_wvalid  <= 0;
          read_data   <= 0;
        end
        kStateRData: begin
          axi_ren     <= 0;
          axi_wen     <= 0;
          axi_wvalid  <= 0;
          read_data   <= rvalid ? rdata : read_data;
        end
        kStateWAddr: begin
          axi_ren     <= 0;
          axi_wen     <= 1;
          axi_wvalid  <= 0;
          read_data   <= 0;
        end
        kStateWData: begin
          axi_ren     <= 0;
          axi_wen     <= 0;
          axi_wvalid  <= wready && !wlast;
          read_data   <= 0;
        end
        default: begin
          axi_ren     <= 0;
          axi_wen     <= 0;
          axi_wvalid  <= 0;
          read_data   <= read_data;
        end
      endcase
    end
  end

endmodule // AXIAdapter
