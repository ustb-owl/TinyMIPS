// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 16:52:10 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_confreg_0_0/TinySoC_confreg_0_0_stub.v
// Design      : TinySoC_confreg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "confreg,Vivado 2018.3" *)
module TinySoC_confreg_0_0(aclk, timer_clk, aresetn, arid, araddr, arlen, 
  arsize, arburst, arlock, arcache, arprot, arvalid, arready, rid, rdata, rresp, rlast, rvalid, rready, awid, 
  awaddr, awlen, awsize, awburst, awlock, awcache, awprot, awvalid, awready, wid, wdata, wstrb, wlast, 
  wvalid, wready, bid, bresp, bvalid, bready, ram_random_mask, led, led_rg0, led_rg1, num_csn, num_a_g, 
  switch, btn_key_col, btn_key_row, btn_step, user_cr0, user_cr1)
/* synthesis syn_black_box black_box_pad_pin="aclk,timer_clk,aresetn,arid[5:0],araddr[31:0],arlen[7:0],arsize[2:0],arburst[1:0],arlock[1:0],arcache[3:0],arprot[2:0],arvalid,arready,rid[5:0],rdata[31:0],rresp[1:0],rlast,rvalid,rready,awid[5:0],awaddr[31:0],awlen[7:0],awsize[2:0],awburst[1:0],awlock[1:0],awcache[3:0],awprot[2:0],awvalid,awready,wid[5:0],wdata[31:0],wstrb[3:0],wlast,wvalid,wready,bid[5:0],bresp[1:0],bvalid,bready,ram_random_mask[4:0],led[15:0],led_rg0[1:0],led_rg1[1:0],num_csn[7:0],num_a_g[6:0],switch[7:0],btn_key_col[3:0],btn_key_row[3:0],btn_step[1:0],user_cr0[31:0],user_cr1[31:0]" */;
  input aclk;
  input timer_clk;
  input aresetn;
  input [5:0]arid;
  input [31:0]araddr;
  input [7:0]arlen;
  input [2:0]arsize;
  input [1:0]arburst;
  input [1:0]arlock;
  input [3:0]arcache;
  input [2:0]arprot;
  input arvalid;
  output arready;
  output [5:0]rid;
  output [31:0]rdata;
  output [1:0]rresp;
  output rlast;
  output rvalid;
  input rready;
  input [5:0]awid;
  input [31:0]awaddr;
  input [7:0]awlen;
  input [2:0]awsize;
  input [1:0]awburst;
  input [1:0]awlock;
  input [3:0]awcache;
  input [2:0]awprot;
  input awvalid;
  output awready;
  input [5:0]wid;
  input [31:0]wdata;
  input [3:0]wstrb;
  input wlast;
  input wvalid;
  output wready;
  output [5:0]bid;
  output [1:0]bresp;
  output bvalid;
  input bready;
  output [4:0]ram_random_mask;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [7:0]num_csn;
  output [6:0]num_a_g;
  input [7:0]switch;
  output [3:0]btn_key_col;
  input [3:0]btn_key_row;
  input [1:0]btn_step;
  output [31:0]user_cr0;
  output [31:0]user_cr1;
endmodule
