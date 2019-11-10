// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 16:50:08 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_TinyMIPS_0_0/TinySoC_TinyMIPS_0_0_stub.v
// Design      : TinySoC_TinyMIPS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TinyMIPS,Vivado 2018.3" *)
module TinySoC_TinyMIPS_0_0(clk, rst, debug_reg_write_en, 
  debug_reg_write_addr, debug_reg_write_data, debug_pc_addr, rom_arid, rom_araddr, rom_arlen, 
  rom_arsize, rom_arburst, rom_arlock, rom_arcache, rom_arprot, rom_arvalid, rom_arready, 
  rom_rid, rom_rdata, rom_rresp, rom_rlast, rom_rvalid, rom_rready, rom_awid, rom_awaddr, 
  rom_awlen, rom_awsize, rom_awburst, rom_awlock, rom_awcache, rom_awprot, rom_awvalid, 
  rom_awready, rom_wid, rom_wdata, rom_wstrb, rom_wlast, rom_wvalid, rom_wready, rom_bid, 
  rom_bresp, rom_bvalid, rom_bready, ram_arid, ram_araddr, ram_arlen, ram_arsize, ram_arburst, 
  ram_arlock, ram_arcache, ram_arprot, ram_arvalid, ram_arready, ram_rid, ram_rdata, ram_rresp, 
  ram_rlast, ram_rvalid, ram_rready, ram_awid, ram_awaddr, ram_awlen, ram_awsize, ram_awburst, 
  ram_awlock, ram_awcache, ram_awprot, ram_awvalid, ram_awready, ram_wid, ram_wdata, ram_wstrb, 
  ram_wlast, ram_wvalid, ram_wready, ram_bid, ram_bresp, ram_bvalid, ram_bready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,debug_reg_write_en,debug_reg_write_addr[4:0],debug_reg_write_data[31:0],debug_pc_addr[31:0],rom_arid[3:0],rom_araddr[31:0],rom_arlen[3:0],rom_arsize[2:0],rom_arburst[1:0],rom_arlock[1:0],rom_arcache[3:0],rom_arprot[2:0],rom_arvalid,rom_arready,rom_rid[3:0],rom_rdata[31:0],rom_rresp[1:0],rom_rlast,rom_rvalid,rom_rready,rom_awid[3:0],rom_awaddr[31:0],rom_awlen[3:0],rom_awsize[2:0],rom_awburst[1:0],rom_awlock[1:0],rom_awcache[3:0],rom_awprot[2:0],rom_awvalid,rom_awready,rom_wid[3:0],rom_wdata[31:0],rom_wstrb[3:0],rom_wlast,rom_wvalid,rom_wready,rom_bid[3:0],rom_bresp[1:0],rom_bvalid,rom_bready,ram_arid[3:0],ram_araddr[31:0],ram_arlen[3:0],ram_arsize[2:0],ram_arburst[1:0],ram_arlock[1:0],ram_arcache[3:0],ram_arprot[2:0],ram_arvalid,ram_arready,ram_rid[3:0],ram_rdata[31:0],ram_rresp[1:0],ram_rlast,ram_rvalid,ram_rready,ram_awid[3:0],ram_awaddr[31:0],ram_awlen[3:0],ram_awsize[2:0],ram_awburst[1:0],ram_awlock[1:0],ram_awcache[3:0],ram_awprot[2:0],ram_awvalid,ram_awready,ram_wid[3:0],ram_wdata[31:0],ram_wstrb[3:0],ram_wlast,ram_wvalid,ram_wready,ram_bid[3:0],ram_bresp[1:0],ram_bvalid,ram_bready" */;
  input clk;
  input rst;
  output debug_reg_write_en;
  output [4:0]debug_reg_write_addr;
  output [31:0]debug_reg_write_data;
  output [31:0]debug_pc_addr;
  output [3:0]rom_arid;
  output [31:0]rom_araddr;
  output [3:0]rom_arlen;
  output [2:0]rom_arsize;
  output [1:0]rom_arburst;
  output [1:0]rom_arlock;
  output [3:0]rom_arcache;
  output [2:0]rom_arprot;
  output rom_arvalid;
  input rom_arready;
  input [3:0]rom_rid;
  input [31:0]rom_rdata;
  input [1:0]rom_rresp;
  input rom_rlast;
  input rom_rvalid;
  output rom_rready;
  output [3:0]rom_awid;
  output [31:0]rom_awaddr;
  output [3:0]rom_awlen;
  output [2:0]rom_awsize;
  output [1:0]rom_awburst;
  output [1:0]rom_awlock;
  output [3:0]rom_awcache;
  output [2:0]rom_awprot;
  output rom_awvalid;
  input rom_awready;
  output [3:0]rom_wid;
  output [31:0]rom_wdata;
  output [3:0]rom_wstrb;
  output rom_wlast;
  output rom_wvalid;
  input rom_wready;
  input [3:0]rom_bid;
  input [1:0]rom_bresp;
  input rom_bvalid;
  output rom_bready;
  output [3:0]ram_arid;
  output [31:0]ram_araddr;
  output [3:0]ram_arlen;
  output [2:0]ram_arsize;
  output [1:0]ram_arburst;
  output [1:0]ram_arlock;
  output [3:0]ram_arcache;
  output [2:0]ram_arprot;
  output ram_arvalid;
  input ram_arready;
  input [3:0]ram_rid;
  input [31:0]ram_rdata;
  input [1:0]ram_rresp;
  input ram_rlast;
  input ram_rvalid;
  output ram_rready;
  output [3:0]ram_awid;
  output [31:0]ram_awaddr;
  output [3:0]ram_awlen;
  output [2:0]ram_awsize;
  output [1:0]ram_awburst;
  output [1:0]ram_awlock;
  output [3:0]ram_awcache;
  output [2:0]ram_awprot;
  output ram_awvalid;
  input ram_awready;
  output [3:0]ram_wid;
  output [31:0]ram_wdata;
  output [3:0]ram_wstrb;
  output ram_wlast;
  output ram_wvalid;
  input ram_wready;
  input [3:0]ram_bid;
  input [1:0]ram_bresp;
  input ram_bvalid;
  output ram_bready;
endmodule
