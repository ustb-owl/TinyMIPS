// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 16:51:55 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_ResetSynchronizer_0_0/TinySoC_ResetSynchronizer_0_0_sim_netlist.v
// Design      : TinySoC_ResetSynchronizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TinySoC_ResetSynchronizer_0_0,ResetSynchronizer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ResetSynchronizer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module TinySoC_ResetSynchronizer_0_0
   (clk,
    rst_i,
    rst_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN TinySoC_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input clk;
  input rst_i;
  output rst_o;

  wire clk;
  wire rst_i;
  wire rst_o;

  TinySoC_ResetSynchronizer_0_0_ResetSynchronizer inst
       (.clk(clk),
        .rst_i(rst_i),
        .rst_o(rst_o));
endmodule

(* ORIG_REF_NAME = "ResetSynchronizer" *) 
module TinySoC_ResetSynchronizer_0_0_ResetSynchronizer
   (rst_o,
    clk,
    rst_i);
  output rst_o;
  input clk;
  input rst_i;

  wire clk;
  wire [2:1]p_0_in;
  wire \reset_negedge.reset_sync[2]_i_1_n_0 ;
  wire rst_i;
  wire rst_o;

  LUT1 #(
    .INIT(2'h1)) 
    \reset_negedge.reset_sync[2]_i_1 
       (.I0(rst_i),
        .O(\reset_negedge.reset_sync[2]_i_1_n_0 ));
  FDCE \reset_negedge.reset_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reset_negedge.reset_sync[2]_i_1_n_0 ),
        .D(1'b1),
        .Q(p_0_in[1]));
  FDCE \reset_negedge.reset_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reset_negedge.reset_sync[2]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]));
  FDCE \reset_negedge.reset_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\reset_negedge.reset_sync[2]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(rst_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
