// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  3 10:33:40 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_nt35510_controller_0_0/TinySoC_nt35510_controller_0_0_stub.v
// Design      : TinySoC_nt35510_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nt35510_apb_adapter_v1_0,Vivado 2018.3" *)
module TinySoC_nt35510_controller_0_0(nrst, clk, APB_paddr, APB_psel, APB_penable, 
  APB_pwrite, APB_pwdata, APB_pready, APB_prdata, APB_pslverr, LCD_nrst, LCD_csel, LCD_rs, LCD_wr, 
  LCD_rd, LCD_data_in, LCD_data_out, LCD_data_z)
/* synthesis syn_black_box black_box_pad_pin="nrst,clk,APB_paddr[31:0],APB_psel,APB_penable,APB_pwrite,APB_pwdata[31:0],APB_pready,APB_prdata[31:0],APB_pslverr,LCD_nrst,LCD_csel,LCD_rs,LCD_wr,LCD_rd,LCD_data_in[15:0],LCD_data_out[15:0],LCD_data_z[15:0]" */;
  input nrst;
  input clk;
  input [31:0]APB_paddr;
  input APB_psel;
  input APB_penable;
  input APB_pwrite;
  input [31:0]APB_pwdata;
  output APB_pready;
  output [31:0]APB_prdata;
  output APB_pslverr;
  output LCD_nrst;
  output LCD_csel;
  output LCD_rs;
  output LCD_wr;
  output LCD_rd;
  input [15:0]LCD_data_in;
  output [15:0]LCD_data_out;
  output [15:0]LCD_data_z;
endmodule
