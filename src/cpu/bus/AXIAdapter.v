`timescale 1ns / 1ps

`include "bus.v"
`include "debug.v"

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
  output  [3:0]           arlen,
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
  output  [3:0]           awlen,
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
  reg [31:0]  locked_addr, axi_waddr;
  reg [2:0]   axi_wsize;
  reg         axi_wvalid;

  // read address
  assign arid     = 4'b0;
  assign araddr   = locked_addr;
  assign arlen    = 4'd0;
  assign arsize   = 3'b010;
  assign arburst  = 2'b00;
  assign arlock   = 2'b0;
  assign arcache  = 4'b0;
  assign arprot   = 3'b0;
  assign arvalid  = state == kStateRAddr && !arready;

  // read data
  assign rready   = 1'b1;

  // write address
  assign awid     = 4'b0;
  assign awaddr   = axi_waddr;
  assign awlen    = 4'd0;
  assign awsize   = axi_wsize;
  assign awburst  = 2'b00;
  assign awlock   = 2'b0;
  assign awcache  = 4'b0;
  assign awprot   = 3'b0;
  assign awvalid  = state == kStateWAddr && !awready;

  // write data
  assign wid      = 4'b0;
  assign wdata    = sram_write_data;
  assign wstrb    = sram_write_en;
  assign wlast    = axi_wvalid;
  assign wvalid   = axi_wvalid;

  // write response
  assign bready   = 1'b1;

  // generate write size & address
  always @(*) begin
    case (sram_write_en)
      4'b0001: begin
        axi_wsize <= 3'b000;
        axi_waddr <= {locked_addr[31:2], 2'b00};
      end
      4'b0010: begin
        axi_wsize <= 3'b000;
        axi_waddr <= {locked_addr[31:2], 2'b01};
      end
      4'b0100: begin
        axi_wsize <= 3'b000;
        axi_waddr <= {locked_addr[31:2], 2'b10};
      end
      4'b1000: begin
        axi_wsize <= 3'b000;
        axi_waddr <= {locked_addr[31:2], 2'b11};
      end
      4'b0011: begin
        axi_wsize <= 3'b001;
        axi_waddr <= {locked_addr[31:2], 2'b00};
      end
      4'b1100: begin
        axi_wsize <= 3'b001;
        axi_waddr <= {locked_addr[31:2], 2'b10};
      end
      4'b1111: begin
        axi_wsize <= 3'b010;
        axi_waddr <= {locked_addr[31:2], 2'b00};
      end
      default: begin
        axi_wsize <= 3'b000;
        axi_waddr <= 32'h00000000;
      end
    endcase
  end

  // FSM of adapter
  `DEBUG reg [2:0] state;
  reg [2:0] next_state;

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
          next_state <= |sram_write_en ? kStateWAddr : kStateRAddr;
        end
        else begin
          next_state <= kStateIdle;
        end
      end
      kStateRAddr: begin
        next_state <= arready ? kStateRData : kStateRAddr;
      end
      kStateRData: begin
        next_state <= rvalid && rlast ? kStateIdle : kStateRData;
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

  // lock address of SRAM interface
  always @(posedge clk) begin
    if (rst) begin
      locked_addr <= sram_addr;
    end
    else if (sram_en && state == kStateIdle) begin
      locked_addr <= sram_addr;
    end
    else begin
      locked_addr <= locked_addr;
    end
  end

  // send/receive data to/from AXI bus
  reg [31:0]  read_data;
  assign sram_ready     = state == kStateIdle;
  assign sram_read_data = read_data;

  always @(posedge clk) begin
    if (rst) begin
      axi_wvalid  <= 0;
      read_data   <= 0;
    end
    else begin
      case (state)
        kStateRAddr: begin
          axi_wvalid  <= 0;
          read_data   <= 0;
        end
        kStateRData: begin
          axi_wvalid  <= 0;
          read_data   <= rvalid ? rdata : read_data;
        end
        kStateWAddr: begin
          axi_wvalid  <= 0;
          read_data   <= 0;
        end
        kStateWData: begin
          axi_wvalid  <= wready && !wlast;
          read_data   <= 0;
        end
        default: begin
          axi_wvalid  <= 0;
          read_data   <= read_data;
        end
      endcase
    end
  end

endmodule // AXIAdapter
