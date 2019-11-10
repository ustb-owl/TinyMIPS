// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  3 17:04:10 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_clk_wiz_0_0/TinySoC_clk_wiz_0_0_stub.v
// Design      : TinySoC_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module TinySoC_clk_wiz_0_0(clk_cpu, clk_ddr_ref, clk_vga, clk_spi, 
  clk_peripheral, clk_100m, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_cpu,clk_ddr_ref,clk_vga,clk_spi,clk_peripheral,clk_100m,resetn,locked,clk_in1" */;
  output clk_cpu;
  output clk_ddr_ref;
  output clk_vga;
  output clk_spi;
  output clk_peripheral;
  output clk_100m;
  input resetn;
  output locked;
  input clk_in1;
endmodule
