// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  3 17:04:10 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_clk_wiz_0_0/TinySoC_clk_wiz_0_0_sim_netlist.v
// Design      : TinySoC_clk_wiz_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module TinySoC_clk_wiz_0_0
   (clk_cpu,
    clk_ddr_ref,
    clk_vga,
    clk_spi,
    clk_peripheral,
    clk_100m,
    resetn,
    locked,
    clk_in1);
  output clk_cpu;
  output clk_ddr_ref;
  output clk_vga;
  output clk_spi;
  output clk_peripheral;
  output clk_100m;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_100m;
  wire clk_cpu;
  wire clk_ddr_ref;
  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_peripheral;
  wire clk_spi;
  wire clk_vga;
  wire locked;
  wire resetn;

  TinySoC_clk_wiz_0_0_TinySoC_clk_wiz_0_0_clk_wiz inst
       (.clk_100m(clk_100m),
        .clk_cpu(clk_cpu),
        .clk_ddr_ref(clk_ddr_ref),
        .clk_in1(clk_in1),
        .clk_peripheral(clk_peripheral),
        .clk_spi(clk_spi),
        .clk_vga(clk_vga),
        .locked(locked),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "TinySoC_clk_wiz_0_0_clk_wiz" *) 
module TinySoC_clk_wiz_0_0_TinySoC_clk_wiz_0_0_clk_wiz
   (clk_cpu,
    clk_ddr_ref,
    clk_vga,
    clk_spi,
    clk_peripheral,
    clk_100m,
    resetn,
    locked,
    clk_in1);
  output clk_cpu;
  output clk_ddr_ref;
  output clk_vga;
  output clk_spi;
  output clk_peripheral;
  output clk_100m;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_100m;
  wire clk_100m_TinySoC_clk_wiz_0_0;
  wire clk_cpu;
  wire clk_cpu_TinySoC_clk_wiz_0_0;
  wire clk_ddr_ref;
  wire clk_ddr_ref_TinySoC_clk_wiz_0_0;
  wire clk_in1;
  wire clk_in1_TinySoC_clk_wiz_0_0;
  wire clk_peripheral;
  wire clk_peripheral_TinySoC_clk_wiz_0_0;
  wire clk_spi;
  wire clk_spi_TinySoC_clk_wiz_0_0;
  wire clk_vga;
  wire clk_vga_TinySoC_clk_wiz_0_0;
  wire clkfbout_TinySoC_clk_wiz_0_0;
  wire clkfbout_buf_TinySoC_clk_wiz_0_0;
  wire locked;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_TinySoC_clk_wiz_0_0),
        .O(clkfbout_buf_TinySoC_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_TinySoC_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_cpu_TinySoC_clk_wiz_0_0),
        .O(clk_cpu));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_ddr_ref_TinySoC_clk_wiz_0_0),
        .O(clk_ddr_ref));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_vga_TinySoC_clk_wiz_0_0),
        .O(clk_vga));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout4_buf
       (.I(clk_spi_TinySoC_clk_wiz_0_0),
        .O(clk_spi));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout5_buf
       (.I(clk_peripheral_TinySoC_clk_wiz_0_0),
        .O(clk_peripheral));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout6_buf
       (.I(clk_100m_TinySoC_clk_wiz_0_0),
        .O(clk_100m));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(12.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(6),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(48),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(60),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(20),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(12),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_TinySoC_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_TinySoC_clk_wiz_0_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_TinySoC_clk_wiz_0_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_cpu_TinySoC_clk_wiz_0_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_ddr_ref_TinySoC_clk_wiz_0_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_vga_TinySoC_clk_wiz_0_0),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(clk_spi_TinySoC_clk_wiz_0_0),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(clk_peripheral_TinySoC_clk_wiz_0_0),
        .CLKOUT5(clk_100m_TinySoC_clk_wiz_0_0),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
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
