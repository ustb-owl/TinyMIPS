// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 22:43:07 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TinySoC_axi_quad_spi_0_1 -prefix
//               TinySoC_axi_quad_spi_0_1_ TinySoC_axi_quad_spi_0_1_sim_netlist.v
// Design      : TinySoC_axi_quad_spi_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TinySoC_axi_quad_spi_0_1,axi_quad_spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_quad_spi,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module TinySoC_axi_quad_spi_0_1
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    ss_i,
    ss_o,
    ss_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    ip2intc_irpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input ext_spi_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 lite_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 lite_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 full_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME full_clk, ASSOCIATED_BUSIF AXI_FULL, ASSOCIATED_RESET s_axi4_aresetn, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input s_axi4_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 full_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME full_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi4_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 60000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [6:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 60000000, ID_WIDTH 0, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [23:0]s_axi4_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWLEN" *) input [7:0]s_axi4_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWSIZE" *) input [2:0]s_axi4_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWBURST" *) input [1:0]s_axi4_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWLOCK" *) input s_axi4_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWCACHE" *) input [3:0]s_axi4_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWPROT" *) input [2:0]s_axi4_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWVALID" *) input s_axi4_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWREADY" *) output s_axi4_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WDATA" *) input [31:0]s_axi4_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WSTRB" *) input [3:0]s_axi4_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WLAST" *) input s_axi4_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WVALID" *) input s_axi4_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WREADY" *) output s_axi4_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BRESP" *) output [1:0]s_axi4_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BVALID" *) output s_axi4_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BREADY" *) input s_axi4_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARADDR" *) input [23:0]s_axi4_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARLEN" *) input [7:0]s_axi4_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARSIZE" *) input [2:0]s_axi4_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARBURST" *) input [1:0]s_axi4_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARLOCK" *) input s_axi4_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARCACHE" *) input [3:0]s_axi4_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARPROT" *) input [2:0]s_axi4_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARVALID" *) input s_axi4_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARREADY" *) output s_axi4_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RDATA" *) output [31:0]s_axi4_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RRESP" *) output [1:0]s_axi4_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RLAST" *) output s_axi4_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RVALID" *) output s_axi4_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RREADY" *) input s_axi4_rready;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_I" *) (* x_interface_parameter = "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE" *) input io0_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_O" *) output io0_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_T" *) output io0_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_I" *) input io1_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_O" *) output io1_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_T" *) output io1_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_I" *) input [0:0]ss_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_O" *) output [0:0]ss_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_T" *) output ss_t;
  (* x_interface_info = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO cfgclk" *) output cfgclk;
  (* x_interface_info = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO cfgmclk" *) output cfgmclk;
  (* x_interface_info = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO eos" *) output eos;
  (* x_interface_info = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO preq" *) output preq;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;

  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire ext_spi_clk;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire ip2intc_irpt;
  wire preq;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire [3:0]s_axi4_arcache;
  wire s_axi4_aresetn;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arlock;
  wire [2:0]s_axi4_arprot;
  wire s_axi4_arready;
  wire [2:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [23:0]s_axi4_awaddr;
  wire [1:0]s_axi4_awburst;
  wire [3:0]s_axi4_awcache;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awlock;
  wire [2:0]s_axi4_awprot;
  wire s_axi4_awready;
  wire [2:0]s_axi4_awsize;
  wire s_axi4_awvalid;
  wire s_axi4_bready;
  wire [1:0]s_axi4_bresp;
  wire s_axi4_bvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [1:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire [31:0]s_axi4_wdata;
  wire s_axi4_wlast;
  wire s_axi4_wready;
  wire [3:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]ss_i;
  wire [0:0]ss_o;
  wire ss_t;
  wire NLW_U0_io0_1_o_UNCONNECTED;
  wire NLW_U0_io0_1_t_UNCONNECTED;
  wire NLW_U0_io1_1_o_UNCONNECTED;
  wire NLW_U0_io1_1_t_UNCONNECTED;
  wire NLW_U0_io2_1_o_UNCONNECTED;
  wire NLW_U0_io2_1_t_UNCONNECTED;
  wire NLW_U0_io2_o_UNCONNECTED;
  wire NLW_U0_io2_t_UNCONNECTED;
  wire NLW_U0_io3_1_o_UNCONNECTED;
  wire NLW_U0_io3_1_t_UNCONNECTED;
  wire NLW_U0_io3_o_UNCONNECTED;
  wire NLW_U0_io3_t_UNCONNECTED;
  wire NLW_U0_sck_o_UNCONNECTED;
  wire NLW_U0_sck_t_UNCONNECTED;
  wire NLW_U0_ss_1_o_UNCONNECTED;
  wire NLW_U0_ss_1_t_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_rid_UNCONNECTED;

  (* Async_Clk = "1" *) 
  (* C_DUAL_QUAD_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_INSTANCE = "axi_quad_spi_inst" *) 
  (* C_LSB_STUP = "0" *) 
  (* C_NUM_SS_BITS = "1" *) 
  (* C_NUM_TRANSFER_BITS = "8" *) 
  (* C_SCK_RATIO = "2" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SHARED_STARTUP = "0" *) 
  (* C_SPI_MEMORY = "3" *) 
  (* C_SPI_MEM_ADDR_BITS = "24" *) 
  (* C_SPI_MODE = "0" *) 
  (* C_SUB_FAMILY = "artix7" *) 
  (* C_S_AXI4_ADDR_WIDTH = "24" *) 
  (* C_S_AXI4_BASEADDR = "436207616" *) 
  (* C_S_AXI4_DATA_WIDTH = "32" *) 
  (* C_S_AXI4_HIGHADDR = "452984831" *) 
  (* C_S_AXI4_ID_WIDTH = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TYPE_OF_AXI4_INTERFACE = "1" *) 
  (* C_UC_FAMILY = "0" *) 
  (* C_USE_STARTUP = "1" *) 
  (* C_USE_STARTUP_EXT = "0" *) 
  (* C_XIP_MODE = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  TinySoC_axi_quad_spi_0_1_axi_quad_spi U0
       (.cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .clk(1'b0),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(1'b0),
        .gts(1'b0),
        .io0_1_i(1'b0),
        .io0_1_o(NLW_U0_io0_1_o_UNCONNECTED),
        .io0_1_t(NLW_U0_io0_1_t_UNCONNECTED),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_1_i(1'b0),
        .io1_1_o(NLW_U0_io1_1_o_UNCONNECTED),
        .io1_1_t(NLW_U0_io1_1_t_UNCONNECTED),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_1_i(1'b0),
        .io2_1_o(NLW_U0_io2_1_o_UNCONNECTED),
        .io2_1_t(NLW_U0_io2_1_t_UNCONNECTED),
        .io2_i(1'b0),
        .io2_o(NLW_U0_io2_o_UNCONNECTED),
        .io2_t(NLW_U0_io2_t_UNCONNECTED),
        .io3_1_i(1'b0),
        .io3_1_o(NLW_U0_io3_1_o_UNCONNECTED),
        .io3_1_t(NLW_U0_io3_1_t_UNCONNECTED),
        .io3_i(1'b0),
        .io3_o(NLW_U0_io3_o_UNCONNECTED),
        .io3_t(NLW_U0_io3_t_UNCONNECTED),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(1'b0),
        .pack(1'b0),
        .preq(preq),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arcache(s_axi4_arcache),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arlock(s_axi4_arlock),
        .s_axi4_arprot(s_axi4_arprot),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize(s_axi4_arsize),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awburst(s_axi4_awburst),
        .s_axi4_awcache(s_axi4_awcache),
        .s_axi4_awid(1'b0),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awlock(s_axi4_awlock),
        .s_axi4_awprot(s_axi4_awprot),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awsize(s_axi4_awsize),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[0]),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_bresp(s_axi4_bresp),
        .s_axi4_bvalid(s_axi4_bvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(NLW_U0_s_axi4_rid_UNCONNECTED[0]),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(s_axi4_rresp),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi4_wdata(s_axi4_wdata),
        .s_axi4_wlast(s_axi4_wlast),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wstrb(s_axi4_wstrb),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(1'b0),
        .sck_o(NLW_U0_sck_o_UNCONNECTED),
        .sck_t(NLW_U0_sck_t_UNCONNECTED),
        .spisel(1'b1),
        .ss_1_i(1'b0),
        .ss_1_o(NLW_U0_ss_1_o_UNCONNECTED),
        .ss_1_t(NLW_U0_ss_1_t_UNCONNECTED),
        .ss_i(ss_i),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .usrcclkts(1'b0),
        .usrdoneo(1'b1),
        .usrdonets(1'b0));
endmodule

module TinySoC_axi_quad_spi_0_1_address_decoder
   (Bus_RNW_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    p_1_out,
    p_0_out,
    p_3_out4_out,
    p_3_out,
    D,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    s_axi_aclk,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2Bus_RdAck_core_reg_d3,
    s_axi_arready,
    ip2bus_wrack_core_reg,
    s_axi_wready,
    s_axi_wready_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    s_axi_aresetn,
    Bus_RNW_reg_reg_1);
  output Bus_RNW_reg_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output p_1_out;
  output p_0_out;
  output p_3_out4_out;
  output p_3_out;
  output [4:0]D;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  input s_axi_aclk;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input [4:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2Bus_RdAck_core_reg_d3;
  input s_axi_arready;
  input ip2bus_wrack_core_reg;
  input s_axi_wready;
  input [5:0]s_axi_wready_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input s_axi_aresetn;
  input Bus_RNW_reg_reg_1;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [4:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [4:0]Q;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire eqOp__4;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg_d1;
  wire p_0_out;
  wire p_1_out;
  wire p_3_out;
  wire p_3_out4_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_wready;
  wire [5:0]s_axi_wready_0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002E00)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .I3(s_axi_aresetn),
        .I4(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I5(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .I3(s_axi_aresetn),
        .I4(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I5(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \XIP_MODE_GEN.ip2bus_data_int[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(XIPCR_0_CPHA_int),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \XIP_MODE_GEN.ip2bus_data_int[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(XIPCR_1_CPOL_int),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \XIP_MODE_GEN.ip2bus_data_int[2]_i_1 
       (.I0(Q[2]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \XIP_MODE_GEN.ip2bus_data_int[3]_i_1 
       (.I0(Q[3]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \XIP_MODE_GEN.ip2bus_data_int[4]_i_1 
       (.I0(Q[4]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00C8)) 
    \XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(ip2bus_rdack_core_reg_d1),
        .O(p_1_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0032)) 
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(ip2bus_wrack_core_reg_d1),
        .O(p_3_out4_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_arready_INST_0
       (.I0(ip2Bus_RdAck_core_reg_d3),
        .I1(s_axi_arready),
        .I2(eqOp__4),
        .O(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_core_reg),
        .I1(s_axi_wready),
        .I2(eqOp__4),
        .O(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_axi_wready_INST_0_i_1
       (.I0(s_axi_wready_0[5]),
        .I1(s_axi_wready_0[1]),
        .I2(s_axi_wready_0[3]),
        .I3(s_axi_wready_0[0]),
        .I4(s_axi_wready_0[2]),
        .I5(s_axi_wready_0[4]),
        .O(eqOp__4));
endmodule

module TinySoC_axi_quad_spi_0_1_async_fifo_fg
   (full,
    wr_rst_busy,
    s_axi4_rdata,
    empty,
    p_101_in,
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ,
    E,
    s_axi4_rvalid,
    Rst_to_spi,
    ext_spi_clk,
    Q,
    s_axi4_aclk,
    bus2ip_reset_ipif4_inverted,
    last_data_acked_reg,
    last_data_acked_reg_0,
    s_axi4_rready,
    last_data_acked,
    \dtr_length_reg[0] ,
    cmd_addr_sent,
    SPIXfer_done_int,
    size_length_cntr);
  output full;
  output wr_rst_busy;
  output [31:0]s_axi4_rdata;
  output empty;
  output p_101_in;
  output \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  output [0:0]E;
  output s_axi4_rvalid;
  input Rst_to_spi;
  input ext_spi_clk;
  input [31:0]Q;
  input s_axi4_aclk;
  input bus2ip_reset_ipif4_inverted;
  input last_data_acked_reg;
  input [0:0]last_data_acked_reg_0;
  input s_axi4_rready;
  input last_data_acked;
  input \dtr_length_reg[0] ;
  input cmd_addr_sent;
  input SPIXfer_done_int;
  input [1:0]size_length_cntr;

  wire [0:0]E;
  wire [31:0]Q;
  wire Rst_to_spi;
  wire Rx_FIFO_rd_ack;
  wire SPIXfer_done_int;
  wire \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  wire bus2ip_reset_ipif4_inverted;
  wire cmd_addr_sent;
  wire down_cnt_en_rx;
  wire \dtr_length_reg[0] ;
  wire empty;
  wire ext_spi_clk;
  wire full;
  wire last_data_acked;
  wire last_data_acked_reg;
  wire [0:0]last_data_acked_reg_0;
  wire p_101_in;
  wire s_axi4_aclk;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire [1:0]size_length_cntr;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_10 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_11 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_4 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_46 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_47 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_48 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_49 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_5 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_50 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_51 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_54 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \dtr_length[7]_i_1 
       (.I0(empty),
        .I1(s_axi4_rready),
        .I2(\dtr_length_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000555500100010)) 
    last_data_acked_i_1
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(last_data_acked_reg),
        .I2(Rx_FIFO_rd_ack),
        .I3(last_data_acked_reg_0),
        .I4(s_axi4_rready),
        .I5(last_data_acked),
        .O(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi4_rvalid_INST_0
       (.I0(empty),
        .O(s_axi4_rvalid));
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_54 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_10 ),
        .data_valid(Rx_FIFO_rd_ack),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din(Q),
        .dout(s_axi4_rdata),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(s_axi4_aclk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_46 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_47 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_48 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_49 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_50 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_51 }),
        .rd_en(down_cnt_en_rx),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(Rst_to_spi),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_11 ),
        .wr_clk(ext_spi_clk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_4 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_5 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_7 }),
        .wr_en(p_101_in),
        .wr_rst_busy(wr_rst_busy));
  LUT4 #(
    .INIT(16'h0008)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1 
       (.I0(cmd_addr_sent),
        .I1(SPIXfer_done_int),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .O(p_101_in));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_2 
       (.I0(s_axi4_rready),
        .I1(empty),
        .O(down_cnt_en_rx));
endmodule

module TinySoC_axi_quad_spi_0_1_axi_lite_ipif
   (bus2ip_reset_ipif_inverted,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    SR,
    p_1_out,
    p_0_out,
    p_3_out4_out,
    p_3_out,
    D,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2Bus_RdAck_core_reg_d3,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2bus_wrack_core_reg,
    s_axi_araddr,
    s_axi_awaddr,
    \s_axi_rdata_i_reg[4] );
  output bus2ip_reset_ipif_inverted;
  output Bus_RNW_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  output [0:0]SR;
  output p_1_out;
  output p_0_out;
  output p_3_out4_out;
  output p_3_out;
  output [4:0]D;
  output [4:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2Bus_RdAck_core_reg_d3;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2bus_wrack_core_reg;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;
  input [4:0]\s_axi_rdata_i_reg[4] ;

  wire Bus_RNW_reg;
  wire [4:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire bus2ip_reset_ipif_inverted;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg_d1;
  wire p_0_out;
  wire p_1_out;
  wire p_3_out;
  wire p_3_out4_out;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [4:0]s_axi_rdata;
  wire [4:0]\s_axi_rdata_i_reg[4] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_wvalid;

  TinySoC_axi_quad_spi_0_1_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(Q),
        .SR(bus2ip_reset_ipif_inverted),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_3_out4_out(p_3_out4_out),
        .rst_reg_0(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module TinySoC_axi_quad_spi_0_1_axi_qspi_xip_if
   (full,
    wr_rst_busy,
    s_axi4_rdata,
    ss_t,
    sck_t,
    io0_t,
    io1_t,
    load_cmd_cdc_from_axi_d3,
    scndry_out,
    load_axi_data_cdc_to_spi_d3,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ,
    s_axi4_arready,
    s_axi4_rid,
    XIP_trans_error_d3,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    transfer_start,
    sck_d2,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ,
    new_tr,
    io0_o,
    SCK_O_int,
    ss_o,
    D,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ,
    s_axi4_rresp,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 ,
    Q,
    s_axi4_rvalid,
    s_axi4_rlast,
    \RATIO_OF_2_GENERATE.Count_reg[0]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ,
    SPIXfer_done_int_d1_reg_0,
    Rst_to_spi,
    ext_spi_clk,
    s_axi4_aclk,
    spisel,
    bus2ip_reset_ipif4_inverted,
    s_axi_aclk,
    s_axi4_arsize,
    s_axi4_arburst,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ,
    \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ,
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ,
    XIPCR_1_CPOL_int,
    XIPCR_0_CPHA_int,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    E,
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_rready,
    s_axi4_arid,
    s_axi4_arvalid);
  output full;
  output wr_rst_busy;
  output [31:0]s_axi4_rdata;
  output ss_t;
  output sck_t;
  output io0_t;
  output io1_t;
  output load_cmd_cdc_from_axi_d3;
  output scndry_out;
  output load_axi_data_cdc_to_spi_d3;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output XIP_trans_error_d3;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  output transfer_start;
  output sck_d2;
  output \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  output new_tr;
  output io0_o;
  output SCK_O_int;
  output [0:0]ss_o;
  output [2:0]D;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  output [0:0]s_axi4_rresp;
  output [0:0]\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 ;
  output [0:0]Q;
  output s_axi4_rvalid;
  output s_axi4_rlast;
  output [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  output \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  output SPIXfer_done_int_d1_reg_0;
  input Rst_to_spi;
  input ext_spi_clk;
  input s_axi4_aclk;
  input spisel;
  input bus2ip_reset_ipif4_inverted;
  input s_axi_aclk;
  input [1:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ;
  input \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ;
  input \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ;
  input XIPCR_1_CPOL_int;
  input XIPCR_0_CPHA_int;
  input prmry_in;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input [0:0]E;
  input [0:0]\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input s_axi4_rready;
  input [0:0]s_axi4_arid;
  input s_axi4_arvalid;

  wire [2:0]D;
  wire D_0;
  wire [0:0]E;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_2_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg_n_0_[3] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ;
  wire [0:0]Q;
  wire \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  wire [4:4]\RATIO_OF_2_GENERATE.Count_reg__0 ;
  wire [3:1]\RATIO_OF_2_GENERATE.Count_reg__1 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[1] ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[2] ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ;
  wire [0:0]\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ;
  wire Rst_to_spi;
  wire Rx_FIFO_Empty;
  wire SCK_O_int;
  wire [0:0]\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ;
  wire SPISEL_sync;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int1;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_d1_reg_0;
  wire SPIXfer_done_int_i_1_n_0;
  wire SPIXfer_done_int_i_2_n_0;
  wire SPIXfer_done_int_pulse;
  wire SPIXfer_done_int_pulse_d1;
  wire SPIXfer_done_int_pulse_d2;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_11_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ;
  wire SS_frm_axi;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[0]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[1]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_sent_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_5_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[0]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[1]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[2]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[3]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[4]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[5]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[6]_i_1_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_3_n_0 ;
  wire \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ;
  wire S_AXI4_RID_reg;
  wire [4:7]Shift_Reg__0;
  wire [1:3]Transmit_Data;
  wire [23:0]Transmit_addr_int;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire XIPSR_CPHA_CPOL_ERR_4;
  wire XIP_CLK_DOMAIN_SIGNALS_n_10;
  wire XIP_CLK_DOMAIN_SIGNALS_n_100;
  wire XIP_CLK_DOMAIN_SIGNALS_n_101;
  wire XIP_CLK_DOMAIN_SIGNALS_n_102;
  wire XIP_CLK_DOMAIN_SIGNALS_n_103;
  wire XIP_CLK_DOMAIN_SIGNALS_n_104;
  wire XIP_CLK_DOMAIN_SIGNALS_n_105;
  wire XIP_CLK_DOMAIN_SIGNALS_n_106;
  wire XIP_CLK_DOMAIN_SIGNALS_n_107;
  wire XIP_CLK_DOMAIN_SIGNALS_n_108;
  wire XIP_CLK_DOMAIN_SIGNALS_n_109;
  wire XIP_CLK_DOMAIN_SIGNALS_n_11;
  wire XIP_CLK_DOMAIN_SIGNALS_n_110;
  wire XIP_CLK_DOMAIN_SIGNALS_n_111;
  wire XIP_CLK_DOMAIN_SIGNALS_n_112;
  wire XIP_CLK_DOMAIN_SIGNALS_n_113;
  wire XIP_CLK_DOMAIN_SIGNALS_n_114;
  wire XIP_CLK_DOMAIN_SIGNALS_n_115;
  wire XIP_CLK_DOMAIN_SIGNALS_n_116;
  wire XIP_CLK_DOMAIN_SIGNALS_n_117;
  wire XIP_CLK_DOMAIN_SIGNALS_n_118;
  wire XIP_CLK_DOMAIN_SIGNALS_n_119;
  wire XIP_CLK_DOMAIN_SIGNALS_n_12;
  wire XIP_CLK_DOMAIN_SIGNALS_n_120;
  wire XIP_CLK_DOMAIN_SIGNALS_n_121;
  wire XIP_CLK_DOMAIN_SIGNALS_n_122;
  wire XIP_CLK_DOMAIN_SIGNALS_n_123;
  wire XIP_CLK_DOMAIN_SIGNALS_n_124;
  wire XIP_CLK_DOMAIN_SIGNALS_n_125;
  wire XIP_CLK_DOMAIN_SIGNALS_n_13;
  wire XIP_CLK_DOMAIN_SIGNALS_n_14;
  wire XIP_CLK_DOMAIN_SIGNALS_n_15;
  wire XIP_CLK_DOMAIN_SIGNALS_n_16;
  wire XIP_CLK_DOMAIN_SIGNALS_n_17;
  wire XIP_CLK_DOMAIN_SIGNALS_n_18;
  wire XIP_CLK_DOMAIN_SIGNALS_n_19;
  wire XIP_CLK_DOMAIN_SIGNALS_n_20;
  wire XIP_CLK_DOMAIN_SIGNALS_n_21;
  wire XIP_CLK_DOMAIN_SIGNALS_n_22;
  wire XIP_CLK_DOMAIN_SIGNALS_n_23;
  wire XIP_CLK_DOMAIN_SIGNALS_n_24;
  wire XIP_CLK_DOMAIN_SIGNALS_n_25;
  wire XIP_CLK_DOMAIN_SIGNALS_n_26;
  wire XIP_CLK_DOMAIN_SIGNALS_n_27;
  wire XIP_CLK_DOMAIN_SIGNALS_n_28;
  wire XIP_CLK_DOMAIN_SIGNALS_n_29;
  wire XIP_CLK_DOMAIN_SIGNALS_n_30;
  wire XIP_CLK_DOMAIN_SIGNALS_n_31;
  wire XIP_CLK_DOMAIN_SIGNALS_n_32;
  wire XIP_CLK_DOMAIN_SIGNALS_n_33;
  wire XIP_CLK_DOMAIN_SIGNALS_n_34;
  wire XIP_CLK_DOMAIN_SIGNALS_n_35;
  wire XIP_CLK_DOMAIN_SIGNALS_n_36;
  wire XIP_CLK_DOMAIN_SIGNALS_n_37;
  wire XIP_CLK_DOMAIN_SIGNALS_n_38;
  wire XIP_CLK_DOMAIN_SIGNALS_n_39;
  wire XIP_CLK_DOMAIN_SIGNALS_n_4;
  wire XIP_CLK_DOMAIN_SIGNALS_n_40;
  wire XIP_CLK_DOMAIN_SIGNALS_n_41;
  wire XIP_CLK_DOMAIN_SIGNALS_n_43;
  wire XIP_CLK_DOMAIN_SIGNALS_n_5;
  wire XIP_CLK_DOMAIN_SIGNALS_n_52;
  wire XIP_CLK_DOMAIN_SIGNALS_n_57;
  wire XIP_CLK_DOMAIN_SIGNALS_n_58;
  wire XIP_CLK_DOMAIN_SIGNALS_n_6;
  wire XIP_CLK_DOMAIN_SIGNALS_n_60;
  wire XIP_CLK_DOMAIN_SIGNALS_n_61;
  wire XIP_CLK_DOMAIN_SIGNALS_n_62;
  wire XIP_CLK_DOMAIN_SIGNALS_n_63;
  wire XIP_CLK_DOMAIN_SIGNALS_n_64;
  wire XIP_CLK_DOMAIN_SIGNALS_n_65;
  wire XIP_CLK_DOMAIN_SIGNALS_n_66;
  wire XIP_CLK_DOMAIN_SIGNALS_n_67;
  wire XIP_CLK_DOMAIN_SIGNALS_n_68;
  wire XIP_CLK_DOMAIN_SIGNALS_n_69;
  wire XIP_CLK_DOMAIN_SIGNALS_n_7;
  wire XIP_CLK_DOMAIN_SIGNALS_n_70;
  wire XIP_CLK_DOMAIN_SIGNALS_n_71;
  wire XIP_CLK_DOMAIN_SIGNALS_n_72;
  wire XIP_CLK_DOMAIN_SIGNALS_n_78;
  wire XIP_CLK_DOMAIN_SIGNALS_n_79;
  wire XIP_CLK_DOMAIN_SIGNALS_n_8;
  wire XIP_CLK_DOMAIN_SIGNALS_n_80;
  wire XIP_CLK_DOMAIN_SIGNALS_n_81;
  wire XIP_CLK_DOMAIN_SIGNALS_n_82;
  wire XIP_CLK_DOMAIN_SIGNALS_n_83;
  wire XIP_CLK_DOMAIN_SIGNALS_n_84;
  wire XIP_CLK_DOMAIN_SIGNALS_n_85;
  wire XIP_CLK_DOMAIN_SIGNALS_n_86;
  wire XIP_CLK_DOMAIN_SIGNALS_n_87;
  wire XIP_CLK_DOMAIN_SIGNALS_n_88;
  wire XIP_CLK_DOMAIN_SIGNALS_n_89;
  wire XIP_CLK_DOMAIN_SIGNALS_n_9;
  wire XIP_CLK_DOMAIN_SIGNALS_n_90;
  wire XIP_CLK_DOMAIN_SIGNALS_n_91;
  wire XIP_CLK_DOMAIN_SIGNALS_n_92;
  wire XIP_CLK_DOMAIN_SIGNALS_n_93;
  wire XIP_CLK_DOMAIN_SIGNALS_n_94;
  wire XIP_CLK_DOMAIN_SIGNALS_n_95;
  wire XIP_CLK_DOMAIN_SIGNALS_n_96;
  wire XIP_CLK_DOMAIN_SIGNALS_n_97;
  wire XIP_CLK_DOMAIN_SIGNALS_n_98;
  wire XIP_CLK_DOMAIN_SIGNALS_n_99;
  wire XIP_RECEIVE_FIFO_II_n_36;
  wire XIP_RECEIVE_FIFO_II_n_37;
  wire XIP_trans_error_d3;
  wire XIP_trans_error_int_2;
  wire [3:0]axi_length;
  wire bus2ip_reset_ipif4_inverted;
  wire cmd_addr_sent;
  wire [23:4]data1;
  wire [23:1]data4;
  wire [7:0]dtr_length;
  wire \dtr_length[4]_i_2_n_0 ;
  wire \dtr_length[5]_i_2_n_0 ;
  wire ext_spi_clk;
  wire four_byte_xfer;
  wire full;
  wire [1:0]hw_wd_cntr;
  wire io0_o;
  wire io0_t;
  wire io1_t;
  wire last_data_acked;
  wire [6:2]length_cntr;
  wire load_axi_data_cdc_to_spi_d3;
  wire load_axi_data_frm_axi_clk;
  wire load_axi_data_to_spi_clk;
  wire load_cmd_cdc_from_axi_d3;
  wire new_tr;
  wire one_byte_xfer;
  wire one_byte_xfer_i_1_n_0;
  wire [31:8]p_0_in1_in;
  wire p_101_in;
  wire [7:0]p_1_in;
  wire p_3_in1_in;
  wire p_3_out;
  wire p_46_out;
  wire [15:0]p_5_in;
  wire p_8_in;
  wire [4:1]plusOp;
  wire pr_state_addr_ph;
  wire pr_state_cmd_ph;
  wire pr_state_idle;
  wire prmry_in;
  wire [7:0]receive_Data_int;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire [1:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rlast_INST_0_i_1_n_0;
  wire s_axi4_rlast_INST_0_i_2_n_0;
  wire s_axi4_rready;
  wire [0:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire sck_d1;
  wire sck_d2;
  wire sck_o_int;
  wire sck_t;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr[1]_i_3_n_0 ;
  wire \size_length_cntr_fixed_reg_n_0_[0] ;
  wire \size_length_cntr_fixed_reg_n_0_[1] ;
  wire [23:0]spi_addr_wrap_1;
  wire \spi_addr_wrap_1[0]_i_1_n_0 ;
  wire \spi_addr_wrap_1[10]_i_1_n_0 ;
  wire \spi_addr_wrap_1[11]_i_1_n_0 ;
  wire \spi_addr_wrap_1[12]_i_1_n_0 ;
  wire \spi_addr_wrap_1[13]_i_1_n_0 ;
  wire \spi_addr_wrap_1[14]_i_1_n_0 ;
  wire \spi_addr_wrap_1[15]_i_1_n_0 ;
  wire \spi_addr_wrap_1[16]_i_1_n_0 ;
  wire \spi_addr_wrap_1[17]_i_1_n_0 ;
  wire \spi_addr_wrap_1[18]_i_1_n_0 ;
  wire \spi_addr_wrap_1[19]_i_1_n_0 ;
  wire \spi_addr_wrap_1[1]_i_1_n_0 ;
  wire \spi_addr_wrap_1[20]_i_1_n_0 ;
  wire \spi_addr_wrap_1[21]_i_1_n_0 ;
  wire \spi_addr_wrap_1[22]_i_1_n_0 ;
  wire \spi_addr_wrap_1[23]_i_1_n_0 ;
  wire \spi_addr_wrap_1[2]_i_1_n_0 ;
  wire \spi_addr_wrap_1[3]_i_1_n_0 ;
  wire \spi_addr_wrap_1[3]_i_3_n_0 ;
  wire \spi_addr_wrap_1[4]_i_1_n_0 ;
  wire \spi_addr_wrap_1[4]_i_4_n_0 ;
  wire \spi_addr_wrap_1[5]_i_1_n_0 ;
  wire \spi_addr_wrap_1[6]_i_1_n_0 ;
  wire \spi_addr_wrap_1[7]_i_1_n_0 ;
  wire \spi_addr_wrap_1[8]_i_1_n_0 ;
  wire \spi_addr_wrap_1[9]_i_1_n_0 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_5 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_6 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_7 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_7 ;
  wire spisel;
  wire [0:0]ss_o;
  wire ss_t;
  wire start_after_wrap;
  wire start_after_wrap_d1;
  wire transfer_start;
  wire transfer_start_d1;
  wire transfer_start_d2;
  wire two_byte_xfer;
  wire type_of_burst;
  wire wr_rst_busy;
  wire wrap_around_d1;
  wire wrap_around_d10;
  wire wrap_around_d2;
  wire wrap_around_d3;
  wire wrap_around_reg_n_0;
  wire xip_sm_ns;
  wire xip_sm_ps;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_4_O_UNCONNECTED ;

  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[0] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[0]),
        .Q(Transmit_addr_int[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[10] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[10]),
        .Q(Transmit_addr_int[10]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[11] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[11]),
        .Q(Transmit_addr_int[11]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[12] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[12]),
        .Q(Transmit_addr_int[12]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[13] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[13]),
        .Q(Transmit_addr_int[13]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[14] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[14]),
        .Q(Transmit_addr_int[14]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[15] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[15]),
        .Q(Transmit_addr_int[15]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[16] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[16]),
        .Q(Transmit_addr_int[16]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[17] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[17]),
        .Q(Transmit_addr_int[17]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[18] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[18]),
        .Q(Transmit_addr_int[18]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[19] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[19]),
        .Q(Transmit_addr_int[19]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[1] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[1]),
        .Q(Transmit_addr_int[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[20] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[20]),
        .Q(Transmit_addr_int[20]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[21] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[21]),
        .Q(Transmit_addr_int[21]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[22] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[22]),
        .Q(Transmit_addr_int[22]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[23] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[23]),
        .Q(Transmit_addr_int[23]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[2] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[2]),
        .Q(Transmit_addr_int[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[3] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[3]),
        .Q(Transmit_addr_int[3]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[4] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[4]),
        .Q(Transmit_addr_int[4]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[5] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[5]),
        .Q(Transmit_addr_int[5]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[6] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[6]),
        .Q(Transmit_addr_int[6]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[7] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[7]),
        .Q(Transmit_addr_int[7]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[8] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[8]),
        .Q(Transmit_addr_int[8]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[9] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[9]),
        .Q(Transmit_addr_int[9]),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[0]_i_2 
       (.I0(pr_state_idle),
        .I1(transfer_start),
        .I2(new_tr),
        .I3(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[1]_i_1 
       (.I0(SPIXfer_done_int_pulse),
        .I1(pr_state_cmd_ph),
        .I2(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I3(new_tr),
        .I4(transfer_start),
        .I5(pr_state_idle),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFF88F8)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_1 
       (.I0(SPIXfer_done_int_pulse),
        .I1(pr_state_cmd_ph),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_2_n_0 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg_n_0_[3] ),
        .I5(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_2 
       (.I0(wrap_around_d2),
        .I1(wrap_around_d3),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "cmd_send:00000010,addr_send:00000100,temp_addr_send:00001000,data_send:00010000,temp_data_send:00100000,data_receive:01000000,temp_data_receive:10000000,idle:00000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_101),
        .Q(pr_state_idle),
        .S(Rst_to_spi));
  (* FSM_ENCODED_STATES = "cmd_send:00000010,addr_send:00000100,temp_addr_send:00001000,data_send:00010000,temp_data_send:00100000,data_receive:01000000,temp_data_receive:10000000,idle:00000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ),
        .Q(pr_state_cmd_ph),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "cmd_send:00000010,addr_send:00000100,temp_addr_send:00001000,data_send:00010000,temp_data_send:00100000,data_receive:01000000,temp_data_receive:10000000,idle:00000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ),
        .Q(pr_state_addr_ph),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "cmd_send:00000010,addr_send:00000100,temp_addr_send:00001000,data_send:00010000,temp_data_send:00100000,data_receive:01000000,temp_data_receive:10000000,idle:00000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[3] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_100),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg_n_0_[3] ),
        .R(Rst_to_spi));
  TinySoC_axi_quad_spi_0_1_qspi_address_decoder I_DECODER
       (.\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (XIP_CLK_DOMAIN_SIGNALS_n_52),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .last_data_acked(last_data_acked),
        .prmry_in(SS_frm_axi),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_rready(s_axi4_rready),
        .xip_sm_ps(xip_sm_ps));
  LUT3 #(
    .INIT(8'hFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4_n_0 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2_n_0 ));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_24),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_25),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(length_cntr[2]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(length_cntr[3]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(length_cntr[4]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(length_cntr[5]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .D(length_cntr[6]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_28),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ),
        .R(1'b0));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0 \LOGIC_GENERATION_CDC.CPHA_CPOL_ERR_AXI2AXI4 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .s_axi4_aclk(s_axi4_aclk),
        .scndry_out(XIPSR_CPHA_CPOL_ERR_4));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_0 \LOGIC_GENERATION_CDC.XIP_TRANS_ERROR_AXI42AXI 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .prmry_in(XIP_trans_error_int_2),
        .s_axi_aclk(s_axi_aclk));
  FDRE \LOGIC_GENERATION_CDC.XIP_trans_error_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(XIP_trans_error_d3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD02)) 
    \LOGIC_GENERATION_CDC.XIP_trans_error_int_2_i_1 
       (.I0(s_axi4_arvalid),
        .I1(s_axi4_arburst[0]),
        .I2(s_axi4_arburst[1]),
        .I3(XIP_trans_error_int_2),
        .O(p_3_out));
  FDRE \LOGIC_GENERATION_CDC.XIP_trans_error_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(XIP_trans_error_int_2),
        .R(bus2ip_reset_ipif4_inverted));
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_OF_2_GENERATE.Count[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(SPIXfer_done_int1));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RATIO_OF_2_GENERATE.Count[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \RATIO_OF_2_GENERATE.Count[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg__1 [2]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I2(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \RATIO_OF_2_GENERATE.Count[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg__1 [3]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .I2(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I3(\RATIO_OF_2_GENERATE.Count_reg__1 [2]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_1 
       (.I0(wrap_around_d3),
        .I1(wrap_around_d2),
        .I2(Rst_to_spi),
        .I3(transfer_start),
        .I4(SPIXfer_done_int),
        .O(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_3 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg__1 [2]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg__1 [3]),
        .I2(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(plusOp[4]));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .D(SPIXfer_done_int1),
        .Q(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .D(plusOp[1]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .D(plusOp[2]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg__1 [2]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .D(plusOp[3]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg__1 [3]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .D(plusOp[4]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg__0 ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ),
        .Q(io0_t),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hBF00FFFF)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1 
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(new_tr),
        .I2(transfer_start),
        .I3(pr_state_idle),
        .I4(SPISEL_sync),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_IO1_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ),
        .Q(io1_t),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1 
       (.I0(SPISEL_sync),
        .I1(pr_state_cmd_ph),
        .I2(pr_state_addr_ph),
        .I3(pr_state_idle),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg_n_0_[3] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_SCK_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(sck_t),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \RATIO_OF_2_GENERATE.QSPI_SCK_T_i_1 
       (.I0(wrap_around_d2),
        .I1(wrap_around_d1),
        .I2(SPISEL_sync),
        .I3(transfer_start),
        .O(D_0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_SPISEL 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel),
        .Q(SPISEL_sync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(transfer_start_d1),
        .I2(transfer_start),
        .O(SPIXfer_done_int_d1_reg_0));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ),
        .Q(io0_o),
        .R(Rst_to_spi));
  LUT4 #(
    .INIT(16'hEF00)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(transfer_start),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[1] ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 ),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[2] ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(Transmit_Data[1]),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(Transmit_Data[2]),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1 
       (.I0(Shift_Reg__0[4]),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(Transmit_Data[3]),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1 
       (.I0(Shift_Reg__0[5]),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1 
       (.I0(Shift_Reg__0[6]),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1 
       (.I0(Shift_Reg__0[7]),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hEF20)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[0] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ),
        .Q(Q),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[1] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[1] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[2] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[3] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[4] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ),
        .Q(Shift_Reg__0[4]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[5] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ),
        .Q(Shift_Reg__0[5]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[6] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ),
        .Q(Shift_Reg__0[6]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg_reg[7] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ),
        .Q(Shift_Reg__0[7]),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_SS_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(ss_t),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_69),
        .Q(SCK_O_int),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_71),
        .Q(ss_o),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[0] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_o_int),
        .Q(sck_d1),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d1),
        .Q(sck_d2),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_o_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_57),
        .Q(sck_o_int),
        .R(1'b0));
  TinySoC_axi_quad_spi_0_1_cdc_sync RX_FIFO_EMPTY_SYNC_AXI4_2_AXI_CDC
       (.D(D[0]),
        .empty(Rx_FIFO_Empty),
        .s_axi_aclk(s_axi_aclk));
  TinySoC_axi_quad_spi_0_1_cdc_sync_1 RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .empty(Rx_FIFO_Empty),
        .ext_spi_clk(ext_spi_clk));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_68),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_21),
        .Q(p_0_in1_in[18]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_20),
        .Q(p_0_in1_in[19]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_19),
        .Q(p_0_in1_in[20]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_18),
        .Q(p_0_in1_in[21]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_17),
        .Q(p_0_in1_in[22]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_16),
        .Q(p_0_in1_in[23]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_15),
        .Q(p_0_in1_in[24]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_14),
        .Q(p_0_in1_in[25]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_13),
        .Q(p_0_in1_in[26]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_12),
        .Q(p_0_in1_in[27]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_67),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_11),
        .Q(p_0_in1_in[28]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_10),
        .Q(p_0_in1_in[29]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_9),
        .Q(p_0_in1_in[30]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_8),
        .Q(p_0_in1_in[31]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_5),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_6),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(p_0_in1_in[26]),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ),
        .R(XIP_CLK_DOMAIN_SIGNALS_n_38));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_7),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(p_0_in1_in[28]),
        .Q(Transmit_Data[3]),
        .R(XIP_CLK_DOMAIN_SIGNALS_n_38));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(p_0_in1_in[29]),
        .Q(Transmit_Data[2]),
        .R(XIP_CLK_DOMAIN_SIGNALS_n_38));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_66),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(p_0_in1_in[30]),
        .Q(Transmit_Data[1]),
        .R(XIP_CLK_DOMAIN_SIGNALS_n_38));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(p_0_in1_in[31]),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 ),
        .R(XIP_CLK_DOMAIN_SIGNALS_n_38));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_65),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_64),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_62),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_61),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_23),
        .Q(p_0_in1_in[16]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_22),
        .Q(p_0_in1_in[17]),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int),
        .Q(SPIXfer_done_int_d1),
        .R(wrap_around_d10));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    SPIXfer_done_int_i_1
       (.I0(transfer_start),
        .I1(transfer_start_d1),
        .I2(Rst_to_spi),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I4(\RATIO_OF_2_GENERATE.Count_reg__1 [1]),
        .I5(SPIXfer_done_int_i_2_n_0),
        .O(SPIXfer_done_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    SPIXfer_done_int_i_2
       (.I0(\RATIO_OF_2_GENERATE.Count_reg__1 [2]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg__1 [3]),
        .O(SPIXfer_done_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    SPIXfer_done_int_pulse_d1_i_1
       (.I0(SPIXfer_done_int),
        .I1(SPIXfer_done_int_d1),
        .O(SPIXfer_done_int_pulse));
  FDRE SPIXfer_done_int_pulse_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse),
        .Q(SPIXfer_done_int_pulse_d1),
        .R(wrap_around_d10));
  FDRE SPIXfer_done_int_pulse_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d1),
        .Q(SPIXfer_done_int_pulse_d2),
        .R(wrap_around_d10));
  FDRE SPIXfer_done_int_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_i_1_n_0),
        .Q(SPIXfer_done_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3 
       (.I0(size_length_cntr[1]),
        .I1(size_length_cntr[0]),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ));
  FDRE \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_40),
        .Q(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_39),
        .Q(p_3_in1_in),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[10]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[11]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[12]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[13]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[14]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[15]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[16]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[17]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[18]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[19]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[20]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[21]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[22]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[23]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5 
       (.I0(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8 
       (.I0(p_8_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_11 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .I1(p_8_in),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I1(p_8_in),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8 
       (.I0(data1[4]),
        .I1(p_8_in),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10 
       (.I0(data1[4]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(data4[5]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\spi_addr_wrap_1_reg[7]_i_2_n_6 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[6]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[7]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[8]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(data4[9]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_37),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .Q(data1[10]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .Q(data1[11]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_84),
        .Q(data1[12]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_85),
        .Q(data1[13]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_86),
        .Q(data1[14]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_87),
        .Q(data1[15]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_88),
        .Q(data1[16]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_89),
        .Q(data1[17]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_90),
        .Q(data1[18]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_91),
        .Q(data1[19]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_36),
        .Q(p_8_in),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_92),
        .Q(data1[20]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_93),
        .Q(data1[21]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_94),
        .Q(data1[22]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_95),
        .Q(data1[23]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_34),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_33),
        .Q(data1[4]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_32),
        .Q(data1[5]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_78),
        .Q(data1[6]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_79),
        .Q(data1[7]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_80),
        .Q(data1[8]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_81),
        .Q(data1[9]),
        .R(Rst_to_spi));
  FDSE \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ),
        .Q(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .S(Rst_to_spi));
  LUT5 #(
    .INIT(32'h00006E66)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[0]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .I1(SPIXfer_done_int),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h000034F0)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[1]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .I3(SPIXfer_done_int),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .I3(SPIXfer_done_int),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2 
       (.I0(wrap_around_reg_n_0),
        .I1(pr_state_idle),
        .I2(Rst_to_spi),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[0]_i_1_n_0 ),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[1]_i_1_n_0 ),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_1_n_0 ),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000002E222222)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_sent_i_1 
       (.I0(cmd_addr_sent),
        .I1(SPIXfer_done_int),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_sent_i_1_n_0 ));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_sent_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.CMD_ADDR_24_BIT_CNTR_GEN.cmd_addr_sent_i_1_n_0 ),
        .Q(cmd_addr_sent),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_5 
       (.I0(hw_wd_cntr[1]),
        .I1(hw_wd_cntr[0]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3 
       (.I0(cmd_addr_sent),
        .I1(SPIXfer_done_int_pulse_d2),
        .O(p_46_out));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4 
       (.I0(hw_wd_cntr[0]),
        .I1(hw_wd_cntr[1]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_125),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[10] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_115),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[11] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_114),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_113),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_112),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_111),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_110),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_109),
        .Q(p_5_in[0]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[17] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_108),
        .Q(p_5_in[1]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[18] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .Q(p_5_in[2]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[19] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .Q(p_5_in[3]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_124),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[20] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .Q(p_5_in[4]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .Q(p_5_in[5]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_103),
        .Q(p_5_in[6]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_102),
        .Q(p_5_in[7]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[24] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[0]),
        .Q(p_5_in[8]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[25] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[1]),
        .Q(p_5_in[9]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[26] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[2]),
        .Q(p_5_in[10]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[27] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[3]),
        .Q(p_5_in[11]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[28] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[4]),
        .Q(p_5_in[12]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[29] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[5]),
        .Q(p_5_in[13]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_123),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[30] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[6]),
        .Q(p_5_in[14]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .D(receive_Data_int[7]),
        .Q(p_5_in[15]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_122),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_121),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_120),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_119),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_118),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_117),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[9] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_116),
        .Q(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_43),
        .Q(hw_wd_cntr[0]),
        .R(1'b0));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_41),
        .Q(hw_wd_cntr[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[0]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[1]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[2]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[4]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[3]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[5]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[4]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[6]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[5]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_pulse_d1),
        .I3(cmd_addr_sent),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_3 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[6]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_3_n_0 ));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[0]_i_1_n_0 ),
        .Q(receive_Data_int[0]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[1]_i_1_n_0 ),
        .Q(receive_Data_int[1]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[2]_i_1_n_0 ),
        .Q(receive_Data_int[2]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[3]_i_1_n_0 ),
        .Q(receive_Data_int[3]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[4]_i_1_n_0 ),
        .Q(receive_Data_int[4]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[5]_i_1_n_0 ),
        .Q(receive_Data_int[5]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[6]_i_1_n_0 ),
        .Q(receive_Data_int[6]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_3_n_0 ),
        .Q(receive_Data_int[7]),
        .R(load_axi_data_to_spi_clk));
  FDRE \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ),
        .Q(new_tr),
        .R(Rst_to_spi));
  FDRE S_AXI4_ARREADY_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(load_axi_data_frm_axi_clk),
        .Q(s_axi4_arready),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \S_AXI4_RID_reg_reg[0] 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_axi4_rid),
        .Q(S_AXI4_RID_reg),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2 
       (.I0(p_101_in),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4_n_0 ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ));
  FDRE \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_58),
        .Q(transfer_start),
        .R(1'b0));
  TinySoC_axi_quad_spi_0_1_xip_cross_clk_sync XIP_CLK_DOMAIN_SIGNALS
       (.D(p_1_in),
        .E(load_axi_data_frm_axi_clk),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] (\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (dtr_length),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (two_byte_xfer),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 (four_byte_xfer),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 (type_of_burst),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 (prmry_in),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 (Transmit_addr_int),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 (SS_frm_axi),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 (axi_length),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (XIP_CLK_DOMAIN_SIGNALS_n_4),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (XIP_CLK_DOMAIN_SIGNALS_n_26),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 (XIP_CLK_DOMAIN_SIGNALS_n_40),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11 (XIP_CLK_DOMAIN_SIGNALS_n_57),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_12 (XIP_CLK_DOMAIN_SIGNALS_n_61),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_13 (XIP_CLK_DOMAIN_SIGNALS_n_62),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_14 (XIP_CLK_DOMAIN_SIGNALS_n_63),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_15 (XIP_CLK_DOMAIN_SIGNALS_n_64),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_16 (XIP_CLK_DOMAIN_SIGNALS_n_65),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_17 (XIP_CLK_DOMAIN_SIGNALS_n_66),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_18 (XIP_CLK_DOMAIN_SIGNALS_n_67),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_19 (XIP_CLK_DOMAIN_SIGNALS_n_68),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (XIP_CLK_DOMAIN_SIGNALS_n_31),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_20 (XIP_CLK_DOMAIN_SIGNALS_n_69),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_21 (XIP_CLK_DOMAIN_SIGNALS_n_70),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_22 (XIP_CLK_DOMAIN_SIGNALS_n_78),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_23 (XIP_CLK_DOMAIN_SIGNALS_n_79),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_24 (XIP_CLK_DOMAIN_SIGNALS_n_80),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_25 (XIP_CLK_DOMAIN_SIGNALS_n_81),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_26 ({XIP_CLK_DOMAIN_SIGNALS_n_100,XIP_CLK_DOMAIN_SIGNALS_n_101}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 ({XIP_CLK_DOMAIN_SIGNALS_n_102,XIP_CLK_DOMAIN_SIGNALS_n_103,XIP_CLK_DOMAIN_SIGNALS_n_104,XIP_CLK_DOMAIN_SIGNALS_n_105,XIP_CLK_DOMAIN_SIGNALS_n_106,XIP_CLK_DOMAIN_SIGNALS_n_107,XIP_CLK_DOMAIN_SIGNALS_n_108,XIP_CLK_DOMAIN_SIGNALS_n_109,XIP_CLK_DOMAIN_SIGNALS_n_110,XIP_CLK_DOMAIN_SIGNALS_n_111,XIP_CLK_DOMAIN_SIGNALS_n_112,XIP_CLK_DOMAIN_SIGNALS_n_113,XIP_CLK_DOMAIN_SIGNALS_n_114,XIP_CLK_DOMAIN_SIGNALS_n_115,XIP_CLK_DOMAIN_SIGNALS_n_116,XIP_CLK_DOMAIN_SIGNALS_n_117,XIP_CLK_DOMAIN_SIGNALS_n_118,XIP_CLK_DOMAIN_SIGNALS_n_119,XIP_CLK_DOMAIN_SIGNALS_n_120,XIP_CLK_DOMAIN_SIGNALS_n_121,XIP_CLK_DOMAIN_SIGNALS_n_122,XIP_CLK_DOMAIN_SIGNALS_n_123,XIP_CLK_DOMAIN_SIGNALS_n_124,XIP_CLK_DOMAIN_SIGNALS_n_125}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 (XIP_CLK_DOMAIN_SIGNALS_n_32),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 (XIP_CLK_DOMAIN_SIGNALS_n_33),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 (XIP_CLK_DOMAIN_SIGNALS_n_34),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 (XIP_CLK_DOMAIN_SIGNALS_n_35),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 (XIP_CLK_DOMAIN_SIGNALS_n_36),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 (XIP_CLK_DOMAIN_SIGNALS_n_37),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 (XIP_CLK_DOMAIN_SIGNALS_n_39),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (D[2:1]),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_4_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] (XIP_CLK_DOMAIN_SIGNALS_n_28),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 (\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2_n_0 ),
        .\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 (load_axi_data_cdc_to_spi_d3),
        .\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 (load_cmd_cdc_from_axi_d3),
        .\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 (XIPSR_CPHA_CPOL_ERR_4),
        .O({\spi_addr_wrap_1_reg[23]_i_4_n_5 ,\spi_addr_wrap_1_reg[23]_i_4_n_6 ,\spi_addr_wrap_1_reg[23]_i_4_n_7 }),
        .Q({\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg_n_0_[3] ,pr_state_addr_ph,pr_state_idle}),
        .\RATIO_OF_2_GENERATE.Count_reg[0] (\RATIO_OF_2_GENERATE.Count_reg__0 ),
        .\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] (\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg (new_tr),
        .RESET_SYNC_AX2S_2(XIP_CLK_DOMAIN_SIGNALS_n_24),
        .RESET_SYNC_AX2S_2_0(XIP_CLK_DOMAIN_SIGNALS_n_25),
        .RESET_SYNC_AX2S_2_1(XIP_CLK_DOMAIN_SIGNALS_n_71),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] (XIP_CLK_DOMAIN_SIGNALS_n_5),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] (XIP_CLK_DOMAIN_SIGNALS_n_6),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] (XIP_CLK_DOMAIN_SIGNALS_n_7),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] (wrap_around_reg_n_0),
        .SPISEL_sync(SPISEL_sync),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .SPIXfer_done_int_reg(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ({XIP_CLK_DOMAIN_SIGNALS_n_96,XIP_CLK_DOMAIN_SIGNALS_n_97,XIP_CLK_DOMAIN_SIGNALS_n_98,XIP_CLK_DOMAIN_SIGNALS_n_99}),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ({\spi_addr_wrap_1_reg[3]_i_2_n_4 ,\spi_addr_wrap_1_reg[3]_i_2_n_5 ,\spi_addr_wrap_1_reg[3]_i_2_n_6 ,\spi_addr_wrap_1_reg[3]_i_2_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_11_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ({\spi_addr_wrap_1_reg[4]_i_3_n_4 ,\spi_addr_wrap_1_reg[4]_i_3_n_5 ,\spi_addr_wrap_1_reg[4]_i_3_n_6 ,\spi_addr_wrap_1_reg[4]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 (data4[4:1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 (\spi_addr_wrap_1_reg[7]_i_2_n_7 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] (XIP_CLK_DOMAIN_SIGNALS_n_21),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] (XIP_CLK_DOMAIN_SIGNALS_n_20),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] (XIP_CLK_DOMAIN_SIGNALS_n_19),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ({\spi_addr_wrap_1_reg[12]_i_3_n_4 ,\spi_addr_wrap_1_reg[12]_i_3_n_5 ,\spi_addr_wrap_1_reg[12]_i_3_n_6 ,\spi_addr_wrap_1_reg[12]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] (XIP_CLK_DOMAIN_SIGNALS_n_18),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] (XIP_CLK_DOMAIN_SIGNALS_n_17),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] (XIP_CLK_DOMAIN_SIGNALS_n_16),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] (XIP_CLK_DOMAIN_SIGNALS_n_15),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ({\spi_addr_wrap_1_reg[16]_i_3_n_4 ,\spi_addr_wrap_1_reg[16]_i_3_n_5 ,\spi_addr_wrap_1_reg[16]_i_3_n_6 ,\spi_addr_wrap_1_reg[16]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] (XIP_CLK_DOMAIN_SIGNALS_n_14),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] (XIP_CLK_DOMAIN_SIGNALS_n_13),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] (XIP_CLK_DOMAIN_SIGNALS_n_12),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] (XIP_CLK_DOMAIN_SIGNALS_n_11),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 (\size_length_cntr_fixed_reg_n_0_[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ({\spi_addr_wrap_1_reg[20]_i_3_n_4 ,\spi_addr_wrap_1_reg[20]_i_3_n_5 ,\spi_addr_wrap_1_reg[20]_i_3_n_6 ,\spi_addr_wrap_1_reg[20]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] (XIP_CLK_DOMAIN_SIGNALS_n_10),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] (XIP_CLK_DOMAIN_SIGNALS_n_9),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] (XIP_CLK_DOMAIN_SIGNALS_n_8),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 (spi_addr_wrap_1),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] (\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[2]_i_2_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] (XIP_CLK_DOMAIN_SIGNALS_n_23),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ({\spi_addr_wrap_1_reg[8]_i_3_n_4 ,\spi_addr_wrap_1_reg[8]_i_3_n_5 ,\spi_addr_wrap_1_reg[8]_i_3_n_6 ,\spi_addr_wrap_1_reg[8]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] (XIP_CLK_DOMAIN_SIGNALS_n_22),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ),
        .SR(load_axi_data_to_spi_clk),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 (receive_Data_int),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_5_n_0 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ({p_5_in,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] }),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] (XIP_CLK_DOMAIN_SIGNALS_n_43),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_41),
        .S_AXI4_RID_reg(S_AXI4_RID_reg),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg (XIP_CLK_DOMAIN_SIGNALS_n_58),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 (transfer_start),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .cmd_addr_sent(cmd_addr_sent),
        .data1(data1),
        .\dtr_length_reg[4] (\dtr_length[4]_i_2_n_0 ),
        .\dtr_length_reg[5] (\dtr_length[5]_i_2_n_0 ),
        .\dtr_length_reg[6] (s_axi4_rlast_INST_0_i_2_n_0),
        .\dtr_length_reg[7] (s_axi4_rlast_INST_0_i_1_n_0),
        .empty(Rx_FIFO_Empty),
        .ext_spi_clk(ext_spi_clk),
        .hw_wd_cntr(hw_wd_cntr),
        .last_data_acked(last_data_acked),
        .length_cntr(length_cntr),
        .p_0_in1_in({p_0_in1_in[27],p_0_in1_in[25:8]}),
        .p_101_in(p_101_in),
        .p_3_in1_in(p_3_in1_in),
        .p_46_out(p_46_out),
        .p_8_in(p_8_in),
        .prmry_in(one_byte_xfer),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(s_axi4_rresp),
        .s_axi_aclk(s_axi_aclk),
        .sck_o_int(sck_o_int),
        .scndry_out(scndry_out),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_30),
        .\size_length_cntr_fixed_reg[1]_0 (XIP_CLK_DOMAIN_SIGNALS_n_72),
        .\size_length_cntr_fixed_reg[1]_1 (\size_length_cntr_fixed_reg_n_0_[1] ),
        .\size_length_cntr_fixed_reg[1]_2 (\size_length_cntr[1]_i_3_n_0 ),
        .\size_length_cntr_reg[0] (XIP_CLK_DOMAIN_SIGNALS_n_29),
        .\size_length_cntr_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_27),
        .start_after_wrap_d1(start_after_wrap_d1),
        .transfer_start_d2(transfer_start_d2),
        .wrap_around_d10(wrap_around_d10),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d2_reg(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .wrap_around_d2_reg_0(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .wrap_around_d2_reg_1(XIP_CLK_DOMAIN_SIGNALS_n_84),
        .wrap_around_d2_reg_10(XIP_CLK_DOMAIN_SIGNALS_n_93),
        .wrap_around_d2_reg_11(XIP_CLK_DOMAIN_SIGNALS_n_94),
        .wrap_around_d2_reg_12(XIP_CLK_DOMAIN_SIGNALS_n_95),
        .wrap_around_d2_reg_2(XIP_CLK_DOMAIN_SIGNALS_n_85),
        .wrap_around_d2_reg_3(XIP_CLK_DOMAIN_SIGNALS_n_86),
        .wrap_around_d2_reg_4(XIP_CLK_DOMAIN_SIGNALS_n_87),
        .wrap_around_d2_reg_5(XIP_CLK_DOMAIN_SIGNALS_n_88),
        .wrap_around_d2_reg_6(XIP_CLK_DOMAIN_SIGNALS_n_89),
        .wrap_around_d2_reg_7(XIP_CLK_DOMAIN_SIGNALS_n_90),
        .wrap_around_d2_reg_8(XIP_CLK_DOMAIN_SIGNALS_n_91),
        .wrap_around_d2_reg_9(XIP_CLK_DOMAIN_SIGNALS_n_92),
        .wrap_around_d3(wrap_around_d3),
        .wrap_around_reg(XIP_CLK_DOMAIN_SIGNALS_n_38),
        .xip_sm_ns(xip_sm_ns),
        .xip_sm_ps(xip_sm_ps),
        .xip_sm_ps_reg(XIP_CLK_DOMAIN_SIGNALS_n_52));
  TinySoC_axi_quad_spi_0_1_async_fifo_fg XIP_RECEIVE_FIFO_II
       (.E(XIP_RECEIVE_FIFO_II_n_37),
        .Q({p_5_in,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ,\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] }),
        .Rst_to_spi(Rst_to_spi),
        .SPIXfer_done_int(SPIXfer_done_int),
        .\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg (XIP_RECEIVE_FIFO_II_n_36),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .cmd_addr_sent(cmd_addr_sent),
        .\dtr_length_reg[0] (XIP_CLK_DOMAIN_SIGNALS_n_52),
        .empty(Rx_FIFO_Empty),
        .ext_spi_clk(ext_spi_clk),
        .full(full),
        .last_data_acked(last_data_acked),
        .last_data_acked_reg(s_axi4_rlast_INST_0_i_1_n_0),
        .last_data_acked_reg_0(dtr_length[7]),
        .p_101_in(p_101_in),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rvalid(s_axi4_rvalid),
        .size_length_cntr(size_length_cntr),
        .wr_rst_busy(wr_rst_busy));
  FDRE \axi_length_reg[0] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arlen[0]),
        .Q(axi_length[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[1] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arlen[1]),
        .Q(axi_length[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[2] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arlen[2]),
        .Q(axi_length[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[3] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arlen[3]),
        .Q(axi_length[3]),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dtr_length[4]_i_2 
       (.I0(dtr_length[2]),
        .I1(dtr_length[0]),
        .I2(dtr_length[1]),
        .I3(dtr_length[3]),
        .O(\dtr_length[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dtr_length[5]_i_2 
       (.I0(dtr_length[3]),
        .I1(dtr_length[1]),
        .I2(dtr_length[0]),
        .I3(dtr_length[2]),
        .I4(dtr_length[4]),
        .O(\dtr_length[5]_i_2_n_0 ));
  FDRE \dtr_length_reg[0] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[0]),
        .Q(dtr_length[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[1] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[1]),
        .Q(dtr_length[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[2] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[2]),
        .Q(dtr_length[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[3] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[3]),
        .Q(dtr_length[3]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[4] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[4]),
        .Q(dtr_length[4]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[5] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[5]),
        .Q(dtr_length[5]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[6] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[6]),
        .Q(dtr_length[6]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[7] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_37),
        .D(p_1_in[7]),
        .Q(dtr_length[7]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE four_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arsize[1]),
        .Q(four_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE last_data_acked_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(XIP_RECEIVE_FIFO_II_n_36),
        .Q(last_data_acked),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    one_byte_xfer_i_1
       (.I0(s_axi4_arsize[0]),
        .I1(s_axi4_arsize[1]),
        .O(one_byte_xfer_i_1_n_0));
  FDRE one_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(one_byte_xfer_i_1_n_0),
        .Q(one_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  LUT3 #(
    .INIT(8'h01)) 
    s_axi4_rlast_INST_0
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(dtr_length[7]),
        .I2(s_axi4_rlast_INST_0_i_1_n_0),
        .O(s_axi4_rlast));
  LUT2 #(
    .INIT(4'hE)) 
    s_axi4_rlast_INST_0_i_1
       (.I0(s_axi4_rlast_INST_0_i_2_n_0),
        .I1(dtr_length[6]),
        .O(s_axi4_rlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi4_rlast_INST_0_i_2
       (.I0(dtr_length[4]),
        .I1(dtr_length[2]),
        .I2(dtr_length[0]),
        .I3(dtr_length[1]),
        .I4(dtr_length[3]),
        .I5(dtr_length[5]),
        .O(s_axi4_rlast_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \size_length_cntr[1]_i_3 
       (.I0(pr_state_idle),
        .I1(SPIXfer_done_int),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .O(\size_length_cntr[1]_i_3_n_0 ));
  FDRE \size_length_cntr_fixed_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_31),
        .Q(\size_length_cntr_fixed_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \size_length_cntr_fixed_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_30),
        .Q(\size_length_cntr_fixed_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \size_length_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_26),
        .Q(size_length_cntr[0]),
        .R(Rst_to_spi));
  FDRE \size_length_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_27),
        .Q(size_length_cntr[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF80B)) 
    \spi_addr_wrap_1[0]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[10]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_5 ),
        .I1(data4[10]),
        .I2(\spi_addr_wrap_1_reg[12]_i_3_n_6 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[10]),
        .O(\spi_addr_wrap_1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[11]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_4 ),
        .I1(data4[11]),
        .I2(\spi_addr_wrap_1_reg[12]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[11]),
        .O(\spi_addr_wrap_1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[12]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_7 ),
        .I1(data4[12]),
        .I2(\spi_addr_wrap_1_reg[12]_i_3_n_4 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[12]),
        .O(\spi_addr_wrap_1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[13]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_6 ),
        .I1(data4[13]),
        .I2(\spi_addr_wrap_1_reg[16]_i_3_n_7 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[13]),
        .O(\spi_addr_wrap_1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[14]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_5 ),
        .I1(data4[14]),
        .I2(\spi_addr_wrap_1_reg[16]_i_3_n_6 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[14]),
        .O(\spi_addr_wrap_1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[15]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_4 ),
        .I1(data4[15]),
        .I2(\spi_addr_wrap_1_reg[16]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[15]),
        .O(\spi_addr_wrap_1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[16]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_7 ),
        .I1(data4[16]),
        .I2(\spi_addr_wrap_1_reg[16]_i_3_n_4 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[16]),
        .O(\spi_addr_wrap_1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[17]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_6 ),
        .I1(data4[17]),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_7 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[17]),
        .O(\spi_addr_wrap_1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[18]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_5 ),
        .I1(data4[18]),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_6 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[18]),
        .O(\spi_addr_wrap_1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[19]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_4 ),
        .I1(data4[19]),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[19]),
        .O(\spi_addr_wrap_1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \spi_addr_wrap_1[1]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_6 ),
        .I1(p_8_in),
        .I2(data4[1]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[4]_i_3_n_7 ),
        .O(\spi_addr_wrap_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[20]_i_1 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_7 ),
        .I1(data4[20]),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_4 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[20]),
        .O(\spi_addr_wrap_1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[21]_i_1 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_6 ),
        .I1(data4[21]),
        .I2(\spi_addr_wrap_1_reg[23]_i_4_n_7 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[21]),
        .O(\spi_addr_wrap_1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[22]_i_1 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_5 ),
        .I1(data4[22]),
        .I2(\spi_addr_wrap_1_reg[23]_i_4_n_6 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[22]),
        .O(\spi_addr_wrap_1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[23]_i_1 
       (.I0(\spi_addr_wrap_1_reg[23]_i_2_n_4 ),
        .I1(data4[23]),
        .I2(\spi_addr_wrap_1_reg[23]_i_4_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[23]),
        .O(\spi_addr_wrap_1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \spi_addr_wrap_1[2]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I1(\spi_addr_wrap_1_reg[4]_i_3_n_6 ),
        .I2(data4[2]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[3]_i_2_n_5 ),
        .O(\spi_addr_wrap_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \spi_addr_wrap_1[3]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .I1(\spi_addr_wrap_1_reg[4]_i_3_n_5 ),
        .I2(data4[3]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[3]_i_2_n_4 ),
        .O(\spi_addr_wrap_1[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_addr_wrap_1[3]_i_3 
       (.I0(p_8_in),
        .O(\spi_addr_wrap_1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \spi_addr_wrap_1[4]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_7 ),
        .I1(data1[4]),
        .I2(data4[4]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[4]_i_3_n_4 ),
        .O(\spi_addr_wrap_1[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_addr_wrap_1[4]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\spi_addr_wrap_1[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[5]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_6 ),
        .I1(data4[5]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data1[5]),
        .I5(\spi_addr_wrap_1_reg[8]_i_3_n_7 ),
        .O(\spi_addr_wrap_1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[6]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_5 ),
        .I1(data4[6]),
        .I2(\spi_addr_wrap_1_reg[8]_i_3_n_6 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[6]),
        .O(\spi_addr_wrap_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[7]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_4 ),
        .I1(data4[7]),
        .I2(\spi_addr_wrap_1_reg[8]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[7]),
        .O(\spi_addr_wrap_1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[8]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_7 ),
        .I1(data4[8]),
        .I2(\spi_addr_wrap_1_reg[8]_i_3_n_4 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[8]),
        .O(\spi_addr_wrap_1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \spi_addr_wrap_1[9]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_6 ),
        .I1(data4[9]),
        .I2(\spi_addr_wrap_1_reg[12]_i_3_n_7 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(data1[9]),
        .O(\spi_addr_wrap_1[9]_i_1_n_0 ));
  FDRE \spi_addr_wrap_1_reg[0] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[0]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[0]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[10] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[10]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[10]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[11] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[11]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[11]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[11]_i_2 
       (.CI(\spi_addr_wrap_1_reg[7]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[11]_i_2_n_0 ,\spi_addr_wrap_1_reg[11]_i_2_n_1 ,\spi_addr_wrap_1_reg[11]_i_2_n_2 ,\spi_addr_wrap_1_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[11]_i_2_n_4 ,\spi_addr_wrap_1_reg[11]_i_2_n_5 ,\spi_addr_wrap_1_reg[11]_i_2_n_6 ,\spi_addr_wrap_1_reg[11]_i_2_n_7 }),
        .S(data1[11:8]));
  FDRE \spi_addr_wrap_1_reg[12] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[12]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[12]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[12]_i_2 
       (.CI(\spi_addr_wrap_1_reg[8]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[12]_i_2_n_0 ,\spi_addr_wrap_1_reg[12]_i_2_n_1 ,\spi_addr_wrap_1_reg[12]_i_2_n_2 ,\spi_addr_wrap_1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[12:9]),
        .S(data1[12:9]));
  CARRY4 \spi_addr_wrap_1_reg[12]_i_3 
       (.CI(\spi_addr_wrap_1_reg[8]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[12]_i_3_n_0 ,\spi_addr_wrap_1_reg[12]_i_3_n_1 ,\spi_addr_wrap_1_reg[12]_i_3_n_2 ,\spi_addr_wrap_1_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[12]_i_3_n_4 ,\spi_addr_wrap_1_reg[12]_i_3_n_5 ,\spi_addr_wrap_1_reg[12]_i_3_n_6 ,\spi_addr_wrap_1_reg[12]_i_3_n_7 }),
        .S(data1[12:9]));
  FDRE \spi_addr_wrap_1_reg[13] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[13]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[13]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[14] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[14]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[14]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[15] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[15]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[15]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[15]_i_2 
       (.CI(\spi_addr_wrap_1_reg[11]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[15]_i_2_n_0 ,\spi_addr_wrap_1_reg[15]_i_2_n_1 ,\spi_addr_wrap_1_reg[15]_i_2_n_2 ,\spi_addr_wrap_1_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[15]_i_2_n_4 ,\spi_addr_wrap_1_reg[15]_i_2_n_5 ,\spi_addr_wrap_1_reg[15]_i_2_n_6 ,\spi_addr_wrap_1_reg[15]_i_2_n_7 }),
        .S(data1[15:12]));
  FDRE \spi_addr_wrap_1_reg[16] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[16]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[16]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[16]_i_2 
       (.CI(\spi_addr_wrap_1_reg[12]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[16]_i_2_n_0 ,\spi_addr_wrap_1_reg[16]_i_2_n_1 ,\spi_addr_wrap_1_reg[16]_i_2_n_2 ,\spi_addr_wrap_1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[16:13]),
        .S(data1[16:13]));
  CARRY4 \spi_addr_wrap_1_reg[16]_i_3 
       (.CI(\spi_addr_wrap_1_reg[12]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[16]_i_3_n_0 ,\spi_addr_wrap_1_reg[16]_i_3_n_1 ,\spi_addr_wrap_1_reg[16]_i_3_n_2 ,\spi_addr_wrap_1_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[16]_i_3_n_4 ,\spi_addr_wrap_1_reg[16]_i_3_n_5 ,\spi_addr_wrap_1_reg[16]_i_3_n_6 ,\spi_addr_wrap_1_reg[16]_i_3_n_7 }),
        .S(data1[16:13]));
  FDRE \spi_addr_wrap_1_reg[17] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[17]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[17]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[18] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[18]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[18]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[19] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[19]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[19]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[19]_i_2 
       (.CI(\spi_addr_wrap_1_reg[15]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[19]_i_2_n_0 ,\spi_addr_wrap_1_reg[19]_i_2_n_1 ,\spi_addr_wrap_1_reg[19]_i_2_n_2 ,\spi_addr_wrap_1_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[19]_i_2_n_4 ,\spi_addr_wrap_1_reg[19]_i_2_n_5 ,\spi_addr_wrap_1_reg[19]_i_2_n_6 ,\spi_addr_wrap_1_reg[19]_i_2_n_7 }),
        .S(data1[19:16]));
  FDRE \spi_addr_wrap_1_reg[1] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[1]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[1]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[20] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[20]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[20]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[20]_i_2 
       (.CI(\spi_addr_wrap_1_reg[16]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[20]_i_2_n_0 ,\spi_addr_wrap_1_reg[20]_i_2_n_1 ,\spi_addr_wrap_1_reg[20]_i_2_n_2 ,\spi_addr_wrap_1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[20:17]),
        .S(data1[20:17]));
  CARRY4 \spi_addr_wrap_1_reg[20]_i_3 
       (.CI(\spi_addr_wrap_1_reg[16]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[20]_i_3_n_0 ,\spi_addr_wrap_1_reg[20]_i_3_n_1 ,\spi_addr_wrap_1_reg[20]_i_3_n_2 ,\spi_addr_wrap_1_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[20]_i_3_n_4 ,\spi_addr_wrap_1_reg[20]_i_3_n_5 ,\spi_addr_wrap_1_reg[20]_i_3_n_6 ,\spi_addr_wrap_1_reg[20]_i_3_n_7 }),
        .S(data1[20:17]));
  FDRE \spi_addr_wrap_1_reg[21] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[21]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[21]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[22] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[22]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[22]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[23] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[23]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[23]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[23]_i_2 
       (.CI(\spi_addr_wrap_1_reg[19]_i_2_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED [3],\spi_addr_wrap_1_reg[23]_i_2_n_1 ,\spi_addr_wrap_1_reg[23]_i_2_n_2 ,\spi_addr_wrap_1_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[23]_i_2_n_4 ,\spi_addr_wrap_1_reg[23]_i_2_n_5 ,\spi_addr_wrap_1_reg[23]_i_2_n_6 ,\spi_addr_wrap_1_reg[23]_i_2_n_7 }),
        .S(data1[23:20]));
  CARRY4 \spi_addr_wrap_1_reg[23]_i_3 
       (.CI(\spi_addr_wrap_1_reg[20]_i_2_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED [3:2],\spi_addr_wrap_1_reg[23]_i_3_n_2 ,\spi_addr_wrap_1_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED [3],data4[23:21]}),
        .S({1'b0,data1[23:21]}));
  CARRY4 \spi_addr_wrap_1_reg[23]_i_4 
       (.CI(\spi_addr_wrap_1_reg[20]_i_3_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED [3:2],\spi_addr_wrap_1_reg[23]_i_4_n_2 ,\spi_addr_wrap_1_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_addr_wrap_1_reg[23]_i_4_O_UNCONNECTED [3],\spi_addr_wrap_1_reg[23]_i_4_n_5 ,\spi_addr_wrap_1_reg[23]_i_4_n_6 ,\spi_addr_wrap_1_reg[23]_i_4_n_7 }),
        .S({1'b0,data1[23:21]}));
  FDRE \spi_addr_wrap_1_reg[2] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[2]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[2]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[3] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[3]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[3]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[3]_i_2_n_0 ,\spi_addr_wrap_1_reg[3]_i_2_n_1 ,\spi_addr_wrap_1_reg[3]_i_2_n_2 ,\spi_addr_wrap_1_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_8_in,1'b0}),
        .O({\spi_addr_wrap_1_reg[3]_i_2_n_4 ,\spi_addr_wrap_1_reg[3]_i_2_n_5 ,\spi_addr_wrap_1_reg[3]_i_2_n_6 ,\spi_addr_wrap_1_reg[3]_i_2_n_7 }),
        .S({\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,\spi_addr_wrap_1[3]_i_3_n_0 ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] }));
  FDRE \spi_addr_wrap_1_reg[4] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[4]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[4]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[4]_i_2_n_0 ,\spi_addr_wrap_1_reg[4]_i_2_n_1 ,\spi_addr_wrap_1_reg[4]_i_2_n_2 ,\spi_addr_wrap_1_reg[4]_i_2_n_3 }),
        .CYINIT(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[4:1]),
        .S({data1[4],\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,p_8_in}));
  CARRY4 \spi_addr_wrap_1_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[4]_i_3_n_0 ,\spi_addr_wrap_1_reg[4]_i_3_n_1 ,\spi_addr_wrap_1_reg[4]_i_3_n_2 ,\spi_addr_wrap_1_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,1'b0}),
        .O({\spi_addr_wrap_1_reg[4]_i_3_n_4 ,\spi_addr_wrap_1_reg[4]_i_3_n_5 ,\spi_addr_wrap_1_reg[4]_i_3_n_6 ,\spi_addr_wrap_1_reg[4]_i_3_n_7 }),
        .S({data1[4],\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\spi_addr_wrap_1[4]_i_4_n_0 ,p_8_in}));
  FDRE \spi_addr_wrap_1_reg[5] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[5]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[5]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[6] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[6]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[6]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[7] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[7]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[7]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[7]_i_2 
       (.CI(\spi_addr_wrap_1_reg[3]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[7]_i_2_n_0 ,\spi_addr_wrap_1_reg[7]_i_2_n_1 ,\spi_addr_wrap_1_reg[7]_i_2_n_2 ,\spi_addr_wrap_1_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[7]_i_2_n_4 ,\spi_addr_wrap_1_reg[7]_i_2_n_5 ,\spi_addr_wrap_1_reg[7]_i_2_n_6 ,\spi_addr_wrap_1_reg[7]_i_2_n_7 }),
        .S(data1[7:4]));
  FDRE \spi_addr_wrap_1_reg[8] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[8]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[8]),
        .R(Rst_to_spi));
  CARRY4 \spi_addr_wrap_1_reg[8]_i_2 
       (.CI(\spi_addr_wrap_1_reg[4]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[8]_i_2_n_0 ,\spi_addr_wrap_1_reg[8]_i_2_n_1 ,\spi_addr_wrap_1_reg[8]_i_2_n_2 ,\spi_addr_wrap_1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[8:5]),
        .S(data1[8:5]));
  CARRY4 \spi_addr_wrap_1_reg[8]_i_3 
       (.CI(\spi_addr_wrap_1_reg[4]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[8]_i_3_n_0 ,\spi_addr_wrap_1_reg[8]_i_3_n_1 ,\spi_addr_wrap_1_reg[8]_i_3_n_2 ,\spi_addr_wrap_1_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[8]_i_3_n_4 ,\spi_addr_wrap_1_reg[8]_i_3_n_5 ,\spi_addr_wrap_1_reg[8]_i_3_n_6 ,\spi_addr_wrap_1_reg[8]_i_3_n_7 }),
        .S(data1[8:5]));
  FDRE \spi_addr_wrap_1_reg[9] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[9]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[9]),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h04)) 
    start_after_wrap_d1_i_1
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d1),
        .O(start_after_wrap));
  FDRE start_after_wrap_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(start_after_wrap),
        .Q(start_after_wrap_d1),
        .R(Rst_to_spi));
  FDRE transfer_start_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start),
        .Q(transfer_start_d1),
        .R(wrap_around_d10));
  FDRE transfer_start_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_d1),
        .Q(transfer_start_d2),
        .R(wrap_around_d10));
  FDRE two_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arsize[0]),
        .Q(two_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE type_of_burst_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arburst[1]),
        .Q(type_of_burst),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE wrap_around_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_reg_n_0),
        .Q(wrap_around_d1),
        .R(wrap_around_d10));
  FDRE wrap_around_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_d1),
        .Q(wrap_around_d2),
        .R(wrap_around_d10));
  FDRE wrap_around_d3_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_d2),
        .Q(wrap_around_d3),
        .R(wrap_around_d10));
  FDRE wrap_around_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_4),
        .Q(wrap_around_reg_n_0),
        .R(1'b0));
  FDRE xip_sm_ps_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(xip_sm_ns),
        .Q(xip_sm_ps),
        .R(bus2ip_reset_ipif4_inverted));
endmodule

(* Async_Clk = "1" *) (* C_DUAL_QUAD_MODE = "0" *) (* C_FAMILY = "artix7" *) 
(* C_FIFO_DEPTH = "16" *) (* C_INSTANCE = "axi_quad_spi_inst" *) (* C_LSB_STUP = "0" *) 
(* C_NUM_SS_BITS = "1" *) (* C_NUM_TRANSFER_BITS = "8" *) (* C_SCK_RATIO = "2" *) 
(* C_SELECT_XPM = "1" *) (* C_SHARED_STARTUP = "0" *) (* C_SPI_MEMORY = "3" *) 
(* C_SPI_MEM_ADDR_BITS = "24" *) (* C_SPI_MODE = "0" *) (* C_SUB_FAMILY = "artix7" *) 
(* C_S_AXI4_ADDR_WIDTH = "24" *) (* C_S_AXI4_BASEADDR = "436207616" *) (* C_S_AXI4_DATA_WIDTH = "32" *) 
(* C_S_AXI4_HIGHADDR = "452984831" *) (* C_S_AXI4_ID_WIDTH = "1" *) (* C_S_AXI_ADDR_WIDTH = "7" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TYPE_OF_AXI4_INTERFACE = "1" *) (* C_UC_FAMILY = "0" *) 
(* C_USE_STARTUP = "1" *) (* C_USE_STARTUP_EXT = "0" *) (* C_XIP_MODE = "1" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module TinySoC_axi_quad_spi_0_1_axi_quad_spi
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    io0_1_i,
    io0_1_o,
    io0_1_t,
    io1_1_i,
    io1_1_o,
    io1_1_t,
    io2_1_i,
    io2_1_o,
    io2_1_t,
    io3_1_i,
    io3_1_o,
    io3_1_t,
    spisel,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ss_1_i,
    ss_1_o,
    ss_1_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    pack,
    ip2intc_irpt);
  input ext_spi_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input io2_i;
  output io2_o;
  output io2_t;
  input io3_i;
  output io3_o;
  output io3_t;
  input io0_1_i;
  output io0_1_o;
  output io0_1_t;
  input io1_1_i;
  output io1_1_o;
  output io1_1_t;
  input io2_1_i;
  output io2_1_o;
  output io2_1_t;
  input io3_1_i;
  output io3_1_o;
  output io3_1_t;
  (* initialval = "VCC" *) input spisel;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  input ss_1_i;
  output ss_1_o;
  output ss_1_t;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input pack;
  output ip2intc_irpt;

  wire \<const0> ;
  wire \<const1> ;
  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire ext_spi_clk;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_t;
  wire preq;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire s_axi4_aresetn;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire [2:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [1:1]\^s_axi4_rresp ;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [4:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sck_t;
  wire spisel;
  wire [0:0]ss_o;
  wire ss_t;

  assign io0_1_o = \<const0> ;
  assign io0_1_t = \<const0> ;
  assign io1_1_o = \<const0> ;
  assign io1_1_t = \<const0> ;
  assign io1_o = \<const0> ;
  assign io2_1_o = \<const0> ;
  assign io2_1_t = \<const0> ;
  assign io2_o = \<const0> ;
  assign io2_t = \<const1> ;
  assign io3_1_o = \<const0> ;
  assign io3_1_t = \<const0> ;
  assign io3_o = \<const0> ;
  assign io3_t = \<const1> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bid[0] = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rresp[1] = \^s_axi4_rresp [1];
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_wready = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4:0] = \^s_axi_rdata [4:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign sck_o = \<const0> ;
  assign ss_1_o = \<const0> ;
  assign ss_1_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  TinySoC_axi_quad_spi_0_1_axi_quad_spi_top \NO_DUAL_QUAD_MODE.QSPI_NORMAL 
       (.\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 (s_axi_arready),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 (s_axi_wready),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_i(io1_i),
        .io1_t(io1_t),
        .preq(preq),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize(s_axi4_arsize[1:0]),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(\^s_axi4_rresp ),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[1:0]),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_t(sck_t),
        .spisel(spisel),
        .ss_o(ss_o),
        .ss_t(ss_t));
  VCC VCC
       (.P(\<const1> ));
endmodule

module TinySoC_axi_quad_spi_0_1_axi_quad_spi_top
   (s_axi4_rdata,
    s_axi4_rresp,
    ss_t,
    sck_t,
    io0_t,
    io1_t,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rvalid,
    s_axi4_rlast,
    io0_o,
    ss_o,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    s_axi_rdata,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ,
    s_axi_bvalid_i_reg,
    s_axi_rvalid_i_reg,
    s_axi4_arsize,
    s_axi_aclk,
    ext_spi_clk,
    s_axi4_aclk,
    spisel,
    s_axi4_araddr,
    s_axi4_arburst,
    s_axi4_arlen,
    s_axi4_rready,
    s_axi4_arid,
    s_axi4_arvalid,
    io1_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi4_aresetn,
    s_axi_araddr,
    s_axi_awaddr);
  output [31:0]s_axi4_rdata;
  output [0:0]s_axi4_rresp;
  output ss_t;
  output sck_t;
  output io0_t;
  output io1_t;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output s_axi4_rvalid;
  output s_axi4_rlast;
  output io0_o;
  output [0:0]ss_o;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  output [4:0]s_axi_rdata;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ;
  output s_axi_bvalid_i_reg;
  output s_axi_rvalid_i_reg;
  input [1:0]s_axi4_arsize;
  input s_axi_aclk;
  input ext_spi_clk;
  input s_axi4_aclk;
  input spisel;
  input [23:0]s_axi4_araddr;
  input [1:0]s_axi4_arburst;
  input [7:0]s_axi4_arlen;
  input s_axi4_rready;
  input [0:0]s_axi4_arid;
  input s_axi4_arvalid;
  input io1_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [1:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi4_aresetn;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;

  wire [4:2]IP2Bus_XIPSR_Data_int;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg ;
  wire \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ;
  wire Rst_to_spi_int;
  wire Rx_FIFO_Empty_Synced_in_SPI_domain;
  wire Rx_FIFO_Full;
  wire SCK_O_int;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ;
  wire \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ;
  wire TO_XIPSR_AXI_TR_ERR_int;
  wire TO_XIPSR_CPHA_CPOL_ERR_int;
  wire TO_XIPSR_axi_rx_empty_int;
  wire TO_XIPSR_axi_rx_full_int;
  wire TO_XIPSR_mst_modf_err_int;
  wire [0:0]Transmit_Data;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_16 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_48 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_59 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_63 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_64 ;
  wire \XIP_MODE_GEN.XIP_SR_I_n_0 ;
  wire \XIP_MODE_GEN.XIP_SR_I_n_4 ;
  wire \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ;
  wire \XIP_RECEIVE_FIFO_II/full ;
  wire \XIP_RECEIVE_FIFO_II/wr_rst_busy ;
  wire XIP_trans_error_d2;
  wire XIP_trans_error_d3;
  wire bus2ip_reset_ipif4_inverted;
  wire bus2ip_reset_ipif_inverted;
  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire ext_spi_clk;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_i_sync;
  wire io1_t;
  wire ip2Bus_RdAck_core_reg_d3;
  wire [4:0]ip2bus_data_int;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_rdack_core_reg_d2;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg_d1;
  wire new_tr;
  wire p_0_out;
  wire p_1_in;
  wire p_1_out;
  wire p_2_in;
  wire p_3_in;
  wire p_3_out;
  wire p_3_out4_out;
  wire preq;
  wire rx_shft_reg_mode_0011;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire s_axi4_aresetn;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire [1:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [0:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [4:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [1:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sck_d2;
  wire sck_t;
  wire spisel;
  wire [0:0]ss_o;
  wire ss_t;
  wire transfer_start;

  LUT3 #(
    .INIT(8'h0E)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(\XIP_RECEIVE_FIFO_II/wr_rst_busy ),
        .I1(\XIP_RECEIVE_FIFO_II/full ),
        .I2(Rx_FIFO_Empty_Synced_in_SPI_domain),
        .O(Rx_FIFO_Full));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO1_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io1_i),
        .Q(io1_i_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAFCFCF00A0C0C0)) 
    \RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_59 ),
        .I1(Transmit_Data),
        .I2(transfer_start),
        .I3(\RATIO_OF_2_GENERATE.Count_reg ),
        .I4(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_64 ),
        .I5(io0_o),
        .O(\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_1 
       (.I0(sck_d2),
        .O(rx_shft_reg_mode_0011));
  LUT4 #(
    .INIT(16'h9990)) 
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1 
       (.I0(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ),
        .I1(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ),
        .I2(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_63 ),
        .I3(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_48 ),
        .O(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F66)) 
    \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1 
       (.I0(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ),
        .I1(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ),
        .I2(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_63 ),
        .I3(new_tr),
        .O(\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \XIPSR_data_int[4]_i_2 
       (.I0(XIP_trans_error_d3),
        .I1(XIP_trans_error_d2),
        .O(TO_XIPSR_AXI_TR_ERR_int));
  TinySoC_axi_quad_spi_0_1_axi_lite_ipif \XIP_MODE_GEN.AXI_LITE_IPIF_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({IP2Bus_XIPSR_Data_int,\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 ,\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_16 }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q({\XIP_MODE_GEN.XIP_SR_I_n_0 ,p_3_in,p_2_in,p_1_in,\XIP_MODE_GEN.XIP_SR_I_n_4 }),
        .SR(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_3_out4_out(p_3_out4_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[4] (ip2bus_data_int),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
  TinySoC_axi_quad_spi_0_1_axi_qspi_xip_if \XIP_MODE_GEN.AXI_QSPI_XIP_I 
       (.D({TO_XIPSR_mst_modf_err_int,TO_XIPSR_axi_rx_full_int,TO_XIPSR_axi_rx_empty_int}),
        .E(rx_shft_reg_mode_0011),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (TO_XIPSR_CPHA_CPOL_ERR_int),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 (Rx_FIFO_Empty_Synced_in_SPI_domain),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 (\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (XIP_trans_error_d2),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_63 ),
        .Q(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_59 ),
        .\RATIO_OF_2_GENERATE.Count_reg[0]_0 (\RATIO_OF_2_GENERATE.Count_reg ),
        .\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 (\RATIO_OF_2_GENERATE.QSPI_SP_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ),
        .\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]_0 (io1_i_sync),
        .Rst_to_spi(Rst_to_spi_int),
        .SCK_O_int(SCK_O_int),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]_0 (Transmit_Data),
        .SPIXfer_done_int_d1_reg_0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_64 ),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_48 ),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 (\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ),
        .\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 (\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .XIP_trans_error_d3(XIP_trans_error_d3),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .ext_spi_clk(ext_spi_clk),
        .full(\XIP_RECEIVE_FIFO_II/full ),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_t(io1_t),
        .load_axi_data_cdc_to_spi_d3(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ),
        .load_cmd_cdc_from_axi_d3(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ),
        .new_tr(new_tr),
        .prmry_in(Rx_FIFO_Full),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize(s_axi4_arsize),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(s_axi4_rresp),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .sck_d2(sck_d2),
        .sck_t(sck_t),
        .scndry_out(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ),
        .spisel(spisel),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .transfer_start(transfer_start),
        .wr_rst_busy(\XIP_RECEIVE_FIFO_II/wr_rst_busy ));
  TinySoC_axi_quad_spi_0_1_reset_sync_module \XIP_MODE_GEN.RESET_SYNC_AXI_SPI_CLK_INST 
       (.Rst_to_spi(Rst_to_spi_int),
        .Soft_Reset_frm_axi(bus2ip_reset_ipif4_inverted),
        .ext_spi_clk(ext_spi_clk));
  TinySoC_axi_quad_spi_0_1_qspi_startup_block \XIP_MODE_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I 
       (.SCK_O_int(SCK_O_int),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .eos(eos),
        .preq(preq));
  TinySoC_axi_quad_spi_0_1_xip_cntrl_reg \XIP_MODE_GEN.XIP_CR_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(TO_XIPSR_CPHA_CPOL_ERR_int),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  TinySoC_axi_quad_spi_0_1_xip_status_reg \XIP_MODE_GEN.XIP_SR_I 
       (.D({TO_XIPSR_AXI_TR_ERR_int,TO_XIPSR_CPHA_CPOL_ERR_int,TO_XIPSR_mst_modf_err_int,TO_XIPSR_axi_rx_full_int,TO_XIPSR_axi_rx_empty_int}),
        .Q({\XIP_MODE_GEN.XIP_SR_I_n_0 ,p_3_in,p_2_in,p_1_in,\XIP_MODE_GEN.XIP_SR_I_n_4 }),
        .SR(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ),
        .s_axi_aclk(s_axi_aclk));
  LUT1 #(
    .INIT(2'h1)) 
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1 
       (.I0(s_axi4_aresetn),
        .O(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ));
  FDRE \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ),
        .Q(bus2ip_reset_ipif4_inverted),
        .R(1'b0));
  FDRE \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_core_reg_d2),
        .Q(ip2Bus_RdAck_core_reg_d3),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_16 ),
        .Q(ip2bus_data_int[0]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 ),
        .Q(ip2bus_data_int[1]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(IP2Bus_XIPSR_Data_int[2]),
        .Q(ip2bus_data_int[2]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(IP2Bus_XIPSR_Data_int[3]),
        .Q(ip2bus_data_int[3]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(IP2Bus_XIPSR_Data_int[4]),
        .Q(ip2bus_data_int[4]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(ip2bus_rdack_core_reg_d1),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(ip2bus_rdack_core_reg_d2),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(ip2bus_wrack_core_reg_d1),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out4_out),
        .Q(ip2bus_wrack_core_reg),
        .R(bus2ip_reset_ipif_inverted));
endmodule

module TinySoC_axi_quad_spi_0_1_cdc_sync
   (D,
    empty,
    s_axi_aclk);
  output [0:0]D;
  input empty;
  input s_axi_aclk;

  wire [0:0]D;
  wire empty;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(D),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync_1
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ,
    empty,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  input empty;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  wire empty;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(empty),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    s_axi4_aclk);
  output scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input s_axi4_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire s_axi4_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_0
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    prmry_in,
    s_axi_aclk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input prmry_in;
  input s_axi_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_22
   (D,
    xip_sm_ps_reg,
    xip_sm_ns,
    s_axi4_rid,
    p_0_out,
    E,
    p_1_out,
    s_axi4_rresp,
    \dtr_length_reg[7] ,
    s_axi4_arlen,
    \dtr_length_reg[4] ,
    \dtr_length_reg[5] ,
    \dtr_length_reg[6] ,
    \dtr_length_reg[7]_0 ,
    xip_sm_ps,
    last_data_acked,
    s_axi4_rready,
    S_AXI4_RID_reg,
    s_axi4_arid,
    prmry_in,
    \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg ,
    s_axi4_arvalid,
    \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ,
    empty,
    s_axi4_arburst,
    scndry_out,
    \s_axi4_rid[0]_INST_0_i_1_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    s_axi4_aclk);
  output [7:0]D;
  output xip_sm_ps_reg;
  output xip_sm_ns;
  output [0:0]s_axi4_rid;
  output p_0_out;
  output [0:0]E;
  output p_1_out;
  output [0:0]s_axi4_rresp;
  input [7:0]\dtr_length_reg[7] ;
  input [7:0]s_axi4_arlen;
  input \dtr_length_reg[4] ;
  input \dtr_length_reg[5] ;
  input \dtr_length_reg[6] ;
  input \dtr_length_reg[7]_0 ;
  input xip_sm_ps;
  input last_data_acked;
  input s_axi4_rready;
  input S_AXI4_RID_reg;
  input [0:0]s_axi4_arid;
  input prmry_in;
  input \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg ;
  input s_axi4_arvalid;
  input \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ;
  input empty;
  input [1:0]s_axi4_arburst;
  input scndry_out;
  input \s_axi4_rid[0]_INST_0_i_1_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input s_axi4_aclk;

  wire [7:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg ;
  wire \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ;
  wire S_AXI4_RID_reg;
  wire \dtr_length_reg[4] ;
  wire \dtr_length_reg[5] ;
  wire \dtr_length_reg[6] ;
  wire [7:0]\dtr_length_reg[7] ;
  wire \dtr_length_reg[7]_0 ;
  wire empty;
  wire last_data_acked;
  wire p_0_out;
  wire p_1_out;
  wire prmry_in;
  wire s_axi4_aclk;
  wire [1:0]s_axi4_arburst;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire \s_axi4_rid[0]_INST_0_i_1_0 ;
  wire \s_axi4_rid[0]_INST_0_i_2_n_0 ;
  wire s_axi4_rready;
  wire [0:0]s_axi4_rresp;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire xip_sm_ns;
  wire xip_sm_ps;
  wire xip_sm_ps_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_axi4_rresp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \LOGIC_GENERATION_CDC.ld_axi_data_cdc_from_axi_int_2_i_1 
       (.I0(xip_sm_ps_reg),
        .I1(prmry_in),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_i_1 
       (.I0(xip_sm_ps_reg),
        .I1(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg ),
        .O(p_1_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI4_ARREADY_i_1
       (.I0(xip_sm_ps_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \dtr_length[0]_i_1 
       (.I0(\dtr_length_reg[7] [0]),
        .I1(xip_sm_ps_reg),
        .I2(s_axi4_arlen[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hC3AA)) 
    \dtr_length[1]_i_1 
       (.I0(s_axi4_arlen[1]),
        .I1(\dtr_length_reg[7] [0]),
        .I2(\dtr_length_reg[7] [1]),
        .I3(xip_sm_ps_reg),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEE2222E)) 
    \dtr_length[2]_i_1 
       (.I0(s_axi4_arlen[2]),
        .I1(xip_sm_ps_reg),
        .I2(\dtr_length_reg[7] [1]),
        .I3(\dtr_length_reg[7] [0]),
        .I4(\dtr_length_reg[7] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEEEEEEE22222222E)) 
    \dtr_length[3]_i_1 
       (.I0(s_axi4_arlen[3]),
        .I1(xip_sm_ps_reg),
        .I2(\dtr_length_reg[7] [2]),
        .I3(\dtr_length_reg[7] [0]),
        .I4(\dtr_length_reg[7] [1]),
        .I5(\dtr_length_reg[7] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \dtr_length[4]_i_1 
       (.I0(s_axi4_arlen[4]),
        .I1(xip_sm_ps_reg),
        .I2(\dtr_length_reg[4] ),
        .I3(\dtr_length_reg[7] [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hE22E)) 
    \dtr_length[5]_i_1 
       (.I0(s_axi4_arlen[5]),
        .I1(xip_sm_ps_reg),
        .I2(\dtr_length_reg[5] ),
        .I3(\dtr_length_reg[7] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hC3AA)) 
    \dtr_length[6]_i_1 
       (.I0(s_axi4_arlen[6]),
        .I1(\dtr_length_reg[6] ),
        .I2(\dtr_length_reg[7] [6]),
        .I3(xip_sm_ps_reg),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hCA3A)) 
    \dtr_length[7]_i_2 
       (.I0(s_axi4_arlen[7]),
        .I1(\dtr_length_reg[7]_0 ),
        .I2(xip_sm_ps_reg),
        .I3(\dtr_length_reg[7] [7]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi4_rid[0]_INST_0 
       (.I0(S_AXI4_RID_reg),
        .I1(xip_sm_ps_reg),
        .I2(s_axi4_arid),
        .O(s_axi4_rid));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \s_axi4_rid[0]_INST_0_i_1 
       (.I0(\s_axi4_rid[0]_INST_0_i_2_n_0 ),
        .I1(xip_sm_ps),
        .I2(s_axi4_arvalid),
        .I3(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ),
        .I4(empty),
        .O(xip_sm_ps_reg));
  LUT5 #(
    .INIT(32'hFFFFF1FF)) 
    \s_axi4_rid[0]_INST_0_i_2 
       (.I0(s_axi4_arburst[0]),
        .I1(s_axi4_arburst[1]),
        .I2(s_axi4_rresp),
        .I3(scndry_out),
        .I4(\s_axi4_rid[0]_INST_0_i_1_0 ),
        .O(\s_axi4_rid[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AFF)) 
    xip_sm_ps_i_1
       (.I0(xip_sm_ps),
        .I1(last_data_acked),
        .I2(s_axi4_rready),
        .I3(xip_sm_ps_reg),
        .O(xip_sm_ns));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_23
   (prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    SPISEL_sync,
    s_axi_aclk);
  output prmry_in;
  output [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input SPISEL_sync;
  input s_axi_aclk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire SPISEL_sync;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(SPISEL_sync),
        .O(prmry_in));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_24
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    s_axi4_aclk);
  output scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input s_axi4_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire s_axi4_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_25
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    s_axi_aclk);
  output [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input s_axi_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_52
   (scndry_out,
    s_axi4_aclk);
  output scndry_out;
  input s_axi4_aclk;

  wire s_axi4_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ,
    \size_length_cntr_fixed_reg[0] ,
    \spi_addr_wrap_1_reg[2] ,
    \spi_addr_wrap_1_reg[3] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ,
    p_101_in,
    scndry_out,
    wrap_around_reg,
    wrap_around_reg_0,
    Rst_to_spi,
    axi_length_to_spi_clk,
    wrap_around_reg_1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_1 ,
    data1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ,
    wrap_around_reg_2,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_3 ,
    wrap_around_reg_3,
    wrap_around_reg_4,
    wrap_around_reg_5,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 ,
    p_8_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_3 ,
    wrap_around_i_2_0,
    wrap_around_i_2_1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  output \size_length_cntr_fixed_reg[0] ;
  output \spi_addr_wrap_1_reg[2] ;
  output \spi_addr_wrap_1_reg[3] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  input p_101_in;
  input scndry_out;
  input wrap_around_reg;
  input wrap_around_reg_0;
  input Rst_to_spi;
  input [2:0]axi_length_to_spi_clk;
  input wrap_around_reg_1;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_1 ;
  input [1:0]data1;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  input wrap_around_reg_2;
  input [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_3 ;
  input wrap_around_reg_3;
  input wrap_around_reg_4;
  input wrap_around_reg_5;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 ;
  input p_8_in;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ;
  input [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_3 ;
  input wrap_around_i_2_0;
  input wrap_around_i_2_1;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  wire Rst_to_spi;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  wire [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_3 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_1 ;
  wire [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_3 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  wire [2:0]axi_length_to_spi_clk;
  wire [1:0]data1;
  wire ext_spi_clk;
  wire p_101_in;
  wire p_8_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire \size_length_cntr_fixed_reg[0] ;
  wire \spi_addr_wrap_1_reg[2] ;
  wire \spi_addr_wrap_1_reg[3] ;
  wire wrap_around_i_2_0;
  wire wrap_around_i_2_1;
  wire wrap_around_i_2_n_0;
  wire wrap_around_i_3_n_0;
  wire wrap_around_i_6_n_0;
  wire wrap_around_reg;
  wire wrap_around_reg_0;
  wire wrap_around_reg_1;
  wire wrap_around_reg_2;
  wire wrap_around_reg_3;
  wire wrap_around_reg_4;
  wire wrap_around_reg_5;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3AAA35553A0035F5)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [0]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I4(p_8_in),
        .I5(axi_length_to_spi_clk[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ),
        .O(\spi_addr_wrap_1_reg[2] ));
  LUT6 #(
    .INIT(64'h0903F9F399919991)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6 
       (.I0(p_8_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I3(axi_length_to_spi_clk[0]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 [0]),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA82A082AA8880888)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF999F9F9)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I4(axi_length_to_spi_clk[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF0000EEFEEEFE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 [1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\spi_addr_wrap_1_reg[3] ));
  LUT6 #(
    .INIT(64'hA82A082AA8880888)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 [1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_3 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0451AEFB00FB00FB)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(axi_length_to_spi_clk[2]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [2]),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCFAAAACCC0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_1 ),
        .I5(data1[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAAEAAAE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_3 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 [2]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0888088008880800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I2(wrap_around_reg_2),
        .I3(wrap_around_reg_1),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I5(axi_length_to_spi_clk[2]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00020202AAAAAAAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4 
       (.I0(data1[0]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(wrap_around_reg_1),
        .I3(axi_length_to_spi_clk[2]),
        .I4(wrap_around_reg_2),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5555557F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [3]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(wrap_around_reg_1),
        .I4(wrap_around_reg_2),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000802AAAAA802A)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7 
       (.I0(wrap_around_reg_1),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I3(data1[0]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0008FFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(scndry_out),
        .I2(axi_length_to_spi_clk[1]),
        .I3(axi_length_to_spi_clk[2]),
        .I4(wrap_around_reg_1),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A200000000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .I1(wrap_around_reg_2),
        .I2(wrap_around_reg_1),
        .I3(axi_length_to_spi_clk[2]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .O(\size_length_cntr_fixed_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000888888D8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ),
        .I2(axi_length_to_spi_clk[2]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ),
        .I4(data1[1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(scndry_out),
        .I2(axi_length_to_spi_clk[1]),
        .I3(axi_length_to_spi_clk[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(scndry_out),
        .I2(axi_length_to_spi_clk[1]),
        .I3(axi_length_to_spi_clk[2]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ));
  LUT6 #(
    .INIT(64'h00000000FF2F0020)) 
    wrap_around_i_1
       (.I0(p_101_in),
        .I1(wrap_around_i_2_n_0),
        .I2(scndry_out),
        .I3(wrap_around_reg),
        .I4(wrap_around_reg_0),
        .I5(Rst_to_spi),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FE)) 
    wrap_around_i_2
       (.I0(wrap_around_reg_1),
        .I1(wrap_around_reg_2),
        .I2(wrap_around_i_3_n_0),
        .I3(wrap_around_reg_3),
        .I4(wrap_around_reg_4),
        .I5(wrap_around_reg_5),
        .O(wrap_around_i_2_n_0));
  LUT6 #(
    .INIT(64'h15FFFFFF00FF00FF)) 
    wrap_around_i_3
       (.I0(wrap_around_i_6_n_0),
        .I1(wrap_around_i_2_0),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I3(p_8_in),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 ),
        .I5(wrap_around_i_2_1),
        .O(wrap_around_i_3_n_0));
  LUT6 #(
    .INIT(64'h00800080FFFF0080)) 
    wrap_around_i_6
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I2(axi_length_to_spi_clk[2]),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(axi_length_to_spi_clk[0]),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .O(wrap_around_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_10
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    scndry_out,
    \RATIO_OF_2_GENERATE.Count_reg[0] ,
    transfer_start_d2,
    \RATIO_OF_2_GENERATE.Count_reg[0]_0 ,
    XIPCR_0_CPHA_int,
    ext_spi_clk);
  output [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output scndry_out;
  input \RATIO_OF_2_GENERATE.Count_reg[0] ;
  input transfer_start_d2;
  input [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  input XIPCR_0_CPHA_int;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \RATIO_OF_2_GENERATE.Count_reg[0] ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  wire XIPCR_0_CPHA_int;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire transfer_start_d2;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIPCR_0_CPHA_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00F7)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_2 
       (.I0(scndry_out),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0] ),
        .I2(transfer_start_d2),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_11
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    scndry_out,
    SPIXfer_done_int,
    \RATIO_OF_2_GENERATE.sck_o_int_reg ,
    \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ,
    \RATIO_OF_2_GENERATE.sck_o_int_reg_1 ,
    sck_o_int,
    \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ,
    Rst_to_spi,
    \RATIO_OF_2_GENERATE.sck_o_int_reg_2 ,
    Q,
    XIPCR_1_CPOL_int,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input scndry_out;
  input SPIXfer_done_int;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg_1 ;
  input sck_o_int;
  input \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ;
  input Rst_to_spi;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg_2 ;
  input [0:0]Q;
  input XIPCR_1_CPOL_int;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire [0:0]Q;
  wire \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg_1 ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg_2 ;
  wire Rst_to_spi;
  wire SPIXfer_done_int;
  wire Sync_Set;
  wire XIPCR_1_CPOL_int;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire sck_o_int;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIPCR_1_CPOL_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ),
        .I2(sck_o_int),
        .I3(Q),
        .I4(Rst_to_spi),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  LUT6 #(
    .INIT(64'h000000006F66666F)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_1 
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I2(SPIXfer_done_int),
        .I3(\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .I4(\RATIO_OF_2_GENERATE.sck_o_int_reg_0 ),
        .I5(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEABFFFFFFFF)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_2 
       (.I0(\RATIO_OF_2_GENERATE.sck_o_int_reg_1 ),
        .I1(sck_o_int),
        .I2(Sync_Set),
        .I3(\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ),
        .I4(Rst_to_spi),
        .I5(\RATIO_OF_2_GENERATE.sck_o_int_reg_2 ),
        .O(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66660660)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_3 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(scndry_out),
        .I2(\RATIO_OF_2_GENERATE.sck_o_int_reg_0 ),
        .I3(\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .I4(SPIXfer_done_int),
        .O(Sync_Set));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_12
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_13
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_14
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_15
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_16
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_17
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_18
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_19
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_20
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    scndry_out,
    RESET_SYNC_AX2S_2,
    SPIXfer_done_int_pulse_d2_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    size_length_cntr,
    SPIXfer_done_int,
    Q,
    \size_length_cntr_fixed_reg[0] ,
    Rst_to_spi,
    SPIXfer_done_int_pulse_d2,
    cmd_addr_sent,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_0 ,
    p_3_in1_in,
    hw_wd_cntr,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output scndry_out;
  output RESET_SYNC_AX2S_2;
  output [0:0]SPIXfer_done_int_pulse_d2_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input [1:0]size_length_cntr;
  input SPIXfer_done_int;
  input [0:0]Q;
  input \size_length_cntr_fixed_reg[0] ;
  input Rst_to_spi;
  input SPIXfer_done_int_pulse_d2;
  input cmd_addr_sent;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_0 ;
  input p_3_in1_in;
  input [1:0]hw_wd_cntr;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire [0:0]Q;
  wire RESET_SYNC_AX2S_2;
  wire Rst_to_spi;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int_pulse_d2;
  wire [0:0]SPIXfer_done_int_pulse_d2_reg;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ;
  wire cmd_addr_sent;
  wire ext_spi_clk;
  wire [1:0]hw_wd_cntr;
  wire p_3_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[0] ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'h0008000800088808)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_1 
       (.I0(SPIXfer_done_int_pulse_d2),
        .I1(cmd_addr_sent),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_0 ),
        .I5(p_3_in1_in),
        .O(SPIXfer_done_int_pulse_d2_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEE00F000)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3 
       (.I0(hw_wd_cntr[0]),
        .I1(hw_wd_cntr[1]),
        .I2(p_3_in1_in),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEAAAAAAAA)) 
    \size_length_cntr[1]_i_4 
       (.I0(Rst_to_spi),
        .I1(Q),
        .I2(SPIXfer_done_int),
        .I3(size_length_cntr[1]),
        .I4(size_length_cntr[0]),
        .I5(scndry_out),
        .O(RESET_SYNC_AX2S_2));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \size_length_cntr_fixed[0]_i_1 
       (.I0(scndry_out),
        .I1(size_length_cntr[0]),
        .I2(size_length_cntr[1]),
        .I3(SPIXfer_done_int),
        .I4(Q),
        .I5(\size_length_cntr_fixed_reg[0] ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_26
   (RESET_SYNC_AX2S_2,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    Rst_to_spi,
    \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ,
    wrap_around_d2,
    wrap_around_d3,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ,
    Q,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output RESET_SYNC_AX2S_2;
  output [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input Rst_to_spi;
  input \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ;
  input wrap_around_d2;
  input wrap_around_d3;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  input [1:0]Q;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire [1:0]Q;
  wire \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ;
  wire RESET_SYNC_AX2S_2;
  wire Rst_to_spi;
  wire SS_to_spi_clk;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire wrap_around_d2;
  wire wrap_around_d3;

  LUT6 #(
    .INIT(64'hFFFFFFFFF888C888)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[0]_i_1 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ),
        .I1(Q[0]),
        .I2(SS_to_spi_clk),
        .I3(\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .I4(Q[1]),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [0]));
  LUT6 #(
    .INIT(64'h4440444440404040)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps[3]_i_1 
       (.I0(SS_to_spi_clk),
        .I1(\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .I2(Q[1]),
        .I3(wrap_around_d3),
        .I4(wrap_around_d2),
        .I5(Q[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [1]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(SS_to_spi_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFFFEF)) 
    \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O[0]_i_1 
       (.I0(Rst_to_spi),
        .I1(\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .I2(SS_to_spi_clk),
        .I3(wrap_around_d2),
        .I4(wrap_around_d3),
        .O(RESET_SYNC_AX2S_2));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_27
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    scndry_out,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ,
    p_101_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_0 ,
    Rst_to_spi,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_1 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_3 ,
    wrap_around_d2,
    wrap_around_d3,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input scndry_out;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  input p_101_in;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_0 ;
  input Rst_to_spi;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_1 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_2 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_3 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_1 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_2 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_3 ;
  wire ext_spi_clk;
  wire p_101_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[0]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_0 ),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ),
        .I3(Rst_to_spi),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_1 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_2 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'hFBFFAAAA0800AAAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ),
        .I1(scndry_out),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .I3(p_101_in),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B888B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_3 ),
        .I4(wrap_around_d2),
        .I5(wrap_around_d3),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_28
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[10]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_29
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[11]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_30
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[12]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_31
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[13]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_32
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[14]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_33
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[15]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_34
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[16]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_35
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[17]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_36
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[18]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_37
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[19]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_38
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ,
    scndry_out,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ,
    p_8_in,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ,
    p_3_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] ,
    Rst_to_spi,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  input scndry_out;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  input p_8_in;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ;
  input p_3_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] ;
  input Rst_to_spi;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_1 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  wire [1:1]Transmit_Addr_to_spi_clk;
  wire ext_spi_clk;
  wire p_3_in1_in;
  wire p_8_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[1]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] ),
        .I2(p_8_in),
        .I3(Rst_to_spi),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ),
        .I2(scndry_out),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ),
        .I5(p_3_in1_in),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ),
        .I2(scndry_out),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .I5(p_8_in),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_39
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[20]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_40
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[21]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_41
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[22]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_42
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ,
    scndry_out,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  output scndry_out;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[23]_i_1 
       (.I0(data1),
        .I1(scndry_out),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_43
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_2 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_0 ,
    Rst_to_spi,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_2 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_0 ;
  input Rst_to_spi;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_2 ;
  wire [2:2]Transmit_Addr_to_spi_clk;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[2]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_0 ),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .I3(Rst_to_spi),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'hAAAACCCFAAAACCC0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_2 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_44
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_2 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_0 ,
    Rst_to_spi,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_2 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_0 ;
  input Rst_to_spi;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_2 ;
  wire [3:3]Transmit_Addr_to_spi_clk;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[3]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_0 ),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .I3(Rst_to_spi),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'hAAAACCCFAAAACCC0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_2 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_45
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] ,
    data1,
    Rst_to_spi,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] ;
  input [0:0]data1;
  input Rst_to_spi;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_1 ;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[4]_i_1 
       (.I0(scndry_out),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] ),
        .I2(data1),
        .I3(Rst_to_spi),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_0 ),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_46
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_2 ,
    data1,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] ,
    Rst_to_spi,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_2 ;
  input [0:0]data1;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] ;
  input Rst_to_spi;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]_0 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_2 ;
  wire [5:5]Transmit_Addr_to_spi_clk;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[5]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] ),
        .I2(data1),
        .I3(Rst_to_spi),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'hAAAACCCFAAAACCC0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_2 ),
        .I5(data1),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_47
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] ,
    data1,
    Rst_to_spi,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_0 ,
    wrap_around_d2,
    wrap_around_d3,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] ;
  input [0:0]data1;
  input Rst_to_spi;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_0 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_1 ;
  wire [6:6]Transmit_Addr_to_spi_clk;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[6]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] ),
        .I2(data1),
        .I3(Rst_to_spi),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_0 ),
        .I3(wrap_around_d2),
        .I4(wrap_around_d3),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_48
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] ,
    data1,
    Rst_to_spi,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_0 ,
    wrap_around_d2,
    wrap_around_d3,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] ;
  input [0:0]data1;
  input Rst_to_spi;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_0 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_1 ;
  wire [7:7]Transmit_Addr_to_spi_clk;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00F300AA00AA00F3)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[7]_i_2 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] ),
        .I2(data1),
        .I3(Rst_to_spi),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_0 ),
        .I3(wrap_around_d2),
        .I4(wrap_around_d3),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_49
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ,
    wrap_around_d2,
    wrap_around_d3,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_2 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_2 ;
  wire [8:8]Transmit_Addr_to_spi_clk;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[8]_i_1 
       (.I0(data1),
        .I1(Transmit_Addr_to_spi_clk),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ),
        .I3(wrap_around_d2),
        .I4(wrap_around_d3),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_2 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_50
   (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    data1,
    p_0_in1_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ,
    wrap_around_d2,
    wrap_around_d3,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input [0:0]data1;
  input [0:0]p_0_in1_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  input scndry_out;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ;
  wire [9:9]Transmit_Addr_to_spi_clk;
  wire [0:0]data1;
  wire ext_spi_clk;
  wire [0:0]p_0_in1_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(Transmit_Addr_to_spi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[9]_i_1 
       (.I0(data1),
        .I1(Transmit_Addr_to_spi_clk),
        .I2(p_0_in1_in),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_1 
       (.I0(Transmit_Addr_to_spi_clk),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ),
        .I3(wrap_around_d2),
        .I4(wrap_around_d3),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_51
   (\size_length_cntr_reg[0] ,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \size_length_cntr_fixed_reg[1] ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] ,
    size_length_cntr,
    SPIXfer_done_int,
    cmd_addr_sent,
    SPIXfer_done_int_pulse_d2,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_1 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ,
    p_101_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ,
    p_46_out,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ,
    p_3_in1_in,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 ,
    hw_wd_cntr,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \size_length_cntr_reg[0] ;
  output scndry_out;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \size_length_cntr_fixed_reg[1] ;
  output [0:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  output [4:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] ;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] ;
  input [1:0]size_length_cntr;
  input SPIXfer_done_int;
  input cmd_addr_sent;
  input SPIXfer_done_int_pulse_d2;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_1 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  input p_101_in;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ;
  input p_46_out;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  input p_3_in1_in;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ;
  input [13:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ;
  input [6:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 ;
  input [1:0]hw_wd_cntr;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire [4:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int_pulse_d2;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_1 ;
  wire [0:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ;
  wire [13:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 ;
  wire [6:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ;
  wire cmd_addr_sent;
  wire ext_spi_clk;
  wire [1:0]hw_wd_cntr;
  wire p_101_in;
  wire p_3_in1_in;
  wire p_46_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_reg[0] ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88B8FFFFBB8B0000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_1 
       (.I0(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ),
        .I1(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_1 ),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2 
       (.I0(SPIXfer_done_int_pulse_d2),
        .I1(cmd_addr_sent),
        .I2(scndry_out),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7000F000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4 
       (.I0(size_length_cntr[1]),
        .I1(size_length_cntr[0]),
        .I2(SPIXfer_done_int_pulse_d2),
        .I3(cmd_addr_sent),
        .I4(scndry_out),
        .I5(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2A00FFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_1 
       (.I0(p_101_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .I3(scndry_out),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ),
        .O(\size_length_cntr_fixed_reg[1] ));
  LUT6 #(
    .INIT(64'h00A0A80000A0A8A0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3 
       (.I0(\size_length_cntr_reg[0] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(SPIXfer_done_int),
        .I3(cmd_addr_sent),
        .I4(scndry_out),
        .O(\size_length_cntr_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [8]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [2]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [2]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [9]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [3]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [3]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1011FFFF10111011)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .I2(scndry_out),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [4]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 [4]));
  LUT6 #(
    .INIT(64'h35F53535F5F5F5F5)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [10]),
        .I1(scndry_out),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(hw_wd_cntr[1]),
        .I4(hw_wd_cntr[0]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [4]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h35F53535F5F5F5F5)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_3 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [11]),
        .I1(scndry_out),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(hw_wd_cntr[1]),
        .I4(hw_wd_cntr[0]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [5]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] ));
  LUT6 #(
    .INIT(64'h3000AAAA0000AAAA)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [12]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [5]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] ));
  LUT6 #(
    .INIT(64'h00AA02A2000002A2)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_1 
       (.I0(p_46_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ),
        .I3(p_3_in1_in),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ));
  LUT4 #(
    .INIT(16'h8088)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I2(hw_wd_cntr[1]),
        .I3(hw_wd_cntr[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  LUT6 #(
    .INIT(64'h3000AAAA0000AAAA)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [13]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [6]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [6]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [0]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [0]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [7]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 [1]),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 [1]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_53
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    scndry_out,
    \size_length_cntr_fixed_reg[1] ,
    \size_length_cntr_reg[0] ,
    \size_length_cntr_fixed_reg[1]_0 ,
    \size_length_cntr_reg[0]_0 ,
    size_length_cntr,
    \size_length_cntr_fixed_reg[1]_1 ,
    Rst_to_spi,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output scndry_out;
  output \size_length_cntr_fixed_reg[1] ;
  input \size_length_cntr_reg[0] ;
  input \size_length_cntr_fixed_reg[1]_0 ;
  input \size_length_cntr_reg[0]_0 ;
  input [0:0]size_length_cntr;
  input \size_length_cntr_fixed_reg[1]_1 ;
  input Rst_to_spi;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire Rst_to_spi;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [0:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_fixed_reg[1]_0 ;
  wire \size_length_cntr_fixed_reg[1]_1 ;
  wire \size_length_cntr_reg[0] ;
  wire \size_length_cntr_reg[0]_0 ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3F3BCFC8)) 
    \size_length_cntr[0]_i_1 
       (.I0(scndry_out),
        .I1(\size_length_cntr_reg[0] ),
        .I2(\size_length_cntr_fixed_reg[1]_0 ),
        .I3(\size_length_cntr_reg[0]_0 ),
        .I4(size_length_cntr),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT5 #(
    .INIT(32'h0000AA0C)) 
    \size_length_cntr_fixed[1]_i_1 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(scndry_out),
        .I2(\size_length_cntr_reg[0]_0 ),
        .I3(\size_length_cntr_fixed_reg[1]_0 ),
        .I4(Rst_to_spi),
        .O(\size_length_cntr_fixed_reg[1] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_6
   (\size_length_cntr_fixed_reg[0] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \size_length_cntr_reg[0] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ,
    \size_length_cntr_fixed_reg[1] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ,
    p_101_in,
    scndry_out,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ,
    size_length_cntr,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    p_46_out,
    p_8_in,
    wrap_around_i_2,
    wrap_around_i_2_0,
    wrap_around_i_2_1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ,
    data1,
    axi_length_to_spi_clk,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output \size_length_cntr_fixed_reg[0] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  output \size_length_cntr_reg[0] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  output \size_length_cntr_fixed_reg[1] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  input p_101_in;
  input scndry_out;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  input [1:0]size_length_cntr;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  input p_46_out;
  input p_8_in;
  input wrap_around_i_2;
  input wrap_around_i_2_0;
  input wrap_around_i_2_1;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ;
  input [1:0]data1;
  input [2:0]axi_length_to_spi_clk;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  wire [2:0]axi_length_to_spi_clk;
  wire [1:0]data1;
  wire ext_spi_clk;
  wire p_101_in;
  wire p_46_out;
  wire p_8_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[0] ;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_reg[0] ;
  wire wrap_around_i_11_n_0;
  wire wrap_around_i_2;
  wire wrap_around_i_2_0;
  wire wrap_around_i_2_1;
  wire wrap_around_i_9_n_0;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF76FFFFFF00FF00)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I4(scndry_out),
        .I5(p_46_out),
        .O(\size_length_cntr_reg[0] ));
  LUT6 #(
    .INIT(64'h76000000FFFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I3(p_101_in),
        .I4(scndry_out),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_2 ),
        .O(\size_length_cntr_fixed_reg[0] ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[1]),
        .I3(scndry_out),
        .I4(axi_length_to_spi_clk[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'h0FEC000000000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .I4(p_101_in),
        .I5(scndry_out),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 ),
        .O(\size_length_cntr_fixed_reg[1] ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    wrap_around_i_11
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(axi_length_to_spi_clk[1]),
        .I2(scndry_out),
        .I3(axi_length_to_spi_clk[0]),
        .I4(data1[0]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ),
        .O(wrap_around_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    wrap_around_i_5
       (.I0(wrap_around_i_9_n_0),
        .I1(p_8_in),
        .I2(wrap_around_i_2),
        .I3(wrap_around_i_2_0),
        .I4(wrap_around_i_2_1),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ));
  LUT6 #(
    .INIT(64'h4545FFFF454505FF)) 
    wrap_around_i_9
       (.I0(wrap_around_i_11_n_0),
        .I1(data1[1]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ),
        .O(wrap_around_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_7
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_8
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    SPIXfer_done_int_pulse_d2_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \spi_addr_wrap_1_reg[1] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ,
    \spi_addr_wrap_1_reg[5] ,
    \size_length_cntr_fixed_reg[1] ,
    \size_length_cntr_fixed_reg[1]_0 ,
    \size_length_cntr_fixed_reg[1]_1 ,
    \size_length_cntr_fixed_reg[1]_2 ,
    \size_length_cntr_fixed_reg[1]_3 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ,
    wrap_around_i_4_0,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ,
    wrap_around_i_4_1,
    axi_length_to_spi_clk,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    SPIXfer_done_int_pulse_d2,
    cmd_addr_sent,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ,
    p_3_in1_in,
    size_length_cntr,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ,
    p_8_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ,
    data1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ,
    wrap_around_i_4_2,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    ext_spi_clk);
  output scndry_out;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output SPIXfer_done_int_pulse_d2_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \spi_addr_wrap_1_reg[1] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  output \spi_addr_wrap_1_reg[5] ;
  output \size_length_cntr_fixed_reg[1] ;
  output \size_length_cntr_fixed_reg[1]_0 ;
  output \size_length_cntr_fixed_reg[1]_1 ;
  output \size_length_cntr_fixed_reg[1]_2 ;
  output \size_length_cntr_fixed_reg[1]_3 ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ;
  input wrap_around_i_4_0;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ;
  input wrap_around_i_4_1;
  input [2:0]axi_length_to_spi_clk;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  input SPIXfer_done_int_pulse_d2;
  input cmd_addr_sent;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ;
  input p_3_in1_in;
  input [1:0]size_length_cntr;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  input [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  input [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  input p_8_in;
  input [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ;
  input [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  input [5:0]data1;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ;
  input wrap_around_i_4_2;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input ext_spi_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire SPIXfer_done_int_pulse_d2;
  wire SPIXfer_done_int_pulse_d2_reg;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ;
  wire [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ;
  wire [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ;
  wire [1:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  wire [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ;
  wire [2:0]axi_length_to_spi_clk;
  wire cmd_addr_sent;
  wire [5:0]data1;
  wire ext_spi_clk;
  wire p_3_in1_in;
  wire p_8_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_fixed_reg[1]_0 ;
  wire \size_length_cntr_fixed_reg[1]_1 ;
  wire \size_length_cntr_fixed_reg[1]_2 ;
  wire \size_length_cntr_fixed_reg[1]_3 ;
  wire \spi_addr_wrap_1_reg[1] ;
  wire \spi_addr_wrap_1_reg[5] ;
  wire wrap_around_i_10_n_0;
  wire wrap_around_i_4_0;
  wire wrap_around_i_4_1;
  wire wrap_around_i_4_2;
  wire wrap_around_i_7_n_0;
  wire wrap_around_i_8_n_0;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000BFFFBFFF8000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2 
       (.I0(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ),
        .I1(SPIXfer_done_int_pulse_d2),
        .I2(cmd_addr_sent),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ),
        .I5(p_3_in1_in),
        .O(SPIXfer_done_int_pulse_d2_reg));
  LUT6 #(
    .INIT(64'hF0F00F3CF0F00FF4)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 ),
        .I2(p_3_in1_in),
        .I3(size_length_cntr[0]),
        .I4(size_length_cntr[1]),
        .I5(wrap_around_i_4_1),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0E4F00F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 [0]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFF0000EEFEEEFE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] [0]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\spi_addr_wrap_1_reg[1] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 [0]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I3(p_8_in),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00404440)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 [1]),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I4(p_8_in),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hC0400040)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4 
       (.I0(scndry_out),
        .I1(axi_length_to_spi_clk[0]),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I3(axi_length_to_spi_clk[2]),
        .I4(axi_length_to_spi_clk[1]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 [1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ),
        .O(\size_length_cntr_fixed_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8 
       (.I0(scndry_out),
        .I1(axi_length_to_spi_clk[1]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I4(axi_length_to_spi_clk[0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0FFF4FFF4F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ),
        .I1(scndry_out),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFABFFAB)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] [1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\spi_addr_wrap_1_reg[5] ));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 ),
        .I1(scndry_out),
        .I2(wrap_around_i_4_2),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I5(data1[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I4(data1[2]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\size_length_cntr_fixed_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] [1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I4(data1[3]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\size_length_cntr_fixed_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] [2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I4(data1[4]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\size_length_cntr_fixed_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I4(data1[5]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .O(\size_length_cntr_fixed_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    wrap_around_i_10
       (.I0(scndry_out),
        .I1(axi_length_to_spi_clk[1]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ),
        .I4(axi_length_to_spi_clk[0]),
        .O(wrap_around_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    wrap_around_i_4
       (.I0(wrap_around_i_7_n_0),
        .I1(wrap_around_i_8_n_0),
        .I2(p_8_in),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ));
  LUT5 #(
    .INIT(32'h0008FFFF)) 
    wrap_around_i_7
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ),
        .I1(wrap_around_i_4_0),
        .I2(scndry_out),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ),
        .I4(wrap_around_i_4_1),
        .O(wrap_around_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000AAAA80008000)) 
    wrap_around_i_8
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ),
        .I1(wrap_around_i_10_n_0),
        .I2(data1[0]),
        .I3(wrap_around_i_4_0),
        .I4(wrap_around_i_4_2),
        .I5(axi_length_to_spi_clk[1]),
        .O(wrap_around_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_9
   (scndry_out,
    \size_length_cntr_reg[1] ,
    \size_length_cntr_reg[0] ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ,
    size_length_cntr,
    \size_length_cntr_reg[1]_0 ,
    \size_length_cntr_reg[1]_1 ,
    \size_length_cntr_reg[1]_2 ,
    Q,
    SPIXfer_done_int,
    cmd_addr_sent,
    hw_wd_cntr,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ,
    p_3_in1_in,
    p_46_out,
    SPIXfer_done_int_pulse_d2,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_1 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]_0 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ,
    prmry_in,
    ext_spi_clk);
  output scndry_out;
  output \size_length_cntr_reg[1] ;
  output \size_length_cntr_reg[0] ;
  output [1:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  output [18:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ;
  input [1:0]size_length_cntr;
  input \size_length_cntr_reg[1]_0 ;
  input \size_length_cntr_reg[1]_1 ;
  input \size_length_cntr_reg[1]_2 ;
  input [0:0]Q;
  input SPIXfer_done_int;
  input cmd_addr_sent;
  input [1:0]hw_wd_cntr;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ;
  input p_3_in1_in;
  input p_46_out;
  input SPIXfer_done_int_pulse_d2;
  input [7:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ;
  input [31:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_1 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]_0 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  input prmry_in;
  input ext_spi_clk;

  wire [18:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire [0:0]Q;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int_pulse_d2;
  wire [1:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_1 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]_0 ;
  wire [7:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  wire [31:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ;
  wire cmd_addr_sent;
  wire ext_spi_clk;
  wire [1:0]hw_wd_cntr;
  wire p_3_in1_in;
  wire p_46_out;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_reg[0] ;
  wire \size_length_cntr_reg[1] ;
  wire \size_length_cntr_reg[1]_0 ;
  wire \size_length_cntr_reg[1]_1 ;
  wire \size_length_cntr_reg[1]_2 ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[0]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [0]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [8]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [0]));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_1 ),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h51511151)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ),
        .I3(hw_wd_cntr[0]),
        .I4(hw_wd_cntr[1]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ));
  LUT6 #(
    .INIT(64'h44444444FFFFF444)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [14]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]_0 ),
        .I5(scndry_out),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [9]));
  LUT6 #(
    .INIT(64'h44444444FFFFF444)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_2 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2_n_0 ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [15]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ),
        .I5(scndry_out),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [10]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[16]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [24]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [16]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [11]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[17]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [17]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [25]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [12]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[18]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [18]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [26]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [13]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[19]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [19]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [27]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [14]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[1]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [1]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [9]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [1]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[20]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [20]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [28]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [15]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[21]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [29]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [21]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [16]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[22]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [22]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [30]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [17]));
  LUT6 #(
    .INIT(64'h000008AAAAAA08AA)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I4(scndry_out),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] [0]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_2 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [23]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [31]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [18]));
  LUT6 #(
    .INIT(64'h8888888808000808)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3 
       (.I0(SPIXfer_done_int_pulse_d2),
        .I1(cmd_addr_sent),
        .I2(scndry_out),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ),
        .I5(p_3_in1_in),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[2]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [2]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [10]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [2]));
  LUT6 #(
    .INIT(64'h00000000E0E000E0)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_1 
       (.I0(p_3_in1_in),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2_n_0 ),
        .I2(p_46_out),
        .I3(scndry_out),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] [1]));
  LUT3 #(
    .INIT(8'h45)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 ),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] ),
        .I3(hw_wd_cntr[0]),
        .I4(hw_wd_cntr[1]),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[3]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [3]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [11]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [3]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[4]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [4]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [12]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [4]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[5]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [5]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [13]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [5]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[6]_i_1 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [6]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [14]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [6]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_2 
       (.I0(scndry_out),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I2(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [7]),
        .I4(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 [15]),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 [7]));
  LUT6 #(
    .INIT(64'h00000000AAE266E2)) 
    \size_length_cntr[1]_i_1 
       (.I0(size_length_cntr[1]),
        .I1(\size_length_cntr_reg[0] ),
        .I2(\size_length_cntr_reg[1]_0 ),
        .I3(\size_length_cntr_reg[1]_1 ),
        .I4(size_length_cntr[0]),
        .I5(\size_length_cntr_reg[1]_2 ),
        .O(\size_length_cntr_reg[1] ));
  LUT6 #(
    .INIT(64'hF1F0F1F0FFF0F1F0)) 
    \size_length_cntr[1]_i_2 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(Q),
        .I3(SPIXfer_done_int),
        .I4(cmd_addr_sent),
        .I5(scndry_out),
        .O(\size_length_cntr_reg[0] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized3
   (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ,
    scndry_out,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ,
    wrap_around_reg,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ,
    SR,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ,
    wrap_around_d10,
    SPIXfer_done_int_reg,
    p_0_in1_in,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ,
    Rst_to_spi,
    hw_wd_cntr,
    SPIXfer_done_int_pulse_d2,
    cmd_addr_sent,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ,
    start_after_wrap_d1,
    SPIXfer_done_int,
    ext_spi_clk,
    prmry_in,
    s_axi4_aclk);
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  output scndry_out;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  output wrap_around_reg;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ;
  output [0:0]SR;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ;
  output \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  output wrap_around_d10;
  output SPIXfer_done_int_reg;
  input [2:0]p_0_in1_in;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ;
  input Rst_to_spi;
  input [1:0]hw_wd_cntr;
  input SPIXfer_done_int_pulse_d2;
  input cmd_addr_sent;
  input \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ;
  input \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ;
  input start_after_wrap_d1;
  input SPIXfer_done_int;
  input ext_spi_clk;
  input prmry_in;
  input s_axi4_aclk;

  wire Rst_to_spi;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int_pulse_d2;
  wire SPIXfer_done_int_reg;
  wire [0:0]SR;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ;
  wire cmd_addr_sent;
  wire ext_spi_clk;
  wire [1:0]hw_wd_cntr;
  wire [2:0]p_0_in1_in;
  wire p_level_in_d1_cdc_from;
  wire prmry_in;
  wire s_axi4_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire start_after_wrap_d1;
  wire wrap_around_d10;
  wire wrap_around_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[24]_i_1 
       (.I0(p_0_in1_in[0]),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I2(scndry_out),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[25]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I2(scndry_out),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[27]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I2(scndry_out),
        .I3(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[31]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .I1(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I2(scndry_out),
        .I3(Rst_to_spi),
        .O(wrap_around_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[7]_i_1 
       (.I0(SPIXfer_done_int),
        .I1(Rst_to_spi),
        .I2(scndry_out),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(SPIXfer_done_int_reg));
  LUT6 #(
    .INIT(64'h000000006A00006A)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr[0]_i_1 
       (.I0(hw_wd_cntr[0]),
        .I1(cmd_addr_sent),
        .I2(SPIXfer_done_int_pulse_d2),
        .I3(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I4(scndry_out),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr[1]_i_1 
       (.I0(hw_wd_cntr[1]),
        .I1(SPIXfer_done_int_pulse_d2),
        .I2(cmd_addr_sent),
        .I3(hw_wd_cntr[0]),
        .I4(SR),
        .I5(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .O(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.receive_Data_int[7]_i_1 
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I1(scndry_out),
        .O(SR));
  LUT6 #(
    .INIT(64'h000000000000FFCE)) 
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_1 
       (.I0(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ),
        .I1(SR),
        .I2(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ),
        .I3(start_after_wrap_d1),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .I5(Rst_to_spi),
        .O(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    wrap_around_d1_i_1
       (.I0(\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 ),
        .I1(scndry_out),
        .I2(Rst_to_spi),
        .O(wrap_around_d10));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized3_21
   (RESET_SYNC_AX2S_2,
    scndry_out,
    RESET_SYNC_AX2S_2_0,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ,
    \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ,
    \size_length_cntr_reg[0] ,
    length_cntr,
    wrap_around_d2_reg,
    wrap_around_d2_reg_0,
    wrap_around_d2_reg_1,
    wrap_around_d2_reg_2,
    wrap_around_d2_reg_3,
    wrap_around_d2_reg_4,
    wrap_around_d2_reg_5,
    wrap_around_d2_reg_6,
    wrap_around_d2_reg_7,
    wrap_around_d2_reg_8,
    wrap_around_d2_reg_9,
    wrap_around_d2_reg_10,
    wrap_around_d2_reg_11,
    wrap_around_d2_reg_12,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    Rst_to_spi,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ,
    dtr_length_to_spi_clk,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ,
    size_length_cntr,
    SPIXfer_done_int,
    cmd_addr_sent,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_1 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ,
    wrap_around_d2,
    wrap_around_d3,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ,
    Transmit_Addr_to_spi_clk,
    O,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ,
    data1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ,
    ext_spi_clk,
    prmry_in,
    s_axi4_aclk);
  output RESET_SYNC_AX2S_2;
  output scndry_out;
  output RESET_SYNC_AX2S_2_0;
  output \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  output \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ;
  output \size_length_cntr_reg[0] ;
  output [4:0]length_cntr;
  output wrap_around_d2_reg;
  output wrap_around_d2_reg_0;
  output wrap_around_d2_reg_1;
  output wrap_around_d2_reg_2;
  output wrap_around_d2_reg_3;
  output wrap_around_d2_reg_4;
  output wrap_around_d2_reg_5;
  output wrap_around_d2_reg_6;
  output wrap_around_d2_reg_7;
  output wrap_around_d2_reg_8;
  output wrap_around_d2_reg_9;
  output wrap_around_d2_reg_10;
  output wrap_around_d2_reg_11;
  output wrap_around_d2_reg_12;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input Rst_to_spi;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  input [7:0]dtr_length_to_spi_clk;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  input [1:0]size_length_cntr;
  input SPIXfer_done_int;
  input cmd_addr_sent;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_1 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  input wrap_around_d2;
  input wrap_around_d3;
  input [13:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  input [13:0]Transmit_Addr_to_spi_clk;
  input [2:0]O;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  input [13:0]data1;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  input [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  input ext_spi_clk;
  input prmry_in;
  input s_axi4_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_1 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  wire \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ;
  wire [2:0]O;
  wire RESET_SYNC_AX2S_2;
  wire RESET_SYNC_AX2S_2_0;
  wire Rst_to_spi;
  wire SPIXfer_done_int;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  wire [2:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  wire [13:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  wire [13:0]Transmit_Addr_to_spi_clk;
  wire cmd_addr_sent;
  wire [13:0]data1;
  wire [7:0]dtr_length_to_spi_clk;
  wire ext_spi_clk;
  wire [4:0]length_cntr;
  wire p_level_in_d1_cdc_from;
  wire prmry_in;
  wire s_axi4_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_reg[0] ;
  wire wrap_around_d2;
  wire wrap_around_d2_reg;
  wire wrap_around_d2_reg_0;
  wire wrap_around_d2_reg_1;
  wire wrap_around_d2_reg_10;
  wire wrap_around_d2_reg_11;
  wire wrap_around_d2_reg_12;
  wire wrap_around_d2_reg_2;
  wire wrap_around_d2_reg_3;
  wire wrap_around_d2_reg_4;
  wire wrap_around_d2_reg_5;
  wire wrap_around_d2_reg_6;
  wire wrap_around_d2_reg_7;
  wire wrap_around_d2_reg_8;
  wire wrap_around_d2_reg_9;
  wire wrap_around_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h15511001)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[0]_i_1 
       (.I0(Rst_to_spi),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ),
        .I2(scndry_out),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I4(dtr_length_to_spi_clk[0]),
        .O(RESET_SYNC_AX2S_2));
  LUT6 #(
    .INIT(64'h5514145541000041)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[1]_i_1 
       (.I0(Rst_to_spi),
        .I1(scndry_out),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ),
        .I5(dtr_length_to_spi_clk[1]),
        .O(RESET_SYNC_AX2S_2_0));
  LUT6 #(
    .INIT(64'h00000000FFA900A9)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[2]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ),
        .I3(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I4(dtr_length_to_spi_clk[2]),
        .I5(Rst_to_spi),
        .O(length_cntr[0]));
  LUT6 #(
    .INIT(64'h000000009FF99009)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_1 ),
        .I2(scndry_out),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I4(dtr_length_to_spi_clk[3]),
        .I5(Rst_to_spi),
        .O(length_cntr[1]));
  LUT6 #(
    .INIT(64'h000000009FF99009)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ),
        .I2(scndry_out),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I4(dtr_length_to_spi_clk[4]),
        .I5(Rst_to_spi),
        .O(length_cntr[2]));
  LUT6 #(
    .INIT(64'h000000009FF99009)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ),
        .I2(scndry_out),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I4(dtr_length_to_spi_clk[5]),
        .I5(Rst_to_spi),
        .O(length_cntr[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_1 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(SPIXfer_done_int),
        .I3(cmd_addr_sent),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Rst_to_spi),
        .O(\size_length_cntr_reg[0] ));
  LUT6 #(
    .INIT(64'h000000009FF99009)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ),
        .I2(scndry_out),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I4(dtr_length_to_spi_clk[6]),
        .I5(Rst_to_spi),
        .O(length_cntr[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_3 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I1(scndry_out),
        .O(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ));
  LUT6 #(
    .INIT(64'h0000AAAAF606AAAA)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ),
        .I2(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I3(dtr_length_to_spi_clk[7]),
        .I4(\size_length_cntr_reg[0] ),
        .I5(Rst_to_spi),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [0]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[0]),
        .O(wrap_around_d2_reg));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [1]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[1]),
        .O(wrap_around_d2_reg_0));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] [1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [2]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[2]),
        .O(wrap_around_d2_reg_1));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] [2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[2]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [3]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[3]),
        .O(wrap_around_d2_reg_2));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[3]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [4]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[4]),
        .O(wrap_around_d2_reg_3));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] [1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[4]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [5]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[5]),
        .O(wrap_around_d2_reg_4));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] [2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[5]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [6]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[6]),
        .O(wrap_around_d2_reg_5));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] [3]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[6]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [7]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[7]),
        .O(wrap_around_d2_reg_6));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[7]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [8]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[8]),
        .O(wrap_around_d2_reg_7));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] [1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[8]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [9]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[9]),
        .O(wrap_around_d2_reg_8));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] [2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[9]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [10]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[10]),
        .O(wrap_around_d2_reg_9));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] [3]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[10]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [11]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[11]),
        .O(wrap_around_d2_reg_10));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2 
       (.I0(O[0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[11]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [12]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[12]),
        .O(wrap_around_d2_reg_11));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2 
       (.I0(O[1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[12]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d3),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] [13]),
        .I4(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg ),
        .I5(Transmit_Addr_to_spi_clk[13]),
        .O(wrap_around_d2_reg_12));
  LUT4 #(
    .INIT(16'h9099)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3 
       (.I0(scndry_out),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I2(wrap_around_d3),
        .I3(wrap_around_d2),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5 
       (.I0(O[2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I5(data1[13]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ));
endmodule

module TinySoC_axi_quad_spi_0_1_qspi_address_decoder
   (prmry_in,
    s_axi4_aclk,
    bus2ip_reset_ipif4_inverted,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    xip_sm_ps,
    last_data_acked,
    s_axi4_rready);
  output prmry_in;
  input s_axi4_aclk;
  input bus2ip_reset_ipif4_inverted;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input xip_sm_ps;
  input last_data_acked;
  input s_axi4_rready;

  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire bus2ip_reset_ipif4_inverted;
  wire last_data_acked;
  wire prmry_in;
  wire s_axi4_aclk;
  wire s_axi4_rready;
  wire xip_sm_ps;

  LUT6 #(
    .INIT(64'h0045454545454545)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(prmry_in),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(xip_sm_ps),
        .I4(last_data_acked),
        .I5(s_axi4_rready),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(prmry_in),
        .R(1'b0));
endmodule

module TinySoC_axi_quad_spi_0_1_qspi_startup_block
   (cfgclk,
    cfgmclk,
    eos,
    preq,
    SCK_O_int);
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input SCK_O_int;

  wire SCK_O_int;
  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire preq;

  (* box_type = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    \STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst 
       (.CFGCLK(cfgclk),
        .CFGMCLK(cfgmclk),
        .CLK(1'b0),
        .EOS(eos),
        .GSR(1'b0),
        .GTS(1'b0),
        .KEYCLEARB(1'b0),
        .PACK(1'b0),
        .PREQ(preq),
        .USRCCLKO(SCK_O_int),
        .USRCCLKTS(1'b0),
        .USRDONEO(1'b1),
        .USRDONETS(1'b1));
endmodule

module TinySoC_axi_quad_spi_0_1_reset_sync_module
   (Rst_to_spi,
    Soft_Reset_frm_axi,
    ext_spi_clk);
  output Rst_to_spi;
  input Soft_Reset_frm_axi;
  input ext_spi_clk;

  wire Rst_to_spi;
  wire Soft_Reset_frm_axi;
  wire Soft_Reset_frm_axi_d1;
  wire ext_spi_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_1
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi),
        .Q(Soft_Reset_frm_axi_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_2
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi_d1),
        .Q(Rst_to_spi),
        .R(1'b0));
endmodule

module TinySoC_axi_quad_spi_0_1_slave_attachment
   (SR,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    rst_reg_0,
    p_1_out,
    p_0_out,
    p_3_out4_out,
    p_3_out,
    D,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2Bus_RdAck_core_reg_d3,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2bus_wrack_core_reg,
    s_axi_araddr,
    s_axi_awaddr,
    \s_axi_rdata_i_reg[4]_0 );
  output [0:0]SR;
  output Bus_RNW_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  output [0:0]rst_reg_0;
  output p_1_out;
  output p_0_out;
  output p_3_out4_out;
  output p_3_out;
  output [4:0]D;
  output [4:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2Bus_RdAck_core_reg_d3;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2bus_wrack_core_reg;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;
  input [4:0]\s_axi_rdata_i_reg[4]_0 ;

  wire Bus_RNW_reg_reg;
  wire [4:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_rnw_i_reg_n_0;
  wire clear;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire p_0_out;
  wire p_1_out;
  wire p_3_out;
  wire p_3_out4_out;
  wire p_5_in;
  wire [5:0]plusOp;
  wire [0:0]rst_reg_0;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [4:0]s_axi_rdata;
  wire [4:0]\s_axi_rdata_i_reg[4]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .R(clear));
  TinySoC_axi_quad_spi_0_1_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(bus2ip_rnw_i_reg_n_0),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (start2),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\bus2ip_addr_i_reg_n_0_[2] ),
        .Q(Q),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_3_out4_out(p_3_out4_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_wready(is_write_reg_n_0),
        .s_axi_wready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \XIPSR_data_int[4]_i_1 
       (.I0(SR),
        .I1(ip2Bus_RdAck_core_reg_d3),
        .O(rst_reg_0));
  LUT6 #(
    .INIT(64'hACAFFFFFACA00000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr),
        .I1(s_axi_awaddr),
        .I2(s_axi_arvalid),
        .I3(p_5_in),
        .I4(\bus2ip_addr_i[2]_i_2_n_0 ),
        .I5(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bus2ip_addr_i[2]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\bus2ip_addr_i[2]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000AA)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(bus2ip_rnw_i_reg_n_0),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(SR));
endmodule

module TinySoC_axi_quad_spi_0_1_xip_cntrl_reg
   (D,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    s_axi_wdata,
    ip2bus_wrack_core_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_reset_ipif_inverted,
    s_axi_aclk);
  output [0:0]D;
  output XIPCR_0_CPHA_int;
  output XIPCR_1_CPOL_int;
  input [1:0]s_axi_wdata;
  input ip2bus_wrack_core_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input bus2ip_reset_ipif_inverted;
  input s_axi_aclk;

  wire Bus_RNW_reg;
  wire [0:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIPCR_data_int[0]_i_1_n_0 ;
  wire \XIPCR_data_int[1]_i_1_n_0 ;
  wire bus2ip_reset_ipif_inverted;
  wire ip2bus_wrack_core_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__1 
       (.I0(XIPCR_0_CPHA_int),
        .I1(XIPCR_1_CPOL_int),
        .O(D));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \XIPCR_data_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(ip2bus_wrack_core_reg),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(XIPCR_0_CPHA_int),
        .O(\XIPCR_data_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \XIPCR_data_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(ip2bus_wrack_core_reg),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(XIPCR_1_CPOL_int),
        .O(\XIPCR_data_int[1]_i_1_n_0 ));
  FDRE \XIPCR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\XIPCR_data_int[0]_i_1_n_0 ),
        .Q(XIPCR_0_CPHA_int),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIPCR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\XIPCR_data_int[1]_i_1_n_0 ),
        .Q(XIPCR_1_CPOL_int),
        .R(bus2ip_reset_ipif_inverted));
endmodule

module TinySoC_axi_quad_spi_0_1_xip_cross_clk_sync
   (\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ,
    scndry_out,
    \LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ,
    RESET_SYNC_AX2S_2,
    RESET_SYNC_AX2S_2_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \size_length_cntr_reg[1] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ,
    \size_length_cntr_reg[0] ,
    \size_length_cntr_fixed_reg[1] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ,
    wrap_around_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ,
    SR,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ,
    D,
    xip_sm_ps_reg,
    xip_sm_ns,
    s_axi4_rid,
    E,
    s_axi4_rresp,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11 ,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ,
    wrap_around_d10,
    SPIXfer_done_int_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_12 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_13 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_14 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_15 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_16 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_17 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_18 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_19 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_20 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_21 ,
    RESET_SYNC_AX2S_2_1,
    \size_length_cntr_fixed_reg[1]_0 ,
    length_cntr,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_22 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_23 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_24 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_25 ,
    wrap_around_d2_reg,
    wrap_around_d2_reg_0,
    wrap_around_d2_reg_1,
    wrap_around_d2_reg_2,
    wrap_around_d2_reg_3,
    wrap_around_d2_reg_4,
    wrap_around_d2_reg_5,
    wrap_around_d2_reg_6,
    wrap_around_d2_reg_7,
    wrap_around_d2_reg_8,
    wrap_around_d2_reg_9,
    wrap_around_d2_reg_10,
    wrap_around_d2_reg_11,
    wrap_around_d2_reg_12,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_26 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    Rst_to_spi,
    ext_spi_clk,
    bus2ip_reset_ipif4_inverted,
    s_axi4_aclk,
    p_101_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ,
    p_0_in1_in,
    data1,
    size_length_cntr,
    SPIXfer_done_int,
    cmd_addr_sent,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ,
    \size_length_cntr_fixed_reg[1]_1 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ,
    SPIXfer_done_int_pulse_d2,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ,
    SPISEL_sync,
    \size_length_cntr_fixed_reg[1]_2 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ,
    Q,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ,
    p_8_in,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ,
    p_3_in1_in,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ,
    hw_wd_cntr,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi4_arlen,
    \dtr_length_reg[4] ,
    \dtr_length_reg[5] ,
    \dtr_length_reg[6] ,
    \dtr_length_reg[7] ,
    xip_sm_ps,
    last_data_acked,
    s_axi4_rready,
    S_AXI4_RID_reg,
    s_axi4_arid,
    s_axi4_arvalid,
    \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ,
    empty,
    s_axi4_arburst,
    sck_o_int,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ,
    \RATIO_OF_2_GENERATE.sck_o_int_reg ,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ,
    start_after_wrap_d1,
    transfer_start_d2,
    \RATIO_OF_2_GENERATE.Count_reg[0] ,
    \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ,
    wrap_around_d2,
    wrap_around_d3,
    p_46_out,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ,
    O,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ,
    \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ,
    s_axi_aclk,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ,
    XIPCR_1_CPOL_int,
    XIPCR_0_CPHA_int,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 );
  output \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ;
  output scndry_out;
  output \LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  output RESET_SYNC_AX2S_2;
  output RESET_SYNC_AX2S_2_0;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  output \size_length_cntr_reg[1] ;
  output \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  output \size_length_cntr_reg[0] ;
  output \size_length_cntr_fixed_reg[1] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ;
  output wrap_around_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ;
  output [0:0]SR;
  output \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ;
  output [7:0]D;
  output xip_sm_ps_reg;
  output xip_sm_ns;
  output [0:0]s_axi4_rid;
  output [0:0]E;
  output [0:0]s_axi4_rresp;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11 ;
  output \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  output wrap_around_d10;
  output SPIXfer_done_int_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_12 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_13 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_14 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_15 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_16 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_17 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_18 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_19 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_20 ;
  output [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_21 ;
  output RESET_SYNC_AX2S_2_1;
  output \size_length_cntr_fixed_reg[1]_0 ;
  output [4:0]length_cntr;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_22 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_23 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_24 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_25 ;
  output wrap_around_d2_reg;
  output wrap_around_d2_reg_0;
  output wrap_around_d2_reg_1;
  output wrap_around_d2_reg_2;
  output wrap_around_d2_reg_3;
  output wrap_around_d2_reg_4;
  output wrap_around_d2_reg_5;
  output wrap_around_d2_reg_6;
  output wrap_around_d2_reg_7;
  output wrap_around_d2_reg_8;
  output wrap_around_d2_reg_9;
  output wrap_around_d2_reg_10;
  output wrap_around_d2_reg_11;
  output wrap_around_d2_reg_12;
  output [3:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  output [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_26 ;
  output [23:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 ;
  output [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input Rst_to_spi;
  input ext_spi_clk;
  input bus2ip_reset_ipif4_inverted;
  input s_axi4_aclk;
  input p_101_in;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  input [18:0]p_0_in1_in;
  input [19:0]data1;
  input [1:0]size_length_cntr;
  input SPIXfer_done_int;
  input cmd_addr_sent;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  input \size_length_cntr_fixed_reg[1]_1 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ;
  input SPIXfer_done_int_pulse_d2;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ;
  input SPISEL_sync;
  input \size_length_cntr_fixed_reg[1]_2 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  input [2:0]Q;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  input p_8_in;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ;
  input p_3_in1_in;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  input [1:0]hw_wd_cntr;
  input [7:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input [7:0]s_axi4_arlen;
  input \dtr_length_reg[4] ;
  input \dtr_length_reg[5] ;
  input \dtr_length_reg[6] ;
  input \dtr_length_reg[7] ;
  input xip_sm_ps;
  input last_data_acked;
  input s_axi4_rready;
  input S_AXI4_RID_reg;
  input [0:0]s_axi4_arid;
  input s_axi4_arvalid;
  input \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ;
  input empty;
  input [1:0]s_axi4_arburst;
  input sck_o_int;
  input \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  input \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ;
  input start_after_wrap_d1;
  input transfer_start_d2;
  input [0:0]\RATIO_OF_2_GENERATE.Count_reg[0] ;
  input \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ;
  input wrap_around_d2;
  input wrap_around_d3;
  input p_46_out;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  input [23:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  input [2:0]O;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ;
  input [7:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ;
  input [31:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  input \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ;
  input s_axi_aclk;
  input prmry_in;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  input XIPCR_1_CPOL_int;
  input XIPCR_0_CPHA_int;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  input [23:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  input [3:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ;

  wire CPHA_to_spi_clk;
  wire CPOL_to_spi_clk;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  wire [7:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  wire [23:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_12 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_13 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_14 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_15 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_16 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_17 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_18 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_19 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_20 ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_21 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_22 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_23 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_24 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_25 ;
  wire [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_26 ;
  wire [23:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ;
  wire [1:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_0 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_11 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_12 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_13 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ;
  wire \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ;
  wire \LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_2 ;
  wire \LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_24 ;
  wire \LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_2 ;
  wire \LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_4 ;
  wire \LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_5 ;
  wire \LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_25 ;
  wire \LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ;
  wire \LOGIC_GENERATION_CDC.MST_MODF_SYNC_SPI2AXI_CDC_n_0 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_0 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_12 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_13 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_14 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_3 ;
  wire \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_6 ;
  wire \LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ;
  wire \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ;
  wire \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ;
  wire [2:0]O;
  wire [2:0]Q;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[0] ;
  wire \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  wire RESET_SYNC_AX2S_2;
  wire RESET_SYNC_AX2S_2_0;
  wire RESET_SYNC_AX2S_2_1;
  wire Rst_to_spi;
  wire Rx_FIFO_Full_to_axi4_clk;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  wire SPISEL_sync;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int_pulse_d2;
  wire SPIXfer_done_int_reg;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  wire [3:0]\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  wire [23:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  wire [0:0]SR;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  wire [7:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ;
  wire [31:0]\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ;
  wire \STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ;
  wire S_AXI4_RID_reg;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ;
  wire [23:0]Transmit_Addr_to_spi_clk;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire [3:0]axi_length_to_spi_clk;
  wire bus2ip_reset_ipif4_inverted;
  wire cmd_addr_sent;
  wire [19:0]data1;
  wire \dtr_length_reg[4] ;
  wire \dtr_length_reg[5] ;
  wire \dtr_length_reg[6] ;
  wire \dtr_length_reg[7] ;
  wire [7:0]dtr_length_to_spi_clk;
  wire empty;
  wire ext_spi_clk;
  wire four_byte_xfer_to_spi_clk;
  wire [1:0]hw_wd_cntr;
  wire last_data_acked;
  wire ld_axi_data_cdc_from_axi_int_2;
  wire [4:0]length_cntr;
  wire load_cmd_cdc_from_axi_int_2;
  wire one_byte_xfer_to_spi_clk;
  wire [18:0]p_0_in1_in;
  wire p_0_out;
  wire p_101_in;
  wire p_1_out;
  wire p_3_in1_in;
  wire p_46_out;
  wire p_8_in;
  wire prmry_in;
  wire s_axi4_aclk;
  wire [1:0]s_axi4_arburst;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rready;
  wire [0:0]s_axi4_rresp;
  wire s_axi_aclk;
  wire sck_o_int;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_fixed_reg[1]_0 ;
  wire \size_length_cntr_fixed_reg[1]_1 ;
  wire \size_length_cntr_fixed_reg[1]_2 ;
  wire \size_length_cntr_reg[0] ;
  wire \size_length_cntr_reg[1] ;
  wire start_after_wrap_d1;
  wire transfer_start_d2;
  wire two_byte_xfer_to_spi_clk;
  wire type_of_burst_to_spi_clk;
  wire wb_hpm_done_to_axi;
  wire wrap_around_d10;
  wire wrap_around_d2;
  wire wrap_around_d2_reg;
  wire wrap_around_d2_reg_0;
  wire wrap_around_d2_reg_1;
  wire wrap_around_d2_reg_10;
  wire wrap_around_d2_reg_11;
  wire wrap_around_d2_reg_12;
  wire wrap_around_d2_reg_2;
  wire wrap_around_d2_reg_3;
  wire wrap_around_d2_reg_4;
  wire wrap_around_d2_reg_5;
  wire wrap_around_d2_reg_6;
  wire wrap_around_d2_reg_7;
  wire wrap_around_d2_reg_8;
  wire wrap_around_d2_reg_9;
  wire wrap_around_d3;
  wire wrap_around_reg;
  wire xip_sm_ns;
  wire xip_sm_ps;
  wire xip_sm_ps_reg;

  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2 \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 [0]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (axi_length_to_spi_clk[0]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ),
        .Rst_to_spi(Rst_to_spi),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 [3:2]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_3 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 [3]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [0]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_11 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] (Transmit_Addr_to_spi_clk[4]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_1 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [4:2]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_3 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_13 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_0 ),
        .axi_length_to_spi_clk(axi_length_to_spi_clk[3:1]),
        .data1(data1[1:0]),
        .ext_spi_clk(ext_spi_clk),
        .p_101_in(p_101_in),
        .p_8_in(p_8_in),
        .scndry_out(type_of_burst_to_spi_clk),
        .\size_length_cntr_fixed_reg[0] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ),
        .\spi_addr_wrap_1_reg[2] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .\spi_addr_wrap_1_reg[3] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ),
        .wrap_around_i_2_0(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .wrap_around_i_2_1(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .wrap_around_reg(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .wrap_around_reg_0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .wrap_around_reg_1(\size_length_cntr_fixed_reg[1]_1 ),
        .wrap_around_reg_2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .wrap_around_reg_3(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_12 ),
        .wrap_around_reg_4(\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .wrap_around_reg_5(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_6 \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 [1]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (axi_length_to_spi_clk[1]),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 [2]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 (\size_length_cntr_fixed_reg[1]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_2 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_25 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .axi_length_to_spi_clk({axi_length_to_spi_clk[3:2],axi_length_to_spi_clk[0]}),
        .data1(data1[1:0]),
        .ext_spi_clk(ext_spi_clk),
        .p_101_in(p_101_in),
        .p_46_out(p_46_out),
        .p_8_in(p_8_in),
        .scndry_out(type_of_burst_to_spi_clk),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[0] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_0 ),
        .\size_length_cntr_fixed_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .\size_length_cntr_reg[0] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ),
        .wrap_around_i_2(\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .wrap_around_i_2_0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .wrap_around_i_2_1(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_7 \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[2].AXI_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 [2]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(axi_length_to_spi_clk[2]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_8 \LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 [3]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_13 ),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .SPIXfer_done_int_pulse_d2_reg(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] (type_of_burst_to_spi_clk),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 [1:0]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 [1:0]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_12 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ({\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [5],\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [1]}),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [3:1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 (\size_length_cntr_fixed_reg[1]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [0]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .axi_length_to_spi_clk(axi_length_to_spi_clk[2:0]),
        .cmd_addr_sent(cmd_addr_sent),
        .data1(data1[5:0]),
        .ext_spi_clk(ext_spi_clk),
        .p_3_in1_in(p_3_in1_in),
        .p_8_in(p_8_in),
        .scndry_out(axi_length_to_spi_clk[3]),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ),
        .\size_length_cntr_fixed_reg[1]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ),
        .\size_length_cntr_fixed_reg[1]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ),
        .\size_length_cntr_fixed_reg[1]_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ),
        .\size_length_cntr_fixed_reg[1]_3 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_11 ),
        .\spi_addr_wrap_1_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ),
        .\spi_addr_wrap_1_reg[5] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .wrap_around_i_4_0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .wrap_around_i_4_1(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .wrap_around_i_4_2(\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_9 \LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ({\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 [23:13],\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 [7:0]}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_24 ),
        .Q(Q[0]),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] [3:2]),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] (type_of_burst_to_spi_clk),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_0 (two_byte_xfer_to_spi_clk),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]_1 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_14 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_6 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]_0 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_12 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_13 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] (\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_4 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .cmd_addr_sent(cmd_addr_sent),
        .ext_spi_clk(ext_spi_clk),
        .hw_wd_cntr(hw_wd_cntr),
        .p_3_in1_in(p_3_in1_in),
        .p_46_out(p_46_out),
        .prmry_in(prmry_in),
        .scndry_out(one_byte_xfer_to_spi_clk),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_reg[0] (\LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_2 ),
        .\size_length_cntr_reg[1] (\size_length_cntr_reg[1] ),
        .\size_length_cntr_reg[1]_0 (four_byte_xfer_to_spi_clk),
        .\size_length_cntr_reg[1]_1 (\size_length_cntr_fixed_reg[1]_2 ),
        .\size_length_cntr_reg[1]_2 (\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_2 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_10 \LOGIC_GENERATION_CDC.CPHA_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_21 ),
        .\RATIO_OF_2_GENERATE.Count_reg[0] (CPOL_to_spi_clk),
        .\RATIO_OF_2_GENERATE.Count_reg[0]_0 (\RATIO_OF_2_GENERATE.Count_reg[0] ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(CPHA_to_spi_clk),
        .transfer_start_d2(transfer_start_d2));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_11 \LOGIC_GENERATION_CDC.CPOL_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (CPOL_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_20 ),
        .Q(Q[0]),
        .\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg (\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg_2 (\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .Rst_to_spi(Rst_to_spi),
        .SPIXfer_done_int(SPIXfer_done_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .ext_spi_clk(ext_spi_clk),
        .sck_o_int(sck_o_int),
        .scndry_out(CPHA_to_spi_clk));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_12 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[0].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[0]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_13 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[1].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[1]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_14 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[2].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[2]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_15 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[3].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[3]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_16 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[4].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[4]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_17 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[5].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [5]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[5]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_18 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[6].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [6]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[6]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_19 \LOGIC_GENERATION_CDC.DTR_LEN_SYNC_AXI_SPI_GEN_CDC[7].DTR_LEN_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to [7]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(dtr_length_to_spi_clk[7]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_20 \LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_5 ),
        .Q(Q[0]),
        .RESET_SYNC_AX2S_2(\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_2 ),
        .Rst_to_spi(Rst_to_spi),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .SPIXfer_done_int_pulse_d2_reg(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] [0]),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] (one_byte_xfer_to_spi_clk),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_0 (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]_1 (type_of_burst_to_spi_clk),
        .cmd_addr_sent(cmd_addr_sent),
        .ext_spi_clk(ext_spi_clk),
        .hw_wd_cntr(hw_wd_cntr),
        .p_3_in1_in(p_3_in1_in),
        .scndry_out(two_byte_xfer_to_spi_clk),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized3 \LOGIC_GENERATION_CDC.LD_AXI_DATA_SYNC_AXI2SPI_CDC 
       (.Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .SPIXfer_done_int_reg(SPIXfer_done_int_reg),
        .SR(SR),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[0]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.hw_wd_cntr_reg[1] ),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg (\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 (\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_0 ),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 (\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg_1 ),
        .cmd_addr_sent(cmd_addr_sent),
        .ext_spi_clk(ext_spi_clk),
        .hw_wd_cntr(hw_wd_cntr),
        .p_0_in1_in(p_0_in1_in[18:16]),
        .prmry_in(ld_axi_data_cdc_from_axi_int_2),
        .s_axi4_aclk(s_axi4_aclk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .start_after_wrap_d1(start_after_wrap_d1),
        .wrap_around_d10(wrap_around_d10),
        .wrap_around_reg(wrap_around_reg));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized3_21 \LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_25 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] (\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_1 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ),
        .\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .O(O),
        .RESET_SYNC_AX2S_2(RESET_SYNC_AX2S_2),
        .RESET_SYNC_AX2S_2_0(RESET_SYNC_AX2S_2_0),
        .Rst_to_spi(Rst_to_spi),
        .SPIXfer_done_int(SPIXfer_done_int),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] (\size_length_cntr_fixed_reg[1]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [3:1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [23:10]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .Transmit_Addr_to_spi_clk(Transmit_Addr_to_spi_clk[23:10]),
        .cmd_addr_sent(cmd_addr_sent),
        .data1(data1[19:6]),
        .dtr_length_to_spi_clk(dtr_length_to_spi_clk),
        .ext_spi_clk(ext_spi_clk),
        .length_cntr(length_cntr),
        .prmry_in(load_cmd_cdc_from_axi_int_2),
        .s_axi4_aclk(s_axi4_aclk),
        .scndry_out(scndry_out),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_reg[0] (\size_length_cntr_reg[0] ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d2_reg(wrap_around_d2_reg),
        .wrap_around_d2_reg_0(wrap_around_d2_reg_0),
        .wrap_around_d2_reg_1(wrap_around_d2_reg_1),
        .wrap_around_d2_reg_10(wrap_around_d2_reg_10),
        .wrap_around_d2_reg_11(wrap_around_d2_reg_11),
        .wrap_around_d2_reg_12(wrap_around_d2_reg_12),
        .wrap_around_d2_reg_2(wrap_around_d2_reg_2),
        .wrap_around_d2_reg_3(wrap_around_d2_reg_3),
        .wrap_around_d2_reg_4(wrap_around_d2_reg_4),
        .wrap_around_d2_reg_5(wrap_around_d2_reg_5),
        .wrap_around_d2_reg_6(wrap_around_d2_reg_6),
        .wrap_around_d2_reg_7(wrap_around_d2_reg_7),
        .wrap_around_d2_reg_8(wrap_around_d2_reg_8),
        .wrap_around_d2_reg_9(wrap_around_d2_reg_9),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_22 \LOGIC_GENERATION_CDC.MST_MODF_SYNC_SPI2AXI4_CDC 
       (.D(D),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\LOGIC_GENERATION_CDC.MST_MODF_SYNC_SPI2AXI_CDC_n_0 ),
        .\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg (load_cmd_cdc_from_axi_int_2),
        .\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 (\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg_0 ),
        .S_AXI4_RID_reg(S_AXI4_RID_reg),
        .\dtr_length_reg[4] (\dtr_length_reg[4] ),
        .\dtr_length_reg[5] (\dtr_length_reg[5] ),
        .\dtr_length_reg[6] (\dtr_length_reg[6] ),
        .\dtr_length_reg[7] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .\dtr_length_reg[7]_0 (\dtr_length_reg[7] ),
        .empty(empty),
        .last_data_acked(last_data_acked),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .prmry_in(ld_axi_data_cdc_from_axi_int_2),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .\s_axi4_rid[0]_INST_0_i_1_0 (Rx_FIFO_Full_to_axi4_clk),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(s_axi4_rresp),
        .scndry_out(wb_hpm_done_to_axi),
        .xip_sm_ns(xip_sm_ns),
        .xip_sm_ps(xip_sm_ps),
        .xip_sm_ps_reg(xip_sm_ps_reg));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_23 \LOGIC_GENERATION_CDC.MST_MODF_SYNC_SPI2AXI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 [1]),
        .SPISEL_sync(SPISEL_sync),
        .prmry_in(\LOGIC_GENERATION_CDC.MST_MODF_SYNC_SPI2AXI_CDC_n_0 ),
        .s_axi_aclk(s_axi_aclk));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_24 \LOGIC_GENERATION_CDC.Rx_FIFO_Full_SYNC_SPI2AXI4_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ),
        .s_axi4_aclk(s_axi4_aclk),
        .scndry_out(Rx_FIFO_Full_to_axi4_clk));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_25 \LOGIC_GENERATION_CDC.Rx_FIFO_Full_SYNC_SPI2AXI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 [0]),
        .s_axi_aclk(s_axi_aclk));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_26 \LOGIC_GENERATION_CDC.SS_SYNC_AXI_SPI_GEN_CDC[0].SS_SYNC_AXI2SPI_CDC 
       (.\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0]_0 (\FSM_onehot_RATIO_OF_2_GENERATE.XIP_STD_DUAL_MODE_SP_MEM_GEN.qspi_cntrl_ps_reg[0] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_26 ),
        .Q(Q[2:1]),
        .\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] (\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] ),
        .RESET_SYNC_AX2S_2(RESET_SYNC_AX2S_2_1),
        .Rst_to_spi(Rst_to_spi),
        .ext_spi_clk(ext_spi_clk),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_27 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[0].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [0]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_19 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (Transmit_Addr_to_spi_clk[0]),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]_2 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_25 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_3 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [0]),
        .ext_spi_clk(ext_spi_clk),
        .p_101_in(p_101_in),
        .scndry_out(type_of_burst_to_spi_clk),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_28 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[10].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [10]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ),
        .data1(data1[6]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[2]),
        .scndry_out(Transmit_Addr_to_spi_clk[10]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_29 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[11].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [11]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ),
        .data1(data1[7]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[3]),
        .scndry_out(Transmit_Addr_to_spi_clk[11]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_30 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[12].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [12]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ),
        .data1(data1[8]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[4]),
        .scndry_out(Transmit_Addr_to_spi_clk[12]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_31 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[13].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [13]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ),
        .data1(data1[9]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[5]),
        .scndry_out(Transmit_Addr_to_spi_clk[13]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_32 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[14].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [14]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ),
        .data1(data1[10]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[6]),
        .scndry_out(Transmit_Addr_to_spi_clk[14]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_33 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[15].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [15]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ),
        .data1(data1[11]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[7]),
        .scndry_out(Transmit_Addr_to_spi_clk[15]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_34 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[16].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [16]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ),
        .data1(data1[12]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[8]),
        .scndry_out(Transmit_Addr_to_spi_clk[16]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_35 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[17].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [17]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ),
        .data1(data1[13]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[9]),
        .scndry_out(Transmit_Addr_to_spi_clk[17]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_36 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[18].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [18]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ),
        .data1(data1[14]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[10]),
        .scndry_out(Transmit_Addr_to_spi_clk[18]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_37 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[19].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [19]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ),
        .data1(data1[15]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[11]),
        .scndry_out(Transmit_Addr_to_spi_clk[19]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_38 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[1].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [1]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_18 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] (\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_0 ),
        .ext_spi_clk(ext_spi_clk),
        .p_3_in1_in(p_3_in1_in),
        .p_8_in(p_8_in),
        .scndry_out(scndry_out));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_39 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[20].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [20]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ),
        .data1(data1[16]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[12]),
        .scndry_out(Transmit_Addr_to_spi_clk[20]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_40 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[21].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [21]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ),
        .data1(data1[17]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[13]),
        .scndry_out(Transmit_Addr_to_spi_clk[21]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_41 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[22].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [22]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ),
        .data1(data1[18]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[14]),
        .scndry_out(Transmit_Addr_to_spi_clk[22]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_42 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[23].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [23]),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ),
        .data1(data1[19]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[15]),
        .scndry_out(Transmit_Addr_to_spi_clk[23]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_43 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[2].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [2]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_17 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[1].AXI_LEN_SYNC_AXI2SPI_CDC_n_2 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]_2 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_44 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[3].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [3]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_16 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_3 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_2 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_45 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[4].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [4]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_15 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]_1 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .data1(data1[0]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(Transmit_Addr_to_spi_clk[4]));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_46 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[5].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [5]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_14 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_6 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_5 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_2 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .data1(data1[1]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_47 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[6].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [6]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_13 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_22 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_7 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [6]),
        .data1(data1[2]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_48 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[7].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [7]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_12 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_23 ),
        .Rst_to_spi(Rst_to_spi),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_8 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [7]),
        .data1(data1[3]),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_49 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[8].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [8]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_24 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_9 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [8]),
        .data1(data1[4]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[0]),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_50 \LOGIC_GENERATION_CDC.TRANS_ADDR_SYNC_GEN_CDC[9].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 [9]),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_25 ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]_0 (\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_10 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_2 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [9]),
        .data1(data1[5]),
        .ext_spi_clk(ext_spi_clk),
        .p_0_in1_in(p_0_in1_in[1]),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_51 \LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_6 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_27 [12:8]),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] (Transmit_Addr_to_spi_clk[0]),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_4 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_1 (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] [1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] (\size_length_cntr_fixed_reg[1]_1 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_1 (\LOGIC_GENERATION_CDC.LD_CMD_SYNC_AXI2SPI_CDC_n_25 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_2 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] (axi_length_to_spi_clk[1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[0].AXI_LEN_SYNC_AXI2SPI_CDC_n_3 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_1 (\LOGIC_GENERATION_CDC.AXI_LEN_SYNC_AXI_SPI_GEN_CDC[3].AXI_LEN_SYNC_AXI2SPI_CDC_n_1 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] (\LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_24 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] (\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 (\LOGIC_GENERATION_CDC.HW_XFER_SYNC_AXI2SPI_CDC_n_5 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_1 (one_byte_xfer_to_spi_clk),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_2 ({\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] [23:16],\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] [13:8]}),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_3 ({\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 [7:6],\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]_0 [4:0]}),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_14 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_12 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_13 ),
        .\STD_MODE_CONTROL_GEN.SP_MEM_STD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] (two_byte_xfer_to_spi_clk),
        .cmd_addr_sent(cmd_addr_sent),
        .ext_spi_clk(ext_spi_clk),
        .hw_wd_cntr(hw_wd_cntr),
        .p_101_in(p_101_in),
        .p_3_in1_in(p_3_in1_in),
        .p_46_out(p_46_out),
        .scndry_out(type_of_burst_to_spi_clk),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[1] (\size_length_cntr_fixed_reg[1]_0 ),
        .\size_length_cntr_reg[0] (\LOGIC_GENERATION_CDC.TYP_OF_XFER_SYNC_AXI2SPI_CDC_n_0 ));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized0_52 \LOGIC_GENERATION_CDC.WB_HPM_DONE_SYNC_SPI2AXI_CDC 
       (.s_axi4_aclk(s_axi4_aclk),
        .scndry_out(wb_hpm_done_to_axi));
  TinySoC_axi_quad_spi_0_1_cdc_sync__parameterized2_53 \LOGIC_GENERATION_CDC.WORD_XFER_SYNC_AXI2SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .Rst_to_spi(Rst_to_spi),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(four_byte_xfer_to_spi_clk),
        .size_length_cntr(size_length_cntr[0]),
        .\size_length_cntr_fixed_reg[1] (\size_length_cntr_fixed_reg[1] ),
        .\size_length_cntr_fixed_reg[1]_0 (\size_length_cntr_fixed_reg[1]_2 ),
        .\size_length_cntr_fixed_reg[1]_1 (\size_length_cntr_fixed_reg[1]_1 ),
        .\size_length_cntr_reg[0] (\LOGIC_GENERATION_CDC.BYTE_XFER_SYNC_AXI2SPI_CDC_n_2 ),
        .\size_length_cntr_reg[0]_0 (two_byte_xfer_to_spi_clk));
  FDRE \LOGIC_GENERATION_CDC.ld_axi_data_cdc_from_axi_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(ld_axi_data_cdc_from_axi_int_2),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .Q(\LOGIC_GENERATION_CDC.load_axi_data_cdc_to_spi_d3_reg_0 ),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(\LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_d3_reg_0 ),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_CDC.load_cmd_cdc_from_axi_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(load_cmd_cdc_from_axi_int_2),
        .R(bus2ip_reset_ipif4_inverted));
endmodule

module TinySoC_axi_quad_spi_0_1_xip_status_reg
   (Q,
    SR,
    D,
    s_axi_aclk);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input s_axi_aclk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire s_axi_aclk;

  FDRE \XIPSR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [4:0]\^dest_out_bin ;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  assign dest_out_bin[5] = \dest_graysync_ff[1] [5];
  assign dest_out_bin[4:0] = \^dest_out_bin [4:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [4:0]\^dest_out_bin ;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  assign dest_out_bin[5] = \dest_graysync_ff[1] [5];
  assign dest_out_bin[4:0] = \^dest_out_bin [4:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[3] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[3] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [5]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [4]),
        .I5(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [5]),
        .I4(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [5]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[1] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module TinySoC_axi_quad_spi_0_1_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module TinySoC_axi_quad_spi_0_1_xpm_counter_updn
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    E,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_2__1_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized0
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    E,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized1
   (src_in_bin,
    \count_value_i_reg[0]_0 ,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    \count_value_i_reg[0]_2 ,
    rd_clk);
  output [1:0]src_in_bin;
  output \count_value_i_reg[0]_0 ;
  output [1:0]DI;
  output \count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_1 ;
  input \count_value_i_reg[0]_2 ;
  input rd_clk;

  wire [1:0]DI;
  wire [1:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[0]_2 ;
  wire \count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [1:0]src_in_bin;

  LUT6 #(
    .INIT(64'h1210212122201121)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[0]_2 ),
        .I2(\count_value_i_reg[0]_1 [1]),
        .I3(\count_value_i_reg[0]_1 [0]),
        .I4(ram_empty_i),
        .I5(rd_en),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22202222)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_2 ),
        .I2(\count_value_i_reg[0]_1 [1]),
        .I3(\count_value_i_reg[0]_1 [0]),
        .I4(ram_empty_i),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBDBFF5F542400A0A)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(rd_en),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[0]_1 [0]),
        .I4(\count_value_i_reg[0]_1 [1]),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[1]_0 ),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .O(src_in_bin[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[3]_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \grdc.rd_data_count_i[3]_i_5 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .O(DI[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized2
   (Q,
    E,
    src_in_bin,
    \count_value_i_reg[1]_0 ,
    D,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[4]_0 ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[3]_0 ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ,
    DI,
    \grdc.rd_data_count_i_reg[6] ,
    S,
    \grdc.rd_data_count_i_reg[6]_0 ,
    \count_value_i_reg[6]_0 ,
    rd_clk);
  output [6:0]Q;
  output [0:0]E;
  output [4:0]src_in_bin;
  output \count_value_i_reg[1]_0 ;
  output [5:0]D;
  output [3:0]\count_value_i_reg[3]_0 ;
  output [0:0]\count_value_i_reg[4]_0 ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \grdc.rd_data_count_i_reg[3] ;
  input \grdc.rd_data_count_i_reg[3]_0 ;
  input [4:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  input [3:0]DI;
  input [1:0]\grdc.rd_data_count_i_reg[6] ;
  input [0:0]S;
  input [5:0]\grdc.rd_data_count_i_reg[6]_0 ;
  input \count_value_i_reg[6]_0 ;
  input rd_clk;

  wire [5:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [0:0]\count_value_i_reg[4]_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ;
  wire [4:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  wire \grdc.rd_data_count_i[3]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_7_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_8_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_9_n_0 ;
  wire \grdc.rd_data_count_i[6]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[6]_i_7_n_0 ;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire \grdc.rd_data_count_i_reg[3]_0 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_3 ;
  wire [1:0]\grdc.rd_data_count_i_reg[6] ;
  wire [5:0]\grdc.rd_data_count_i_reg[6]_0 ;
  wire \grdc.rd_data_count_i_reg[6]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[6]_i_2_n_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [4:0]src_in_bin;
  wire [0:0]\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAABA5545)) 
    \count_value_i[0]_i_1__4 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8A00000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I3(Q[4]),
        .O(src_in_bin[3]));
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I2(Q[3]),
        .O(src_in_bin[2]));
  LUT6 #(
    .INIT(64'hEFAAFFEF10550010)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .I3(Q[1]),
        .I4(\grdc.rd_data_count_i_reg[3]_0 ),
        .I5(Q[3]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h9A55AA9A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .I3(Q[1]),
        .I4(\grdc.rd_data_count_i_reg[3]_0 ),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFDD4D)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(\grdc.rd_data_count_i_reg[3]_0 ),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [3]),
        .O(\count_value_i_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [2]),
        .O(\count_value_i_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [1]),
        .O(\count_value_i_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(\count_value_i_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_3 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [4]),
        .O(\count_value_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [1]),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [0]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [2]),
        .O(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[3]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [3]),
        .O(\grdc.rd_data_count_i[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \grdc.rd_data_count_i[3]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3]_0 ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[6]_0 [2]),
        .O(\grdc.rd_data_count_i[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \grdc.rd_data_count_i[3]_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[3]_0 ),
        .I3(Q[1]),
        .I4(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .O(\grdc.rd_data_count_i[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[3]_i_9 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [0]),
        .O(\grdc.rd_data_count_i[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[6]_i_6 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [5]),
        .O(\grdc.rd_data_count_i[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[6]_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [4]),
        .O(\grdc.rd_data_count_i[6]_i_7_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\grdc.rd_data_count_i_reg[3]_i_1_n_0 ,\grdc.rd_data_count_i_reg[3]_i_1_n_1 ,\grdc.rd_data_count_i_reg[3]_i_1_n_2 ,\grdc.rd_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O({D[2:0],\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\grdc.rd_data_count_i[3]_i_6_n_0 ,\grdc.rd_data_count_i[3]_i_7_n_0 ,\grdc.rd_data_count_i[3]_i_8_n_0 ,\grdc.rd_data_count_i[3]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[6]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED [3:2],\grdc.rd_data_count_i_reg[6]_i_2_n_2 ,\grdc.rd_data_count_i_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\grdc.rd_data_count_i_reg[6] }),
        .O({\NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED [3],D[5:3]}),
        .S({1'b0,S,\grdc.rd_data_count_i[6]_i_6_n_0 ,\grdc.rd_data_count_i[6]_i_7_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized2_4
   (Q,
    D,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    \gwdc.wr_data_count_i_reg[6] ,
    E,
    wr_clk);
  output [6:0]Q;
  output [5:0]D;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [6:0]\gwdc.wr_data_count_i_reg[6] ;
  input [0:0]E;
  input wr_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire [6:0]\gwdc.wr_data_count_i_reg[6] ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;
  wire [0:0]\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[6] [3]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[6] [2]),
        .O(\gwdc.wr_data_count_i[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[6] [1]),
        .O(\gwdc.wr_data_count_i[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[6] [0]),
        .O(\gwdc.wr_data_count_i[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_2 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[6] [6]),
        .O(\gwdc.wr_data_count_i[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_3 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[6] [5]),
        .O(\gwdc.wr_data_count_i[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_4 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[6] [4]),
        .O(\gwdc.wr_data_count_i[6]_i_4_n_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({D[2:0],\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\gwdc.wr_data_count_i[3]_i_2_n_0 ,\gwdc.wr_data_count_i[3]_i_3_n_0 ,\gwdc.wr_data_count_i[3]_i_4_n_0 ,\gwdc.wr_data_count_i[3]_i_5_n_0 }));
  CARRY4 \gwdc.wr_data_count_i_reg[6]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED [3:2],\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED [3],D[5:3]}),
        .S({1'b0,\gwdc.wr_data_count_i[6]_i_2_n_0 ,\gwdc.wr_data_count_i[6]_i_3_n_0 ,\gwdc.wr_data_count_i[6]_i_4_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized3
   (ram_empty_i0,
    E,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_1 ,
    \count_value_i_reg[0]_0 ,
    rd_clk);
  output ram_empty_i0;
  input [0:0]E;
  input \gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [5:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  input \count_value_i_reg[0]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [1:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire [5:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h04FB)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rd_en),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\count_value_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .I3(\count_value_i[5]_i_2__2_n_0 ),
        .I4(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8A00000000)) 
    \count_value_i[5]_i_2__2 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[5]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[1] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[2] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I2(E),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [1]),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_1 [0]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [2]),
        .I5(\count_value_i_reg_n_0_[2] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [4]),
        .I2(\count_value_i_reg_n_0_[3] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_1 [3]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [5]),
        .I5(\count_value_i_reg_n_0_[5] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized3_5
   (Q,
    D,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    E,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ,
    wr_clk);
  output [5:0]Q;
  output [2:0]D;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [0:0]E;
  input [5:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  input wr_clk;

  wire [2:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire [5:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 ));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(E),
        .DI(Q[3:0]),
        .O({D[0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED [3:2],D[2:1]}),
        .S({1'b0,1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 }));
endmodule

(* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "64" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "6" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "fwft" *) 
(* RELATED_CLOCKS = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
module TinySoC_axi_quad_spi_0_1_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "64" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "2048" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "59" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "59" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* RD_DC_WIDTH_EXT = "7" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* WR_DC_WIDTH_EXT = "7" *) 
  (* WR_DEPTH_LOG = "6" *) 
  (* WR_PNTR_WIDTH = "6" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  TinySoC_axi_quad_spi_0_1_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "64" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "2048" *) (* FIFO_WRITE_DEPTH = "64" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "59" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "59" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "6" *) (* RD_DC_WIDTH_EXT = "7" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "6" *) (* READ_DATA_WIDTH = "32" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) 
(* WR_DATA_COUNT_WIDTH = "6" *) (* WR_DC_WIDTH_EXT = "7" *) (* WR_DEPTH_LOG = "6" *) 
(* WR_PNTR_WIDTH = "6" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module TinySoC_axi_quad_spi_0_1_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [5:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [5:0]diff_pntr_pe;
  wire [6:4]diff_pntr_pf_q;
  wire [6:4]diff_pntr_pf_q0;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire [6:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [6:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire [5:0]rd_pntr_ext;
  wire [5:0]rd_pntr_wr;
  wire [5:0]rd_pntr_wr_cdc;
  wire [6:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_0;
  wire rdp_inst_n_13;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [6:0]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire [6:0]wr_pntr_ext;
  wire [6:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [5:0]wr_pntr_rd_cdc;
  wire [6:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7883)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.E(wr_pntr_plus1_pf_carry),
        .Q(count_value_i),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(src_in_bin00_out));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "6" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .E(wr_pntr_plus1_pf_carry),
        .Q(rd_pntr_wr),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_plus1_pf),
        .\reg_out_i_reg[0]_0 (\gen_cdc_pntr.rpw_gray_reg_n_7 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec_2 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe),
        .DI(p_1_in),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .S({rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23}),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] (rdp_inst_n_24),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext[5:3]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[5]_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ),
        .\reg_out_i_reg[5]_1 (wr_pntr_rd_cdc));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec__parameterized0_3 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 }),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 }),
        .S(\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_5 ),
        .\grdc.rd_data_count_i_reg[6] ({rdp_inst_n_0,rd_pntr_ext[5:1]}),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[4]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .\reg_out_i_reg[6]_0 (rd_rst_busy));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "6" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[5:0]));
  LUT4 #(
    .INIT(16'hE0CC)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(empty),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  LUT5 #(
    .INIT(32'hDCCCC444)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(almost_empty),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(ram_empty_i),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h15F5)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI({\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .Q(rd_pntr_ext[1:0]),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[0]_1 (curr_fwft_state),
        .\count_value_i_reg[0]_2 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_5 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out[1:0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_7 ),
        .Q(full),
        .S(wrst_busy));
  LUT4 #(
    .INIT(16'hAABA)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005557)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[5:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h2C)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized2 rdp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .E(ram_rd_en_i),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S(\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (rdp_inst_n_13),
        .\count_value_i_reg[3]_0 ({rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23}),
        .\count_value_i_reg[4]_0 (rdp_inst_n_24),
        .\count_value_i_reg[6]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_2 ),
        .\grdc.rd_data_count_i_reg[3]_0 (\gen_fwft.rdpp1_inst_n_5 ),
        .\grdc.rd_data_count_i_reg[6] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .\grdc.rd_data_count_i_reg[6]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out[6:2]));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q(curr_fwft_state),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdp_inst_n_13),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_1 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized2_4 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gwdc.wr_data_count_i_reg[6] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized3_5 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_counter_updn__parameterized0 wrpp2_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5}),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  TinySoC_axi_quad_spi_0_1_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(curr_fwft_state),
        .SR(\grdc.rd_data_count_i0 ),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ,
    clr_full,
    overflow_i0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  output clr_full;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00FE000000FE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    Q,
    \reg_out_i_reg[0]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    clr_full,
    almost_full,
    rst_d1,
    wrst_busy,
    wr_en,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ,
    E,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [5:0]Q;
  output \reg_out_i_reg[0]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input clr_full;
  input almost_full;
  input rst_d1;
  input wrst_busy;
  input wr_en;
  input [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 ;
  input [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [5:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ;
  input [0:0]E;
  input [5:0]D;
  input wr_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire almost_full;
  wire clr_full;
  wire [5:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire going_afull;
  wire leaving_afull;
  wire \reg_out_i_reg[0]_0 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'hFF00FFFE0000000E)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(leaving_afull),
        .I1(going_afull),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I3(rst),
        .I4(clr_full),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I5(wr_en),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I2(leaving_afull),
        .I3(E),
        .I4(clr_full),
        .O(\reg_out_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec_2
   (\reg_out_i_reg[5]_0 ,
    Q,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    DI,
    S,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ,
    \reg_out_i_reg[0]_0 ,
    \reg_out_i_reg[5]_1 ,
    rd_clk);
  output \reg_out_i_reg[5]_0 ;
  output [5:0]Q;
  output [5:0]D;
  input [2:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [0:0]DI;
  input [3:0]S;
  input [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  input \reg_out_i_reg[0]_0 ;
  input [5:0]\reg_out_i_reg[5]_1 ;
  input rd_clk;

  wire [5:0]D;
  wire [0:0]DI;
  wire [5:0]Q;
  wire [3:0]S;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 ;
  wire [2:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire rd_clk;
  wire \reg_out_i_reg[0]_0 ;
  wire \reg_out_i_reg[5]_0 ;
  wire [5:0]\reg_out_i_reg[5]_1 ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(D[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED [3:2],D[5:4]}),
        .S({1'b0,1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .O(\reg_out_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [6:0]Q;
  input wrst_busy;
  input [6:0]D;
  input wr_clk;

  wire [6:0]D;
  wire [6:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_quad_spi_0_1_xpm_fifo_reg_vec__parameterized0_3
   (DI,
    Q,
    \reg_out_i_reg[4]_0 ,
    S,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[6] ,
    \reg_out_i_reg[6]_0 ,
    D,
    rd_clk);
  output [1:0]DI;
  output [5:0]Q;
  output [1:0]\reg_out_i_reg[4]_0 ;
  output [0:0]S;
  input \grdc.rd_data_count_i_reg[3] ;
  input [5:0]\grdc.rd_data_count_i_reg[6] ;
  input \reg_out_i_reg[6]_0 ;
  input [6:0]D;
  input rd_clk;

  wire [6:0]D;
  wire [1:0]DI;
  wire [5:0]Q;
  wire [0:0]S;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire [5:0]\grdc.rd_data_count_i_reg[6] ;
  wire rd_clk;
  wire [1:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg[6]_0 ;
  wire \reg_out_i_reg_n_0_[6] ;

  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6] [1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6] [0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[6]_i_3 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6] [3]),
        .O(\reg_out_i_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[6]_i_4 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6] [2]),
        .O(\reg_out_i_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hD22D)) 
    \grdc.rd_data_count_i[6]_i_5 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[6] [4]),
        .I2(\grdc.rd_data_count_i_reg[6] [5]),
        .I3(\reg_out_i_reg_n_0_[6] ),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg_n_0_[6] ),
        .R(\reg_out_i_reg[6]_0 ));
endmodule

module TinySoC_axi_quad_spi_0_1_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    d_out_reg,
    E,
    wr_rst_busy,
    SR,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    Q,
    \guf.underflow_i_reg ,
    rd_en);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output d_out_reg;
  output [0:0]E;
  output wr_rst_busy;
  output [0:0]SR;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input [1:0]Q;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire [0:0]E;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire d_out_reg;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_quad_spi_0_1_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \grdc.rd_data_count_i[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(\guf.underflow_i_reg ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "64" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) 
(* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "6" *) (* P_WIDTH_ADDR_READ_B = "6" *) (* P_WIDTH_ADDR_WRITE_A = "6" *) 
(* P_WIDTH_ADDR_WRITE_B = "6" *) (* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) 
(* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module TinySoC_axi_quad_spi_0_1_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(doutb[15:0]),
        .DOBDO(doutb[31:16]),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ena,ena,ena,ena}));
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
