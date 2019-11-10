// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 16:51:55 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_ResetSynchronizer_0_0/TinySoC_ResetSynchronizer_0_0_stub.v
// Design      : TinySoC_ResetSynchronizer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ResetSynchronizer,Vivado 2018.3" *)
module TinySoC_ResetSynchronizer_0_0(clk, rst_i, rst_o)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_i,rst_o" */;
  input clk;
  input rst_i;
  output rst_o;
endmodule
