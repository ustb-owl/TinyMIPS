// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 22:44:56 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_blk_mem_gen_0_0/TinySoC_blk_mem_gen_0_0_stub.v
// Design      : TinySoC_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module TinySoC_blk_mem_gen_0_0(clka, rsta, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,addra[31:0],douta[31:0]" */;
  input clka;
  input rsta;
  input ena;
  input [31:0]addra;
  output [31:0]douta;
endmodule
