// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  3 18:47:37 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_axi_tft_0_0/TinySoC_axi_tft_0_0_sim_netlist.v
// Design      : TinySoC_axi_tft_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TinySoC_axi_tft_0_0,axi_tft,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_tft,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module TinySoC_axi_tft_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    m_axi_aclk,
    m_axi_aresetn,
    md_error,
    ip2intc_irpt,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
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
    sys_tft_clk,
    tft_hsync,
    tft_vsync,
    tft_de,
    tft_dps,
    tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI_MM, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI_MM, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input m_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_aresetn;
  output md_error;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 TFT_INTR INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME TFT_INTR, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 60000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input m_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARVALID" *) output m_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARADDR" *) output [31:0]m_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARLEN" *) output [7:0]m_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARSIZE" *) output [2:0]m_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARBURST" *) output [1:0]m_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARPROT" *) output [2:0]m_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARCACHE" *) output [3:0]m_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RREADY" *) output m_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RVALID" *) input m_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RDATA" *) input [63:0]m_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RRESP" *) input [1:0]m_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RLAST" *) input m_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWREADY" *) input m_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWVALID" *) output m_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWADDR" *) output [31:0]m_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWLEN" *) output [7:0]m_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWSIZE" *) output [2:0]m_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWBURST" *) output [1:0]m_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWPROT" *) output [2:0]m_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWCACHE" *) output [3:0]m_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WREADY" *) input m_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WVALID" *) output m_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WDATA" *) output [63:0]m_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WSTRB" *) output [7:0]m_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WLAST" *) output m_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BREADY" *) output m_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BVALID" *) input m_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BRESP" *) input [1:0]m_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_MM, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 60000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 TFT_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TFT_CLK, ASSOCIATED_BUSIF VGA_INTF:DVI_INTF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input sys_tft_clk;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF HSYNC" *) output tft_hsync;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF VSYNC" *) output tft_vsync;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF DE" *) output tft_de;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF DPS" *) output tft_dps;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF CLK" *) output tft_vga_clk;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF RED" *) output [5:0]tft_vga_r;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF GREEN" *) output [5:0]tft_vga_g;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF BLUE" *) output [5:0]tft_vga_b;

  wire ip2intc_irpt;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
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
  wire sys_tft_clk;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire [5:0]tft_vga_b;
  wire tft_vga_clk;
  wire [5:0]tft_vga_g;
  wire [5:0]tft_vga_r;
  wire tft_vsync;
  wire NLW_U0_tft_dvi_clk_n_UNCONNECTED;
  wire NLW_U0_tft_dvi_clk_p_UNCONNECTED;
  wire NLW_U0_tft_iic_scl_o_UNCONNECTED;
  wire NLW_U0_tft_iic_scl_t_UNCONNECTED;
  wire NLW_U0_tft_iic_sda_o_UNCONNECTED;
  wire NLW_U0_tft_iic_sda_t_UNCONNECTED;
  wire [11:0]NLW_U0_tft_dvi_data_UNCONNECTED;

  (* C_DEFAULT_TFT_BASE_ADDR = "64'b0000000000000000000000000000000000000110000000000000000000000000" *) 
  (* C_EN_I2C_INTF = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_I2C_SLAVE_ADDR = "8'b01110110" *) 
  (* C_MAX_BURST_LEN = "128" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_DATA_WIDTH = "64" *) 
  (* C_S_AXI_ADDR_WIDTH = "3" *) 
  (* C_TFT_INTERFACE = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  TinySoC_axi_tft_0_0_axi_tft U0
       (.ip2intc_irpt(ip2intc_irpt),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
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
        .sys_tft_clk(sys_tft_clk),
        .tft_de(tft_de),
        .tft_dps(tft_dps),
        .tft_dvi_clk_n(NLW_U0_tft_dvi_clk_n_UNCONNECTED),
        .tft_dvi_clk_p(NLW_U0_tft_dvi_clk_p_UNCONNECTED),
        .tft_dvi_data(NLW_U0_tft_dvi_data_UNCONNECTED[11:0]),
        .tft_hsync(tft_hsync),
        .tft_iic_scl_i(1'b0),
        .tft_iic_scl_o(NLW_U0_tft_iic_scl_o_UNCONNECTED),
        .tft_iic_scl_t(NLW_U0_tft_iic_scl_t_UNCONNECTED),
        .tft_iic_sda_i(1'b0),
        .tft_iic_sda_o(NLW_U0_tft_iic_sda_o_UNCONNECTED),
        .tft_iic_sda_t(NLW_U0_tft_iic_sda_t_UNCONNECTED),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module TinySoC_axi_tft_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    Bus_RNW_reg_reg_0,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[3] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_wrce,
    \TFT_iic_reg_data_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    TFT_dps_reg_reg,
    TFT_intr_en_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    bus2ip_wrce_or,
    bus2ip_rdce_or,
    Bus_RNW_reg_reg_1,
    cs_ce_clr,
    Q,
    s_axi_aclk,
    s_axi_wdata,
    tft_dps,
    prmry_in,
    TFT_intr_en_reg_0,
    bus2ip_rnw_i,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ,
    bus2ip_sreset,
    TFT_status_reg_reg,
    \IP2Bus_Data_reg[28] ,
    TFT_status_reg,
    \IP2Bus_Data_reg[0] ,
    TFT_iic_xfer);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output Bus_RNW_reg_reg_0;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[3] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output [1:0]bus2ip_wrce;
  output \TFT_iic_reg_data_reg[7] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output TFT_dps_reg_reg;
  output TFT_intr_en_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output bus2ip_wrce_or;
  output bus2ip_rdce_or;
  output Bus_RNW_reg_reg_1;
  input cs_ce_clr;
  input Q;
  input s_axi_aclk;
  input [2:0]s_axi_wdata;
  input tft_dps;
  input prmry_in;
  input TFT_intr_en_reg_0;
  input bus2ip_rnw_i;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ;
  input bus2ip_sreset;
  input TFT_status_reg_reg;
  input [2:0]\IP2Bus_Data_reg[28] ;
  input TFT_status_reg;
  input [0:0]\IP2Bus_Data_reg[0] ;
  input TFT_iic_xfer;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \IP2Bus_Data[28]_i_2_n_0 ;
  wire \IP2Bus_Data[31]_i_2_n_0 ;
  wire [0:0]\IP2Bus_Data_reg[0] ;
  wire [2:0]\IP2Bus_Data_reg[28] ;
  wire Q;
  wire TFT_dps_reg_reg;
  wire \TFT_iic_reg_data_reg[7] ;
  wire TFT_iic_xfer;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire bus2ip_rdce_or;
  wire bus2ip_rnw_i;
  wire bus2ip_sreset;
  wire [1:0]bus2ip_wrce;
  wire bus2ip_wrce_or;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[3] ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire tft_dps;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\IP2Bus_Data_reg[0] ),
        .I3(bus2ip_sreset),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I5(TFT_iic_xfer),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(bus2ip_sreset),
        .I5(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(bus2ip_sreset),
        .O(Bus_RNW_reg_reg_1));
  LUT6 #(
    .INIT(64'h00000A0C00000A00)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(TFT_intr_en_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I4(\IP2Bus_Data[28]_i_2_n_0 ),
        .I5(\IP2Bus_Data_reg[28] [2]),
        .O(TFT_intr_en_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \IP2Bus_Data[28]_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(bus2ip_sreset),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\IP2Bus_Data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0AC0000A0A0)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(tft_dps),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I4(\IP2Bus_Data[28]_i_2_n_0 ),
        .I5(\IP2Bus_Data_reg[28] [1]),
        .O(TFT_dps_reg_reg));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(\IP2Bus_Data_reg[28] [0]),
        .I2(\IP2Bus_Data[31]_i_2_n_0 ),
        .I3(prmry_in),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\IP2Bus_Data[28]_i_2_n_0 ),
        .O(\TFT_iic_reg_data_reg[7] ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(TFT_status_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(bus2ip_sreset),
        .I5(Bus_RNW_reg_reg_0),
        .O(\IP2Bus_Data[31]_i_2_n_0 ));
  TinySoC_axi_tft_0_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  TinySoC_axi_tft_0_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TFT_base_addr[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_dps_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(tft_dps),
        .O(s_axi_wdata_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TFT_iic_reg_data[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_intr_en_i_1
       (.I0(s_axi_wdata[2]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(TFT_intr_en_reg_0),
        .O(\s_axi_wdata[3] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_on_reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(prmry_in),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3100)) 
    TFT_status_reg_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(bus2ip_sreset),
        .I2(Bus_RNW_reg_reg_0),
        .I3(TFT_status_reg_reg),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    bus2ip_rdce_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(bus2ip_rdce_or));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h33333332)) 
    bus2ip_wrce_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(bus2ip_wrce_or));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module TinySoC_axi_tft_0_0_async_fifo_fg
   (D,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    \gen_wr_a.gen_word_narrow.mem_reg_0 ,
    tft_rst,
    m_axi_aclk,
    wr_en,
    Q,
    sys_tft_clk,
    \guf.underflow_i_reg );
  output [5:0]D;
  output [5:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  output [5:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  input tft_rst;
  input m_axi_aclk;
  input wr_en;
  input [35:0]Q;
  input sys_tft_clk;
  input [0:0]\guf.underflow_i_reg ;

  wire [5:0]D;
  wire [35:0]Q;
  wire [35:0]fifo_out_data;
  wire full;
  wire [5:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  wire [5:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  wire [0:0]\guf.underflow_i_reg ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tft_rst;
  wire wr_en;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_10 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_11 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_13 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_14 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_4 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_5 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_51 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_53 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_54 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_55 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_56 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_57 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_58 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_59 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_60 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_61 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_62 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_64 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_65 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_8 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_9 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[0]_i_1 
       (.I0(fifo_out_data[18]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[0]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[1]_i_1 
       (.I0(fifo_out_data[19]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[2]_i_1 
       (.I0(fifo_out_data[20]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[2]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[3]_i_1 
       (.I0(fifo_out_data[21]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[3]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[4]_i_1 
       (.I0(fifo_out_data[22]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[4]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[5]_i_1 
       (.I0(fifo_out_data[23]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[5]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[0]_i_1 
       (.I0(fifo_out_data[24]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[6]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[1]_i_1 
       (.I0(fifo_out_data[25]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[2]_i_1 
       (.I0(fifo_out_data[26]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[8]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[3]_i_1 
       (.I0(fifo_out_data[27]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[9]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[4]_i_1 
       (.I0(fifo_out_data[28]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[10]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[5]_i_1 
       (.I0(fifo_out_data[29]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [5]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[0]_i_1 
       (.I0(fifo_out_data[30]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[12]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[1]_i_1 
       (.I0(fifo_out_data[31]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[13]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[2]_i_1 
       (.I0(fifo_out_data[32]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[14]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[3]_i_1 
       (.I0(fifo_out_data[33]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[15]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[4]_i_1 
       (.I0(fifo_out_data[34]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[16]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[5]_i_1 
       (.I0(fifo_out_data[35]),
        .I1(\guf.underflow_i_reg ),
        .I2(fifo_out_data[17]),
        .O(D[5]));
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "36" *) 
  (* READ_MODE = "fwft" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "36" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_64 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_13 ),
        .data_valid(\xpm_fifo_instance.xpm_fifo_async_inst_n_65 ),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din({Q[17:0],Q[35:18]}),
        .dout(fifo_out_data),
        .empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_51 ),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\xpm_fifo_instance.xpm_fifo_async_inst_n_11 ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(sys_tft_clk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_53 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_54 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_55 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_56 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_57 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_58 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_59 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_60 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_61 }),
        .rd_en(\guf.underflow_i_reg ),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(tft_rst),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\xpm_fifo_instance.xpm_fifo_async_inst_n_62 ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_14 ),
        .wr_clk(m_axi_aclk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_4 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_5 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_7 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_8 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_9 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_10 }),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module TinySoC_axi_tft_0_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    state1__2,
    Q,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[3] ,
    s_axi_rdata,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    bus2ip_wrce,
    \TFT_iic_reg_data_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    TFT_dps_reg_reg,
    TFT_intr_en_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_wrce_or,
    bus2ip_rdce_or,
    Bus_RNW_reg_reg,
    cs_ce_clr,
    s_axi_aclk,
    bus2ip_sreset,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awready,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    s_axi_bready,
    s_axi_rready,
    s_axi_wdata,
    tft_dps,
    prmry_in,
    TFT_intr_en_reg_0,
    D,
    \s_axi_rdata_i_reg[31] ,
    s_axi_araddr,
    s_axi_awaddr,
    TFT_status_reg_reg,
    \IP2Bus_Data_reg[28] ,
    TFT_status_reg,
    \IP2Bus_Data_reg[0] ,
    TFT_iic_xfer);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output state1__2;
  output [2:0]Q;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[3] ;
  output [26:0]s_axi_rdata;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [1:0]bus2ip_wrce;
  output \TFT_iic_reg_data_reg[7] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output TFT_dps_reg_reg;
  output TFT_intr_en_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_wrce_or;
  output bus2ip_rdce_or;
  output Bus_RNW_reg_reg;
  input cs_ce_clr;
  input s_axi_aclk;
  input bus2ip_sreset;
  input s_axi_rvalid_i_reg;
  input s_axi_bvalid_i_reg;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_awready;
  input bus2ip_rdce_d1;
  input bus2ip_rdce_d2;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_wdata;
  input tft_dps;
  input prmry_in;
  input TFT_intr_en_reg_0;
  input [0:0]D;
  input [26:0]\s_axi_rdata_i_reg[31] ;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  input TFT_status_reg_reg;
  input [2:0]\IP2Bus_Data_reg[28] ;
  input TFT_status_reg;
  input [0:0]\IP2Bus_Data_reg[0] ;
  input TFT_iic_xfer;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\IP2Bus_Data_reg[0] ;
  wire [2:0]\IP2Bus_Data_reg[28] ;
  wire [2:0]Q;
  wire TFT_dps_reg_reg;
  wire \TFT_iic_reg_data_reg[7] ;
  wire TFT_iic_xfer;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire [1:0]bus2ip_wrce;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_reg;
  wire [26:0]s_axi_rdata;
  wire [26:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_reg;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[3] ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wvalid;
  wire state1__2;
  wire tft_dps;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  TinySoC_axi_tft_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[28] (\IP2Bus_Data_reg[28] ),
        .Q(Q),
        .TFT_dps_reg_reg(TFT_dps_reg_reg),
        .\TFT_iic_reg_data_reg[7] (\TFT_iic_reg_data_reg[7] ),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_intr_en_reg(TFT_intr_en_reg),
        .TFT_intr_en_reg_0(TFT_intr_en_reg_0),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(TFT_status_reg_reg),
        .bus2ip_rdce_d1(bus2ip_rdce_d1),
        .bus2ip_rdce_d2(bus2ip_rdce_d2),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce(bus2ip_wrce),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[3] (\s_axi_wdata[3] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wvalid(s_axi_wvalid),
        .state1__2(state1__2),
        .tft_dps(tft_dps));
endmodule

(* ORIG_REF_NAME = "axi_master_burst" *) 
module TinySoC_axi_tft_0_0_axi_master_burst
   (m_axi_wvalid,
    m_axi_arsize,
    m_axi_awburst,
    m_axi_arvalid,
    bus2ip_mst_cmplt,
    md_error,
    bus2ip_mst_cmdack,
    sig_rd2llink_strm_tlast,
    m_axi_wstrb,
    sig_rd_discontinue,
    sig_llink2cmd_rd_busy,
    m_axi_rready,
    sig_m_valid_out_reg,
    E,
    bus2ip_mstrd_eof_n,
    m_axi_awaddr,
    m_axi_awlen,
    Q,
    m_axi_bready,
    m_axi_aclk,
    ip2bus_mstrd_req,
    IP2Bus_Mst_Type,
    scndry_out,
    m_axi_aresetn,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_rresp,
    IP2Bus_MstRd_dst_rdy,
    m_axi_wready,
    eof_n,
    m_axi_arready,
    m_axi_rdata,
    m_axi_bvalid,
    D);
  output m_axi_wvalid;
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output bus2ip_mst_cmplt;
  output md_error;
  output bus2ip_mst_cmdack;
  output sig_rd2llink_strm_tlast;
  output [0:0]m_axi_wstrb;
  output sig_rd_discontinue;
  output sig_llink2cmd_rd_busy;
  output m_axi_rready;
  output sig_m_valid_out_reg;
  output [0:0]E;
  output bus2ip_mstrd_eof_n;
  output [31:0]m_axi_awaddr;
  output [6:0]m_axi_awlen;
  output [35:0]Q;
  output m_axi_bready;
  input m_axi_aclk;
  input ip2bus_mstrd_req;
  input IP2Bus_Mst_Type;
  input scndry_out;
  input m_axi_aresetn;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input IP2Bus_MstRd_dst_rdy;
  input m_axi_wready;
  input eof_n;
  input m_axi_arready;
  input [35:0]m_axi_rdata;
  input m_axi_bvalid;
  input [24:0]D;

  wire [24:0]D;
  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_Mst_Type;
  wire I_RD_LLINK_ADAPTER_n_4;
  wire \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ;
  wire I_RD_WR_CNTRL_MODULE_n_13;
  wire I_RD_WR_CNTRL_MODULE_n_14;
  wire \I_READ_STREAM_SKID_BUF/p_0_in2_in ;
  wire \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ;
  wire [35:0]Q;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire eof_n;
  wire ip2bus_mstrd_req;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [6:0]m_axi_awlen;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [35:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [0:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire scndry_out;
  wire [28:4]sig_addr_ms_slice;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire [3:3]sig_cmd_mst_be;
  wire sig_cmd_mstrd_req0;
  wire sig_cmd_type_req;
  wire sig_doing_read_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire sig_m_valid_out_reg;
  wire sig_push_cmd_reg;
  wire sig_push_status1_out;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd2llink_strm_tvalid;
  wire sig_rd_discontinue;
  wire sig_rd_llink_enable;
  wire sig_rdwr2llink_int_err;
  wire [4:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2cmd_stat_reset;
  wire sig_rst2llink_reset;
  wire sig_rst2rdwr_cntlr_reset;
  wire sig_status_reg_empty;

  TinySoC_axi_tft_0_0_axi_master_burst_cmd_status I_CMD_STATUS_MODULE
       (.D(D),
        .E(sig_push_cmd_reg),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q(sig_addr_ms_slice),
        .SR(sig_cmd_mstrd_req0),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .m_axi_aclk(m_axi_aclk),
        .md_error(md_error),
        .out(sig_rst2cmd_stat_reset),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_cmplt_reg_reg_0(bus2ip_mst_cmplt),
        .sig_cmd_cmplt_reg_reg_1(sig_llink2cmd_rd_busy),
        .sig_cmd_mst_be(sig_cmd_mst_be),
        .sig_cmd_type_req(sig_cmd_type_req),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_doing_read_reg_reg_0(I_RD_WR_CNTRL_MODULE_n_14),
        .sig_error_sh_reg_reg_0(I_RD_WR_CNTRL_MODULE_n_13),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd_llink_enable(sig_rd_llink_enable),
        .sig_rd_sts_slverr_reg_reg(sig_rst2rdwr_cntlr_reset),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_status_reg_empty(sig_status_reg_empty));
  TinySoC_axi_tft_0_0_axi_master_burst_rd_llink I_RD_LLINK_ADAPTER
       (.E(\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .eof_n(eof_n),
        .eof_n_reg(sig_rd2llink_strm_tlast),
        .m_axi_aclk(m_axi_aclk),
        .out(sig_rst2llink_reset),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_data_reg_out_reg[2] (\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_llink_busy_reg_0(sig_llink2cmd_rd_busy),
        .sig_llink_busy_reg_1(I_RD_LLINK_ADAPTER_n_4),
        .sig_llink_busy_reg_2(E),
        .sig_llink_busy_reg_3(sig_rd2llink_strm_tvalid),
        .sig_m_valid_out_reg(sig_m_valid_out_reg),
        .sig_rd_discontinue_reg_0(sig_rd_discontinue),
        .sig_rd_llink_enable(sig_rd_llink_enable),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err));
  TinySoC_axi_tft_0_0_axi_master_burst_rd_wr_cntlr I_RD_WR_CNTRL_MODULE
       (.E(sig_push_cmd_reg),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .Q(sig_addr_ms_slice),
        .SR(sig_cmd_mstrd_req0),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
        .out(sig_rst2rdwr_cntlr_reset),
        .sig_calc_error_pushed_reg(I_RD_WR_CNTRL_MODULE_n_14),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(sig_rst2cmd_stat_reset),
        .sig_cmd_mst_be(sig_cmd_mst_be),
        .sig_cmd_type_req(sig_cmd_type_req),
        .\sig_data_reg_out_reg[2] (\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .\sig_data_reg_out_reg[55] (Q),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_m_valid_dup_reg(\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_m_valid_out_reg(sig_rd2llink_strm_tvalid),
        .sig_m_valid_out_reg_0(I_RD_LLINK_ADAPTER_n_4),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_sts_interr_reg_reg(sig_rsc2stat_status),
        .sig_rd_sts_slverr_reg_reg(I_RD_WR_CNTRL_MODULE_n_13),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_status_reg_empty(sig_status_reg_empty));
  TinySoC_axi_tft_0_0_axi_master_burst_reset I_RESET_MODULE
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .out(sig_rst2cmd_stat_reset),
        .scndry_out(scndry_out),
        .sig_llink_reset_reg_reg_0(sig_rst2llink_reset),
        .sig_rdwr_reset_reg_reg_0(sig_rst2rdwr_cntlr_reset));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_addr_cntl" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_addr_cntl
   (out,
    sig_addr2stat_cmd_fifo_empty,
    m_axi_arsize,
    m_axi_awburst,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awlen,
    sig_push_addr_reg1_out,
    m_axi_aclk,
    sig_pcc2data_calc_error,
    sig_pcc2addr_burst,
    sig_rd_addr_valid_reg0,
    sig_posted_to_axi_reg_0,
    sig_cmd2all_doing_read,
    m_axi_arready,
    Q,
    \sig_next_len_reg_reg[6]_0 );
  output out;
  output sig_addr2stat_cmd_fifo_empty;
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output [31:0]m_axi_awaddr;
  output [6:0]m_axi_awlen;
  input sig_push_addr_reg1_out;
  input m_axi_aclk;
  input sig_pcc2data_calc_error;
  input [0:0]sig_pcc2addr_burst;
  input sig_rd_addr_valid_reg0;
  input sig_posted_to_axi_reg_0;
  input sig_cmd2all_doing_read;
  input m_axi_arready;
  input [31:0]Q;
  input [6:0]\sig_next_len_reg_reg[6]_0 ;

  wire [31:0]Q;
  wire m_axi_aclk;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [6:0]m_axi_awlen;
  wire sig_addr2stat_calc_error;
  wire sig_addr2stat_cmd_fifo_empty;
  wire sig_addr_reg_full;
  wire sig_cmd2all_doing_read;
  wire sig_next_addr_reg0;
  wire [6:0]\sig_next_len_reg_reg[6]_0 ;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2data_calc_error;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_posted_to_axi_reg_0;
  wire sig_push_addr_reg1_out;
  wire sig_rd_addr_valid_reg0;

  assign out = sig_posted_to_axi;
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr2stat_cmd_fifo_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_push_addr_reg1_out),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2data_calc_error),
        .Q(sig_addr2stat_calc_error),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[0]),
        .Q(m_axi_awaddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[10]),
        .Q(m_axi_awaddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[11]),
        .Q(m_axi_awaddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[12]),
        .Q(m_axi_awaddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[13]),
        .Q(m_axi_awaddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[14]),
        .Q(m_axi_awaddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[15]),
        .Q(m_axi_awaddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[16]),
        .Q(m_axi_awaddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[17]),
        .Q(m_axi_awaddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[18]),
        .Q(m_axi_awaddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[19]),
        .Q(m_axi_awaddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[1]),
        .Q(m_axi_awaddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[20]),
        .Q(m_axi_awaddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[21]),
        .Q(m_axi_awaddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[22]),
        .Q(m_axi_awaddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[23]),
        .Q(m_axi_awaddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[24]),
        .Q(m_axi_awaddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[25]),
        .Q(m_axi_awaddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[26]),
        .Q(m_axi_awaddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[27]),
        .Q(m_axi_awaddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[28]),
        .Q(m_axi_awaddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[29]),
        .Q(m_axi_awaddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[2]),
        .Q(m_axi_awaddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[30]),
        .Q(m_axi_awaddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[31]),
        .Q(m_axi_awaddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[3]),
        .Q(m_axi_awaddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[4]),
        .Q(m_axi_awaddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[5]),
        .Q(m_axi_awaddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[6]),
        .Q(m_axi_awaddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[7]),
        .Q(m_axi_awaddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[8]),
        .Q(m_axi_awaddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[9]),
        .Q(m_axi_awaddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2addr_burst),
        .Q(m_axi_awburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [0]),
        .Q(m_axi_awlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [1]),
        .Q(m_axi_awlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [2]),
        .Q(m_axi_awlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [3]),
        .Q(m_axi_awlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [4]),
        .Q(m_axi_awlen[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [5]),
        .Q(m_axi_awlen[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[6]_0 [6]),
        .Q(m_axi_awlen[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(m_axi_arsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi_2),
        .R(sig_posted_to_axi_reg_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi),
        .R(sig_posted_to_axi_reg_0));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    sig_rd_addr_valid_reg_i_1
       (.I0(sig_posted_to_axi_reg_0),
        .I1(sig_addr2stat_calc_error),
        .I2(sig_cmd2all_doing_read),
        .I3(m_axi_arready),
        .I4(sig_addr_reg_full),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_addr_valid_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_rd_addr_valid_reg0),
        .Q(m_axi_arvalid),
        .R(sig_next_addr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_cmd_status" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_cmd_status
   (sig_cmd2pcc_cmd_valid,
    E,
    sig_cmd_type_req,
    sig_cmd_mst_be,
    sig_cmd2all_doing_read,
    sig_cmd_cmplt_reg_reg_0,
    sig_status_reg_empty,
    md_error,
    sig_rdwr2llink_int_err,
    bus2ip_mst_cmdack,
    sig_push_status1_out,
    sig_rd_sts_tag_reg0,
    sig_rd_llink_enable,
    Q,
    out,
    m_axi_aclk,
    SR,
    ip2bus_mstrd_req,
    IP2Bus_Mst_Type,
    sig_error_sh_reg_reg_0,
    sig_cmd_cmplt_reg_reg_1,
    sig_rsc2stat_status,
    sig_rsc2stat_status_valid,
    sig_rd_sts_slverr_reg_reg,
    sig_doing_read_reg,
    sig_doing_read_reg_reg_0,
    D);
  output sig_cmd2pcc_cmd_valid;
  output [0:0]E;
  output sig_cmd_type_req;
  output [0:0]sig_cmd_mst_be;
  output sig_cmd2all_doing_read;
  output sig_cmd_cmplt_reg_reg_0;
  output sig_status_reg_empty;
  output md_error;
  output sig_rdwr2llink_int_err;
  output bus2ip_mst_cmdack;
  output sig_push_status1_out;
  output sig_rd_sts_tag_reg0;
  output sig_rd_llink_enable;
  output [24:0]Q;
  input out;
  input m_axi_aclk;
  input [0:0]SR;
  input ip2bus_mstrd_req;
  input IP2Bus_Mst_Type;
  input sig_error_sh_reg_reg_0;
  input sig_cmd_cmplt_reg_reg_1;
  input [0:0]sig_rsc2stat_status;
  input sig_rsc2stat_status_valid;
  input sig_rd_sts_slverr_reg_reg;
  input sig_doing_read_reg;
  input sig_doing_read_reg_reg_0;
  input [24:0]D;

  wire [24:0]D;
  wire [0:0]E;
  wire IP2Bus_Mst_Type;
  wire [24:0]Q;
  wire [0:0]SR;
  wire bus2ip_mst_cmdack;
  wire ip2bus_mstrd_req;
  wire m_axi_aclk;
  wire md_error;
  wire out;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_cmplt_reg_i_1_n_0;
  wire sig_cmd_cmplt_reg_reg_0;
  wire sig_cmd_cmplt_reg_reg_1;
  wire sig_cmd_empty_reg;
  wire sig_cmd_empty_reg_i_1_n_0;
  wire [0:0]sig_cmd_mst_be;
  wire sig_cmd_mstrd_req;
  wire sig_cmd_type_req;
  wire sig_cmdack_reg_i_1_n_0;
  wire sig_doing_read_reg;
  wire sig_doing_read_reg_i_1_n_0;
  wire sig_doing_read_reg_reg_0;
  wire sig_error_sh_reg_reg_0;
  wire sig_init_reg1;
  wire sig_init_reg2;
  wire sig_int_error_pulse_reg_i_1_n_0;
  wire sig_push_status1_out;
  wire sig_rd_llink_enable;
  wire sig_rd_sts_slverr_reg_reg;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdwr2llink_int_err;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_status_reg_empty;
  wire sig_status_reg_empty_i_1_n_0;
  wire sig_status_reg_full;
  wire sig_status_reg_full_i_1_n_0;

  LUT5 #(
    .INIT(32'h00000070)) 
    sig_cmd_cmplt_reg_i_1
       (.I0(sig_cmd_cmplt_reg_reg_1),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_status_reg_full),
        .I3(out),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_cmd_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_cmplt_reg_i_1_n_0),
        .Q(sig_cmd_cmplt_reg_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    sig_cmd_empty_reg_i_1
       (.I0(ip2bus_mstrd_req),
        .I1(sig_cmd_empty_reg),
        .I2(sig_init_reg1),
        .I3(sig_init_reg2),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_cmd_empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_empty_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_empty_reg_i_1_n_0),
        .Q(sig_cmd_empty_reg),
        .R(out));
  LUT2 #(
    .INIT(4'h8)) 
    sig_cmd_full_reg_i_2
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_mstrd_req),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_full_reg_reg
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd2pcc_cmd_valid),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[10] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[11] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[12] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[13] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[14] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[15] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[16] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[17] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[18] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[19] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[20] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[21] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[22] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[23] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[24] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[25] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[26] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[27] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[28] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[29] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[30] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[31] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[9] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be),
        .R(SR));
  FDRE sig_cmd_mstrd_req_reg
       (.C(m_axi_aclk),
        .CE(E),
        .D(ip2bus_mstrd_req),
        .Q(sig_cmd_mstrd_req),
        .R(SR));
  FDRE sig_cmd_type_req_reg
       (.C(m_axi_aclk),
        .CE(E),
        .D(IP2Bus_Mst_Type),
        .Q(sig_cmd_type_req),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    sig_cmdack_reg_i_1
       (.I0(ip2bus_mstrd_req),
        .I1(sig_cmd_empty_reg),
        .I2(bus2ip_mst_cmdack),
        .I3(out),
        .O(sig_cmdack_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmdack_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmdack_reg_i_1_n_0),
        .Q(bus2ip_mst_cmdack),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    sig_doing_read_reg_i_1
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_doing_read_reg_reg_0),
        .I2(sig_cmd_mstrd_req),
        .I3(out),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_doing_read_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_doing_read_reg_i_1_n_0),
        .Q(sig_cmd2all_doing_read),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_error_sh_reg_i_2
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_status_reg_empty),
        .I2(sig_cmd2all_doing_read),
        .O(sig_push_status1_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_error_sh_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_error_sh_reg_reg_0),
        .Q(md_error),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_init_reg1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg1),
        .Q(sig_init_reg2),
        .R(out));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    sig_int_error_pulse_reg_i_1
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_cmd_cmplt_reg_reg_1),
        .I2(sig_rsc2stat_status),
        .I3(sig_push_status1_out),
        .I4(sig_rdwr2llink_int_err),
        .I5(out),
        .O(sig_int_error_pulse_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_int_error_pulse_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_int_error_pulse_reg_i_1_n_0),
        .Q(sig_rdwr2llink_int_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    sig_llink_busy_i_2
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_doing_read_reg),
        .O(sig_rd_llink_enable));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_rd_sts_reg_full_i_1
       (.I0(sig_rd_sts_slverr_reg_reg),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_status_reg_empty),
        .I3(sig_rsc2stat_status_valid),
        .O(sig_rd_sts_tag_reg0));
  LUT6 #(
    .INIT(64'hF2FFF2F2FFFFF2F2)) 
    sig_status_reg_empty_i_1
       (.I0(sig_init_reg1),
        .I1(sig_init_reg2),
        .I2(sig_cmd_cmplt_reg_reg_0),
        .I3(sig_cmd2all_doing_read),
        .I4(sig_status_reg_empty),
        .I5(sig_rsc2stat_status_valid),
        .O(sig_status_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_empty_i_1_n_0),
        .Q(sig_status_reg_empty),
        .R(out));
  LUT6 #(
    .INIT(64'h00000000D555C000)) 
    sig_status_reg_full_i_1
       (.I0(sig_cmd_cmplt_reg_reg_0),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_status_reg_empty),
        .I3(sig_rsc2stat_status_valid),
        .I4(sig_status_reg_full),
        .I5(out),
        .O(sig_status_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_full_i_1_n_0),
        .Q(sig_status_reg_full),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_fifo" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_fifo
   (sig_init_reg_reg_0,
    sig_init_reg_reg_1,
    m_axi_bready,
    out,
    m_axi_aclk,
    sig_s_ready_out_reg,
    m_axi_bvalid);
  output sig_init_reg_reg_0;
  output sig_init_reg_reg_1;
  output m_axi_bready;
  input out;
  input m_axi_aclk;
  input sig_s_ready_out_reg;
  input m_axi_bvalid;

  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_i_1_n_0;
  wire sig_init_reg_reg_0;
  wire sig_init_reg_reg_1;
  wire sig_s_ready_out_reg;

  TinySoC_axi_tft_0_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    sig_init_done_i_1
       (.I0(out),
        .I1(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .I2(sig_init_reg_reg_0),
        .I3(sig_init_done),
        .O(sig_init_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg_0),
        .Q(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .S(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sig_init_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_ready_dup_i_1
       (.I0(sig_init_reg_reg_0),
        .I1(sig_s_ready_out_reg),
        .O(sig_init_reg_reg_1));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_pcc" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_pcc
   (sig_pcc2addr_burst,
    sig_pcc2data_cmd_cmplt,
    sig_pcc2data_calc_error,
    sig_pcc2data_eof,
    sig_pcc2data_sequential,
    sig_pcc2data_cmd_valid,
    SR,
    sig_push_addr_reg1_out,
    \sig_xfer_len_reg_reg[2]_0 ,
    \sig_xfer_len_reg_reg[6]_0 ,
    sig_rd_addr_valid_reg0,
    sig_calc_error_pushed_reg_0,
    \sig_xfer_addr_reg_reg[31]_0 ,
    out,
    m_axi_aclk,
    sig_cmd_full_reg_reg,
    E,
    sig_cmd2pcc_cmd_valid,
    Q,
    sig_rdc2pcc_cmd_ready,
    sig_addr2stat_cmd_fifo_empty,
    sig_llink2rd_allow_addr_req,
    sig_cmd2all_doing_read,
    sig_cmd_mst_be,
    sig_cmd_type_req);
  output [0:0]sig_pcc2addr_burst;
  output sig_pcc2data_cmd_cmplt;
  output sig_pcc2data_calc_error;
  output sig_pcc2data_eof;
  output sig_pcc2data_sequential;
  output sig_pcc2data_cmd_valid;
  output [0:0]SR;
  output sig_push_addr_reg1_out;
  output \sig_xfer_len_reg_reg[2]_0 ;
  output [6:0]\sig_xfer_len_reg_reg[6]_0 ;
  output sig_rd_addr_valid_reg0;
  output sig_calc_error_pushed_reg_0;
  output [31:0]\sig_xfer_addr_reg_reg[31]_0 ;
  input out;
  input m_axi_aclk;
  input sig_cmd_full_reg_reg;
  input [0:0]E;
  input sig_cmd2pcc_cmd_valid;
  input [24:0]Q;
  input sig_rdc2pcc_cmd_ready;
  input sig_addr2stat_cmd_fifo_empty;
  input sig_llink2rd_allow_addr_req;
  input sig_cmd2all_doing_read;
  input [0:0]sig_cmd_mst_be;
  input sig_cmd_type_req;

  wire [0:0]E;
  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[9] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ;
  wire [15:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9] ;
  wire \GEN_ADDR_32.sig_first_xfer_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ;
  wire [24:0]Q;
  wire [0:0]SR;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire m_axi_aclk;
  wire out;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire p_1_in2_in;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [9:0]sig_adjusted_addr_incr;
  wire [11:0]sig_btt_cntr;
  wire \sig_btt_cntr[11]_i_2_n_0 ;
  wire \sig_btt_cntr[11]_i_3_n_0 ;
  wire \sig_btt_cntr[11]_i_4_n_0 ;
  wire \sig_btt_cntr[11]_i_5_n_0 ;
  wire \sig_btt_cntr[11]_i_6_n_0 ;
  wire \sig_btt_cntr[11]_i_7_n_0 ;
  wire \sig_btt_cntr[11]_i_8_n_0 ;
  wire \sig_btt_cntr[3]_i_10_n_0 ;
  wire \sig_btt_cntr[3]_i_2_n_0 ;
  wire \sig_btt_cntr[3]_i_3_n_0 ;
  wire \sig_btt_cntr[3]_i_4_n_0 ;
  wire \sig_btt_cntr[3]_i_5_n_0 ;
  wire \sig_btt_cntr[3]_i_6_n_0 ;
  wire \sig_btt_cntr[3]_i_7_n_0 ;
  wire \sig_btt_cntr[3]_i_8_n_0 ;
  wire \sig_btt_cntr[3]_i_9_n_0 ;
  wire \sig_btt_cntr[7]_i_2_n_0 ;
  wire \sig_btt_cntr[7]_i_3_n_0 ;
  wire \sig_btt_cntr[7]_i_4_n_0 ;
  wire \sig_btt_cntr[7]_i_5_n_0 ;
  wire \sig_btt_cntr[7]_i_6_n_0 ;
  wire \sig_btt_cntr[7]_i_7_n_0 ;
  wire \sig_btt_cntr[7]_i_8_n_0 ;
  wire \sig_btt_cntr[7]_i_9_n_0 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_7 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_0 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_7 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_0 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_7 ;
  wire sig_btt_eq_b2mbaa1;
  wire sig_btt_eq_b2mbaa1_carry_i_1_n_0;
  wire sig_btt_eq_b2mbaa1_carry_i_2_n_0;
  wire sig_btt_eq_b2mbaa1_carry_i_3_n_0;
  wire sig_btt_eq_b2mbaa1_carry_i_4_n_0;
  wire sig_btt_eq_b2mbaa1_carry_i_5_n_0;
  wire sig_btt_eq_b2mbaa1_carry_i_6_n_0;
  wire sig_btt_eq_b2mbaa1_carry_n_1;
  wire sig_btt_eq_b2mbaa1_carry_n_2;
  wire sig_btt_eq_b2mbaa1_carry_n_3;
  wire sig_btt_lt_b2mbaa1;
  wire sig_btt_lt_b2mbaa1_carry__0_i_2_n_0;
  wire sig_btt_lt_b2mbaa1_carry__0_i_3_n_0;
  wire sig_btt_lt_b2mbaa1_carry__0_i_4_n_0;
  wire sig_btt_lt_b2mbaa1_carry__0_i_5_n_0;
  wire sig_btt_lt_b2mbaa1_carry__0_n_3;
  wire sig_btt_lt_b2mbaa1_carry_i_10_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_9_n_0;
  wire sig_btt_lt_b2mbaa1_carry_n_0;
  wire sig_btt_lt_b2mbaa1_carry_n_1;
  wire sig_btt_lt_b2mbaa1_carry_n_2;
  wire sig_btt_lt_b2mbaa1_carry_n_3;
  wire \sig_byte_change_minus1/i__n_0 ;
  wire [10:10]sig_bytes_to_mbaa;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_pushed_reg_0;
  wire sig_calc_error_reg_i_1_n_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_full_reg_reg;
  wire [0:0]sig_cmd_mst_be;
  wire sig_cmd_type_req;
  wire sig_first_xfer;
  wire sig_input_burst_type_reg;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_eof_reg;
  wire sig_input_eof_reg_i_1_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_llink2rd_allow_addr_req;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2all_calc_err;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire [15:0]sig_predict_addr_lsh_im3_in;
  wire sig_push_addr_reg1_out;
  wire sig_push_input_reg16_out;
  wire sig_push_xfer_reg15_out;
  wire sig_rd_addr_valid_reg0;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_xfer_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire sig_xfer_addr_reg0;
  wire [31:0]\sig_xfer_addr_reg_reg[31]_0 ;
  wire sig_xfer_cmd_cmplt_reg_i_1_n_0;
  wire sig_xfer_eof_reg0;
  wire sig_xfer_is_seq_reg_i_1_n_0;
  wire sig_xfer_is_seq_reg_i_2_n_0;
  wire sig_xfer_is_seq_reg_i_3_n_0;
  wire \sig_xfer_len_reg[0]_i_1_n_0 ;
  wire \sig_xfer_len_reg[1]_i_1_n_0 ;
  wire \sig_xfer_len_reg[2]_i_1_n_0 ;
  wire \sig_xfer_len_reg[3]_i_1_n_0 ;
  wire \sig_xfer_len_reg[4]_i_1_n_0 ;
  wire \sig_xfer_len_reg[5]_i_1_n_0 ;
  wire \sig_xfer_len_reg[6]_i_1_n_0 ;
  wire \sig_xfer_len_reg_reg[2]_0 ;
  wire [6:0]\sig_xfer_len_reg_reg[6]_0 ;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_3_n_0;
  wire [3:1]\NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED;
  wire [3:2]NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(sig_push_input_reg16_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I3(sig_parent_done),
        .I4(sig_calc_error_pushed),
        .I5(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_2 
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .O(sig_push_input_reg16_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h88888F88)) 
    \FSM_onehot_sig_pcc_sm_state[2]_i_1 
       (.I0(sig_push_input_reg16_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I4(sig_calc_error_pushed),
        .O(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_sig_pcc_sm_state[4]_i_1 
       (.I0(sig_sm_ld_xfer_reg_ns),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .O(\FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_calc_error_pushed),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ),
        .Q(sig_sm_ld_calc2_reg_ns),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_xfer_reg_ns),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1 
       (.I0(sig_btt_cntr[0]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(sig_btt_cntr[10]),
        .I3(sig_btt_cntr[11]),
        .I4(sig_first_xfer),
        .I5(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hDDD0DDDD)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1 
       (.I0(sig_first_xfer),
        .I1(sig_bytes_to_mbaa),
        .I2(sig_btt_cntr[11]),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_lt_b2mbaa1),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1 
       (.I0(sig_btt_cntr[1]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBB888888888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1 
       (.I0(sig_btt_cntr[2]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I5(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2 
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(sig_btt_cntr[10]),
        .I2(sig_btt_cntr[11]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[4]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[5]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I5(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I1(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F088)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(sig_btt_cntr[7]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_btt_cntr[10]),
        .I5(sig_btt_cntr[11]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[8]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[9]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[3] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[7] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[9] ),
        .R(out));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1 
       (.I0(Q[3]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1 
       (.I0(Q[4]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1 
       (.I0(Q[5]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1 
       (.I0(Q[6]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1 
       (.I0(Q[7]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1 
       (.I0(sig_push_input_reg16_out),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_input_burst_type_reg),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2 
       (.I0(Q[8]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(p_0_in),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1 
       (.I0(Q[0]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1 
       (.I0(Q[1]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1 
       (.I0(Q[2]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in2_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .R(out));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1 
       (.I0(sig_push_input_reg16_out),
        .I1(p_0_in),
        .I2(p_1_in2_in),
        .I3(sig_input_burst_type_reg),
        .I4(sig_ld_xfer_reg),
        .I5(sig_xfer_reg_empty),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_7 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_5 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_4 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_7 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_6 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_5 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__2_n_4 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_6 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_5 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry_n_4 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_7 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_6 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_5 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__0_n_4 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_7 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\i_/i_/i__carry__1_n_6 ),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .R(out));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[3]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FDFFFDFFA800A8)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ),
        .I4(sig_btt_cntr[2]),
        .I5(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0DFDF808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ),
        .I3(sig_btt_cntr[1]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455575503000000)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5 
       (.I0(sig_first_xfer),
        .I1(sig_btt_cntr[11]),
        .I2(sig_btt_cntr[10]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_btt_cntr[0]),
        .I5(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F088)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(sig_btt_cntr[7]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_btt_cntr[10]),
        .I5(sig_btt_cntr[11]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[6]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[5]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[4]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[9]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0 ),
        .I2(sig_btt_lt_b2mbaa1),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_btt_cntr[8]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[0]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[1]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[2]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[3]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] }),
        .O(sig_adjusted_addr_incr[3:0]),
        .S({\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[4]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[5]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[6]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[7]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1 
       (.CI(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_adjusted_addr_incr[7:4]),
        .S({\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[8]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[9]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1 
       (.CI(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_CO_UNCONNECTED [3:1],\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_O_UNCONNECTED [3:2],sig_adjusted_addr_incr[9:8]}),
        .S({1'b0,1'b0,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0 ,\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0 }));
  LUT6 #(
    .INIT(64'h0054545454545454)) 
    \GEN_ADDR_32.sig_first_xfer_i_1 
       (.I0(out),
        .I1(sig_push_input_reg16_out),
        .I2(sig_first_xfer),
        .I3(sig_xfer_reg_empty),
        .I4(sig_ld_xfer_reg),
        .I5(sig_input_burst_type_reg),
        .O(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_first_xfer_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ),
        .Q(sig_first_xfer),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[10] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[9] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[8] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[3] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[2] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[1] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[0] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[7] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[6] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[5] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[4] ),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[0]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[10]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[11]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im3_in[11:8]),
        .S({\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[12]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[13]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[14]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[15]),
        .Q(p_0_in),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED [3],\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[15:12]),
        .S({p_1_in2_in,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[1]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[2]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[3]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] }),
        .O(sig_predict_addr_lsh_im3_in[3:0]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[4]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[5]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[6]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[7]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] }),
        .O(sig_predict_addr_lsh_im3_in[7:4]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[8]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[9]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .R(out));
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1_n_0}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_1
       (.I0(Q[16]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_2
       (.I0(Q[15]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_3
       (.I0(Q[14]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__0_i_4
       (.I0(Q[13]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_1
       (.I0(Q[20]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_2
       (.I0(Q[19]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_3
       (.I0(Q[18]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__1_i_4
       (.I0(Q[17]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_1
       (.I0(Q[24]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_2
       (.I0(Q[23]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_3
       (.I0(Q[22]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry__2_i_4
       (.I0(Q[21]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_1
       (.I0(Q[9]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_2
       (.I0(Q[12]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_3
       (.I0(Q[11]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    i__carry_i_4
       (.I0(Q[10]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555555C55555)) 
    i__carry_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .I1(Q[9]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2pcc_cmd_valid),
        .I5(sig_pcc2all_calc_err),
        .O(i__carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[11]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[10] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[11]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[9] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[11]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[8] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[11]_i_5 
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(sig_btt_cntr[11]),
        .O(\sig_btt_cntr[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[11]_i_6 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[10] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[10]),
        .O(\sig_btt_cntr[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[11]_i_7 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[9] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[9]),
        .O(\sig_btt_cntr[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[11]_i_8 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[8] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[8]),
        .O(\sig_btt_cntr[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[3]_i_10 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[0] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[0]),
        .O(\sig_btt_cntr[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sig_btt_cntr[3]_i_2 
       (.I0(sig_input_reg_empty),
        .I1(sig_sm_halt_reg),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[3]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[3] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[3]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[2] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[3]_i_5 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[1] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[3]_i_6 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[0] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h09F90909)) 
    \sig_btt_cntr[3]_i_7 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[3] ),
        .I1(sig_btt_cntr[3]),
        .I2(sig_push_input_reg16_out),
        .I3(sig_cmd_type_req),
        .I4(sig_cmd_mst_be),
        .O(\sig_btt_cntr[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[3]_i_8 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[2] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[2]),
        .O(\sig_btt_cntr[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[3]_i_9 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[1] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[1]),
        .O(\sig_btt_cntr[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[7]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[7] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[7]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[6] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[7]_i_4 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[5] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \sig_btt_cntr[7]_i_5 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[4] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_pcc2all_calc_err),
        .O(\sig_btt_cntr[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF9090909)) 
    \sig_btt_cntr[7]_i_6 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[7] ),
        .I1(sig_btt_cntr[7]),
        .I2(sig_push_input_reg16_out),
        .I3(sig_cmd_mst_be),
        .I4(sig_cmd_type_req),
        .O(\sig_btt_cntr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[7]_i_7 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[6] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[6]),
        .O(\sig_btt_cntr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[7]_i_8 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[5] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[5]),
        .O(\sig_btt_cntr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA55455555)) 
    \sig_btt_cntr[7]_i_9 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg_n_0_[4] ),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .I5(sig_btt_cntr[4]),
        .O(\sig_btt_cntr[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[3]_i_1_n_7 ),
        .Q(sig_btt_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_i_1_n_5 ),
        .Q(sig_btt_cntr[10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_i_1_n_4 ),
        .Q(sig_btt_cntr[11]),
        .R(out));
  CARRY4 \sig_btt_cntr_reg[11]_i_1 
       (.CI(\sig_btt_cntr_reg[7]_i_1_n_0 ),
        .CO({\NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED [3],\sig_btt_cntr_reg[11]_i_1_n_1 ,\sig_btt_cntr_reg[11]_i_1_n_2 ,\sig_btt_cntr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sig_btt_cntr[11]_i_2_n_0 ,\sig_btt_cntr[11]_i_3_n_0 ,\sig_btt_cntr[11]_i_4_n_0 }),
        .O({\sig_btt_cntr_reg[11]_i_1_n_4 ,\sig_btt_cntr_reg[11]_i_1_n_5 ,\sig_btt_cntr_reg[11]_i_1_n_6 ,\sig_btt_cntr_reg[11]_i_1_n_7 }),
        .S({\sig_btt_cntr[11]_i_5_n_0 ,\sig_btt_cntr[11]_i_6_n_0 ,\sig_btt_cntr[11]_i_7_n_0 ,\sig_btt_cntr[11]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[3]_i_1_n_6 ),
        .Q(sig_btt_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[3]_i_1_n_5 ),
        .Q(sig_btt_cntr[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[3]_i_1_n_4 ),
        .Q(sig_btt_cntr[3]),
        .R(out));
  CARRY4 \sig_btt_cntr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_btt_cntr_reg[3]_i_1_n_0 ,\sig_btt_cntr_reg[3]_i_1_n_1 ,\sig_btt_cntr_reg[3]_i_1_n_2 ,\sig_btt_cntr_reg[3]_i_1_n_3 }),
        .CYINIT(\sig_btt_cntr[3]_i_2_n_0 ),
        .DI({\sig_btt_cntr[3]_i_3_n_0 ,\sig_btt_cntr[3]_i_4_n_0 ,\sig_btt_cntr[3]_i_5_n_0 ,\sig_btt_cntr[3]_i_6_n_0 }),
        .O({\sig_btt_cntr_reg[3]_i_1_n_4 ,\sig_btt_cntr_reg[3]_i_1_n_5 ,\sig_btt_cntr_reg[3]_i_1_n_6 ,\sig_btt_cntr_reg[3]_i_1_n_7 }),
        .S({\sig_btt_cntr[3]_i_7_n_0 ,\sig_btt_cntr[3]_i_8_n_0 ,\sig_btt_cntr[3]_i_9_n_0 ,\sig_btt_cntr[3]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[7]_i_1_n_7 ),
        .Q(sig_btt_cntr[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[7]_i_1_n_6 ),
        .Q(sig_btt_cntr[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[7]_i_1_n_5 ),
        .Q(sig_btt_cntr[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[7]_i_1_n_4 ),
        .Q(sig_btt_cntr[7]),
        .R(out));
  CARRY4 \sig_btt_cntr_reg[7]_i_1 
       (.CI(\sig_btt_cntr_reg[3]_i_1_n_0 ),
        .CO({\sig_btt_cntr_reg[7]_i_1_n_0 ,\sig_btt_cntr_reg[7]_i_1_n_1 ,\sig_btt_cntr_reg[7]_i_1_n_2 ,\sig_btt_cntr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr[7]_i_2_n_0 ,\sig_btt_cntr[7]_i_3_n_0 ,\sig_btt_cntr[7]_i_4_n_0 ,\sig_btt_cntr[7]_i_5_n_0 }),
        .O({\sig_btt_cntr_reg[7]_i_1_n_4 ,\sig_btt_cntr_reg[7]_i_1_n_5 ,\sig_btt_cntr_reg[7]_i_1_n_6 ,\sig_btt_cntr_reg[7]_i_1_n_7 }),
        .S({\sig_btt_cntr[7]_i_6_n_0 ,\sig_btt_cntr[7]_i_7_n_0 ,\sig_btt_cntr[7]_i_8_n_0 ,\sig_btt_cntr[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_i_1_n_7 ),
        .Q(sig_btt_cntr[8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_i_1_n_6 ),
        .Q(sig_btt_cntr[9]),
        .R(out));
  CARRY4 sig_btt_eq_b2mbaa1_carry
       (.CI(1'b0),
        .CO({sig_btt_eq_b2mbaa1,sig_btt_eq_b2mbaa1_carry_n_1,sig_btt_eq_b2mbaa1_carry_n_2,sig_btt_eq_b2mbaa1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_eq_b2mbaa1_carry_i_1_n_0,sig_btt_eq_b2mbaa1_carry_i_2_n_0,sig_btt_eq_b2mbaa1_carry_i_3_n_0,sig_btt_eq_b2mbaa1_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA8)) 
    sig_btt_eq_b2mbaa1_carry_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I5(sig_btt_cntr[9]),
        .O(sig_btt_eq_b2mbaa1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    sig_btt_eq_b2mbaa1_carry_i_2
       (.I0(sig_btt_eq_b2mbaa1_carry_i_5_n_0),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0 ),
        .I2(sig_btt_cntr[8]),
        .O(sig_btt_eq_b2mbaa1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000005556AAA9)) 
    sig_btt_eq_b2mbaa1_carry_i_3
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I4(sig_btt_cntr[3]),
        .I5(sig_btt_eq_b2mbaa1_carry_i_6_n_0),
        .O(sig_btt_eq_b2mbaa1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0208041020804001)) 
    sig_btt_eq_b2mbaa1_carry_i_4
       (.I0(sig_btt_cntr[0]),
        .I1(sig_btt_cntr[1]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I5(sig_btt_cntr[2]),
        .O(sig_btt_eq_b2mbaa1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h06606009)) 
    sig_btt_eq_b2mbaa1_carry_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(sig_btt_cntr[7]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I3(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I4(sig_btt_cntr[6]),
        .O(sig_btt_eq_b2mbaa1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hF99F9FF6)) 
    sig_btt_eq_b2mbaa1_carry_i_6
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .I1(sig_btt_cntr[5]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .I3(sig_btt_lt_b2mbaa1_carry_i_10_n_0),
        .I4(sig_btt_cntr[4]),
        .O(sig_btt_eq_b2mbaa1_carry_i_6_n_0));
  CARRY4 sig_btt_lt_b2mbaa1_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa1_carry_n_0,sig_btt_lt_b2mbaa1_carry_n_1,sig_btt_lt_b2mbaa1_carry_n_2,sig_btt_lt_b2mbaa1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sig_btt_lt_b2mbaa1_carry_i_1_n_0,sig_btt_lt_b2mbaa1_carry_i_2_n_0,sig_btt_lt_b2mbaa1_carry_i_3_n_0,sig_btt_lt_b2mbaa1_carry_i_4_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa1_carry_i_5_n_0,sig_btt_lt_b2mbaa1_carry_i_6_n_0,sig_btt_lt_b2mbaa1_carry_i_7_n_0,sig_btt_lt_b2mbaa1_carry_i_8_n_0}));
  CARRY4 sig_btt_lt_b2mbaa1_carry__0
       (.CI(sig_btt_lt_b2mbaa1_carry_n_0),
        .CO({NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED[3:2],sig_btt_lt_b2mbaa1,sig_btt_lt_b2mbaa1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sig_bytes_to_mbaa,sig_btt_lt_b2mbaa1_carry__0_i_2_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sig_btt_lt_b2mbaa1_carry__0_i_3_n_0,sig_btt_lt_b2mbaa1_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_btt_lt_b2mbaa1_carry__0_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .O(sig_bytes_to_mbaa));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_btt_lt_b2mbaa1_carry__0_i_2
       (.I0(sig_btt_cntr[9]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I2(sig_btt_lt_b2mbaa1_carry__0_i_5_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .I4(sig_btt_cntr[8]),
        .O(sig_btt_lt_b2mbaa1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_lt_b2mbaa1_carry__0_i_3
       (.I0(sig_bytes_to_mbaa),
        .O(sig_btt_lt_b2mbaa1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h06606009)) 
    sig_btt_lt_b2mbaa1_carry__0_i_4
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .I1(sig_btt_cntr[9]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .I3(sig_btt_lt_b2mbaa1_carry__0_i_5_n_0),
        .I4(sig_btt_cntr[8]),
        .O(sig_btt_lt_b2mbaa1_carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sig_btt_lt_b2mbaa1_carry__0_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .O(sig_btt_lt_b2mbaa1_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_btt_lt_b2mbaa1_carry_i_1
       (.I0(sig_btt_cntr[7]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I4(sig_btt_cntr[6]),
        .O(sig_btt_lt_b2mbaa1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_btt_lt_b2mbaa1_carry_i_10
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .O(sig_btt_lt_b2mbaa1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_btt_lt_b2mbaa1_carry_i_2
       (.I0(sig_btt_cntr[5]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .I2(sig_btt_lt_b2mbaa1_carry_i_10_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .I4(sig_btt_cntr[4]),
        .O(sig_btt_lt_b2mbaa1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h000155541115777C)) 
    sig_btt_lt_b2mbaa1_carry_i_3
       (.I0(sig_btt_cntr[3]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I5(sig_btt_cntr[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1474)) 
    sig_btt_lt_b2mbaa1_carry_i_4
       (.I0(sig_btt_cntr[1]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I3(sig_btt_cntr[0]),
        .O(sig_btt_lt_b2mbaa1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h06606009)) 
    sig_btt_lt_b2mbaa1_carry_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .I1(sig_btt_cntr[7]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I3(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I4(sig_btt_cntr[6]),
        .O(sig_btt_lt_b2mbaa1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h01686801)) 
    sig_btt_lt_b2mbaa1_carry_i_6
       (.I0(sig_btt_cntr[4]),
        .I1(sig_btt_lt_b2mbaa1_carry_i_10_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .I3(sig_btt_cntr[5]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .O(sig_btt_lt_b2mbaa1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0606066060606009)) 
    sig_btt_lt_b2mbaa1_carry_i_7
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I1(sig_btt_cntr[3]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I5(sig_btt_cntr[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    sig_btt_lt_b2mbaa1_carry_i_8
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I1(sig_btt_cntr[1]),
        .I2(sig_btt_cntr[0]),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .O(sig_btt_lt_b2mbaa1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa1_carry_i_9
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .I5(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .O(sig_btt_lt_b2mbaa1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_byte_change_minus1/i_ 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .O(\sig_byte_change_minus1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(out));
  LUT5 #(
    .INIT(32'hCCDCCCCC)) 
    sig_calc_error_reg_i_1
       (.I0(sig_cmd_mst_be),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_sm_halt_reg),
        .I4(sig_input_reg_empty),
        .O(sig_calc_error_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_i_1_n_0),
        .Q(sig_pcc2all_calc_err),
        .R(out));
  LUT6 #(
    .INIT(64'h0555555544444444)) 
    sig_cmd2addr_valid_i_1
       (.I0(out),
        .I1(sig_push_xfer_reg15_out),
        .I2(sig_addr2stat_cmd_fifo_empty),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_cmd2all_doing_read),
        .I5(sig_pcc2addr_cmd_valid),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_pcc2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005540)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_rdc2pcc_cmd_ready),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_pcc2data_cmd_valid),
        .I4(out),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_pcc2data_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    sig_cmd2dre_valid_i_1
       (.I0(out),
        .I1(sig_first_xfer),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .I4(sig_cmd2dre_valid_reg_n_0),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    sig_cmd_full_reg_i_1
       (.I0(sig_cmd_full_reg_reg),
        .I1(E),
        .I2(sig_calc_error_pushed),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_sm_halt_reg),
        .I5(sig_input_reg_empty),
        .O(SR));
  LUT4 #(
    .INIT(16'h0400)) 
    sig_doing_read_reg_i_2
       (.I0(sig_calc_error_pushed),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .O(sig_calc_error_pushed_reg_0));
  LUT5 #(
    .INIT(32'h0000000E)) 
    sig_input_burst_type_reg_i_1
       (.I0(sig_input_burst_type_reg),
        .I1(sig_push_input_reg16_out),
        .I2(out),
        .I3(sig_calc_error_pushed),
        .I4(sig_sm_pop_input_reg),
        .O(sig_input_burst_type_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(sig_input_burst_type_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000000E)) 
    sig_input_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_push_input_reg16_out),
        .I2(out),
        .I3(sig_calc_error_pushed),
        .I4(sig_sm_pop_input_reg),
        .O(sig_input_eof_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_i_1_n_0),
        .Q(sig_input_eof_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_push_input_reg16_out),
        .I2(out),
        .I3(sig_calc_error_pushed),
        .I4(sig_sm_pop_input_reg),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_last_dbeat_i_4
       (.I0(\sig_xfer_len_reg_reg[6]_0 [2]),
        .I1(\sig_xfer_len_reg_reg[6]_0 [1]),
        .I2(\sig_xfer_len_reg_reg[6]_0 [0]),
        .I3(\sig_xfer_len_reg_reg[6]_0 [4]),
        .I4(\sig_xfer_len_reg_reg[6]_0 [5]),
        .I5(\sig_xfer_len_reg_reg[6]_0 [6]),
        .O(\sig_xfer_len_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0454)) 
    sig_ld_xfer_reg_i_1
       (.I0(out),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_ld_xfer_reg),
        .I3(sig_xfer_reg_empty),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000015551000)) 
    sig_parent_done_i_1
       (.I0(out),
        .I1(sig_xfer_is_seq_reg_i_1_n_0),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .I4(sig_parent_done),
        .I5(sig_push_input_reg16_out),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    sig_rd_addr_valid_reg_i_2
       (.I0(sig_pcc2addr_cmd_valid),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_llink2rd_allow_addr_req),
        .I3(sig_addr2stat_cmd_fifo_empty),
        .O(sig_push_addr_reg1_out));
  LUT1 #(
    .INIT(2'h1)) 
    sig_rd_addr_valid_reg_i_3
       (.I0(sig_pcc2data_calc_error),
        .O(sig_rd_addr_valid_reg0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I2(sig_calc_error_pushed),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sig_sm_pop_input_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(sig_parent_done),
        .I2(sig_calc_error_pushed),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[0] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [10]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [11]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [12]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [13]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [14]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(p_1_in2_in),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [15]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [16]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [17]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [18]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [19]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[1] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [20]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [21]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [22]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [23]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [24]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [25]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [26]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [27]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [28]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [29]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[2] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [30]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [31]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[3] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [3]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[4] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [4]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[5] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [5]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [6]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [7]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [8]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [9]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_calc_err_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_pcc2all_calc_err),
        .Q(sig_pcc2data_calc_error),
        .R(sig_xfer_addr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sig_xfer_cmd_cmplt_reg_i_1
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_xfer_is_seq_reg_i_1_n_0),
        .O(sig_xfer_cmd_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_cmd_cmplt_reg_i_1_n_0),
        .Q(sig_pcc2data_cmd_cmplt),
        .R(sig_xfer_addr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_xfer_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_xfer_is_seq_reg_i_1_n_0),
        .O(sig_xfer_eof_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_eof_reg0),
        .Q(sig_pcc2data_eof),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hFFFFF01FFFFFFF1F)) 
    sig_xfer_is_seq_reg_i_1
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(sig_btt_eq_b2mbaa1),
        .I2(sig_xfer_is_seq_reg_i_2_n_0),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[11]),
        .I5(sig_bytes_to_mbaa),
        .O(sig_xfer_is_seq_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_xfer_is_seq_reg_i_2
       (.I0(sig_xfer_is_seq_reg_i_3_n_0),
        .I1(sig_btt_cntr[2]),
        .I2(sig_btt_cntr[8]),
        .I3(sig_btt_cntr[0]),
        .I4(sig_btt_cntr[3]),
        .O(sig_xfer_is_seq_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_xfer_is_seq_reg_i_3
       (.I0(sig_btt_cntr[7]),
        .I1(sig_btt_cntr[1]),
        .I2(sig_btt_cntr[6]),
        .I3(sig_btt_cntr[9]),
        .I4(sig_btt_cntr[4]),
        .I5(sig_btt_cntr[5]),
        .O(sig_xfer_is_seq_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_is_seq_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_is_seq_reg_i_1_n_0),
        .Q(sig_pcc2data_sequential),
        .R(sig_xfer_addr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \sig_xfer_len_reg[0]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .O(\sig_xfer_len_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sig_xfer_len_reg[1]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .O(\sig_xfer_len_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \sig_xfer_len_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .O(\sig_xfer_len_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sig_xfer_len_reg[3]_i_1 
       (.I0(\sig_byte_change_minus1/i__n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .O(\sig_xfer_len_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \sig_xfer_len_reg[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .I1(\sig_byte_change_minus1/i__n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7] ),
        .O(\sig_xfer_len_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \sig_xfer_len_reg[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7] ),
        .I1(\sig_byte_change_minus1/i__n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8] ),
        .O(\sig_xfer_len_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sig_xfer_len_reg[6]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .I2(\sig_byte_change_minus1/i__n_0 ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9] ),
        .O(\sig_xfer_len_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[0]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[1]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[2]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[3]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [3]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[4]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [4]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[5]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [5]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[6]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[6]_0 [6]),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hBBBABBBABABABBBA)) 
    sig_xfer_reg_empty_i_1
       (.I0(out),
        .I1(sig_push_xfer_reg15_out),
        .I2(sig_xfer_reg_empty_i_3_n_0),
        .I3(sig_rdc2pcc_cmd_ready),
        .I4(sig_pcc2addr_cmd_valid),
        .I5(sig_push_addr_reg1_out),
        .O(sig_xfer_addr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_xfer_reg_empty_i_2
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .O(sig_push_xfer_reg15_out));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    sig_xfer_reg_empty_i_3
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_pcc2addr_cmd_valid),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_addr2stat_cmd_fifo_empty),
        .I5(sig_pcc2data_cmd_valid),
        .O(sig_xfer_reg_empty_i_3_n_0));
  FDSE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(1'b0),
        .Q(sig_xfer_reg_empty),
        .S(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_type_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_input_burst_type_reg),
        .Q(sig_pcc2addr_burst),
        .R(sig_xfer_addr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_llink" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_rd_llink
   (sig_rd_discontinue_reg_0,
    sig_llink_busy_reg_0,
    sig_llink2rd_allow_addr_req,
    E,
    sig_llink_busy_reg_1,
    sig_m_valid_out_reg,
    sig_llink_busy_reg_2,
    bus2ip_mstrd_eof_n,
    out,
    sig_rdwr2llink_int_err,
    m_axi_aclk,
    IP2Bus_MstRd_dst_rdy,
    \sig_data_reg_out_reg[2] ,
    sig_doing_read_reg,
    sig_cmd2all_doing_read,
    sig_llink_busy_reg_3,
    eof_n_reg,
    eof_n,
    sig_rd_llink_enable);
  output sig_rd_discontinue_reg_0;
  output sig_llink_busy_reg_0;
  output sig_llink2rd_allow_addr_req;
  output [0:0]E;
  output sig_llink_busy_reg_1;
  output sig_m_valid_out_reg;
  output [0:0]sig_llink_busy_reg_2;
  output bus2ip_mstrd_eof_n;
  input out;
  input sig_rdwr2llink_int_err;
  input m_axi_aclk;
  input IP2Bus_MstRd_dst_rdy;
  input \sig_data_reg_out_reg[2] ;
  input sig_doing_read_reg;
  input sig_cmd2all_doing_read;
  input sig_llink_busy_reg_3;
  input eof_n_reg;
  input eof_n;
  input sig_rd_llink_enable;

  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire \I_WR_LLINK_ADAPTER/sig_wr_error_reg ;
  wire bus2ip_mstrd_eof_n;
  wire eof_n;
  wire eof_n_reg;
  wire m_axi_aclk;
  wire out;
  wire sig_allow_rd_requests_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire \sig_data_reg_out_reg[2] ;
  wire sig_doing_read_reg;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy0;
  wire sig_llink_busy_i_1_n_0;
  wire sig_llink_busy_reg_0;
  wire sig_llink_busy_reg_1;
  wire [0:0]sig_llink_busy_reg_2;
  wire sig_llink_busy_reg_3;
  wire sig_m_valid_out_reg;
  wire sig_rd_discontinue_i_1_n_0;
  wire sig_rd_discontinue_reg_0;
  wire sig_rd_llink_enable;
  wire sig_rdwr2llink_int_err;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    AXI_BRAM_we_i_i_1
       (.I0(sig_llink_busy_reg_3),
        .I1(sig_rd_discontinue_reg_0),
        .I2(sig_llink_busy_reg_0),
        .O(sig_m_valid_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h15)) 
    eof_n_i_1
       (.I0(eof_n_reg),
        .I1(sig_rd_discontinue_reg_0),
        .I2(sig_llink_busy_reg_0),
        .O(bus2ip_mstrd_eof_n));
  LUT6 #(
    .INIT(64'h5540000055405540)) 
    sig_allow_rd_requests_i_1
       (.I0(out),
        .I1(IP2Bus_MstRd_dst_rdy),
        .I2(sig_llink_busy_reg_0),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_doing_read_reg),
        .I5(sig_cmd2all_doing_read),
        .O(sig_allow_rd_requests_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_allow_rd_requests_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_allow_rd_requests_i_1_n_0),
        .Q(sig_llink2rd_allow_addr_req),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \sig_data_reg_out[55]_i_1 
       (.I0(IP2Bus_MstRd_dst_rdy),
        .I1(sig_llink_busy_reg_0),
        .I2(\sig_data_reg_out_reg[2] ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FFFF4CCC)) 
    sig_llink_busy_i_1
       (.I0(IP2Bus_MstRd_dst_rdy),
        .I1(sig_llink_busy_reg_0),
        .I2(sig_llink_busy_reg_3),
        .I3(eof_n_reg),
        .I4(sig_rd_llink_enable),
        .I5(sig_llink_busy0),
        .O(sig_llink_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_llink_busy_i_3
       (.I0(out),
        .I1(sig_llink_busy_reg_0),
        .I2(IP2Bus_MstRd_dst_rdy),
        .I3(sig_rd_discontinue_reg_0),
        .O(sig_llink_busy0));
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_busy_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_llink_busy_i_1_n_0),
        .Q(sig_llink_busy_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_m_valid_dup_i_2
       (.I0(sig_llink_busy_reg_0),
        .I1(IP2Bus_MstRd_dst_rdy),
        .O(sig_llink_busy_reg_1));
  LUT6 #(
    .INIT(64'h0000000002F2F0F0)) 
    sig_rd_discontinue_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .I2(sig_rd_discontinue_reg_0),
        .I3(IP2Bus_MstRd_dst_rdy),
        .I4(sig_llink_busy_reg_0),
        .I5(out),
        .O(sig_rd_discontinue_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_discontinue_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_discontinue_i_1_n_0),
        .Q(sig_rd_discontinue_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr2llink_int_err),
        .Q(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \trans_cnt[0]_i_2 
       (.I0(sig_llink_busy_reg_0),
        .I1(sig_rd_discontinue_reg_0),
        .I2(eof_n_reg),
        .I3(eof_n),
        .O(sig_llink_busy_reg_2));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_status_cntl" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_rd_status_cntl
   (sig_rsc2stat_status_valid,
    sig_rsc2rdc_ready,
    sig_rd_sts_interr_reg_reg_0,
    sig_rsc2stat_status,
    sig_rd_sts_slverr_reg_reg_0,
    sig_rd_sts_tag_reg0,
    m_axi_aclk,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_decerr_reg0,
    sig_rd_sts_slverr_reg0,
    sig_rdc2rsc_valid,
    sig_push_status1_out,
    md_error);
  output sig_rsc2stat_status_valid;
  output sig_rsc2rdc_ready;
  output [0:0]sig_rd_sts_interr_reg_reg_0;
  output [1:0]sig_rsc2stat_status;
  output sig_rd_sts_slverr_reg_reg_0;
  input sig_rd_sts_tag_reg0;
  input m_axi_aclk;
  input sig_rd_sts_interr_reg0;
  input sig_rd_sts_decerr_reg0;
  input sig_rd_sts_slverr_reg0;
  input sig_rdc2rsc_valid;
  input sig_push_status1_out;
  input md_error;

  wire m_axi_aclk;
  wire md_error;
  wire sig_push_rd_sts_reg;
  wire sig_push_status1_out;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire [0:0]sig_rd_sts_interr_reg_reg_0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_slverr_reg_reg_0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2rsc_valid;
  wire sig_rsc2rdc_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    sig_error_sh_reg_i_1
       (.I0(sig_rsc2stat_status[1]),
        .I1(sig_rsc2stat_status[0]),
        .I2(sig_rd_sts_interr_reg_reg_0),
        .I3(sig_push_status1_out),
        .I4(md_error),
        .O(sig_rd_sts_slverr_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rd_sts_interr_reg_reg_0),
        .R(sig_rd_sts_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2rdc_ready),
        .S(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_reg_full_i_2
       (.I0(sig_rsc2rdc_ready),
        .I1(sig_rdc2rsc_valid),
        .O(sig_push_rd_sts_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(sig_rd_sts_tag_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_wr_cntlr" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_rd_wr_cntlr
   (sig_m_valid_dup_reg,
    sig_m_valid_out_reg,
    m_axi_wvalid,
    m_axi_arsize,
    m_axi_awburst,
    m_axi_arvalid,
    sig_rsc2stat_status_valid,
    sig_rd_sts_interr_reg_reg,
    sig_doing_read_reg,
    sig_rd2llink_strm_tlast,
    m_axi_wstrb,
    SR,
    m_axi_rready,
    sig_rd_sts_slverr_reg_reg,
    sig_calc_error_pushed_reg,
    m_axi_awaddr,
    m_axi_awlen,
    \sig_data_reg_out_reg[55] ,
    m_axi_bready,
    out,
    m_axi_aclk,
    sig_rd_sts_tag_reg0,
    sig_cmd2all_doing_read,
    sig_cmd_full_reg_reg,
    E,
    sig_cmd2pcc_cmd_valid,
    Q,
    sig_llink2rd_allow_addr_req,
    m_axi_rvalid,
    m_axi_rlast,
    sig_m_valid_out_reg_0,
    sig_status_reg_empty,
    m_axi_rresp,
    m_axi_wready,
    m_axi_arready,
    m_axi_rdata,
    sig_push_status1_out,
    md_error,
    sig_llink2cmd_rd_busy,
    IP2Bus_MstRd_dst_rdy,
    \sig_data_reg_out_reg[2] ,
    m_axi_bvalid,
    sig_cmd_mst_be,
    sig_cmd_type_req);
  output sig_m_valid_dup_reg;
  output sig_m_valid_out_reg;
  output m_axi_wvalid;
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output sig_rsc2stat_status_valid;
  output [0:0]sig_rd_sts_interr_reg_reg;
  output sig_doing_read_reg;
  output sig_rd2llink_strm_tlast;
  output [0:0]m_axi_wstrb;
  output [0:0]SR;
  output m_axi_rready;
  output sig_rd_sts_slverr_reg_reg;
  output sig_calc_error_pushed_reg;
  output [31:0]m_axi_awaddr;
  output [6:0]m_axi_awlen;
  output [35:0]\sig_data_reg_out_reg[55] ;
  output m_axi_bready;
  input out;
  input m_axi_aclk;
  input sig_rd_sts_tag_reg0;
  input sig_cmd2all_doing_read;
  input sig_cmd_full_reg_reg;
  input [0:0]E;
  input sig_cmd2pcc_cmd_valid;
  input [24:0]Q;
  input sig_llink2rd_allow_addr_req;
  input m_axi_rvalid;
  input m_axi_rlast;
  input sig_m_valid_out_reg_0;
  input sig_status_reg_empty;
  input [1:0]m_axi_rresp;
  input m_axi_wready;
  input m_axi_arready;
  input [35:0]m_axi_rdata;
  input sig_push_status1_out;
  input md_error;
  input sig_llink2cmd_rd_busy;
  input IP2Bus_MstRd_dst_rdy;
  input [0:0]\sig_data_reg_out_reg[2] ;
  input m_axi_bvalid;
  input [0:0]sig_cmd_mst_be;
  input sig_cmd_type_req;

  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire I_MSTR_PCC_n_8;
  wire I_RD_DATA_CNTL_n_3;
  wire I_RD_DATA_CNTL_n_4;
  wire I_READ_STREAM_SKID_BUF_n_5;
  wire I_WR_STATUS_CNTLR_n_1;
  wire [24:0]Q;
  wire [0:0]SR;
  wire m_axi_aclk;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [6:0]m_axi_awlen;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [35:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [0:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire out;
  wire p_0_in5_in;
  wire sig_addr2data_addr_posted;
  wire sig_addr2stat_cmd_fifo_empty;
  wire sig_calc_error_pushed_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_full_reg_reg;
  wire [0:0]sig_cmd_mst_be;
  wire sig_cmd_type_req;
  wire [0:0]\sig_data_reg_out_reg[2] ;
  wire [35:0]\sig_data_reg_out_reg[55] ;
  wire sig_doing_read_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire sig_m_valid_out_reg_0;
  wire sig_next_eof_reg;
  wire [31:3]sig_pcc2addr_addr;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_dre_src_align;
  wire sig_pcc2data_eof;
  wire [6:0]sig_pcc2data_len;
  wire [2:1]sig_pcc2data_saddr_lsb;
  wire sig_pcc2data_sequential;
  wire sig_push_addr_reg1_out;
  wire sig_push_status1_out;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd_addr_valid_reg0;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire [0:0]sig_rd_sts_interr_reg_reg;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_slverr_reg_reg;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_rdc2rdskid_tlast;
  wire sig_rdc2rsc_valid;
  wire sig_rdskid2rdc_tready;
  wire sig_reset_reg;
  wire sig_rsc2rdc_ready;
  wire [6:5]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_status_reg_empty;

  TinySoC_axi_tft_0_0_axi_master_burst_addr_cntl I_ADDR_CNTL
       (.Q({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .out(sig_addr2data_addr_posted),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_next_len_reg_reg[6]_0 (sig_pcc2data_len),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_posted_to_axi_reg_0(out),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rd_addr_valid_reg0(sig_rd_addr_valid_reg0));
  TinySoC_axi_tft_0_0_axi_master_burst_pcc I_MSTR_PCC
       (.E(E),
        .Q(Q),
        .SR(SR),
        .m_axi_aclk(m_axi_aclk),
        .out(out),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_calc_error_pushed_reg_0(sig_calc_error_pushed_reg),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(sig_cmd_full_reg_reg),
        .sig_cmd_mst_be(sig_cmd_mst_be),
        .sig_cmd_type_req(sig_cmd_type_req),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rd_addr_valid_reg0(sig_rd_addr_valid_reg0),
        .sig_rdc2pcc_cmd_ready(sig_rdc2pcc_cmd_ready),
        .\sig_xfer_addr_reg_reg[31]_0 ({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .\sig_xfer_len_reg_reg[2]_0 (I_MSTR_PCC_n_8),
        .\sig_xfer_len_reg_reg[6]_0 (sig_pcc2data_len));
  TinySoC_axi_tft_0_0_axi_master_burst_rddata_cntl I_RD_DATA_CNTL
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rvalid_0(I_RD_DATA_CNTL_n_4),
        .out(out),
        .\sig_addr_posted_cntr_reg[0]_0 (I_RD_DATA_CNTL_n_3),
        .\sig_addr_posted_cntr_reg[2]_0 (sig_addr2data_addr_posted),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_dbeat_cntr_reg[0]_0 (I_READ_STREAM_SKID_BUF_n_5),
        .\sig_dbeat_cntr_reg[6]_0 (sig_pcc2data_len),
        .sig_last_dbeat_reg_0(I_MSTR_PCC_n_8),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_next_eof_reg_reg_0(sig_rdskid2rdc_tready),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_interr_reg_reg(sig_rd_sts_interr_reg_reg),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rdc2pcc_cmd_ready(sig_rdc2pcc_cmd_ready),
        .sig_rdc2rdskid_tlast(sig_rdc2rdskid_tlast),
        .sig_rdc2rsc_valid(sig_rdc2rsc_valid),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_status_reg_empty(sig_status_reg_empty));
  TinySoC_axi_tft_0_0_axi_master_burst_rd_status_cntl I_RD_STATUS_CNTLR
       (.m_axi_aclk(m_axi_aclk),
        .md_error(md_error),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_interr_reg_reg_0(sig_rd_sts_interr_reg_reg),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rd_sts_slverr_reg_reg_0(sig_rd_sts_slverr_reg_reg),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rdc2rsc_valid(sig_rdc2rsc_valid),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  TinySoC_axi_tft_0_0_axi_master_burst_skid_buf I_READ_STREAM_SKID_BUF
       (.IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rready_0(I_RD_DATA_CNTL_n_3),
        .m_axi_rvalid(m_axi_rvalid),
        .out(sig_rdskid2rdc_tready),
        .\sig_data_reg_out_reg[2]_0 (\sig_data_reg_out_reg[2] ),
        .\sig_data_reg_out_reg[55]_0 (\sig_data_reg_out_reg[55] ),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_m_valid_dup_reg_0(sig_m_valid_dup_reg),
        .sig_m_valid_out_reg_0(sig_m_valid_out_reg),
        .sig_m_valid_out_reg_1(sig_m_valid_out_reg_0),
        .sig_m_valid_out_reg_2(I_RD_DATA_CNTL_n_4),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rdc2rdskid_tlast(sig_rdc2rdskid_tlast),
        .sig_reset_reg(sig_reset_reg),
        .sig_s_ready_out_reg_0(I_READ_STREAM_SKID_BUF_n_5),
        .sig_s_ready_out_reg_1(out));
  TinySoC_axi_tft_0_0_axi_master_burst_skid2mm_buf I_WRITE_MMAP_SKID_BUF
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(out),
        .sig_reset_reg(sig_reset_reg));
  TinySoC_axi_tft_0_0_axi_master_burst_skid_buf_9 I_WRITE_STRM_SKID_BUF
       (.m_axi_aclk(m_axi_aclk),
        .out(p_0_in5_in),
        .sig_reset_reg(sig_reset_reg),
        .sig_s_ready_out_reg_0(out),
        .sig_s_ready_out_reg_1(I_WR_STATUS_CNTLR_n_1));
  TinySoC_axi_tft_0_0_axi_master_burst_wr_status_cntl I_WR_STATUS_CNTLR
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_init_reg_reg(I_WR_STATUS_CNTLR_n_1),
        .sig_reset_reg(sig_reset_reg),
        .sig_s_ready_out_reg(p_0_in5_in));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2all_doing_read),
        .Q(sig_doing_read_reg),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rddata_cntl" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_rddata_cntl
   (sig_rdc2pcc_cmd_ready,
    sig_rdc2rsc_valid,
    sig_next_eof_reg,
    \sig_addr_posted_cntr_reg[0]_0 ,
    m_axi_rvalid_0,
    sig_rdc2rdskid_tlast,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_decerr_reg0,
    sig_rd_sts_slverr_reg0,
    sig_pcc2data_cmd_cmplt,
    m_axi_aclk,
    sig_pcc2data_calc_error,
    out,
    sig_pcc2data_sequential,
    sig_pcc2data_eof,
    \sig_dbeat_cntr_reg[6]_0 ,
    \sig_dbeat_cntr_reg[0]_0 ,
    sig_last_dbeat_reg_0,
    sig_next_eof_reg_reg_0,
    m_axi_rvalid,
    m_axi_rlast,
    sig_rsc2stat_status_valid,
    sig_status_reg_empty,
    sig_pcc2data_cmd_valid,
    sig_cmd2all_doing_read,
    m_axi_rresp,
    sig_rd_sts_interr_reg_reg,
    sig_rsc2stat_status,
    sig_rsc2rdc_ready,
    \sig_addr_posted_cntr_reg[2]_0 );
  output sig_rdc2pcc_cmd_ready;
  output sig_rdc2rsc_valid;
  output sig_next_eof_reg;
  output \sig_addr_posted_cntr_reg[0]_0 ;
  output m_axi_rvalid_0;
  output sig_rdc2rdskid_tlast;
  output sig_rd_sts_interr_reg0;
  output sig_rd_sts_decerr_reg0;
  output sig_rd_sts_slverr_reg0;
  input sig_pcc2data_cmd_cmplt;
  input m_axi_aclk;
  input sig_pcc2data_calc_error;
  input out;
  input sig_pcc2data_sequential;
  input sig_pcc2data_eof;
  input [6:0]\sig_dbeat_cntr_reg[6]_0 ;
  input \sig_dbeat_cntr_reg[0]_0 ;
  input sig_last_dbeat_reg_0;
  input sig_next_eof_reg_reg_0;
  input m_axi_rvalid;
  input m_axi_rlast;
  input sig_rsc2stat_status_valid;
  input sig_status_reg_empty;
  input sig_pcc2data_cmd_valid;
  input sig_cmd2all_doing_read;
  input [1:0]m_axi_rresp;
  input [0:0]sig_rd_sts_interr_reg_reg;
  input [1:0]sig_rsc2stat_status;
  input sig_rsc2rdc_ready;
  input \sig_addr_posted_cntr_reg[2]_0 ;

  wire m_axi_aclk;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_rvalid_0;
  wire out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire \sig_addr_posted_cntr_reg[0]_0 ;
  wire \sig_addr_posted_cntr_reg[2]_0 ;
  wire sig_clr_dqual_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd_cmplt_last_dbeat;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[0]_i_1_n_0 ;
  wire \sig_dbeat_cntr[1]_i_1_n_0 ;
  wire \sig_dbeat_cntr[2]_i_1_n_0 ;
  wire \sig_dbeat_cntr[3]_i_1_n_0 ;
  wire \sig_dbeat_cntr[4]_i_1_n_0 ;
  wire \sig_dbeat_cntr[4]_i_2_n_0 ;
  wire \sig_dbeat_cntr[5]_i_1_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2_n_0 ;
  wire \sig_dbeat_cntr[6]_i_1_n_0 ;
  wire \sig_dbeat_cntr[7]_i_1_n_0 ;
  wire \sig_dbeat_cntr[7]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire \sig_dbeat_cntr_reg[0]_0 ;
  wire [6:0]\sig_dbeat_cntr_reg[6]_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_last_dbeat_i_1_n_0;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_3_n_0;
  wire sig_last_dbeat_i_5_n_0;
  wire sig_last_dbeat_i_6_n_0;
  wire sig_last_dbeat_reg_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_i_1_n_0;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_cmd_cmplt_reg_i_5_n_0;
  wire sig_next_eof_reg;
  wire sig_next_eof_reg_reg_0;
  wire sig_next_sequential_reg;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire sig_push_coelsc_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire [0:0]sig_rd_sts_interr_reg_reg;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_rdc2rdskid_tlast;
  wire sig_rdc2rsc_calc_err;
  wire sig_rdc2rsc_decerr;
  wire sig_rdc2rsc_slverr;
  wire sig_rdc2rsc_valid;
  wire sig_rsc2rdc_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_status_reg_empty;

  LUT6 #(
    .INIT(64'hFFFFFFFFFF01FFFF)) 
    m_axi_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_next_calc_error_reg),
        .I4(sig_dqual_reg_full),
        .I5(sig_rdc2rsc_valid),
        .O(\sig_addr_posted_cntr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8F87878778787808)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_cmd2all_doing_read),
        .I1(\sig_addr_posted_cntr_reg[2]_0 ),
        .I2(sig_last_mmap_dbeat_reg),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAADAA4AAA4AAA4AA)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(\sig_addr_posted_cntr_reg[2]_0 ),
        .I5(sig_cmd2all_doing_read),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCECC8CCC8CCC8CC)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(\sig_addr_posted_cntr_reg[2]_0 ),
        .I5(sig_cmd2all_doing_read),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(sig_rdc2rsc_decerr),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_rresp[1]),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_rdc2rsc_decerr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_rdc2rsc_calc_err),
        .I1(sig_next_calc_error_reg),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_rdc2rsc_calc_err),
        .R(sig_coelsc_tag_reg0));
  LUT6 #(
    .INIT(64'hFF15FF00FF00FF00)) 
    sig_coelsc_reg_full_i_1
       (.I0(\sig_dbeat_cntr_reg[0]_0 ),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .I3(out),
        .I4(sig_rsc2rdc_ready),
        .I5(sig_rdc2rsc_valid),
        .O(sig_coelsc_tag_reg0));
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_reg_full_i_2
       (.I0(\sig_dbeat_cntr_reg[0]_0 ),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_coelsc_reg_full_i_3
       (.I0(sig_next_calc_error_reg),
        .I1(m_axi_rlast),
        .I2(m_axi_rvalid),
        .I3(sig_next_cmd_cmplt_reg),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_rdc2rsc_valid),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(sig_rdc2rsc_slverr),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_rresp[1]),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_rdc2rsc_slverr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [0]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr[0]),
        .O(\sig_dbeat_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [1]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[1]),
        .O(\sig_dbeat_cntr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [2]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [3]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[0]),
        .I4(sig_dbeat_cntr[1]),
        .I5(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [4]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(\sig_dbeat_cntr[4]_i_2_n_0 ),
        .I3(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2 
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [5]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(\sig_dbeat_cntr[5]_i_2_n_0 ),
        .I3(sig_dbeat_cntr[5]),
        .O(\sig_dbeat_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2 
       (.I0(sig_dbeat_cntr[4]),
        .I1(sig_dbeat_cntr[2]),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[0]),
        .I4(sig_dbeat_cntr[1]),
        .O(\sig_dbeat_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(\sig_dbeat_cntr_reg[6]_0 [6]),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I3(sig_dbeat_cntr[6]),
        .O(\sig_dbeat_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5444FFFF44444444)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I1(sig_dqual_reg_empty),
        .I2(sig_last_dbeat_reg_n_0),
        .I3(sig_next_sequential_reg),
        .I4(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I5(\sig_dbeat_cntr_reg[0]_0 ),
        .O(\sig_dbeat_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_rdc2pcc_cmd_ready),
        .I1(sig_dbeat_cntr[6]),
        .I2(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I3(sig_dbeat_cntr[7]),
        .O(\sig_dbeat_cntr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(\sig_dbeat_cntr[4]_i_2_n_0 ),
        .I1(sig_dbeat_cntr[4]),
        .I2(sig_dbeat_cntr[5]),
        .I3(sig_dbeat_cntr[7]),
        .I4(sig_dbeat_cntr[6]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr[5]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[3]),
        .I4(sig_dbeat_cntr[2]),
        .I5(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[0]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[1]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[2]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[3]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[4]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[5]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[6]_i_1_n_0 ),
        .Q(sig_dbeat_cntr[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(\sig_dbeat_cntr[7]_i_2_n_0 ),
        .Q(sig_dbeat_cntr[7]),
        .R(out));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_rdc2pcc_cmd_ready),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  LUT4 #(
    .INIT(16'h1310)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(out),
        .I2(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .I3(sig_last_dbeat_reg_n_0),
        .O(sig_last_dbeat_i_1_n_0));
  LUT6 #(
    .INIT(64'h77FF777777F07777)) 
    sig_last_dbeat_i_2
       (.I0(\sig_dbeat_cntr_reg[0]_0 ),
        .I1(sig_last_dbeat_i_3_n_0),
        .I2(sig_last_dbeat_reg_0),
        .I3(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I4(sig_last_dbeat_i_5_n_0),
        .I5(\sig_dbeat_cntr_reg[6]_0 [3]),
        .O(sig_last_dbeat_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    sig_last_dbeat_i_3
       (.I0(sig_last_dbeat_i_6_n_0),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[3]),
        .O(sig_last_dbeat_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    sig_last_dbeat_i_5
       (.I0(sig_dqual_reg_empty),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_sequential_reg),
        .I3(sig_next_eof_reg_reg_0),
        .I4(m_axi_rvalid),
        .I5(\sig_addr_posted_cntr_reg[0]_0 ),
        .O(sig_last_dbeat_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_6
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_dbeat_cntr[7]),
        .I2(sig_dbeat_cntr[5]),
        .I3(sig_dbeat_cntr[4]),
        .O(sig_last_dbeat_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_dbeat_i_1_n_0),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(\sig_addr_posted_cntr_reg[0]_0 ),
        .I1(sig_next_eof_reg_reg_0),
        .I2(m_axi_rvalid),
        .I3(m_axi_rlast),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_last_skid_reg_i_1
       (.I0(sig_next_eof_reg),
        .I1(m_axi_rvalid),
        .I2(m_axi_rlast),
        .O(sig_rdc2rdskid_tlast));
  LUT3 #(
    .INIT(8'h04)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(out),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_ld_new_cmd_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_new_cmd_reg_i_1_n_0),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sig_m_valid_dup_i_3
       (.I0(\sig_addr_posted_cntr_reg[0]_0 ),
        .I1(m_axi_rvalid),
        .O(m_axi_rvalid_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_calc_error),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(out),
        .I1(sig_rdc2pcc_cmd_ready),
        .I2(\sig_addr_posted_cntr_reg[0]_0 ),
        .I3(sig_next_eof_reg_reg_0),
        .I4(m_axi_rvalid),
        .I5(m_axi_rlast),
        .O(sig_clr_dqual_reg));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(\sig_dbeat_cntr_reg[0]_0 ),
        .I1(sig_next_sequential_reg),
        .I2(sig_last_dbeat_reg_n_0),
        .I3(sig_dqual_reg_empty),
        .I4(sig_next_cmd_cmplt_reg_i_4_n_0),
        .O(sig_rdc2pcc_cmd_ready));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFFFFFFF)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_next_cmd_cmplt_reg_i_5_n_0),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_status_reg_empty),
        .I3(sig_next_calc_error_reg),
        .I4(sig_pcc2data_cmd_valid),
        .I5(sig_cmd2all_doing_read),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(sig_next_cmd_cmplt_reg_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_cmd_cmplt),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_eof),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_sequential),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_rdc2rsc_decerr),
        .I1(sig_rsc2stat_status[0]),
        .O(sig_rd_sts_decerr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rdc2rsc_calc_err),
        .I1(sig_rd_sts_interr_reg_reg),
        .O(sig_rd_sts_interr_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_rdc2rsc_slverr),
        .I1(sig_rsc2stat_status[1]),
        .O(sig_rd_sts_slverr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_reset" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_reset
   (out,
    sig_rdwr_reset_reg_reg_0,
    sig_llink_reset_reg_reg_0,
    m_axi_aclk,
    scndry_out,
    m_axi_aresetn);
  output out;
  output sig_rdwr_reset_reg_reg_0;
  output sig_llink_reset_reg_reg_0;
  input m_axi_aclk;
  input scndry_out;
  input m_axi_aresetn;

  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire scndry_out;
  wire sig_axi_por2rst__0;
  wire sig_axi_por2rst_out;
  wire sig_axi_por2rst_out_i_2_n_0;
  wire sig_axi_por_reg1;
  wire sig_axi_por_reg2;
  wire sig_axi_por_reg3;
  wire sig_axi_por_reg4;
  wire sig_axi_por_reg5;
  wire sig_axi_por_reg6;
  wire sig_axi_por_reg7;
  wire sig_axi_por_reg8;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_cmd_reset_reg;
  wire sig_cmd_reset_reg_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_llink_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_rdwr_reset_reg;

  assign out = sig_cmd_reset_reg;
  assign sig_llink_reset_reg_reg_0 = sig_llink_reset_reg;
  assign sig_rdwr_reset_reg_reg_0 = sig_rdwr_reset_reg;
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sig_axi_por2rst_out_i_1
       (.I0(sig_axi_por_reg7),
        .I1(sig_axi_por_reg6),
        .I2(sig_axi_por_reg1),
        .I3(sig_axi_por_reg8),
        .I4(sig_axi_por2rst_out_i_2_n_0),
        .O(sig_axi_por2rst__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sig_axi_por2rst_out_i_2
       (.I0(sig_axi_por_reg4),
        .I1(sig_axi_por_reg5),
        .I2(sig_axi_por_reg2),
        .I3(sig_axi_por_reg3),
        .O(sig_axi_por2rst_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por2rst_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por2rst__0),
        .Q(sig_axi_por2rst_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axi_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg1),
        .Q(sig_axi_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg3_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg2),
        .Q(sig_axi_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg4_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg3),
        .Q(sig_axi_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg5_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg4),
        .Q(sig_axi_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg6_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg5),
        .Q(sig_axi_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg7_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg6),
        .Q(sig_axi_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg8_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg7),
        .Q(sig_axi_por_reg8),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBF)) 
    sig_cmd_reset_reg_i_1
       (.I0(sig_axi_por2rst_out),
        .I1(scndry_out),
        .I2(m_axi_aresetn),
        .O(sig_cmd_reset_reg_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_cmd_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_llink_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_rdwr_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_rdwr_reset_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid2mm_buf" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_skid2mm_buf
   (m_axi_wvalid,
    m_axi_wstrb,
    m_axi_aclk,
    out,
    sig_reset_reg,
    m_axi_wready);
  output m_axi_wvalid;
  output [0:0]m_axi_wstrb;
  input m_axi_aclk;
  input out;
  input sig_reset_reg;
  input m_axi_wready;

  wire m_axi_aclk;
  wire m_axi_wready;
  wire [0:0]m_axi_wstrb;
  wire out;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire \sig_strb_reg_out[7]_i_1_n_0 ;
  wire \sig_strb_skid_reg_reg_n_0_[7] ;

  assign m_axi_wvalid = sig_m_valid_out;
  LUT5 #(
    .INIT(32'h01110000)) 
    sig_m_valid_dup_i_1__0
       (.I0(sig_reset_reg),
        .I1(out),
        .I2(sig_s_ready_dup),
        .I3(m_axi_wready),
        .I4(sig_m_valid_dup),
        .O(sig_m_valid_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_s_ready_dup_i_1__1
       (.I0(m_axi_wready),
        .I1(sig_s_ready_dup),
        .I2(sig_reset_reg),
        .O(sig_s_ready_dup_i_1__1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_dup),
        .R(out));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_out),
        .R(out));
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    \sig_strb_reg_out[7]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[7] ),
        .I2(m_axi_wready),
        .I3(sig_m_valid_dup),
        .I4(m_axi_wstrb),
        .O(\sig_strb_reg_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_strb_reg_out[7]_i_1_n_0 ),
        .Q(m_axi_wstrb),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[7] ),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_skid_buf
   (sig_m_valid_dup_reg_0,
    out,
    sig_m_valid_out_reg_0,
    sig_rd2llink_strm_tlast,
    m_axi_rready,
    sig_s_ready_out_reg_0,
    \sig_data_reg_out_reg[55]_0 ,
    m_axi_aclk,
    sig_s_ready_out_reg_1,
    sig_rdc2rdskid_tlast,
    m_axi_rready_0,
    sig_reset_reg,
    sig_m_valid_out_reg_1,
    sig_m_valid_out_reg_2,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_rdata,
    sig_llink2cmd_rd_busy,
    IP2Bus_MstRd_dst_rdy,
    sig_next_eof_reg,
    \sig_data_reg_out_reg[2]_0 );
  output sig_m_valid_dup_reg_0;
  output out;
  output sig_m_valid_out_reg_0;
  output sig_rd2llink_strm_tlast;
  output m_axi_rready;
  output sig_s_ready_out_reg_0;
  output [35:0]\sig_data_reg_out_reg[55]_0 ;
  input m_axi_aclk;
  input sig_s_ready_out_reg_1;
  input sig_rdc2rdskid_tlast;
  input m_axi_rready_0;
  input sig_reset_reg;
  input sig_m_valid_out_reg_1;
  input sig_m_valid_out_reg_2;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [35:0]m_axi_rdata;
  input sig_llink2cmd_rd_busy;
  input IP2Bus_MstRd_dst_rdy;
  input sig_next_eof_reg;
  input [0:0]\sig_data_reg_out_reg[2]_0 ;

  wire IP2Bus_MstRd_dst_rdy;
  wire m_axi_aclk;
  wire [35:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rready_0;
  wire m_axi_rvalid;
  wire [0:0]\sig_data_reg_out_reg[2]_0 ;
  wire [35:0]\sig_data_reg_out_reg[55]_0 ;
  wire [55:2]sig_data_skid_mux_out;
  wire [55:2]sig_data_skid_reg;
  wire sig_last_reg_out_i_1_n_0;
  wire sig_last_reg_out_i_2_n_0;
  wire sig_last_skid_reg;
  wire sig_llink2cmd_rd_busy;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_1;
  wire sig_m_valid_out_reg_2;
  wire sig_next_eof_reg;
  wire sig_rd2llink_strm_tlast;
  wire sig_rdc2rdskid_tlast;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_s_ready_out_reg_0;
  wire sig_s_ready_out_reg_1;

  assign out = sig_s_ready_out;
  assign sig_m_valid_dup_reg_0 = sig_m_valid_dup;
  assign sig_m_valid_out_reg_0 = sig_m_valid_out;
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_rready_INST_0
       (.I0(sig_s_ready_out),
        .I1(m_axi_rready_0),
        .O(m_axi_rready));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_2 
       (.I0(m_axi_rdata[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[10]),
        .Q(\sig_data_reg_out_reg[55]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[11]),
        .Q(\sig_data_reg_out_reg[55]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[12]),
        .Q(\sig_data_reg_out_reg[55]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[13]),
        .Q(\sig_data_reg_out_reg[55]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[14]),
        .Q(\sig_data_reg_out_reg[55]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[15]),
        .Q(\sig_data_reg_out_reg[55]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[18]),
        .Q(\sig_data_reg_out_reg[55]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[19]),
        .Q(\sig_data_reg_out_reg[55]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[20]),
        .Q(\sig_data_reg_out_reg[55]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[21]),
        .Q(\sig_data_reg_out_reg[55]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[22]),
        .Q(\sig_data_reg_out_reg[55]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[23]),
        .Q(\sig_data_reg_out_reg[55]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[2]),
        .Q(\sig_data_reg_out_reg[55]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[34]),
        .Q(\sig_data_reg_out_reg[55]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[35]),
        .Q(\sig_data_reg_out_reg[55]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[36]),
        .Q(\sig_data_reg_out_reg[55]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[37]),
        .Q(\sig_data_reg_out_reg[55]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[38]),
        .Q(\sig_data_reg_out_reg[55]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[39]),
        .Q(\sig_data_reg_out_reg[55]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[3]),
        .Q(\sig_data_reg_out_reg[55]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[42]),
        .Q(\sig_data_reg_out_reg[55]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[43]),
        .Q(\sig_data_reg_out_reg[55]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[44]),
        .Q(\sig_data_reg_out_reg[55]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[45]),
        .Q(\sig_data_reg_out_reg[55]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[46]),
        .Q(\sig_data_reg_out_reg[55]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[47]),
        .Q(\sig_data_reg_out_reg[55]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[4]),
        .Q(\sig_data_reg_out_reg[55]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[50]),
        .Q(\sig_data_reg_out_reg[55]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[51]),
        .Q(\sig_data_reg_out_reg[55]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[52]),
        .Q(\sig_data_reg_out_reg[55]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[53]),
        .Q(\sig_data_reg_out_reg[55]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[54]),
        .Q(\sig_data_reg_out_reg[55]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[55]),
        .Q(\sig_data_reg_out_reg[55]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[5]),
        .Q(\sig_data_reg_out_reg[55]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[6]),
        .Q(\sig_data_reg_out_reg[55]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_data_reg_out_reg[2]_0 ),
        .D(sig_data_skid_mux_out[7]),
        .Q(\sig_data_reg_out_reg[55]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[6]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[7]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[8]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[9]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[10]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[11]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[12]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[13]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[14]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[15]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[16]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[17]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[0]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[18]),
        .Q(sig_data_skid_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[19]),
        .Q(sig_data_skid_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[20]),
        .Q(sig_data_skid_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[21]),
        .Q(sig_data_skid_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[22]),
        .Q(sig_data_skid_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[23]),
        .Q(sig_data_skid_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[1]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[24]),
        .Q(sig_data_skid_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[25]),
        .Q(sig_data_skid_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[26]),
        .Q(sig_data_skid_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[27]),
        .Q(sig_data_skid_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[28]),
        .Q(sig_data_skid_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[29]),
        .Q(sig_data_skid_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[2]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[30]),
        .Q(sig_data_skid_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[31]),
        .Q(sig_data_skid_reg[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[32]),
        .Q(sig_data_skid_reg[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[33]),
        .Q(sig_data_skid_reg[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[34]),
        .Q(sig_data_skid_reg[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[35]),
        .Q(sig_data_skid_reg[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[3]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[4]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[5]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    sig_last_reg_out_i_1
       (.I0(sig_next_eof_reg),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_s_ready_dup),
        .I3(sig_last_skid_reg),
        .I4(\sig_data_reg_out_reg[2]_0 ),
        .I5(sig_rd2llink_strm_tlast),
        .O(sig_last_reg_out_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sig_last_reg_out_i_2
       (.I0(m_axi_rlast),
        .I1(m_axi_rvalid),
        .O(sig_last_reg_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_reg_out_i_1_n_0),
        .Q(sig_rd2llink_strm_tlast),
        .R(sig_s_ready_out_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_rdc2rdskid_tlast),
        .Q(sig_last_skid_reg),
        .R(sig_s_ready_out_reg_1));
  LUT6 #(
    .INIT(64'h0010101011111111)) 
    sig_m_valid_dup_i_1
       (.I0(sig_reset_reg),
        .I1(sig_s_ready_out_reg_1),
        .I2(sig_m_valid_dup),
        .I3(sig_s_ready_dup),
        .I4(sig_m_valid_out_reg_1),
        .I5(sig_m_valid_out_reg_2),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(sig_s_ready_out),
        .I1(m_axi_rvalid),
        .I2(m_axi_rready_0),
        .O(sig_s_ready_out_reg_0));
  LUT6 #(
    .INIT(64'hFFF8FFF8F8F8FFF8)) 
    sig_s_ready_dup_i_1__0
       (.I0(sig_llink2cmd_rd_busy),
        .I1(IP2Bus_MstRd_dst_rdy),
        .I2(sig_reset_reg),
        .I3(sig_s_ready_dup),
        .I4(sig_m_valid_dup),
        .I5(sig_m_valid_out_reg_2),
        .O(sig_s_ready_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_dup),
        .R(sig_s_ready_out_reg_1));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_out),
        .R(sig_s_ready_out_reg_1));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_skid_buf_9
   (out,
    m_axi_aclk,
    sig_s_ready_out_reg_0,
    sig_s_ready_out_reg_1,
    sig_reset_reg);
  output out;
  input m_axi_aclk;
  input sig_s_ready_out_reg_0;
  input sig_s_ready_out_reg_1;
  input sig_reset_reg;

  wire m_axi_aclk;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_s_ready_out_reg_0;
  wire sig_s_ready_out_reg_1;

  assign out = sig_s_ready_dup;
  LUT3 #(
    .INIT(8'h02)) 
    sig_m_valid_dup_i_1__1
       (.I0(sig_m_valid_dup),
        .I1(sig_reset_reg),
        .I2(sig_s_ready_out_reg_0),
        .O(sig_m_valid_dup_i_1__1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_out_reg_1),
        .Q(sig_s_ready_dup),
        .R(sig_s_ready_out_reg_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_out_reg_1),
        .Q(sig_s_ready_out),
        .R(sig_s_ready_out_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_wr_status_cntl" *) 
module TinySoC_axi_tft_0_0_axi_master_burst_wr_status_cntl
   (sig_reset_reg,
    sig_init_reg_reg,
    m_axi_bready,
    out,
    m_axi_aclk,
    sig_s_ready_out_reg,
    m_axi_bvalid);
  output sig_reset_reg;
  output sig_init_reg_reg;
  output m_axi_bready;
  input out;
  input m_axi_aclk;
  input sig_s_ready_out_reg;
  input m_axi_bvalid;

  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire sig_init_reg_reg;
  wire sig_reset_reg;
  wire sig_s_ready_out_reg;

  TinySoC_axi_tft_0_0_axi_master_burst_fifo I_WRESP_STATUS_FIFO
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_init_reg_reg_0(sig_reset_reg),
        .sig_init_reg_reg_1(sig_init_reg_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg));
endmodule

(* C_DEFAULT_TFT_BASE_ADDR = "64'b0000000000000000000000000000000000000110000000000000000000000000" *) (* C_EN_I2C_INTF = "0" *) (* C_FAMILY = "artix7" *) 
(* C_I2C_SLAVE_ADDR = "8'b01110110" *) (* C_MAX_BURST_LEN = "128" *) (* C_M_AXI_ADDR_WIDTH = "32" *) 
(* C_M_AXI_DATA_WIDTH = "64" *) (* C_S_AXI_ADDR_WIDTH = "3" *) (* C_TFT_INTERFACE = "0" *) 
(* ORIG_REF_NAME = "axi_tft" *) (* downgradeipidentifiedwarnings = "yes" *) 
module TinySoC_axi_tft_0_0_axi_tft
   (s_axi_aclk,
    s_axi_aresetn,
    m_axi_aclk,
    m_axi_aresetn,
    md_error,
    ip2intc_irpt,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
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
    sys_tft_clk,
    tft_hsync,
    tft_vsync,
    tft_de,
    tft_dps,
    tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_dvi_clk_p,
    tft_dvi_clk_n,
    tft_dvi_data,
    tft_iic_scl_i,
    tft_iic_scl_o,
    tft_iic_scl_t,
    tft_iic_sda_i,
    tft_iic_sda_o,
    tft_iic_sda_t);
  (* sigis = "CLK" *) input s_axi_aclk;
  (* sigis = "RST" *) input s_axi_aresetn;
  (* sigis = "CLK" *) input m_axi_aclk;
  (* sigis = "RST" *) input m_axi_aresetn;
  output md_error;
  (* sigis = "INTR_EDGE_RISING" *) output ip2intc_irpt;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "CLK" *) input sys_tft_clk;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  output tft_dps;
  output tft_vga_clk;
  output [5:0]tft_vga_r;
  output [5:0]tft_vga_g;
  output [5:0]tft_vga_b;
  output tft_dvi_clk_p;
  output tft_dvi_clk_n;
  output [11:0]tft_dvi_data;
  input tft_iic_scl_i;
  output tft_iic_scl_o;
  output tft_iic_scl_t;
  input tft_iic_sda_i;
  output tft_iic_sda_o;
  output tft_iic_sda_t;

  wire \<const0> ;
  wire \<const1> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_38;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_42;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_45;
  wire AXI_LITE_IPIF_I_n_48;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_9;
  wire AXI_MASTER_BURST_I_n_12;
  wire [8:61]Bus2IP_MstRd_d;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_Mst_Type;
  wire \I_RD_LLINK_ADAPTER/sig_rd_discontinue ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ;
  wire \I_SLAVE_ATTACHMENT/s_axi_bresp_i ;
  wire \I_SLAVE_ATTACHMENT/s_axi_rresp_i ;
  wire \I_SLAVE_ATTACHMENT/state1__2 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_d1 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_d2 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_or ;
  wire \SLAVE_REG_U6/bus2ip_wrce_or ;
  wire TFT_CTRL_I_n_24;
  wire TFT_CTRL_I_n_25;
  wire TFT_CTRL_I_n_26;
  wire TFT_CTRL_I_n_27;
  wire TFT_CTRL_I_n_28;
  wire TFT_CTRL_I_n_29;
  wire TFT_CTRL_I_n_30;
  wire TFT_CTRL_I_n_31;
  wire TFT_CTRL_I_n_32;
  wire TFT_CTRL_I_n_33;
  wire TFT_CTRL_I_n_34;
  wire TFT_CTRL_I_n_35;
  wire TFT_CTRL_I_n_36;
  wire TFT_CTRL_I_n_37;
  wire TFT_CTRL_I_n_38;
  wire TFT_CTRL_I_n_39;
  wire TFT_CTRL_I_n_40;
  wire TFT_CTRL_I_n_41;
  wire TFT_CTRL_I_n_42;
  wire TFT_CTRL_I_n_43;
  wire TFT_CTRL_I_n_44;
  wire TFT_CTRL_I_n_45;
  wire TFT_CTRL_I_n_46;
  wire TFT_CTRL_I_n_47;
  wire TFT_CTRL_I_n_48;
  wire TFT_CTRL_I_n_49;
  wire TFT_CTRL_I_n_50;
  wire TFT_CTRL_I_n_66;
  wire TFT_CTRL_I_n_70;
  wire TFT_CTRL_I_n_71;
  wire TFT_CTRL_I_n_72;
  wire \TFT_IF_U5/C0 ;
  wire [4:7]TFT_iic_reg_data;
  wire TFT_iic_xfer;
  wire TFT_status_reg;
  wire bus2ip_mreset;
  wire bus2ip_mreset_i_1_n_0;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire bus2ip_sreset;
  wire bus2ip_sreset_i_1_n_0;
  wire [3:0]bus2ip_wrce;
  wire eof_n;
  wire eof_pulse;
  wire [0:24]ip2bus_mst_addr;
  wire ip2bus_mstrd_req;
  wire ip2intc_irpt;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire [0:0]\^m_axi_arsize ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]\^m_axi_awburst ;
  wire [6:0]\^m_axi_awlen ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [6:6]\^m_axi_wstrb ;
  wire m_axi_wvalid;
  wire md_error;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sig_llink2cmd_rd_busy;
  wire sig_rd2llink_strm_tlast;
  wire sys_tft_clk;
  wire [0:0]tft_base_addr_i;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire tft_intr_en_i;
  wire tft_on_reg;
  wire tft_on_reg_i;
  wire [5:0]tft_vga_b;
  wire tft_vga_clk;
  wire [5:0]tft_vga_g;
  wire [5:0]tft_vga_r;
  wire tft_vsync;

  assign m_axi_araddr[31:0] = m_axi_awaddr;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \^m_axi_awburst [0];
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const1> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6:0] = \^m_axi_awlen [6:0];
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \^m_axi_arsize [0];
  assign m_axi_arsize[0] = \^m_axi_arsize [0];
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \^m_axi_awburst [0];
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const1> ;
  assign m_axi_awcache[0] = \<const1> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6:0] = \^m_axi_awlen [6:0];
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \^m_axi_arsize [0];
  assign m_axi_awsize[0] = \^m_axi_arsize [0];
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[6] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[5] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[4] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[3] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[2] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[1] = \^m_axi_wstrb [6];
  assign m_axi_wstrb[0] = \^m_axi_wstrb [6];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31:21] = \^s_axi_rdata [31:21];
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign tft_dvi_clk_n = \<const0> ;
  assign tft_dvi_clk_p = \<const0> ;
  assign tft_dvi_data[11] = \<const0> ;
  assign tft_dvi_data[10] = \<const0> ;
  assign tft_dvi_data[9] = \<const0> ;
  assign tft_dvi_data[8] = \<const0> ;
  assign tft_dvi_data[7] = \<const0> ;
  assign tft_dvi_data[6] = \<const0> ;
  assign tft_dvi_data[5] = \<const0> ;
  assign tft_dvi_data[4] = \<const0> ;
  assign tft_dvi_data[3] = \<const0> ;
  assign tft_dvi_data[2] = \<const0> ;
  assign tft_dvi_data[1] = \<const0> ;
  assign tft_dvi_data[0] = \<const0> ;
  assign tft_iic_scl_o = \<const0> ;
  assign tft_iic_scl_t = \<const1> ;
  assign tft_iic_sda_o = \<const0> ;
  assign tft_iic_sda_t = \<const1> ;
  TinySoC_axi_tft_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_48),
        .D(TFT_CTRL_I_n_66),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (AXI_LITE_IPIF_I_n_38),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (AXI_LITE_IPIF_I_n_45),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (AXI_LITE_IPIF_I_n_42),
        .\IP2Bus_Data_reg[0] (tft_base_addr_i),
        .\IP2Bus_Data_reg[28] ({TFT_iic_reg_data[4],TFT_iic_reg_data[6],TFT_iic_reg_data[7]}),
        .Q({\I_SLAVE_ATTACHMENT/s_axi_rresp_i ,\I_SLAVE_ATTACHMENT/s_axi_bresp_i ,AXI_LITE_IPIF_I_n_7}),
        .TFT_dps_reg_reg(AXI_LITE_IPIF_I_n_43),
        .\TFT_iic_reg_data_reg[7] (AXI_LITE_IPIF_I_n_41),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_intr_en_reg(AXI_LITE_IPIF_I_n_44),
        .TFT_intr_en_reg_0(tft_intr_en_i),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(TFT_CTRL_I_n_72),
        .bus2ip_rdce_d1(\SLAVE_REG_U6/bus2ip_rdce_d1 ),
        .bus2ip_rdce_d2(\SLAVE_REG_U6/bus2ip_rdce_d2 ),
        .bus2ip_rdce_or(\SLAVE_REG_U6/bus2ip_rdce_or ),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce({bus2ip_wrce[3],bus2ip_wrce[0]}),
        .bus2ip_wrce_or(\SLAVE_REG_U6/bus2ip_wrce_or ),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .prmry_in(tft_on_reg_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bvalid_i_reg(TFT_CTRL_I_n_71),
        .s_axi_rdata({\^s_axi_rdata [31:21],\^s_axi_rdata [15:0]}),
        .\s_axi_rdata_i_reg[31] ({TFT_CTRL_I_n_24,TFT_CTRL_I_n_25,TFT_CTRL_I_n_26,TFT_CTRL_I_n_27,TFT_CTRL_I_n_28,TFT_CTRL_I_n_29,TFT_CTRL_I_n_30,TFT_CTRL_I_n_31,TFT_CTRL_I_n_32,TFT_CTRL_I_n_33,TFT_CTRL_I_n_34,TFT_CTRL_I_n_35,TFT_CTRL_I_n_36,TFT_CTRL_I_n_37,TFT_CTRL_I_n_38,TFT_CTRL_I_n_39,TFT_CTRL_I_n_40,TFT_CTRL_I_n_41,TFT_CTRL_I_n_42,TFT_CTRL_I_n_43,TFT_CTRL_I_n_44,TFT_CTRL_I_n_45,TFT_CTRL_I_n_46,TFT_CTRL_I_n_47,TFT_CTRL_I_n_48,TFT_CTRL_I_n_49,TFT_CTRL_I_n_50}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_i_reg(TFT_CTRL_I_n_70),
        .s_axi_wdata({s_axi_wdata[3],s_axi_wdata[1:0]}),
        .\s_axi_wdata[3] (AXI_LITE_IPIF_I_n_10),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_9),
        .s_axi_wdata_1_sp_1(AXI_LITE_IPIF_I_n_8),
        .s_axi_wvalid(s_axi_wvalid),
        .state1__2(\I_SLAVE_ATTACHMENT/state1__2 ),
        .tft_dps(tft_dps));
  TinySoC_axi_tft_0_0_axi_master_burst AXI_MASTER_BURST_I
       (.D({ip2bus_mst_addr[0],ip2bus_mst_addr[1],ip2bus_mst_addr[2],ip2bus_mst_addr[3],ip2bus_mst_addr[4],ip2bus_mst_addr[5],ip2bus_mst_addr[6],ip2bus_mst_addr[7],ip2bus_mst_addr[8],ip2bus_mst_addr[9],ip2bus_mst_addr[10],ip2bus_mst_addr[11],ip2bus_mst_addr[12],ip2bus_mst_addr[13],ip2bus_mst_addr[14],ip2bus_mst_addr[15],ip2bus_mst_addr[16],ip2bus_mst_addr[17],ip2bus_mst_addr[18],ip2bus_mst_addr[19],ip2bus_mst_addr[20],ip2bus_mst_addr[21],ip2bus_mst_addr[22],ip2bus_mst_addr[23],ip2bus_mst_addr[24]}),
        .E(eof_pulse),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q({Bus2IP_MstRd_d[40],Bus2IP_MstRd_d[41],Bus2IP_MstRd_d[42],Bus2IP_MstRd_d[43],Bus2IP_MstRd_d[44],Bus2IP_MstRd_d[45],Bus2IP_MstRd_d[48],Bus2IP_MstRd_d[49],Bus2IP_MstRd_d[50],Bus2IP_MstRd_d[51],Bus2IP_MstRd_d[52],Bus2IP_MstRd_d[53],Bus2IP_MstRd_d[56],Bus2IP_MstRd_d[57],Bus2IP_MstRd_d[58],Bus2IP_MstRd_d[59],Bus2IP_MstRd_d[60],Bus2IP_MstRd_d[61],Bus2IP_MstRd_d[8],Bus2IP_MstRd_d[9],Bus2IP_MstRd_d[10],Bus2IP_MstRd_d[11],Bus2IP_MstRd_d[12],Bus2IP_MstRd_d[13],Bus2IP_MstRd_d[16],Bus2IP_MstRd_d[17],Bus2IP_MstRd_d[18],Bus2IP_MstRd_d[19],Bus2IP_MstRd_d[20],Bus2IP_MstRd_d[21],Bus2IP_MstRd_d[24],Bus2IP_MstRd_d[25],Bus2IP_MstRd_d[26],Bus2IP_MstRd_d[27],Bus2IP_MstRd_d[28],Bus2IP_MstRd_d[29]}),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .eof_n(eof_n),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(\^m_axi_arsize ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(\^m_axi_awburst ),
        .m_axi_awlen(\^m_axi_awlen ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({m_axi_rdata[55:50],m_axi_rdata[47:42],m_axi_rdata[39:34],m_axi_rdata[23:18],m_axi_rdata[15:10],m_axi_rdata[7:2]}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(\^m_axi_wstrb ),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
        .scndry_out(tft_on_reg),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_m_valid_out_reg(AXI_MASTER_BURST_I_n_12),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(\I_RD_LLINK_ADAPTER/sig_rd_discontinue ));
  LUT1 #(
    .INIT(2'h1)) 
    FDS_HSYNC_i_3
       (.I0(sys_tft_clk),
        .O(\TFT_IF_U5/C0 ));
  GND GND
       (.G(\<const0> ));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_tft_controller TFT_CTRL_I
       (.\AXI_BRAM_data_i_reg[8]_0 ({Bus2IP_MstRd_d[8],Bus2IP_MstRd_d[9],Bus2IP_MstRd_d[10],Bus2IP_MstRd_d[11],Bus2IP_MstRd_d[12],Bus2IP_MstRd_d[13],Bus2IP_MstRd_d[16],Bus2IP_MstRd_d[17],Bus2IP_MstRd_d[18],Bus2IP_MstRd_d[19],Bus2IP_MstRd_d[20],Bus2IP_MstRd_d[21],Bus2IP_MstRd_d[24],Bus2IP_MstRd_d[25],Bus2IP_MstRd_d[26],Bus2IP_MstRd_d[27],Bus2IP_MstRd_d[28],Bus2IP_MstRd_d[29],Bus2IP_MstRd_d[40],Bus2IP_MstRd_d[41],Bus2IP_MstRd_d[42],Bus2IP_MstRd_d[43],Bus2IP_MstRd_d[44],Bus2IP_MstRd_d[45],Bus2IP_MstRd_d[48],Bus2IP_MstRd_d[49],Bus2IP_MstRd_d[50],Bus2IP_MstRd_d[51],Bus2IP_MstRd_d[52],Bus2IP_MstRd_d[53],Bus2IP_MstRd_d[56],Bus2IP_MstRd_d[57],Bus2IP_MstRd_d[58],Bus2IP_MstRd_d[59],Bus2IP_MstRd_d[60],Bus2IP_MstRd_d[61]}),
        .AXI_BRAM_we_i_reg_0(AXI_MASTER_BURST_I_n_12),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .C0(\TFT_IF_U5/C0 ),
        .D(TFT_CTRL_I_n_66),
        .E(eof_pulse),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\IP2Bus_Data_reg[0] ({TFT_CTRL_I_n_24,TFT_CTRL_I_n_25,TFT_CTRL_I_n_26,TFT_CTRL_I_n_27,TFT_CTRL_I_n_28,TFT_CTRL_I_n_29,TFT_CTRL_I_n_30,TFT_CTRL_I_n_31,TFT_CTRL_I_n_32,TFT_CTRL_I_n_33,TFT_CTRL_I_n_34,TFT_CTRL_I_n_35,TFT_CTRL_I_n_36,TFT_CTRL_I_n_37,TFT_CTRL_I_n_38,TFT_CTRL_I_n_39,TFT_CTRL_I_n_40,TFT_CTRL_I_n_41,TFT_CTRL_I_n_42,TFT_CTRL_I_n_43,TFT_CTRL_I_n_44,TFT_CTRL_I_n_45,TFT_CTRL_I_n_46,TFT_CTRL_I_n_47,TFT_CTRL_I_n_48,TFT_CTRL_I_n_49,TFT_CTRL_I_n_50}),
        .\IP2Bus_Data_reg[0]_0 (AXI_LITE_IPIF_I_n_45),
        .\IP2Bus_Data_reg[16] (AXI_LITE_IPIF_I_n_42),
        .\IP2Bus_Data_reg[1] (AXI_LITE_IPIF_I_n_48),
        .\IP2Bus_Data_reg[28] (AXI_LITE_IPIF_I_n_44),
        .\IP2Bus_Data_reg[30] (AXI_LITE_IPIF_I_n_43),
        .\IP2Bus_Data_reg[31] (AXI_LITE_IPIF_I_n_41),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q(tft_base_addr_i),
        .TFT_dps_reg_reg(AXI_LITE_IPIF_I_n_8),
        .\TFT_iic_reg_data_reg[4] ({TFT_iic_reg_data[4],TFT_iic_reg_data[6],TFT_iic_reg_data[7]}),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_intr_en_reg(AXI_LITE_IPIF_I_n_10),
        .TFT_on_reg_reg(tft_on_reg_i),
        .TFT_on_reg_reg_0(AXI_LITE_IPIF_I_n_9),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(AXI_LITE_IPIF_I_n_38),
        .bus2ip_mreset(bus2ip_mreset),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .bus2ip_rdce_d1(\SLAVE_REG_U6/bus2ip_rdce_d1 ),
        .bus2ip_rdce_d1_reg(TFT_CTRL_I_n_70),
        .bus2ip_rdce_d2(\SLAVE_REG_U6/bus2ip_rdce_d2 ),
        .bus2ip_rdce_or(\SLAVE_REG_U6/bus2ip_rdce_or ),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce({bus2ip_wrce[3],bus2ip_wrce[0]}),
        .bus2ip_wrce_d1_reg(TFT_CTRL_I_n_71),
        .bus2ip_wrce_or(\SLAVE_REG_U6/bus2ip_wrce_or ),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .eof_n(eof_n),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .ip2intc_irpt(ip2intc_irpt),
        .m_axi_aclk(m_axi_aclk),
        .prmry_in(tft_intr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_i_reg({\I_SLAVE_ATTACHMENT/s_axi_rresp_i ,\I_SLAVE_ATTACHMENT/s_axi_bresp_i ,AXI_LITE_IPIF_I_n_7}),
        .s_axi_wdata({s_axi_wdata[31:21],s_axi_wdata[15:0]}),
        .s_axi_wdata_0_sp_1(TFT_CTRL_I_n_72),
        .scndry_out(tft_on_reg),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(\I_RD_LLINK_ADAPTER/sig_rd_discontinue ),
        .state1__2(\I_SLAVE_ATTACHMENT/state1__2 ),
        .sys_tft_clk(sys_tft_clk),
        .\tft_base_addr_reg[0]_0 ({ip2bus_mst_addr[0],ip2bus_mst_addr[1],ip2bus_mst_addr[2],ip2bus_mst_addr[3],ip2bus_mst_addr[4],ip2bus_mst_addr[5],ip2bus_mst_addr[6],ip2bus_mst_addr[7],ip2bus_mst_addr[8],ip2bus_mst_addr[9],ip2bus_mst_addr[10],ip2bus_mst_addr[11],ip2bus_mst_addr[12],ip2bus_mst_addr[13],ip2bus_mst_addr[14],ip2bus_mst_addr[15],ip2bus_mst_addr[16],ip2bus_mst_addr[17],ip2bus_mst_addr[18],ip2bus_mst_addr[19],ip2bus_mst_addr[20],ip2bus_mst_addr[21],ip2bus_mst_addr[22],ip2bus_mst_addr[23],ip2bus_mst_addr[24]}),
        .tft_de(tft_de),
        .tft_dps(tft_dps),
        .tft_hsync(tft_hsync),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_mreset_i_1
       (.I0(m_axi_aresetn),
        .O(bus2ip_mreset_i_1_n_0));
  FDRE bus2ip_mreset_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_mreset_i_1_n_0),
        .Q(bus2ip_mreset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_sreset_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_sreset_i_1_n_0));
  FDRE bus2ip_sreset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_sreset_i_1_n_0),
        .Q(bus2ip_sreset),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_h_sync" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_h_sync
   (vsync_rst,
    h_pix_cnt_tc,
    SR,
    \HSYNC_cs_reg[1]_0 ,
    H_bp_cnt_tc_reg_0,
    clk_ce_pos0,
    \HSYNC_cs_reg[0]_0 ,
    clk_ce_neg0,
    HSYNC_i,
    sys_tft_clk,
    tft_rst,
    \RED_reg[5] ,
    out,
    scndry_out,
    \RED_reg[5]_0 ,
    clk_stb_d1);
  output vsync_rst;
  output h_pix_cnt_tc;
  output [0:0]SR;
  output \HSYNC_cs_reg[1]_0 ;
  output [0:0]H_bp_cnt_tc_reg_0;
  output clk_ce_pos0;
  output \HSYNC_cs_reg[0]_0 ;
  output clk_ce_neg0;
  output HSYNC_i;
  input sys_tft_clk;
  input tft_rst;
  input \RED_reg[5] ;
  input out;
  input scndry_out;
  input \RED_reg[5]_0 ;
  input clk_stb_d1;

  wire [0:4]HSYNC_cs;
  wire \HSYNC_cs_reg[0]_0 ;
  wire \HSYNC_cs_reg[1]_0 ;
  wire HSYNC_i;
  wire [0:4]HSYNC_ns__0;
  wire HSYNC_ns_n_0;
  wire H_bp_cnt_tc2_i_1_n_0;
  wire H_bp_cnt_tc_i_1_n_0;
  wire H_bp_cnt_tc_i_2_n_0;
  wire H_bp_cnt_tc_i_3_n_0;
  wire [0:0]H_bp_cnt_tc_reg_0;
  wire H_pix_cnt_tc_i_1_n_0;
  wire H_pix_cnt_tc_i_2_n_0;
  wire H_pix_cnt_tc_i_3_n_0;
  wire H_pix_cnt_tc_i_4_n_0;
  wire H_pix_cnt_tc_i_5_n_0;
  wire \RED_reg[5] ;
  wire \RED_reg[5]_0 ;
  wire [0:0]SR;
  wire clk_ce_neg0;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire [0:5]h_bp_cnt;
  wire h_bp_cnt0;
  wire \h_bp_cnt[0]_i_2_n_0 ;
  wire \h_bp_cnt[1]_i_1_n_0 ;
  wire \h_bp_cnt[2]_i_1_n_0 ;
  wire \h_bp_cnt[3]_i_1_n_0 ;
  wire \h_bp_cnt[4]_i_1_n_0 ;
  wire \h_bp_cnt[5]_i_1_n_0 ;
  wire h_bp_cnt_tc;
  wire h_bp_cnt_tc2;
  wire [0:3]h_fp_cnt;
  wire h_fp_cnt0;
  wire \h_fp_cnt[0]_i_2_n_0 ;
  wire \h_fp_cnt[1]_i_1_n_0 ;
  wire \h_fp_cnt[2]_i_1_n_0 ;
  wire \h_fp_cnt[3]_i_1_n_0 ;
  wire h_fp_cnt_tc__0;
  wire h_fp_cnt_tc_n_0;
  wire [0:6]h_p_cnt;
  wire h_p_cnt0;
  wire \h_p_cnt[0]_i_3_n_0 ;
  wire [0:6]h_p_cnt_0;
  wire h_p_cnt_tc;
  wire h_p_cnt_tc_i_2_n_0;
  wire h_p_cnt_tc_reg_n_0;
  wire [0:10]h_pix_cnt;
  wire h_pix_cnt0;
  wire \h_pix_cnt[0]_i_2_n_0 ;
  wire \h_pix_cnt[0]_i_3_n_0 ;
  wire \h_pix_cnt[10]_i_1_n_0 ;
  wire \h_pix_cnt[1]_i_1_n_0 ;
  wire \h_pix_cnt[2]_i_1_n_0 ;
  wire \h_pix_cnt[3]_i_1_n_0 ;
  wire \h_pix_cnt[4]_i_1_n_0 ;
  wire \h_pix_cnt[5]_i_1_n_0 ;
  wire \h_pix_cnt[6]_i_1_n_0 ;
  wire \h_pix_cnt[7]_i_1_n_0 ;
  wire \h_pix_cnt[8]_i_1_n_0 ;
  wire \h_pix_cnt[9]_i_1_n_0 ;
  wire h_pix_cnt_tc;
  wire out;
  wire scndry_out;
  wire sys_tft_clk;
  wire tft_rst;
  wire vsync_rst;

  LUT5 #(
    .INIT(32'hFEEFEFFE)) 
    \BRAM_TFT_addr[0]_i_1 
       (.I0(tft_rst),
        .I1(\RED_reg[5] ),
        .I2(h_bp_cnt_tc),
        .I3(h_bp_cnt_tc2),
        .I4(\HSYNC_cs_reg[1]_0 ),
        .O(H_bp_cnt_tc_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDR_DE_i_2
       (.I0(HSYNC_cs[1]),
        .I1(HSYNC_cs[3]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[0]),
        .O(\HSYNC_cs_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDS_HSYNC_i_2
       (.I0(HSYNC_cs[3]),
        .I1(HSYNC_cs[1]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[0]),
        .O(HSYNC_i));
  LUT5 #(
    .INIT(32'h8080F080)) 
    \HSYNC_cs[0]_i_1 
       (.I0(h_pix_cnt_tc),
        .I1(HSYNC_cs[1]),
        .I2(HSYNC_ns_n_0),
        .I3(HSYNC_cs[0]),
        .I4(h_fp_cnt_tc__0),
        .O(HSYNC_ns__0[0]));
  LUT5 #(
    .INIT(32'h8080F080)) 
    \HSYNC_cs[1]_i_1 
       (.I0(h_bp_cnt_tc),
        .I1(HSYNC_cs[2]),
        .I2(HSYNC_ns_n_0),
        .I3(HSYNC_cs[1]),
        .I4(h_pix_cnt_tc),
        .O(HSYNC_ns__0[1]));
  LUT5 #(
    .INIT(32'h8080F080)) 
    \HSYNC_cs[2]_i_1 
       (.I0(h_p_cnt_tc_reg_n_0),
        .I1(HSYNC_cs[3]),
        .I2(HSYNC_ns_n_0),
        .I3(HSYNC_cs[2]),
        .I4(h_bp_cnt_tc),
        .O(HSYNC_ns__0[2]));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \HSYNC_cs[3]_i_1 
       (.I0(h_fp_cnt_tc__0),
        .I1(HSYNC_cs[0]),
        .I2(h_p_cnt_tc_reg_n_0),
        .I3(HSYNC_cs[3]),
        .I4(HSYNC_cs[4]),
        .I5(HSYNC_ns_n_0),
        .O(HSYNC_ns__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \HSYNC_cs[4]_i_1 
       (.I0(HSYNC_ns_n_0),
        .O(HSYNC_ns__0[4]));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \HSYNC_cs_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns__0[0]),
        .Q(HSYNC_cs[0]),
        .R(tft_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \HSYNC_cs_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns__0[1]),
        .Q(HSYNC_cs[1]),
        .R(tft_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \HSYNC_cs_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns__0[2]),
        .Q(HSYNC_cs[2]),
        .R(tft_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \HSYNC_cs_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns__0[3]),
        .Q(HSYNC_cs[3]),
        .R(tft_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,PIXEL:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDSE \HSYNC_cs_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns__0[4]),
        .Q(HSYNC_cs[4]),
        .S(tft_rst));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    HSYNC_ns
       (.I0(HSYNC_cs[4]),
        .I1(HSYNC_cs[3]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[0]),
        .O(HSYNC_ns_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    H_bp_cnt_tc2_i_1
       (.I0(h_bp_cnt[3]),
        .I1(h_bp_cnt[2]),
        .I2(h_bp_cnt[5]),
        .I3(h_bp_cnt[4]),
        .I4(h_bp_cnt[1]),
        .I5(h_bp_cnt[0]),
        .O(H_bp_cnt_tc2_i_1_n_0));
  FDRE H_bp_cnt_tc2_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_bp_cnt_tc2_i_1_n_0),
        .Q(h_bp_cnt_tc2),
        .R(h_bp_cnt0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    H_bp_cnt_tc_i_1
       (.I0(H_bp_cnt_tc_i_2_n_0),
        .I1(H_bp_cnt_tc_i_3_n_0),
        .I2(h_bp_cnt[5]),
        .I3(h_bp_cnt[4]),
        .I4(h_bp_cnt[2]),
        .I5(h_bp_cnt[3]),
        .O(H_bp_cnt_tc_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    H_bp_cnt_tc_i_2
       (.I0(HSYNC_cs[3]),
        .I1(HSYNC_cs[1]),
        .I2(HSYNC_cs[0]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[2]),
        .I5(tft_rst),
        .O(H_bp_cnt_tc_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    H_bp_cnt_tc_i_3
       (.I0(h_bp_cnt[0]),
        .I1(h_bp_cnt[1]),
        .O(H_bp_cnt_tc_i_3_n_0));
  FDRE H_bp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_bp_cnt_tc_i_1_n_0),
        .Q(h_bp_cnt_tc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    H_pix_cnt_tc_i_1
       (.I0(H_pix_cnt_tc_i_2_n_0),
        .I1(H_pix_cnt_tc_i_3_n_0),
        .I2(h_pix_cnt[10]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt_tc),
        .O(H_pix_cnt_tc_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    H_pix_cnt_tc_i_2
       (.I0(h_pix_cnt[0]),
        .I1(h_pix_cnt[1]),
        .I2(h_pix_cnt[8]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt[10]),
        .I5(H_pix_cnt_tc_i_4_n_0),
        .O(H_pix_cnt_tc_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    H_pix_cnt_tc_i_3
       (.I0(h_pix_cnt[7]),
        .I1(h_pix_cnt[8]),
        .I2(h_pix_cnt[6]),
        .I3(h_pix_cnt[5]),
        .I4(H_pix_cnt_tc_i_5_n_0),
        .O(H_pix_cnt_tc_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    H_pix_cnt_tc_i_4
       (.I0(h_pix_cnt[5]),
        .I1(h_pix_cnt[4]),
        .I2(h_pix_cnt[7]),
        .I3(h_pix_cnt[6]),
        .I4(h_pix_cnt[2]),
        .I5(h_pix_cnt[3]),
        .O(H_pix_cnt_tc_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    H_pix_cnt_tc_i_5
       (.I0(h_pix_cnt[4]),
        .I1(h_pix_cnt[3]),
        .I2(h_pix_cnt[0]),
        .I3(h_pix_cnt[1]),
        .I4(h_pix_cnt[2]),
        .O(H_pix_cnt_tc_i_5_n_0));
  FDRE H_pix_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_pix_cnt_tc_i_1_n_0),
        .Q(h_pix_cnt_tc),
        .R(h_pix_cnt0));
  LUT6 #(
    .INIT(64'hF6FFFFFFFFFFFFFF)) 
    \RED[5]_i_1 
       (.I0(\HSYNC_cs_reg[1]_0 ),
        .I1(h_bp_cnt_tc),
        .I2(\RED_reg[5] ),
        .I3(out),
        .I4(scndry_out),
        .I5(\RED_reg[5]_0 ),
        .O(SR));
  FDRE VSYNC_Rst_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(tft_rst),
        .Q(vsync_rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    clk_ce_neg_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(clk_stb_d1),
        .O(clk_ce_neg0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    clk_ce_pos_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(clk_stb_d1),
        .O(clk_ce_pos0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    clk_stb_d1_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .O(\HSYNC_cs_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \h_bp_cnt[0]_i_1 
       (.I0(tft_rst),
        .I1(HSYNC_cs[2]),
        .I2(HSYNC_cs[4]),
        .I3(HSYNC_cs[0]),
        .I4(HSYNC_cs[1]),
        .I5(HSYNC_cs[3]),
        .O(h_bp_cnt0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_bp_cnt[0]_i_2 
       (.I0(h_bp_cnt[1]),
        .I1(h_bp_cnt[3]),
        .I2(h_bp_cnt[5]),
        .I3(h_bp_cnt[4]),
        .I4(h_bp_cnt[2]),
        .I5(h_bp_cnt[0]),
        .O(\h_bp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_bp_cnt[1]_i_1 
       (.I0(h_bp_cnt[2]),
        .I1(h_bp_cnt[4]),
        .I2(h_bp_cnt[5]),
        .I3(h_bp_cnt[3]),
        .I4(h_bp_cnt[1]),
        .O(\h_bp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_bp_cnt[2]_i_1 
       (.I0(h_bp_cnt[3]),
        .I1(h_bp_cnt[5]),
        .I2(h_bp_cnt[4]),
        .I3(h_bp_cnt[2]),
        .O(\h_bp_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_bp_cnt[3]_i_1 
       (.I0(h_bp_cnt[4]),
        .I1(h_bp_cnt[5]),
        .I2(h_bp_cnt[3]),
        .O(\h_bp_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_bp_cnt[4]_i_1 
       (.I0(h_bp_cnt[5]),
        .I1(h_bp_cnt[4]),
        .O(\h_bp_cnt[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_bp_cnt[5]_i_1 
       (.I0(h_bp_cnt[5]),
        .O(\h_bp_cnt[5]_i_1_n_0 ));
  FDRE \h_bp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[0]_i_2_n_0 ),
        .Q(h_bp_cnt[0]),
        .R(h_bp_cnt0));
  FDRE \h_bp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[1]_i_1_n_0 ),
        .Q(h_bp_cnt[1]),
        .R(h_bp_cnt0));
  FDRE \h_bp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[2]_i_1_n_0 ),
        .Q(h_bp_cnt[2]),
        .R(h_bp_cnt0));
  FDRE \h_bp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[3]_i_1_n_0 ),
        .Q(h_bp_cnt[3]),
        .R(h_bp_cnt0));
  FDRE \h_bp_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[4]_i_1_n_0 ),
        .Q(h_bp_cnt[4]),
        .R(h_bp_cnt0));
  FDRE \h_bp_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[5]_i_1_n_0 ),
        .Q(h_bp_cnt[5]),
        .R(h_bp_cnt0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAABAABE)) 
    \h_fp_cnt[0]_i_1 
       (.I0(tft_rst),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[0]),
        .I4(HSYNC_cs[1]),
        .I5(HSYNC_cs[3]),
        .O(h_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \h_fp_cnt[0]_i_2 
       (.I0(h_fp_cnt[2]),
        .I1(h_fp_cnt[0]),
        .I2(h_fp_cnt[3]),
        .I3(h_fp_cnt[1]),
        .O(\h_fp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_fp_cnt[1]_i_1 
       (.I0(h_fp_cnt[2]),
        .I1(h_fp_cnt[3]),
        .I2(h_fp_cnt[1]),
        .O(\h_fp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_fp_cnt[2]_i_1 
       (.I0(h_fp_cnt[2]),
        .I1(h_fp_cnt[3]),
        .O(\h_fp_cnt[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_fp_cnt[3]_i_1 
       (.I0(h_fp_cnt[3]),
        .O(\h_fp_cnt[3]_i_1_n_0 ));
  FDRE \h_fp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[0]_i_2_n_0 ),
        .Q(h_fp_cnt[0]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[1]_i_1_n_0 ),
        .Q(h_fp_cnt[1]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[2]_i_1_n_0 ),
        .Q(h_fp_cnt[2]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[3]_i_1_n_0 ),
        .Q(h_fp_cnt[3]),
        .R(h_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    h_fp_cnt_tc
       (.I0(h_fp_cnt[3]),
        .I1(h_fp_cnt[1]),
        .I2(h_fp_cnt[0]),
        .I3(h_fp_cnt[2]),
        .O(h_fp_cnt_tc_n_0));
  FDRE h_fp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_fp_cnt_tc_n_0),
        .Q(h_fp_cnt_tc__0),
        .R(h_fp_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \h_p_cnt[0]_i_1 
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(tft_rst),
        .O(h_p_cnt0));
  LUT3 #(
    .INIT(8'hD2)) 
    \h_p_cnt[0]_i_2 
       (.I0(h_p_cnt[1]),
        .I1(\h_p_cnt[0]_i_3_n_0 ),
        .I2(h_p_cnt[0]),
        .O(h_p_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_p_cnt[0]_i_3 
       (.I0(h_p_cnt[3]),
        .I1(h_p_cnt[5]),
        .I2(h_p_cnt[6]),
        .I3(h_p_cnt[4]),
        .I4(h_p_cnt[2]),
        .O(\h_p_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_p_cnt[1]_i_1 
       (.I0(h_p_cnt[2]),
        .I1(h_p_cnt[4]),
        .I2(h_p_cnt[6]),
        .I3(h_p_cnt[5]),
        .I4(h_p_cnt[3]),
        .I5(h_p_cnt[1]),
        .O(h_p_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_p_cnt[2]_i_1 
       (.I0(h_p_cnt[3]),
        .I1(h_p_cnt[5]),
        .I2(h_p_cnt[6]),
        .I3(h_p_cnt[4]),
        .I4(h_p_cnt[2]),
        .O(h_p_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_p_cnt[3]_i_1 
       (.I0(h_p_cnt[4]),
        .I1(h_p_cnt[6]),
        .I2(h_p_cnt[5]),
        .I3(h_p_cnt[3]),
        .O(h_p_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_p_cnt[4]_i_1 
       (.I0(h_p_cnt[5]),
        .I1(h_p_cnt[6]),
        .I2(h_p_cnt[4]),
        .O(h_p_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_p_cnt[5]_i_1 
       (.I0(h_p_cnt[6]),
        .I1(h_p_cnt[5]),
        .O(h_p_cnt_0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \h_p_cnt[6]_i_1 
       (.I0(h_p_cnt[6]),
        .O(h_p_cnt_0[6]));
  FDRE \h_p_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[0]),
        .Q(h_p_cnt[0]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[1]),
        .Q(h_p_cnt[1]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[2]),
        .Q(h_p_cnt[2]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[3]),
        .Q(h_p_cnt[3]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[4]),
        .Q(h_p_cnt[4]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[5]),
        .Q(h_p_cnt[5]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[6]),
        .Q(h_p_cnt[6]),
        .R(h_p_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    h_p_cnt_tc_i_1
       (.I0(h_p_cnt_tc_i_2_n_0),
        .I1(h_p_cnt[6]),
        .O(h_p_cnt_tc));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    h_p_cnt_tc_i_2
       (.I0(h_p_cnt[3]),
        .I1(h_p_cnt[2]),
        .I2(h_p_cnt[5]),
        .I3(h_p_cnt[4]),
        .I4(h_p_cnt[1]),
        .I5(h_p_cnt[0]),
        .O(h_p_cnt_tc_i_2_n_0));
  FDRE h_p_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_tc),
        .Q(h_p_cnt_tc_reg_n_0),
        .R(h_p_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \h_pix_cnt[0]_i_1 
       (.I0(tft_rst),
        .I1(HSYNC_cs[0]),
        .I2(HSYNC_cs[4]),
        .I3(HSYNC_cs[2]),
        .I4(HSYNC_cs[3]),
        .I5(HSYNC_cs[1]),
        .O(h_pix_cnt0));
  LUT6 #(
    .INIT(64'hCC6CCCCCCCCCCCCC)) 
    \h_pix_cnt[0]_i_2 
       (.I0(h_pix_cnt[1]),
        .I1(h_pix_cnt[0]),
        .I2(h_pix_cnt[3]),
        .I3(\h_pix_cnt[0]_i_3_n_0 ),
        .I4(h_pix_cnt[4]),
        .I5(h_pix_cnt[2]),
        .O(\h_pix_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_pix_cnt[0]_i_3 
       (.I0(h_pix_cnt[6]),
        .I1(h_pix_cnt[8]),
        .I2(h_pix_cnt[10]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt[7]),
        .I5(h_pix_cnt[5]),
        .O(\h_pix_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_pix_cnt[10]_i_1 
       (.I0(h_pix_cnt[10]),
        .O(\h_pix_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \h_pix_cnt[1]_i_1 
       (.I0(h_pix_cnt[2]),
        .I1(h_pix_cnt[4]),
        .I2(\h_pix_cnt[0]_i_3_n_0 ),
        .I3(h_pix_cnt[3]),
        .I4(h_pix_cnt[1]),
        .O(\h_pix_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \h_pix_cnt[2]_i_1 
       (.I0(h_pix_cnt[3]),
        .I1(\h_pix_cnt[0]_i_3_n_0 ),
        .I2(h_pix_cnt[4]),
        .I3(h_pix_cnt[2]),
        .O(\h_pix_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \h_pix_cnt[3]_i_1 
       (.I0(h_pix_cnt[4]),
        .I1(\h_pix_cnt[0]_i_3_n_0 ),
        .I2(h_pix_cnt[3]),
        .O(\h_pix_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \h_pix_cnt[4]_i_1 
       (.I0(\h_pix_cnt[0]_i_3_n_0 ),
        .I1(h_pix_cnt[4]),
        .O(\h_pix_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_pix_cnt[5]_i_1 
       (.I0(h_pix_cnt[6]),
        .I1(h_pix_cnt[8]),
        .I2(h_pix_cnt[10]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt[7]),
        .I5(h_pix_cnt[5]),
        .O(\h_pix_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_pix_cnt[6]_i_1 
       (.I0(h_pix_cnt[7]),
        .I1(h_pix_cnt[9]),
        .I2(h_pix_cnt[10]),
        .I3(h_pix_cnt[8]),
        .I4(h_pix_cnt[6]),
        .O(\h_pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_pix_cnt[7]_i_1 
       (.I0(h_pix_cnt[8]),
        .I1(h_pix_cnt[10]),
        .I2(h_pix_cnt[9]),
        .I3(h_pix_cnt[7]),
        .O(\h_pix_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_pix_cnt[8]_i_1 
       (.I0(h_pix_cnt[9]),
        .I1(h_pix_cnt[10]),
        .I2(h_pix_cnt[8]),
        .O(\h_pix_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_pix_cnt[9]_i_1 
       (.I0(h_pix_cnt[10]),
        .I1(h_pix_cnt[9]),
        .O(\h_pix_cnt[9]_i_1_n_0 ));
  FDRE \h_pix_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[0]_i_2_n_0 ),
        .Q(h_pix_cnt[0]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[10] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[10]_i_1_n_0 ),
        .Q(h_pix_cnt[10]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[1]_i_1_n_0 ),
        .Q(h_pix_cnt[1]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[2]_i_1_n_0 ),
        .Q(h_pix_cnt[2]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[3]_i_1_n_0 ),
        .Q(h_pix_cnt[3]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[4]_i_1_n_0 ),
        .Q(h_pix_cnt[4]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[5]_i_1_n_0 ),
        .Q(h_pix_cnt[5]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[6]_i_1_n_0 ),
        .Q(h_pix_cnt[6]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[7]_i_1_n_0 ),
        .Q(h_pix_cnt[7]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[8]_i_1_n_0 ),
        .Q(h_pix_cnt[8]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[9] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[9]_i_1_n_0 ),
        .Q(h_pix_cnt[9]),
        .R(h_pix_cnt0));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_line_buffer" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_line_buffer
   (\RED_reg[5]_0 ,
    \GREEN_reg[5]_0 ,
    \BLUE_reg[5]_0 ,
    tft_rst,
    m_axi_aclk,
    wr_en,
    Q,
    sys_tft_clk,
    SR,
    \RED_reg[5]_1 );
  output [5:0]\RED_reg[5]_0 ;
  output [5:0]\GREEN_reg[5]_0 ;
  output [5:0]\BLUE_reg[5]_0 ;
  input tft_rst;
  input m_axi_aclk;
  input wr_en;
  input [35:0]Q;
  input sys_tft_clk;
  input [0:0]SR;
  input [0:0]\RED_reg[5]_1 ;

  wire [5:0]\BLUE_reg[5]_0 ;
  wire \BRAM_TFT_B_data_reg_n_0_[0] ;
  wire \BRAM_TFT_B_data_reg_n_0_[1] ;
  wire \BRAM_TFT_B_data_reg_n_0_[2] ;
  wire \BRAM_TFT_B_data_reg_n_0_[3] ;
  wire \BRAM_TFT_B_data_reg_n_0_[4] ;
  wire \BRAM_TFT_B_data_reg_n_0_[5] ;
  wire \BRAM_TFT_G_data_reg_n_0_[0] ;
  wire \BRAM_TFT_G_data_reg_n_0_[1] ;
  wire \BRAM_TFT_G_data_reg_n_0_[2] ;
  wire \BRAM_TFT_G_data_reg_n_0_[3] ;
  wire \BRAM_TFT_G_data_reg_n_0_[4] ;
  wire \BRAM_TFT_G_data_reg_n_0_[5] ;
  wire \BRAM_TFT_R_data_reg_n_0_[0] ;
  wire \BRAM_TFT_R_data_reg_n_0_[1] ;
  wire \BRAM_TFT_R_data_reg_n_0_[2] ;
  wire \BRAM_TFT_R_data_reg_n_0_[3] ;
  wire \BRAM_TFT_R_data_reg_n_0_[4] ;
  wire \BRAM_TFT_R_data_reg_n_0_[5] ;
  wire [0:8]BRAM_TFT_addr;
  wire \BRAM_TFT_addr[0]_i_4_n_0 ;
  wire [0:9]BRAM_TFT_addr_0;
  wire \BRAM_TFT_addr_reg_n_0_[9] ;
  wire [5:0]\GREEN_reg[5]_0 ;
  wire [35:0]Q;
  wire RAM_n_0;
  wire RAM_n_1;
  wire RAM_n_10;
  wire RAM_n_11;
  wire RAM_n_12;
  wire RAM_n_13;
  wire RAM_n_14;
  wire RAM_n_15;
  wire RAM_n_16;
  wire RAM_n_17;
  wire RAM_n_2;
  wire RAM_n_3;
  wire RAM_n_4;
  wire RAM_n_5;
  wire RAM_n_6;
  wire RAM_n_7;
  wire RAM_n_8;
  wire RAM_n_9;
  wire [5:0]\RED_reg[5]_0 ;
  wire [0:0]\RED_reg[5]_1 ;
  wire [0:0]SR;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tc;
  wire tc_reg_inv_n_0;
  wire tft_rst;
  wire wr_en;

  FDRE \BLUE_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[0] ),
        .Q(\BLUE_reg[5]_0 [0]),
        .R(\RED_reg[5]_1 ));
  FDRE \BLUE_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[1] ),
        .Q(\BLUE_reg[5]_0 [1]),
        .R(\RED_reg[5]_1 ));
  FDRE \BLUE_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[2] ),
        .Q(\BLUE_reg[5]_0 [2]),
        .R(\RED_reg[5]_1 ));
  FDRE \BLUE_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[3] ),
        .Q(\BLUE_reg[5]_0 [3]),
        .R(\RED_reg[5]_1 ));
  FDRE \BLUE_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[4] ),
        .Q(\BLUE_reg[5]_0 [4]),
        .R(\RED_reg[5]_1 ));
  FDRE \BLUE_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_B_data_reg_n_0_[5] ),
        .Q(\BLUE_reg[5]_0 [5]),
        .R(\RED_reg[5]_1 ));
  FDRE \BRAM_TFT_B_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_17),
        .Q(\BRAM_TFT_B_data_reg_n_0_[0] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_16),
        .Q(\BRAM_TFT_B_data_reg_n_0_[1] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_15),
        .Q(\BRAM_TFT_B_data_reg_n_0_[2] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_14),
        .Q(\BRAM_TFT_B_data_reg_n_0_[3] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_13),
        .Q(\BRAM_TFT_B_data_reg_n_0_[4] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_12),
        .Q(\BRAM_TFT_B_data_reg_n_0_[5] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_11),
        .Q(\BRAM_TFT_G_data_reg_n_0_[0] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_10),
        .Q(\BRAM_TFT_G_data_reg_n_0_[1] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_9),
        .Q(\BRAM_TFT_G_data_reg_n_0_[2] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_8),
        .Q(\BRAM_TFT_G_data_reg_n_0_[3] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_7),
        .Q(\BRAM_TFT_G_data_reg_n_0_[4] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_6),
        .Q(\BRAM_TFT_G_data_reg_n_0_[5] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_5),
        .Q(\BRAM_TFT_R_data_reg_n_0_[0] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_4),
        .Q(\BRAM_TFT_R_data_reg_n_0_[1] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_3),
        .Q(\BRAM_TFT_R_data_reg_n_0_[2] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_2),
        .Q(\BRAM_TFT_R_data_reg_n_0_[3] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_1),
        .Q(\BRAM_TFT_R_data_reg_n_0_[4] ),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_0),
        .Q(\BRAM_TFT_R_data_reg_n_0_[5] ),
        .R(tft_rst));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hB4F0F0B0)) 
    \BRAM_TFT_addr[0]_i_2 
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(BRAM_TFT_addr[3]),
        .I2(BRAM_TFT_addr[0]),
        .I3(BRAM_TFT_addr[1]),
        .I4(BRAM_TFT_addr[2]),
        .O(BRAM_TFT_addr_0[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \BRAM_TFT_addr[0]_i_4 
       (.I0(BRAM_TFT_addr[5]),
        .I1(BRAM_TFT_addr[7]),
        .I2(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I3(BRAM_TFT_addr[8]),
        .I4(BRAM_TFT_addr[6]),
        .I5(BRAM_TFT_addr[4]),
        .O(\BRAM_TFT_addr[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \BRAM_TFT_addr[1]_i_1 
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(BRAM_TFT_addr[3]),
        .I2(BRAM_TFT_addr[2]),
        .I3(BRAM_TFT_addr[1]),
        .O(BRAM_TFT_addr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hBBBB4404)) 
    \BRAM_TFT_addr[2]_i_1 
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(BRAM_TFT_addr[3]),
        .I2(BRAM_TFT_addr[0]),
        .I3(BRAM_TFT_addr[1]),
        .I4(BRAM_TFT_addr[2]),
        .O(BRAM_TFT_addr_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \BRAM_TFT_addr[3]_i_1 
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(BRAM_TFT_addr[3]),
        .O(BRAM_TFT_addr_0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \BRAM_TFT_addr[4]_i_1 
       (.I0(BRAM_TFT_addr[5]),
        .I1(BRAM_TFT_addr[7]),
        .I2(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I3(BRAM_TFT_addr[8]),
        .I4(BRAM_TFT_addr[6]),
        .I5(BRAM_TFT_addr[4]),
        .O(BRAM_TFT_addr_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \BRAM_TFT_addr[5]_i_1 
       (.I0(BRAM_TFT_addr[6]),
        .I1(BRAM_TFT_addr[8]),
        .I2(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I3(BRAM_TFT_addr[7]),
        .I4(BRAM_TFT_addr[5]),
        .O(BRAM_TFT_addr_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \BRAM_TFT_addr[6]_i_1 
       (.I0(BRAM_TFT_addr[7]),
        .I1(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I2(BRAM_TFT_addr[8]),
        .I3(BRAM_TFT_addr[6]),
        .O(BRAM_TFT_addr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BRAM_TFT_addr[7]_i_1 
       (.I0(BRAM_TFT_addr[8]),
        .I1(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I2(BRAM_TFT_addr[7]),
        .O(BRAM_TFT_addr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BRAM_TFT_addr[8]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I1(BRAM_TFT_addr[8]),
        .O(BRAM_TFT_addr_0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \BRAM_TFT_addr[9]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[9] ),
        .O(BRAM_TFT_addr_0[9]));
  FDRE \BRAM_TFT_addr_reg[0] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[0]),
        .Q(BRAM_TFT_addr[0]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[1] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[1]),
        .Q(BRAM_TFT_addr[1]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[2] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[2]),
        .Q(BRAM_TFT_addr[2]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[3] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[3]),
        .Q(BRAM_TFT_addr[3]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[4] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[4]),
        .Q(BRAM_TFT_addr[4]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[5] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[5]),
        .Q(BRAM_TFT_addr[5]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[6] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[6]),
        .Q(BRAM_TFT_addr[6]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[7] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[7]),
        .Q(BRAM_TFT_addr[7]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[8] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[8]),
        .Q(BRAM_TFT_addr[8]),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[9] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr_0[9]),
        .Q(\BRAM_TFT_addr_reg_n_0_[9] ),
        .R(SR));
  FDRE \GREEN_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[0] ),
        .Q(\GREEN_reg[5]_0 [0]),
        .R(\RED_reg[5]_1 ));
  FDRE \GREEN_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[1] ),
        .Q(\GREEN_reg[5]_0 [1]),
        .R(\RED_reg[5]_1 ));
  FDRE \GREEN_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[2] ),
        .Q(\GREEN_reg[5]_0 [2]),
        .R(\RED_reg[5]_1 ));
  FDRE \GREEN_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[3] ),
        .Q(\GREEN_reg[5]_0 [3]),
        .R(\RED_reg[5]_1 ));
  FDRE \GREEN_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[4] ),
        .Q(\GREEN_reg[5]_0 [4]),
        .R(\RED_reg[5]_1 ));
  FDRE \GREEN_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_G_data_reg_n_0_[5] ),
        .Q(\GREEN_reg[5]_0 [5]),
        .R(\RED_reg[5]_1 ));
  TinySoC_axi_tft_0_0_async_fifo_fg RAM
       (.D({RAM_n_0,RAM_n_1,RAM_n_2,RAM_n_3,RAM_n_4,RAM_n_5}),
        .Q(Q),
        .\gen_wr_a.gen_word_narrow.mem_reg ({RAM_n_6,RAM_n_7,RAM_n_8,RAM_n_9,RAM_n_10,RAM_n_11}),
        .\gen_wr_a.gen_word_narrow.mem_reg_0 ({RAM_n_12,RAM_n_13,RAM_n_14,RAM_n_15,RAM_n_16,RAM_n_17}),
        .\guf.underflow_i_reg (\BRAM_TFT_addr_reg_n_0_[9] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .wr_en(wr_en));
  FDRE \RED_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[0] ),
        .Q(\RED_reg[5]_0 [0]),
        .R(\RED_reg[5]_1 ));
  FDRE \RED_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[1] ),
        .Q(\RED_reg[5]_0 [1]),
        .R(\RED_reg[5]_1 ));
  FDRE \RED_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[2] ),
        .Q(\RED_reg[5]_0 [2]),
        .R(\RED_reg[5]_1 ));
  FDRE \RED_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[3] ),
        .Q(\RED_reg[5]_0 [3]),
        .R(\RED_reg[5]_1 ));
  FDRE \RED_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[4] ),
        .Q(\RED_reg[5]_0 [4]),
        .R(\RED_reg[5]_1 ));
  FDRE \RED_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\BRAM_TFT_R_data_reg_n_0_[5] ),
        .Q(\RED_reg[5]_0 [5]),
        .R(\RED_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    tc_inv_i_1
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(BRAM_TFT_addr[3]),
        .I2(BRAM_TFT_addr[2]),
        .I3(BRAM_TFT_addr[1]),
        .I4(BRAM_TFT_addr[0]),
        .O(tc));
  FDSE tc_reg_inv
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(tc),
        .Q(tc_reg_inv_n_0),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_slave_register" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_slave_register
   (TFT_iic_xfer,
    \IP2Bus_Data_reg[0]_0 ,
    Q,
    bus2ip_rdce_d1_reg_0,
    bus2ip_rdce_d2_reg_0,
    TFT_status_reg,
    prmry_in,
    TFT_on_reg_reg_0,
    tft_dps,
    cs_ce_clr,
    D,
    s_axi_arready,
    s_axi_awready,
    bus2ip_rdce_d1_reg_1,
    bus2ip_wrce_d1_reg_0,
    s_axi_wdata_0_sp_1,
    \TFT_iic_reg_data_reg[4]_0 ,
    bus2ip_sreset,
    bus2ip_wrce,
    s_axi_wdata,
    s_axi_aclk,
    \IP2Bus_Data_reg[1]_0 ,
    \IP2Bus_Data_reg[16]_0 ,
    tft_status_i,
    bus2ip_rdce_or,
    bus2ip_wrce_or,
    TFT_status_reg_reg_0,
    TFT_intr_en_reg_0,
    TFT_on_reg_reg_1,
    TFT_dps_reg_reg_0,
    \IP2Bus_Data_reg[0]_1 ,
    \IP2Bus_Data_reg[28]_0 ,
    \IP2Bus_Data_reg[30]_0 ,
    \IP2Bus_Data_reg[31]_0 ,
    s_axi_aresetn,
    s_axi_rvalid_i_reg,
    state1__2,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bready,
    s_axi_bvalid,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg);
  output TFT_iic_xfer;
  output [26:0]\IP2Bus_Data_reg[0]_0 ;
  output [10:0]Q;
  output bus2ip_rdce_d1_reg_0;
  output bus2ip_rdce_d2_reg_0;
  output TFT_status_reg;
  output prmry_in;
  output TFT_on_reg_reg_0;
  output tft_dps;
  output cs_ce_clr;
  output [0:0]D;
  output s_axi_arready;
  output s_axi_awready;
  output bus2ip_rdce_d1_reg_1;
  output bus2ip_wrce_d1_reg_0;
  output s_axi_wdata_0_sp_1;
  output [2:0]\TFT_iic_reg_data_reg[4]_0 ;
  input bus2ip_sreset;
  input [1:0]bus2ip_wrce;
  input [26:0]s_axi_wdata;
  input s_axi_aclk;
  input \IP2Bus_Data_reg[1]_0 ;
  input \IP2Bus_Data_reg[16]_0 ;
  input tft_status_i;
  input bus2ip_rdce_or;
  input bus2ip_wrce_or;
  input TFT_status_reg_reg_0;
  input TFT_intr_en_reg_0;
  input TFT_on_reg_reg_1;
  input TFT_dps_reg_reg_0;
  input \IP2Bus_Data_reg[0]_1 ;
  input \IP2Bus_Data_reg[28]_0 ;
  input \IP2Bus_Data_reg[30]_0 ;
  input \IP2Bus_Data_reg[31]_0 ;
  input s_axi_aresetn;
  input [2:0]s_axi_rvalid_i_reg;
  input state1__2;
  input s_axi_rready;
  input s_axi_rvalid;
  input s_axi_bready;
  input s_axi_bvalid;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;

  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0 ;
  wire Bus_RNW_reg;
  wire [0:0]D;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [26:0]\IP2Bus_Data_reg[0]_0 ;
  wire \IP2Bus_Data_reg[0]_1 ;
  wire \IP2Bus_Data_reg[16]_0 ;
  wire \IP2Bus_Data_reg[1]_0 ;
  wire \IP2Bus_Data_reg[28]_0 ;
  wire \IP2Bus_Data_reg[30]_0 ;
  wire \IP2Bus_Data_reg[31]_0 ;
  wire [10:0]Q;
  wire TFT_dps_reg_reg_0;
  wire [0:7]TFT_iic_reg_addr;
  wire [0:5]TFT_iic_reg_data;
  wire [2:0]\TFT_iic_reg_data_reg[4]_0 ;
  wire TFT_iic_xfer;
  wire TFT_intr_en_reg_0;
  wire TFT_on_reg_reg_0;
  wire TFT_on_reg_reg_1;
  wire TFT_status_reg;
  wire TFT_status_reg_reg_0;
  wire bus2ip_rdce_d1_reg_0;
  wire bus2ip_rdce_d1_reg_1;
  wire bus2ip_rdce_d2_reg_0;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire [1:0]bus2ip_wrce;
  wire bus2ip_wrce_d1;
  wire bus2ip_wrce_d1_reg_0;
  wire bus2ip_wrce_d2;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_awready;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [2:0]s_axi_rvalid_i_reg;
  wire [26:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire state1__2;
  wire tft_dps;
  wire tft_status_d1;
  wire tft_status_d2;
  wire tft_status_i;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFF2020FF20)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .I2(s_axi_rvalid_i_reg[1]),
        .I3(s_axi_rvalid_i_reg[0]),
        .I4(state1__2),
        .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(s_axi_rvalid_i_reg[2]),
        .I1(bus2ip_rdce_d2_reg_0),
        .I2(bus2ip_rdce_d1_reg_0),
        .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .I2(bus2ip_rdce_d1_reg_0),
        .I3(bus2ip_rdce_d2_reg_0),
        .I4(s_axi_aresetn),
        .O(cs_ce_clr));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data_reg[0]_1 ),
        .Q(\IP2Bus_Data_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\IP2Bus_Data_reg[0]_0 [16]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[0]),
        .Q(\IP2Bus_Data_reg[0]_0 [15]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[1]),
        .Q(\IP2Bus_Data_reg[0]_0 [14]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[2]),
        .Q(\IP2Bus_Data_reg[0]_0 [13]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[3]),
        .Q(\IP2Bus_Data_reg[0]_0 [12]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\IP2Bus_Data_reg[0]_0 [25]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[4]),
        .Q(\IP2Bus_Data_reg[0]_0 [11]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[5]),
        .Q(\IP2Bus_Data_reg[0]_0 [10]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[6]),
        .Q(\IP2Bus_Data_reg[0]_0 [9]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_addr[7]),
        .Q(\IP2Bus_Data_reg[0]_0 [8]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_data[0]),
        .Q(\IP2Bus_Data_reg[0]_0 [7]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_data[1]),
        .Q(\IP2Bus_Data_reg[0]_0 [6]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_data[2]),
        .Q(\IP2Bus_Data_reg[0]_0 [5]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_data[3]),
        .Q(\IP2Bus_Data_reg[0]_0 [4]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data_reg[28]_0 ),
        .Q(\IP2Bus_Data_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_iic_reg_data[5]),
        .Q(\IP2Bus_Data_reg[0]_0 [2]),
        .R(\IP2Bus_Data_reg[16]_0 ));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\IP2Bus_Data_reg[0]_0 [24]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data_reg[30]_0 ),
        .Q(\IP2Bus_Data_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data_reg[31]_0 ),
        .Q(\IP2Bus_Data_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\IP2Bus_Data_reg[0]_0 [23]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\IP2Bus_Data_reg[0]_0 [22]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\IP2Bus_Data_reg[0]_0 [21]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\IP2Bus_Data_reg[0]_0 [20]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\IP2Bus_Data_reg[0]_0 [19]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\IP2Bus_Data_reg[0]_0 [18]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\IP2Bus_Data_reg[0]_0 [17]),
        .R(\IP2Bus_Data_reg[1]_0 ));
  FDRE \TFT_base_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[26]),
        .Q(Q[10]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[16]),
        .Q(Q[0]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[25]),
        .Q(Q[9]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[24]),
        .Q(Q[8]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[23]),
        .Q(Q[7]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[22]),
        .Q(Q[6]),
        .R(bus2ip_sreset));
  FDSE \TFT_base_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[21]),
        .Q(Q[5]),
        .S(bus2ip_sreset));
  FDSE \TFT_base_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[20]),
        .Q(Q[4]),
        .S(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[19]),
        .Q(Q[3]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[18]),
        .Q(Q[2]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[17]),
        .Q(Q[1]),
        .R(bus2ip_sreset));
  FDRE TFT_dps_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_dps_reg_reg_0),
        .Q(tft_dps),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[15]),
        .Q(TFT_iic_reg_addr[0]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[14]),
        .Q(TFT_iic_reg_addr[1]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[13]),
        .Q(TFT_iic_reg_addr[2]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[12]),
        .Q(TFT_iic_reg_addr[3]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[11]),
        .Q(TFT_iic_reg_addr[4]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[10]),
        .Q(TFT_iic_reg_addr[5]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[9]),
        .Q(TFT_iic_reg_addr[6]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[8]),
        .Q(TFT_iic_reg_addr[7]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[7]),
        .Q(TFT_iic_reg_data[0]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[6]),
        .Q(TFT_iic_reg_data[1]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[5]),
        .Q(TFT_iic_reg_data[2]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[4]),
        .Q(TFT_iic_reg_data[3]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[3]),
        .Q(\TFT_iic_reg_data_reg[4]_0 [2]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[2]),
        .Q(TFT_iic_reg_data[5]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[1]),
        .Q(\TFT_iic_reg_data_reg[4]_0 [1]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[0]),
        .Q(\TFT_iic_reg_data_reg[4]_0 [0]),
        .R(bus2ip_sreset));
  FDRE TFT_iic_xfer_reg
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[26]),
        .Q(TFT_iic_xfer),
        .R(bus2ip_sreset));
  FDRE TFT_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_intr_en_reg_0),
        .Q(prmry_in),
        .R(bus2ip_sreset));
  FDSE TFT_on_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_on_reg_reg_1),
        .Q(TFT_on_reg_reg_0),
        .S(bus2ip_sreset));
  LUT5 #(
    .INIT(32'hFFAFCCAC)) 
    TFT_status_reg_i_2
       (.I0(s_axi_wdata[0]),
        .I1(tft_status_d2),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(TFT_status_reg),
        .O(s_axi_wdata_0_sn_1));
  FDRE TFT_status_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TFT_status_reg_reg_0),
        .Q(TFT_status_reg),
        .R(1'b0));
  FDRE bus2ip_rdce_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_or),
        .Q(bus2ip_rdce_d1_reg_0),
        .R(bus2ip_sreset));
  FDRE bus2ip_rdce_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_d1_reg_0),
        .Q(bus2ip_rdce_d2_reg_0),
        .R(bus2ip_sreset));
  FDRE bus2ip_wrce_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_or),
        .Q(bus2ip_wrce_d1),
        .R(bus2ip_sreset));
  FDRE bus2ip_wrce_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_d1),
        .Q(bus2ip_wrce_d2),
        .R(bus2ip_sreset));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(bus2ip_rdce_d1_reg_0),
        .I1(bus2ip_rdce_d2_reg_0),
        .O(s_axi_arready));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    s_axi_bvalid_i_i_1
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .I2(s_axi_rvalid_i_reg[1]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(bus2ip_wrce_d1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h20FF2020)) 
    s_axi_rvalid_i_i_1
       (.I0(bus2ip_rdce_d1_reg_0),
        .I1(bus2ip_rdce_d2_reg_0),
        .I2(s_axi_rvalid_i_reg[2]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(bus2ip_rdce_d1_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .O(s_axi_awready));
  FDRE tft_status_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tft_status_i),
        .Q(tft_status_d1),
        .R(bus2ip_sreset));
  FDRE tft_status_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tft_status_d1),
        .Q(tft_status_d2),
        .R(bus2ip_sreset));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_tft_controller" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_tft_controller
   (tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_hsync,
    tft_vsync,
    tft_de,
    ip2intc_irpt,
    TFT_iic_xfer,
    \IP2Bus_Data_reg[0] ,
    Q,
    \TFT_iic_reg_data_reg[4] ,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    eof_n,
    TFT_status_reg,
    prmry_in,
    TFT_on_reg_reg,
    tft_dps,
    ip2bus_mstrd_req,
    IP2Bus_Mst_Type,
    IP2Bus_MstRd_dst_rdy,
    cs_ce_clr,
    D,
    s_axi_arready,
    s_axi_awready,
    scndry_out,
    bus2ip_rdce_d1_reg,
    bus2ip_wrce_d1_reg,
    s_axi_wdata_0_sp_1,
    \tft_base_addr_reg[0]_0 ,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    bus2ip_sreset,
    s_axi_aclk,
    C0,
    bus2ip_wrce,
    s_axi_wdata,
    \IP2Bus_Data_reg[1] ,
    \IP2Bus_Data_reg[16] ,
    bus2ip_rdce_or,
    bus2ip_wrce_or,
    bus2ip_mstrd_eof_n,
    AXI_BRAM_we_i_reg_0,
    TFT_status_reg_reg,
    TFT_intr_en_reg,
    TFT_on_reg_reg_0,
    TFT_dps_reg_reg,
    \IP2Bus_Data_reg[0]_0 ,
    \IP2Bus_Data_reg[28] ,
    \IP2Bus_Data_reg[30] ,
    \IP2Bus_Data_reg[31] ,
    s_axi_aresetn,
    s_axi_rvalid_i_reg,
    state1__2,
    sig_llink2cmd_rd_busy,
    sig_rd_discontinue,
    sig_rd2llink_strm_tlast,
    E,
    bus2ip_mst_cmdack,
    bus2ip_mst_cmplt,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bready,
    s_axi_bvalid,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    \AXI_BRAM_data_i_reg[8]_0 );
  output tft_vga_clk;
  output [5:0]tft_vga_r;
  output [5:0]tft_vga_g;
  output [5:0]tft_vga_b;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  output ip2intc_irpt;
  output TFT_iic_xfer;
  output [26:0]\IP2Bus_Data_reg[0] ;
  output [0:0]Q;
  output [2:0]\TFT_iic_reg_data_reg[4] ;
  output bus2ip_rdce_d1;
  output bus2ip_rdce_d2;
  output eof_n;
  output TFT_status_reg;
  output prmry_in;
  output TFT_on_reg_reg;
  output tft_dps;
  output ip2bus_mstrd_req;
  output IP2Bus_Mst_Type;
  output IP2Bus_MstRd_dst_rdy;
  output cs_ce_clr;
  output [0:0]D;
  output s_axi_arready;
  output s_axi_awready;
  output scndry_out;
  output bus2ip_rdce_d1_reg;
  output bus2ip_wrce_d1_reg;
  output s_axi_wdata_0_sp_1;
  output [24:0]\tft_base_addr_reg[0]_0 ;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input bus2ip_sreset;
  input s_axi_aclk;
  input C0;
  input [1:0]bus2ip_wrce;
  input [26:0]s_axi_wdata;
  input \IP2Bus_Data_reg[1] ;
  input \IP2Bus_Data_reg[16] ;
  input bus2ip_rdce_or;
  input bus2ip_wrce_or;
  input bus2ip_mstrd_eof_n;
  input AXI_BRAM_we_i_reg_0;
  input TFT_status_reg_reg;
  input TFT_intr_en_reg;
  input TFT_on_reg_reg_0;
  input TFT_dps_reg_reg;
  input \IP2Bus_Data_reg[0]_0 ;
  input \IP2Bus_Data_reg[28] ;
  input \IP2Bus_Data_reg[30] ;
  input \IP2Bus_Data_reg[31] ;
  input s_axi_aresetn;
  input [2:0]s_axi_rvalid_i_reg;
  input state1__2;
  input sig_llink2cmd_rd_busy;
  input sig_rd_discontinue;
  input sig_rd2llink_strm_tlast;
  input [0:0]E;
  input bus2ip_mst_cmdack;
  input bus2ip_mst_cmplt;
  input s_axi_rready;
  input s_axi_rvalid;
  input s_axi_bready;
  input s_axi_bvalid;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [35:0]\AXI_BRAM_data_i_reg[8]_0 ;

  wire [8:61]AXI_BRAM_data_i;
  wire [35:0]\AXI_BRAM_data_i_reg[8]_0 ;
  wire AXI_BRAM_we_i;
  wire AXI_BRAM_we_i_reg_0;
  wire [5:0]BLUE_i;
  wire BRAM_TFT_addr0;
  wire Bus_RNW_reg;
  wire C0;
  wire [0:0]D;
  wire DE_i;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire GET_LINE_SYNC_n_0;
  wire GET_LINE_SYNC_n_2;
  wire [5:0]GREEN_i;
  wire HSYNC_U2_n_3;
  wire HSYNC_U2_n_6;
  wire HSYNC_i;
  wire I2C_done_tft;
  wire [26:0]\IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[0]_0 ;
  wire \IP2Bus_Data_reg[16] ;
  wire \IP2Bus_Data_reg[1] ;
  wire \IP2Bus_Data_reg[28] ;
  wire \IP2Bus_Data_reg[30] ;
  wire \IP2Bus_Data_reg[31] ;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_Mst_Type;
  wire [0:0]Q;
  wire RED0;
  wire [5:0]RED_i;
  wire TFT_ON_MAXI_SYNC_n_0;
  wire TFT_dps_reg_reg;
  wire [2:0]\TFT_iic_reg_data_reg[4] ;
  wire TFT_iic_xfer;
  wire TFT_intr_en_reg;
  wire TFT_on_reg_reg;
  wire TFT_on_reg_reg_0;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire VSYNC_U3_n_4;
  wire VSYNC_i;
  wire V_P_SYNC_n_0;
  (* async_reg = "true" *) wire axi_rst_d1;
  (* async_reg = "true" *) wire axi_rst_d6;
  wire bus2ip_mreset;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d1_reg;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire [1:0]bus2ip_wrce;
  wire bus2ip_wrce_d1_reg;
  wire bus2ip_wrce_or;
  wire clk_ce_neg0;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire cs_ce_clr;
  wire eof_n;
  wire get_line_start;
  wire get_line_start_d1;
  wire h_pix_cnt_tc;
  wire ip2bus_mstrd_req;
  wire ip2intc_irpt;
  wire ip2intc_irpt_i;
  wire [0:8]line_cnt;
  wire \line_cnt[0]_i_4_n_0 ;
  wire \line_cnt[0]_i_5_n_0 ;
  wire \line_cnt[3]_i_2_n_0 ;
  wire [0:8]line_cnt_1;
  wire m_axi_aclk;
  wire master_rst;
  wire mn_request_set;
  wire [4:0]p_0_in;
  wire p_in_d1_cdc_from;
  wire prmry_in;
  wire prmry_in_xored;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_awready;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [2:0]s_axi_rvalid_i_reg;
  wire [26:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire scndry_out;
  wire sig_llink2cmd_rd_busy;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd_discontinue;
  wire state1__2;
  wire sys_tft_clk;
  wire [0:10]tft_base_addr_d2;
  wire [1:10]tft_base_addr_i;
  wire [24:0]\tft_base_addr_reg[0]_0 ;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire tft_intr_en_maxi;
  wire tft_on_reg_bram_d2;
  wire tft_rst;
  wire tft_status_i;
  wire [5:0]tft_vga_b;
  wire tft_vga_clk;
  wire [5:0]tft_vga_g;
  wire [5:0]tft_vga_r;
  wire tft_vsync;
  wire trans_cnt1;
  wire \trans_cnt_i[0]_i_2_n_0 ;
  wire [0:4]trans_cnt_reg__0;
  wire trans_cnt_tc;
  wire trans_cnt_tc_pulse;
  wire trans_cnt_tc_pulse_i;
  wire v_bp_cnt_tc;
  wire v_bp_pulse;
  wire v_p_cnt_tc;
  wire vsync_rst;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  FDRE \AXI_BRAM_data_i_reg[10] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [33]),
        .Q(AXI_BRAM_data_i[10]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[11] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [32]),
        .Q(AXI_BRAM_data_i[11]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[12] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [31]),
        .Q(AXI_BRAM_data_i[12]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[13] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [30]),
        .Q(AXI_BRAM_data_i[13]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[16] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [29]),
        .Q(AXI_BRAM_data_i[16]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[17] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [28]),
        .Q(AXI_BRAM_data_i[17]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[18] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [27]),
        .Q(AXI_BRAM_data_i[18]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[19] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [26]),
        .Q(AXI_BRAM_data_i[19]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[20] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [25]),
        .Q(AXI_BRAM_data_i[20]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[21] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [24]),
        .Q(AXI_BRAM_data_i[21]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[24] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [23]),
        .Q(AXI_BRAM_data_i[24]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[25] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [22]),
        .Q(AXI_BRAM_data_i[25]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[26] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [21]),
        .Q(AXI_BRAM_data_i[26]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[27] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [20]),
        .Q(AXI_BRAM_data_i[27]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[28] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [19]),
        .Q(AXI_BRAM_data_i[28]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[29] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [18]),
        .Q(AXI_BRAM_data_i[29]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[40] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [17]),
        .Q(AXI_BRAM_data_i[40]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[41] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [16]),
        .Q(AXI_BRAM_data_i[41]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[42] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [15]),
        .Q(AXI_BRAM_data_i[42]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[43] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [14]),
        .Q(AXI_BRAM_data_i[43]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[44] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [13]),
        .Q(AXI_BRAM_data_i[44]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[45] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [12]),
        .Q(AXI_BRAM_data_i[45]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[48] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [11]),
        .Q(AXI_BRAM_data_i[48]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[49] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [10]),
        .Q(AXI_BRAM_data_i[49]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[50] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [9]),
        .Q(AXI_BRAM_data_i[50]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[51] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [8]),
        .Q(AXI_BRAM_data_i[51]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[52] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [7]),
        .Q(AXI_BRAM_data_i[52]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[53] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [6]),
        .Q(AXI_BRAM_data_i[53]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[56] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [5]),
        .Q(AXI_BRAM_data_i[56]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[57] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [4]),
        .Q(AXI_BRAM_data_i[57]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[58] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [3]),
        .Q(AXI_BRAM_data_i[58]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[59] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [2]),
        .Q(AXI_BRAM_data_i[59]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[60] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [1]),
        .Q(AXI_BRAM_data_i[60]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[61] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [0]),
        .Q(AXI_BRAM_data_i[61]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [35]),
        .Q(AXI_BRAM_data_i[8]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[9] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\AXI_BRAM_data_i_reg[8]_0 [34]),
        .Q(AXI_BRAM_data_i[9]),
        .R(master_rst));
  FDRE AXI_BRAM_we_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(AXI_BRAM_we_i_reg_0),
        .Q(AXI_BRAM_we_i),
        .R(master_rst));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized1 BASE_ADDR_SYNC
       (.Q({Q,tft_base_addr_i[1],tft_base_addr_i[2],tft_base_addr_i[3],tft_base_addr_i[4],tft_base_addr_i[5],tft_base_addr_i[6],tft_base_addr_i[7],tft_base_addr_i[8],tft_base_addr_i[9],tft_base_addr_i[10]}),
        .m_axi_aclk(m_axi_aclk),
        .scndry_vect_out({tft_base_addr_d2[0],tft_base_addr_d2[1],tft_base_addr_d2[2],tft_base_addr_d2[3],tft_base_addr_d2[4],tft_base_addr_d2[5],tft_base_addr_d2[6],tft_base_addr_d2[7],tft_base_addr_d2[8],tft_base_addr_d2[9],tft_base_addr_d2[10]}));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    FDR_IP2INTC_Irpt
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(ip2intc_irpt_i),
        .Q(ip2intc_irpt),
        .R(master_rst));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized0 GET_LINE_SYNC
       (.E(E),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .IP2Bus_MstRd_dst_rdy_reg(GET_LINE_SYNC_n_0),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .IP2Bus_Mst_Type_reg(GET_LINE_SYNC_n_2),
        .Q({trans_cnt_reg__0[0],trans_cnt_reg__0[3],trans_cnt_reg__0[4]}),
        .bus2ip_mreset(bus2ip_mreset),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .get_line_start_d1(get_line_start_d1),
        .\line_cnt_i_reg[8] (\trans_cnt_i[0]_i_2_n_0 ),
        .m_axi_aclk(m_axi_aclk),
        .mn_request_set(mn_request_set),
        .scndry_out(scndry_out),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_h_sync HSYNC_U2
       (.\HSYNC_cs_reg[0]_0 (HSYNC_U2_n_6),
        .\HSYNC_cs_reg[1]_0 (HSYNC_U2_n_3),
        .HSYNC_i(HSYNC_i),
        .H_bp_cnt_tc_reg_0(BRAM_TFT_addr0),
        .\RED_reg[5] (VSYNC_U3_n_4),
        .\RED_reg[5]_0 (I2C_done_tft),
        .SR(RED0),
        .clk_ce_neg0(clk_ce_neg0),
        .clk_ce_pos0(clk_ce_pos0),
        .clk_stb_d1(clk_stb_d1),
        .h_pix_cnt_tc(h_pix_cnt_tc),
        .out(axi_rst_d6),
        .scndry_out(tft_on_reg_bram_d2),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .vsync_rst(vsync_rst));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized2 I2C_DONE_SYNC
       (.\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from (tft_on_reg_bram_d2),
        .out(axi_rst_d6),
        .scndry_out(I2C_done_tft),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  TinySoC_axi_tft_0_0_cdc_sync INTR_EN_SYNC
       (.m_axi_aclk(m_axi_aclk),
        .prmry_in(prmry_in),
        .scndry_out(tft_intr_en_maxi));
  FDRE IP2Bus_MstRd_Req_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(TFT_ON_MAXI_SYNC_n_0),
        .Q(ip2bus_mstrd_req),
        .R(1'b0));
  FDRE IP2Bus_MstRd_dst_rdy_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(GET_LINE_SYNC_n_0),
        .Q(IP2Bus_MstRd_dst_rdy),
        .R(1'b0));
  FDRE IP2Bus_Mst_Type_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(GET_LINE_SYNC_n_2),
        .Q(IP2Bus_Mst_Type),
        .R(1'b0));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_line_buffer LINE_BUFFER_U4
       (.\BLUE_reg[5]_0 (BLUE_i),
        .\GREEN_reg[5]_0 (GREEN_i),
        .Q({AXI_BRAM_data_i[8],AXI_BRAM_data_i[9],AXI_BRAM_data_i[10],AXI_BRAM_data_i[11],AXI_BRAM_data_i[12],AXI_BRAM_data_i[13],AXI_BRAM_data_i[16],AXI_BRAM_data_i[17],AXI_BRAM_data_i[18],AXI_BRAM_data_i[19],AXI_BRAM_data_i[20],AXI_BRAM_data_i[21],AXI_BRAM_data_i[24],AXI_BRAM_data_i[25],AXI_BRAM_data_i[26],AXI_BRAM_data_i[27],AXI_BRAM_data_i[28],AXI_BRAM_data_i[29],AXI_BRAM_data_i[40],AXI_BRAM_data_i[41],AXI_BRAM_data_i[42],AXI_BRAM_data_i[43],AXI_BRAM_data_i[44],AXI_BRAM_data_i[45],AXI_BRAM_data_i[48],AXI_BRAM_data_i[49],AXI_BRAM_data_i[50],AXI_BRAM_data_i[51],AXI_BRAM_data_i[52],AXI_BRAM_data_i[53],AXI_BRAM_data_i[56],AXI_BRAM_data_i[57],AXI_BRAM_data_i[58],AXI_BRAM_data_i[59],AXI_BRAM_data_i[60],AXI_BRAM_data_i[61]}),
        .\RED_reg[5]_0 (RED_i),
        .\RED_reg[5]_1 (RED0),
        .SR(BRAM_TFT_addr0),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .wr_en(AXI_BRAM_we_i));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_slave_register SLAVE_REG_U6
       (.Bus_RNW_reg(Bus_RNW_reg),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\IP2Bus_Data_reg[0]_0 (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[0]_1 (\IP2Bus_Data_reg[0]_0 ),
        .\IP2Bus_Data_reg[16]_0 (\IP2Bus_Data_reg[16] ),
        .\IP2Bus_Data_reg[1]_0 (\IP2Bus_Data_reg[1] ),
        .\IP2Bus_Data_reg[28]_0 (\IP2Bus_Data_reg[28] ),
        .\IP2Bus_Data_reg[30]_0 (\IP2Bus_Data_reg[30] ),
        .\IP2Bus_Data_reg[31]_0 (\IP2Bus_Data_reg[31] ),
        .Q({Q,tft_base_addr_i[1],tft_base_addr_i[2],tft_base_addr_i[3],tft_base_addr_i[4],tft_base_addr_i[5],tft_base_addr_i[6],tft_base_addr_i[7],tft_base_addr_i[8],tft_base_addr_i[9],tft_base_addr_i[10]}),
        .TFT_dps_reg_reg_0(TFT_dps_reg_reg),
        .\TFT_iic_reg_data_reg[4]_0 (\TFT_iic_reg_data_reg[4] ),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_intr_en_reg_0(TFT_intr_en_reg),
        .TFT_on_reg_reg_0(TFT_on_reg_reg),
        .TFT_on_reg_reg_1(TFT_on_reg_reg_0),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg_0(TFT_status_reg_reg),
        .bus2ip_rdce_d1_reg_0(bus2ip_rdce_d1),
        .bus2ip_rdce_d1_reg_1(bus2ip_rdce_d1_reg),
        .bus2ip_rdce_d2_reg_0(bus2ip_rdce_d2),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce(bus2ip_wrce),
        .bus2ip_wrce_d1_reg_0(bus2ip_wrce_d1_reg),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .state1__2(state1__2),
        .tft_dps(tft_dps),
        .tft_status_i(tft_status_i));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_tft_interface TFT_IF_U5
       (.C0(C0),
        .DE_i(DE_i),
        .HSYNC_i(HSYNC_i),
        .VSYNC_i(VSYNC_i),
        .\gen_vga_if.FDR_B5_0 (BLUE_i),
        .\gen_vga_if.FDR_G5_0 (GREEN_i),
        .\gen_vga_if.FDR_R5_0 (RED_i),
        .sys_tft_clk(sys_tft_clk),
        .tft_de(tft_de),
        .tft_hsync(tft_hsync),
        .tft_rst(tft_rst),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
  TinySoC_axi_tft_0_0_cdc_sync_0 TFT_ON_MAXI_SYNC
       (.E(mn_request_set),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (TFT_on_reg_reg),
        .IP2Bus_MstRd_Req_reg(trans_cnt_tc_pulse),
        .SR(master_rst),
        .bus2ip_mreset(bus2ip_mreset),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .m_axi_aclk(m_axi_aclk),
        .scndry_out(scndry_out),
        .sig_cmdack_reg_reg(TFT_ON_MAXI_SYNC_n_0));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized2_1 TFT_ON_TFT_SYNC
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (TFT_on_reg_reg),
        .scndry_out(tft_on_reg_bram_d2),
        .sys_tft_clk(sys_tft_clk));
  TinySoC_axi_tft_0_0_axi_tft_v2_0_21_v_sync VSYNC_U3
       (.DE_i(DE_i),
        .\VSYNC_cs_reg[1]_0 (VSYNC_U3_n_4),
        .VSYNC_i(VSYNC_i),
        .clk_ce_neg0(clk_ce_neg0),
        .clk_ce_pos0(clk_ce_pos0),
        .clk_stb_d1(clk_stb_d1),
        .clk_stb_d1_reg_0(HSYNC_U2_n_6),
        .get_line_start(get_line_start),
        .get_line_start_d1_reg(HSYNC_U2_n_3),
        .h_pix_cnt_tc(h_pix_cnt_tc),
        .sys_tft_clk(sys_tft_clk),
        .v_bp_cnt_tc(v_bp_cnt_tc),
        .v_p_cnt_tc(v_p_cnt_tc),
        .vsync_rst(vsync_rst));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized0_2 V_BP_SYNC
       (.E(v_bp_pulse),
        .bus2ip_mreset(bus2ip_mreset),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .v_bp_cnt_tc(v_bp_cnt_tc));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized0_3 V_INTR_SYNC
       (.bus2ip_mreset(bus2ip_mreset),
        .bus2ip_sreset(bus2ip_sreset),
        .m_axi_aclk(m_axi_aclk),
        .p_in_d1_cdc_from(p_in_d1_cdc_from),
        .prmry_in_xored(prmry_in_xored),
        .s_axi_aclk(s_axi_aclk),
        .tft_status_i(tft_status_i));
  TinySoC_axi_tft_0_0_cdc_sync__parameterized0_4 V_P_SYNC
       (.FDR_IP2INTC_Irpt(tft_intr_en_maxi),
        .\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 (trans_cnt1),
        .SR(V_P_SYNC_n_0),
        .bus2ip_mreset(bus2ip_mreset),
        .eof_n(eof_n),
        .ip2intc_irpt_i(ip2intc_irpt_i),
        .m_axi_aclk(m_axi_aclk),
        .p_in_d1_cdc_from(p_in_d1_cdc_from),
        .prmry_in_xored(prmry_in_xored),
        .scndry_out(scndry_out),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(sig_rd_discontinue),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .trans_cnt_tc(trans_cnt_tc),
        .v_p_cnt_tc(v_p_cnt_tc));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE axi_rst_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(bus2ip_mreset),
        .D(1'b1),
        .Q(axi_rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE axi_rst_d6_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(bus2ip_mreset),
        .D(axi_rst_d1),
        .Q(axi_rst_d6));
  FDSE eof_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_mstrd_eof_n),
        .Q(eof_n),
        .S(master_rst));
  FDRE get_line_start_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(get_line_start),
        .Q(get_line_start_d1),
        .R(tft_rst));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \line_cnt[0]_i_2 
       (.I0(trans_cnt_tc_pulse_i),
        .I1(trans_cnt_reg__0[1]),
        .I2(trans_cnt_reg__0[2]),
        .I3(trans_cnt_reg__0[0]),
        .I4(trans_cnt_reg__0[4]),
        .I5(trans_cnt_reg__0[3]),
        .O(trans_cnt_tc_pulse));
  LUT5 #(
    .INIT(32'hBC8CCCCC)) 
    \line_cnt[0]_i_3 
       (.I0(\line_cnt[0]_i_4_n_0 ),
        .I1(line_cnt[0]),
        .I2(line_cnt[2]),
        .I3(\line_cnt[0]_i_5_n_0 ),
        .I4(line_cnt[1]),
        .O(line_cnt_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \line_cnt[0]_i_4 
       (.I0(line_cnt[5]),
        .I1(line_cnt[7]),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[4]),
        .O(\line_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[0]_i_5 
       (.I0(line_cnt[4]),
        .I1(line_cnt[6]),
        .I2(line_cnt[7]),
        .I3(line_cnt[8]),
        .I4(line_cnt[5]),
        .I5(line_cnt[3]),
        .O(\line_cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF1FFF100FF00FF00)) 
    \line_cnt[1]_i_1 
       (.I0(line_cnt[0]),
        .I1(line_cnt[3]),
        .I2(\line_cnt[0]_i_4_n_0 ),
        .I3(line_cnt[1]),
        .I4(\line_cnt[0]_i_5_n_0 ),
        .I5(line_cnt[2]),
        .O(line_cnt_1[1]));
  LUT6 #(
    .INIT(64'hF0F7FFFFF0F70000)) 
    \line_cnt[2]_i_1 
       (.I0(line_cnt[1]),
        .I1(line_cnt[0]),
        .I2(\line_cnt[0]_i_4_n_0 ),
        .I3(line_cnt[3]),
        .I4(line_cnt[2]),
        .I5(\line_cnt[0]_i_5_n_0 ),
        .O(line_cnt_1[2]));
  LUT6 #(
    .INIT(64'h8FFFFFFF80000000)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[0]_i_4_n_0 ),
        .I1(line_cnt[3]),
        .I2(line_cnt[2]),
        .I3(line_cnt[1]),
        .I4(line_cnt[0]),
        .I5(\line_cnt[3]_i_2_n_0 ),
        .O(line_cnt_1[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \line_cnt[3]_i_2 
       (.I0(line_cnt[3]),
        .I1(line_cnt[5]),
        .I2(line_cnt[8]),
        .I3(line_cnt[7]),
        .I4(line_cnt[6]),
        .I5(line_cnt[4]),
        .O(\line_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \line_cnt[4]_i_1 
       (.I0(line_cnt[4]),
        .I1(line_cnt[6]),
        .I2(line_cnt[7]),
        .I3(line_cnt[8]),
        .I4(line_cnt[5]),
        .O(line_cnt_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \line_cnt[5]_i_1 
       (.I0(line_cnt[5]),
        .I1(line_cnt[8]),
        .I2(line_cnt[7]),
        .I3(line_cnt[6]),
        .O(line_cnt_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \line_cnt[6]_i_1 
       (.I0(line_cnt[6]),
        .I1(line_cnt[8]),
        .I2(line_cnt[7]),
        .O(line_cnt_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \line_cnt[7]_i_1 
       (.I0(line_cnt[8]),
        .I1(line_cnt[7]),
        .O(line_cnt_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \line_cnt[8]_i_1 
       (.I0(line_cnt[8]),
        .O(line_cnt_1[8]));
  FDRE \line_cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[0]),
        .Q(\tft_base_addr_reg[0]_0 [13]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[1]),
        .Q(\tft_base_addr_reg[0]_0 [12]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[2]),
        .Q(\tft_base_addr_reg[0]_0 [11]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[3]),
        .Q(\tft_base_addr_reg[0]_0 [10]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[4] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[4]),
        .Q(\tft_base_addr_reg[0]_0 [9]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[5] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[5]),
        .Q(\tft_base_addr_reg[0]_0 [8]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[6] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[6]),
        .Q(\tft_base_addr_reg[0]_0 [7]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[7] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[7]),
        .Q(\tft_base_addr_reg[0]_0 [6]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[8] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[8]),
        .Q(\tft_base_addr_reg[0]_0 [5]),
        .R(master_rst));
  FDRE \line_cnt_reg[0] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[0]),
        .Q(line_cnt[0]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[1] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[1]),
        .Q(line_cnt[1]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[2] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[2]),
        .Q(line_cnt[2]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[3] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[3]),
        .Q(line_cnt[3]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[4] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[4]),
        .Q(line_cnt[4]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[5] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[5]),
        .Q(line_cnt[5]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[6] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[6]),
        .Q(line_cnt[6]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[7] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[7]),
        .Q(line_cnt[7]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[8] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_1[8]),
        .Q(line_cnt[8]),
        .R(trans_cnt1));
  FDRE \tft_base_addr_reg[0] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[0]),
        .Q(\tft_base_addr_reg[0]_0 [24]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[10] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[10]),
        .Q(\tft_base_addr_reg[0]_0 [14]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[1] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[1]),
        .Q(\tft_base_addr_reg[0]_0 [23]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[2] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[2]),
        .Q(\tft_base_addr_reg[0]_0 [22]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[3] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[3]),
        .Q(\tft_base_addr_reg[0]_0 [21]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[4] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[4]),
        .Q(\tft_base_addr_reg[0]_0 [20]),
        .R(master_rst));
  FDSE \tft_base_addr_reg[5] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[5]),
        .Q(\tft_base_addr_reg[0]_0 [19]),
        .S(master_rst));
  FDSE \tft_base_addr_reg[6] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[6]),
        .Q(\tft_base_addr_reg[0]_0 [18]),
        .S(master_rst));
  FDRE \tft_base_addr_reg[7] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[7]),
        .Q(\tft_base_addr_reg[0]_0 [17]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[8] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[8]),
        .Q(\tft_base_addr_reg[0]_0 [16]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[9] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[9]),
        .Q(\tft_base_addr_reg[0]_0 [15]),
        .R(master_rst));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \trans_cnt[0]_i_3 
       (.I0(trans_cnt_reg__0[0]),
        .I1(trans_cnt_reg__0[2]),
        .I2(trans_cnt_reg__0[3]),
        .I3(trans_cnt_reg__0[4]),
        .I4(trans_cnt_reg__0[1]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \trans_cnt[1]_i_1 
       (.I0(trans_cnt_reg__0[1]),
        .I1(trans_cnt_reg__0[4]),
        .I2(trans_cnt_reg__0[3]),
        .I3(trans_cnt_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \trans_cnt[2]_i_1 
       (.I0(trans_cnt_reg__0[2]),
        .I1(trans_cnt_reg__0[3]),
        .I2(trans_cnt_reg__0[4]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \trans_cnt[3]_i_1 
       (.I0(trans_cnt_reg__0[4]),
        .I1(trans_cnt_reg__0[3]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \trans_cnt[4]_i_1 
       (.I0(trans_cnt_reg__0[4]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \trans_cnt_i[0]_i_2 
       (.I0(trans_cnt_reg__0[2]),
        .I1(trans_cnt_reg__0[1]),
        .O(\trans_cnt_i[0]_i_2_n_0 ));
  FDRE \trans_cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[0]),
        .Q(\tft_base_addr_reg[0]_0 [4]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[1]),
        .Q(\tft_base_addr_reg[0]_0 [3]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[2]),
        .Q(\tft_base_addr_reg[0]_0 [2]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[3]),
        .Q(\tft_base_addr_reg[0]_0 [1]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[4] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[4]),
        .Q(\tft_base_addr_reg[0]_0 [0]),
        .R(master_rst));
  FDRE \trans_cnt_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(trans_cnt_reg__0[0]),
        .R(V_P_SYNC_n_0));
  FDRE \trans_cnt_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(trans_cnt_reg__0[1]),
        .R(V_P_SYNC_n_0));
  FDRE \trans_cnt_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(trans_cnt_reg__0[2]),
        .R(V_P_SYNC_n_0));
  FDRE \trans_cnt_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(trans_cnt_reg__0[3]),
        .R(V_P_SYNC_n_0));
  FDRE \trans_cnt_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(trans_cnt_reg__0[4]),
        .R(V_P_SYNC_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    trans_cnt_tc_pulse_i_i_1
       (.I0(trans_cnt_reg__0[3]),
        .I1(trans_cnt_reg__0[4]),
        .I2(trans_cnt_reg__0[0]),
        .I3(trans_cnt_reg__0[2]),
        .I4(trans_cnt_reg__0[1]),
        .O(trans_cnt_tc));
  FDRE trans_cnt_tc_pulse_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(trans_cnt_tc),
        .Q(trans_cnt_tc_pulse_i),
        .R(master_rst));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_tft_interface" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_tft_interface
   (tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_hsync,
    tft_vsync,
    tft_de,
    sys_tft_clk,
    tft_rst,
    \gen_vga_if.FDR_R5_0 ,
    C0,
    \gen_vga_if.FDR_G5_0 ,
    \gen_vga_if.FDR_B5_0 ,
    HSYNC_i,
    VSYNC_i,
    DE_i);
  output tft_vga_clk;
  output [5:0]tft_vga_r;
  output [5:0]tft_vga_g;
  output [5:0]tft_vga_b;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  input sys_tft_clk;
  input tft_rst;
  input [5:0]\gen_vga_if.FDR_R5_0 ;
  input C0;
  input [5:0]\gen_vga_if.FDR_G5_0 ;
  input [5:0]\gen_vga_if.FDR_B5_0 ;
  input HSYNC_i;
  input VSYNC_i;
  input DE_i;

  wire C0;
  wire DE_i;
  wire HSYNC_i;
  wire VSYNC_i;
  wire [5:0]\gen_vga_if.FDR_B5_0 ;
  wire [5:0]\gen_vga_if.FDR_G5_0 ;
  wire [5:0]\gen_vga_if.FDR_R5_0 ;
  wire sys_tft_clk;
  wire tft_de;
  wire tft_hsync;
  wire tft_rst;
  wire [5:0]tft_vga_b;
  wire tft_vga_clk;
  wire [5:0]tft_vga_g;
  wire [5:0]tft_vga_r;
  wire tft_vsync;
  wire \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    FDR_DE
       (.C(C0),
        .CE(1'b1),
        .D(DE_i),
        .Q(tft_de),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    FDS_HSYNC
       (.C(C0),
        .CE(1'b1),
        .D(HSYNC_i),
        .Q(tft_hsync),
        .S(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    FDS_VSYNC
       (.C(C0),
        .CE(1'b1),
        .D(VSYNC_i),
        .Q(tft_vsync),
        .S(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B0 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [0]),
        .Q(tft_vga_b[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B1 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [1]),
        .Q(tft_vga_b[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B2 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [2]),
        .Q(tft_vga_b[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B3 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [3]),
        .Q(tft_vga_b[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B4 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [4]),
        .Q(tft_vga_b[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_B5 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_B5_0 [5]),
        .Q(tft_vga_b[5]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G0 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [0]),
        .Q(tft_vga_g[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G1 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [1]),
        .Q(tft_vga_g[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G2 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [2]),
        .Q(tft_vga_g[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G3 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [3]),
        .Q(tft_vga_g[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G4 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [4]),
        .Q(tft_vga_g[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_G5 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_G5_0 [5]),
        .Q(tft_vga_g[5]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R0 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [0]),
        .Q(tft_vga_r[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R1 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [1]),
        .Q(tft_vga_r[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R2 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [2]),
        .Q(tft_vga_r[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R3 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [3]),
        .Q(tft_vga_r[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R4 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [4]),
        .Q(tft_vga_r[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_vga_if.FDR_R5 
       (.C(C0),
        .CE(1'b1),
        .D(\gen_vga_if.FDR_R5_0 [5]),
        .Q(tft_vga_r[5]),
        .R(tft_rst));
  (* OPT_MODIFIED = "MLO " *) 
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_vga_if.gen_7s.TFT_CLK_ODDR 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(tft_vga_clk),
        .R(tft_rst),
        .S(\NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_0_21_v_sync" *) 
module TinySoC_axi_tft_0_0_axi_tft_v2_0_21_v_sync
   (clk_stb_d1,
    v_bp_cnt_tc,
    v_p_cnt_tc,
    get_line_start,
    \VSYNC_cs_reg[1]_0 ,
    DE_i,
    VSYNC_i,
    clk_stb_d1_reg_0,
    sys_tft_clk,
    clk_ce_pos0,
    clk_ce_neg0,
    get_line_start_d1_reg,
    h_pix_cnt_tc,
    vsync_rst);
  output clk_stb_d1;
  output v_bp_cnt_tc;
  output v_p_cnt_tc;
  output get_line_start;
  output \VSYNC_cs_reg[1]_0 ;
  output DE_i;
  output VSYNC_i;
  input clk_stb_d1_reg_0;
  input sys_tft_clk;
  input clk_ce_pos0;
  input clk_ce_neg0;
  input get_line_start_d1_reg;
  input h_pix_cnt_tc;
  input vsync_rst;

  wire DE_i;
  wire [0:4]VSYNC_cs;
  wire \VSYNC_cs_reg[1]_0 ;
  wire VSYNC_i;
  wire [0:4]VSYNC_ns__0;
  wire VSYNC_ns_n_0;
  wire V_bp_cnt_tc_n_0;
  wire V_l_cnt_tc;
  wire V_p_cnt_tc_i_1_n_0;
  wire clk_ce_neg;
  wire clk_ce_neg0;
  wire clk_ce_pos;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire clk_stb_d1_reg_0;
  wire get_line_start;
  wire get_line_start_d1_reg;
  wire h_pix_cnt_tc;
  wire sys_tft_clk;
  wire [0:4]v_bp_cnt;
  wire v_bp_cnt0;
  wire \v_bp_cnt[0]_i_2_n_0 ;
  wire \v_bp_cnt[1]_i_1_n_0 ;
  wire \v_bp_cnt[2]_i_1_n_0 ;
  wire \v_bp_cnt[3]_i_1_n_0 ;
  wire \v_bp_cnt[4]_i_1_n_0 ;
  wire v_bp_cnt_tc;
  wire [0:3]v_fp_cnt;
  wire v_fp_cnt0;
  wire \v_fp_cnt[0]_i_2_n_0 ;
  wire \v_fp_cnt[1]_i_1_n_0 ;
  wire \v_fp_cnt[2]_i_1_n_0 ;
  wire \v_fp_cnt[3]_i_1_n_0 ;
  wire v_fp_cnt_tc__0;
  wire v_fp_cnt_tc_n_0;
  wire [0:8]v_l_cnt;
  wire v_l_cnt0;
  wire \v_l_cnt[0]_i_3_n_0 ;
  wire [0:8]v_l_cnt_0;
  wire v_l_cnt_tc;
  wire [0:1]v_p_cnt;
  wire v_p_cnt0;
  wire \v_p_cnt[0]_i_1_n_0 ;
  wire \v_p_cnt[1]_i_1_n_0 ;
  wire v_p_cnt_tc;
  wire vsync_rst;

  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \BRAM_TFT_addr[0]_i_3 
       (.I0(VSYNC_cs[1]),
        .I1(VSYNC_cs[3]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[4]),
        .I4(VSYNC_cs[0]),
        .O(\VSYNC_cs_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    FDR_DE_i_1
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[3]),
        .I4(VSYNC_cs[1]),
        .I5(get_line_start_d1_reg),
        .O(DE_i));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDS_VSYNC_i_1
       (.I0(VSYNC_cs[3]),
        .I1(VSYNC_cs[1]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[4]),
        .I4(VSYNC_cs[0]),
        .O(VSYNC_i));
  LUT5 #(
    .INIT(32'h8080F080)) 
    \VSYNC_cs[0]_i_1 
       (.I0(v_l_cnt_tc),
        .I1(VSYNC_cs[1]),
        .I2(VSYNC_ns_n_0),
        .I3(VSYNC_cs[0]),
        .I4(v_fp_cnt_tc__0),
        .O(VSYNC_ns__0[0]));
  LUT5 #(
    .INIT(32'hF0202020)) 
    \VSYNC_cs[1]_i_1 
       (.I0(VSYNC_cs[1]),
        .I1(v_l_cnt_tc),
        .I2(VSYNC_ns_n_0),
        .I3(VSYNC_cs[2]),
        .I4(v_bp_cnt_tc),
        .O(VSYNC_ns__0[1]));
  LUT5 #(
    .INIT(32'hF0202020)) 
    \VSYNC_cs[2]_i_1 
       (.I0(VSYNC_cs[2]),
        .I1(v_bp_cnt_tc),
        .I2(VSYNC_ns_n_0),
        .I3(VSYNC_cs[3]),
        .I4(v_p_cnt_tc),
        .O(VSYNC_ns__0[2]));
  LUT6 #(
    .INIT(64'hFFFFF44400000000)) 
    \VSYNC_cs[3]_i_1 
       (.I0(v_p_cnt_tc),
        .I1(VSYNC_cs[3]),
        .I2(v_fp_cnt_tc__0),
        .I3(VSYNC_cs[0]),
        .I4(VSYNC_cs[4]),
        .I5(VSYNC_ns_n_0),
        .O(VSYNC_ns__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \VSYNC_cs[4]_i_1 
       (.I0(VSYNC_ns_n_0),
        .O(VSYNC_ns__0[4]));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \VSYNC_cs_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns__0[0]),
        .Q(VSYNC_cs[0]),
        .R(vsync_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \VSYNC_cs_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns__0[1]),
        .Q(VSYNC_cs[1]),
        .R(vsync_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \VSYNC_cs_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns__0[2]),
        .Q(VSYNC_cs[2]),
        .R(vsync_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDRE \VSYNC_cs_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns__0[3]),
        .Q(VSYNC_cs[3]),
        .R(vsync_rst));
  (* FSM_ENCODED_STATES = "SET_COUNTERS:00001,BACK_PORCH:00100,LINE:01000,PULSE:00010,FRONT_PORCH:10000" *) 
  FDSE \VSYNC_cs_reg[4] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns__0[4]),
        .Q(VSYNC_cs[4]),
        .S(vsync_rst));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    VSYNC_ns
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[3]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[0]),
        .O(VSYNC_ns_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    V_bp_cnt_tc
       (.I0(v_bp_cnt[4]),
        .I1(v_bp_cnt[1]),
        .I2(v_bp_cnt[0]),
        .I3(v_bp_cnt[3]),
        .I4(v_bp_cnt[2]),
        .O(V_bp_cnt_tc_n_0));
  FDRE V_bp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(V_bp_cnt_tc_n_0),
        .Q(v_bp_cnt_tc),
        .R(v_bp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    V_l_cnt_tc_i_1
       (.I0(\v_l_cnt[0]_i_3_n_0 ),
        .I1(v_l_cnt[3]),
        .I2(v_l_cnt[0]),
        .I3(v_l_cnt[2]),
        .I4(v_l_cnt[1]),
        .O(V_l_cnt_tc));
  FDRE V_l_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(V_l_cnt_tc),
        .Q(v_l_cnt_tc),
        .R(v_l_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00002E22)) 
    V_p_cnt_tc_i_1
       (.I0(v_p_cnt_tc),
        .I1(clk_ce_neg),
        .I2(v_p_cnt[0]),
        .I3(v_p_cnt[1]),
        .I4(v_p_cnt0),
        .O(V_p_cnt_tc_i_1_n_0));
  FDRE V_p_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(V_p_cnt_tc_i_1_n_0),
        .Q(v_p_cnt_tc),
        .R(1'b0));
  FDRE clk_ce_neg_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(clk_ce_neg0),
        .Q(clk_ce_neg),
        .R(1'b0));
  FDRE clk_ce_pos_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(clk_ce_pos0),
        .Q(clk_ce_pos),
        .R(1'b0));
  FDRE clk_stb_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(clk_stb_d1_reg_0),
        .Q(clk_stb_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF010000)) 
    get_line_start_d1_i_1
       (.I0(get_line_start_d1_reg),
        .I1(v_l_cnt_tc),
        .I2(\VSYNC_cs_reg[1]_0 ),
        .I3(v_bp_cnt_tc),
        .I4(h_pix_cnt_tc),
        .O(get_line_start));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_bp_cnt[0]_i_1 
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[0]),
        .I2(VSYNC_cs[3]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[2]),
        .I5(vsync_rst),
        .O(v_bp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h78F0F0F0)) 
    \v_bp_cnt[0]_i_2 
       (.I0(v_bp_cnt[2]),
        .I1(v_bp_cnt[1]),
        .I2(v_bp_cnt[0]),
        .I3(v_bp_cnt[3]),
        .I4(v_bp_cnt[4]),
        .O(\v_bp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \v_bp_cnt[1]_i_1 
       (.I0(v_bp_cnt[2]),
        .I1(v_bp_cnt[1]),
        .I2(v_bp_cnt[3]),
        .I3(v_bp_cnt[4]),
        .O(\v_bp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_bp_cnt[2]_i_1 
       (.I0(v_bp_cnt[2]),
        .I1(v_bp_cnt[3]),
        .I2(v_bp_cnt[4]),
        .O(\v_bp_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_bp_cnt[3]_i_1 
       (.I0(v_bp_cnt[3]),
        .I1(v_bp_cnt[4]),
        .O(\v_bp_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_bp_cnt[4]_i_1 
       (.I0(v_bp_cnt[4]),
        .O(\v_bp_cnt[4]_i_1_n_0 ));
  FDRE \v_bp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[0]_i_2_n_0 ),
        .Q(v_bp_cnt[0]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[1]_i_1_n_0 ),
        .Q(v_bp_cnt[1]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[2]_i_1_n_0 ),
        .Q(v_bp_cnt[2]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[3]_i_1_n_0 ),
        .Q(v_bp_cnt[3]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[4]_i_1_n_0 ),
        .Q(v_bp_cnt[4]),
        .R(v_bp_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010112)) 
    \v_fp_cnt[0]_i_1 
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[0]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[3]),
        .I5(vsync_rst),
        .O(v_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_fp_cnt[0]_i_2 
       (.I0(v_fp_cnt[2]),
        .I1(v_fp_cnt[3]),
        .I2(v_fp_cnt[1]),
        .I3(v_fp_cnt[0]),
        .O(\v_fp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_fp_cnt[1]_i_1 
       (.I0(v_fp_cnt[2]),
        .I1(v_fp_cnt[3]),
        .I2(v_fp_cnt[1]),
        .O(\v_fp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_fp_cnt[2]_i_1 
       (.I0(v_fp_cnt[2]),
        .I1(v_fp_cnt[3]),
        .O(\v_fp_cnt[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_fp_cnt[3]_i_1 
       (.I0(v_fp_cnt[3]),
        .O(\v_fp_cnt[3]_i_1_n_0 ));
  FDRE \v_fp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_fp_cnt[0]_i_2_n_0 ),
        .Q(v_fp_cnt[0]),
        .R(v_fp_cnt0));
  FDRE \v_fp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_fp_cnt[1]_i_1_n_0 ),
        .Q(v_fp_cnt[1]),
        .R(v_fp_cnt0));
  FDRE \v_fp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_fp_cnt[2]_i_1_n_0 ),
        .Q(v_fp_cnt[2]),
        .R(v_fp_cnt0));
  FDRE \v_fp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_fp_cnt[3]_i_1_n_0 ),
        .Q(v_fp_cnt[3]),
        .R(v_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    v_fp_cnt_tc
       (.I0(v_fp_cnt[1]),
        .I1(v_fp_cnt[0]),
        .I2(v_fp_cnt[2]),
        .I3(v_fp_cnt[3]),
        .O(v_fp_cnt_tc_n_0));
  FDRE v_fp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_fp_cnt_tc_n_0),
        .Q(v_fp_cnt_tc__0),
        .R(v_fp_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_l_cnt[0]_i_1 
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[3]),
        .I4(VSYNC_cs[1]),
        .I5(vsync_rst),
        .O(v_l_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_l_cnt[0]_i_2 
       (.I0(v_l_cnt[0]),
        .I1(v_l_cnt[2]),
        .I2(\v_l_cnt[0]_i_3_n_0 ),
        .I3(v_l_cnt[3]),
        .I4(v_l_cnt[1]),
        .O(v_l_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_l_cnt[0]_i_3 
       (.I0(v_l_cnt[4]),
        .I1(v_l_cnt[6]),
        .I2(v_l_cnt[5]),
        .I3(v_l_cnt[8]),
        .I4(v_l_cnt[7]),
        .O(\v_l_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_l_cnt[1]_i_1 
       (.I0(v_l_cnt[1]),
        .I1(v_l_cnt[3]),
        .I2(\v_l_cnt[0]_i_3_n_0 ),
        .I3(v_l_cnt[2]),
        .O(v_l_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_l_cnt[2]_i_1 
       (.I0(v_l_cnt[2]),
        .I1(\v_l_cnt[0]_i_3_n_0 ),
        .I2(v_l_cnt[3]),
        .O(v_l_cnt_0[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_l_cnt[3]_i_1 
       (.I0(v_l_cnt[3]),
        .I1(v_l_cnt[7]),
        .I2(v_l_cnt[8]),
        .I3(v_l_cnt[5]),
        .I4(v_l_cnt[6]),
        .I5(v_l_cnt[4]),
        .O(v_l_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_l_cnt[4]_i_1 
       (.I0(v_l_cnt[4]),
        .I1(v_l_cnt[6]),
        .I2(v_l_cnt[5]),
        .I3(v_l_cnt[8]),
        .I4(v_l_cnt[7]),
        .O(v_l_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_l_cnt[5]_i_1 
       (.I0(v_l_cnt[5]),
        .I1(v_l_cnt[8]),
        .I2(v_l_cnt[7]),
        .I3(v_l_cnt[6]),
        .O(v_l_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_l_cnt[6]_i_1 
       (.I0(v_l_cnt[8]),
        .I1(v_l_cnt[7]),
        .I2(v_l_cnt[6]),
        .O(v_l_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_l_cnt[7]_i_1 
       (.I0(v_l_cnt[8]),
        .I1(v_l_cnt[7]),
        .O(v_l_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_l_cnt[8]_i_1 
       (.I0(v_l_cnt[8]),
        .O(v_l_cnt_0[8]));
  FDRE \v_l_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[0]),
        .Q(v_l_cnt[0]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[1]),
        .Q(v_l_cnt[1]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[2]),
        .Q(v_l_cnt[2]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[3]),
        .Q(v_l_cnt[3]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[4]),
        .Q(v_l_cnt[4]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[5]),
        .Q(v_l_cnt[5]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[6]),
        .Q(v_l_cnt[6]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[7] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[7]),
        .Q(v_l_cnt[7]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[8] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[8]),
        .Q(v_l_cnt[8]),
        .R(v_l_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \v_p_cnt[0]_i_1 
       (.I0(v_p_cnt[0]),
        .I1(clk_ce_neg),
        .I2(v_p_cnt[1]),
        .I3(v_p_cnt0),
        .O(\v_p_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_p_cnt[0]_i_2 
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[3]),
        .I5(vsync_rst),
        .O(v_p_cnt0));
  LUT3 #(
    .INIT(8'h06)) 
    \v_p_cnt[1]_i_1 
       (.I0(v_p_cnt[1]),
        .I1(clk_ce_neg),
        .I2(v_p_cnt0),
        .O(\v_p_cnt[1]_i_1_n_0 ));
  FDRE \v_p_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\v_p_cnt[0]_i_1_n_0 ),
        .Q(v_p_cnt[0]),
        .R(1'b0));
  FDRE \v_p_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\v_p_cnt[1]_i_1_n_0 ),
        .Q(v_p_cnt[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync
   (scndry_out,
    prmry_in,
    m_axi_aclk);
  output scndry_out;
  input prmry_in;
  input m_axi_aclk;

  wire m_axi_aclk;
  wire prmry_in;
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
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync_0
   (sig_cmdack_reg_reg,
    scndry_out,
    SR,
    bus2ip_mst_cmdack,
    bus2ip_mreset,
    E,
    ip2bus_mstrd_req,
    IP2Bus_MstRd_Req_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    m_axi_aclk);
  output sig_cmdack_reg_reg;
  output scndry_out;
  output [0:0]SR;
  input bus2ip_mst_cmdack;
  input bus2ip_mreset;
  input [0:0]E;
  input ip2bus_mstrd_req;
  input [0:0]IP2Bus_MstRd_Req_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input m_axi_aclk;

  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire [0:0]IP2Bus_MstRd_Req_reg;
  wire [0:0]SR;
  wire bus2ip_mreset;
  wire bus2ip_mst_cmdack;
  wire ip2bus_mstrd_req;
  wire m_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire sig_cmdack_reg_reg;

  LUT2 #(
    .INIT(4'hB)) 
    FDR_IP2INTC_Irpt_i_1
       (.I0(bus2ip_mreset),
        .I1(scndry_out),
        .O(SR));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
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
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000004040400)) 
    IP2Bus_MstRd_Req_i_1
       (.I0(bus2ip_mst_cmdack),
        .I1(scndry_out),
        .I2(bus2ip_mreset),
        .I3(E),
        .I4(ip2bus_mstrd_req),
        .I5(IP2Bus_MstRd_Req_reg),
        .O(sig_cmdack_reg_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized0
   (IP2Bus_MstRd_dst_rdy_reg,
    mn_request_set,
    IP2Bus_Mst_Type_reg,
    tft_rst,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    E,
    IP2Bus_MstRd_dst_rdy,
    scndry_out,
    IP2Bus_Mst_Type,
    bus2ip_mst_cmdack,
    bus2ip_mst_cmplt,
    \line_cnt_i_reg[8] ,
    Q,
    get_line_start_d1);
  output IP2Bus_MstRd_dst_rdy_reg;
  output mn_request_set;
  output IP2Bus_Mst_Type_reg;
  input tft_rst;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input [0:0]E;
  input IP2Bus_MstRd_dst_rdy;
  input scndry_out;
  input IP2Bus_Mst_Type;
  input bus2ip_mst_cmdack;
  input bus2ip_mst_cmplt;
  input \line_cnt_i_reg[8] ;
  input [2:0]Q;
  input get_line_start_d1;

  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_MstRd_dst_rdy_reg;
  wire IP2Bus_Mst_Type;
  wire IP2Bus_Mst_Type_reg;
  wire [2:0]Q;
  wire bus2ip_mreset;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire get_line;
  wire get_line_start_d1;
  wire \line_cnt_i_reg[8] ;
  wire m_axi_aclk;
  wire mn_request_set;
  wire p_in_d1_cdc_from;
  wire prmry_in_xored;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_re__0;
  wire scndry_out;
  wire srst_d1;
  wire srst_d2;
  wire srst_d3;
  wire srst_d4;
  wire srst_d5;
  wire sys_tft_clk;
  wire tft_rst;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re__0),
        .Q(get_line),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from),
        .Q(s_out_d1_cdc_to),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(p_in_d1_cdc_from),
        .R(tft_rst));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__2 
       (.I0(p_in_d1_cdc_from),
        .I1(get_line_start_d1),
        .O(prmry_in_xored));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(srst_d1),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d1),
        .Q(srst_d2),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d2),
        .Q(srst_d3),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d3),
        .Q(srst_d4),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d4),
        .Q(srst_d5),
        .R(bus2ip_mreset));
  LUT5 #(
    .INIT(32'h00540000)) 
    IP2Bus_MstRd_dst_rdy_i_1
       (.I0(E),
        .I1(mn_request_set),
        .I2(IP2Bus_MstRd_dst_rdy),
        .I3(bus2ip_mreset),
        .I4(scndry_out),
        .O(IP2Bus_MstRd_dst_rdy_reg));
  LUT5 #(
    .INIT(32'h00000E00)) 
    IP2Bus_Mst_Type_i_1
       (.I0(IP2Bus_Mst_Type),
        .I1(mn_request_set),
        .I2(bus2ip_mreset),
        .I3(scndry_out),
        .I4(bus2ip_mst_cmdack),
        .O(IP2Bus_Mst_Type_reg));
  LUT3 #(
    .INIT(8'h60)) 
    s_out_re
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .I2(srst_d5),
        .O(s_out_re__0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \trans_cnt_i[0]_i_1 
       (.I0(bus2ip_mst_cmplt),
        .I1(\line_cnt_i_reg[8] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(get_line),
        .O(mn_request_set));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized0_2
   (E,
    tft_rst,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    v_bp_cnt_tc);
  output [0:0]E;
  input tft_rst;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input v_bp_cnt_tc;

  wire [0:0]E;
  wire bus2ip_mreset;
  wire m_axi_aclk;
  wire p_in_d1_cdc_from;
  wire prmry_in_xored;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_re__0;
  wire srst_d1;
  wire srst_d2;
  wire srst_d3;
  wire srst_d4;
  wire srst_d5;
  wire sys_tft_clk;
  wire tft_rst;
  wire v_bp_cnt_tc;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re__0),
        .Q(E),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from),
        .Q(s_out_d1_cdc_to),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(p_in_d1_cdc_from),
        .R(tft_rst));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__1 
       (.I0(p_in_d1_cdc_from),
        .I1(v_bp_cnt_tc),
        .O(prmry_in_xored));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(srst_d1),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d1),
        .Q(srst_d2),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d2),
        .Q(srst_d3),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d3),
        .Q(srst_d4),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d4),
        .Q(srst_d5),
        .R(bus2ip_mreset));
  LUT3 #(
    .INIT(8'h60)) 
    s_out_re
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .I2(srst_d5),
        .O(s_out_re__0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized0_3
   (p_in_d1_cdc_from,
    tft_status_i,
    bus2ip_mreset,
    prmry_in_xored,
    m_axi_aclk,
    bus2ip_sreset,
    s_axi_aclk);
  output p_in_d1_cdc_from;
  output tft_status_i;
  input bus2ip_mreset;
  input prmry_in_xored;
  input m_axi_aclk;
  input bus2ip_sreset;
  input s_axi_aclk;

  wire bus2ip_mreset;
  wire bus2ip_sreset;
  wire m_axi_aclk;
  wire p_in_d1_cdc_from;
  wire prmry_in_xored;
  wire s_axi_aclk;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_re__0;
  wire srst_d1;
  wire srst_d2;
  wire srst_d3;
  wire srst_d4;
  wire srst_d5;
  wire tft_status_i;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_re__0),
        .Q(tft_status_i),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from),
        .Q(s_out_d1_cdc_to),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(p_in_d1_cdc_from),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(srst_d1),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(srst_d1),
        .Q(srst_d2),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(srst_d2),
        .Q(srst_d3),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(srst_d3),
        .Q(srst_d4),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(srst_d4),
        .Q(srst_d5),
        .R(bus2ip_sreset));
  LUT3 #(
    .INIT(8'h60)) 
    s_out_re
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .I2(srst_d5),
        .O(s_out_re__0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized0_4
   (SR,
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 ,
    prmry_in_xored,
    ip2intc_irpt_i,
    tft_rst,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    trans_cnt_tc,
    sig_llink2cmd_rd_busy,
    sig_rd_discontinue,
    sig_rd2llink_strm_tlast,
    eof_n,
    p_in_d1_cdc_from,
    scndry_out,
    FDR_IP2INTC_Irpt,
    v_p_cnt_tc);
  output [0:0]SR;
  output [0:0]\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 ;
  output prmry_in_xored;
  output ip2intc_irpt_i;
  input tft_rst;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input trans_cnt_tc;
  input sig_llink2cmd_rd_busy;
  input sig_rd_discontinue;
  input sig_rd2llink_strm_tlast;
  input eof_n;
  input p_in_d1_cdc_from;
  input scndry_out;
  input FDR_IP2INTC_Irpt;
  input v_p_cnt_tc;

  wire FDR_IP2INTC_Irpt;
  wire [0:0]\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 ;
  wire [0:0]SR;
  wire bus2ip_mreset;
  wire eof_n;
  wire ip2intc_irpt_i;
  wire m_axi_aclk;
  wire p_in_d1_cdc_from;
  wire p_in_d1_cdc_from_0;
  wire prmry_in_xored;
  wire prmry_in_xored_1;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_re__0;
  wire scndry_out;
  wire sig_llink2cmd_rd_busy;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd_discontinue;
  wire srst_d1;
  wire srst_d2;
  wire srst_d3;
  wire srst_d4;
  wire srst_d5;
  wire sys_tft_clk;
  wire tft_rst;
  wire trans_cnt_tc;
  wire v_p_cnt_tc;
  wire vsync_intr;

  LUT2 #(
    .INIT(4'h8)) 
    FDR_IP2INTC_Irpt_i_2
       (.I0(vsync_intr),
        .I1(FDR_IP2INTC_Irpt),
        .O(ip2intc_irpt_i));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re__0),
        .Q(vsync_intr),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from_0),
        .Q(s_out_d1_cdc_to),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored_1),
        .Q(p_in_d1_cdc_from_0),
        .R(tft_rst));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1 
       (.I0(vsync_intr),
        .I1(p_in_d1_cdc_from),
        .O(prmry_in_xored));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__0 
       (.I0(p_in_d1_cdc_from_0),
        .I1(v_p_cnt_tc),
        .O(prmry_in_xored_1));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(srst_d1),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d1),
        .Q(srst_d2),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d2),
        .Q(srst_d3),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d3),
        .Q(srst_d4),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(srst_d4),
        .Q(srst_d5),
        .R(bus2ip_mreset));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \line_cnt[0]_i_1 
       (.I0(vsync_intr),
        .I1(scndry_out),
        .I2(bus2ip_mreset),
        .O(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    s_out_re
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .I2(srst_d5),
        .O(s_out_re__0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEEE)) 
    \trans_cnt[0]_i_1 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_0 ),
        .I1(trans_cnt_tc),
        .I2(sig_llink2cmd_rd_busy),
        .I3(sig_rd_discontinue),
        .I4(sig_rd2llink_strm_tlast),
        .I5(eof_n),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized1
   (scndry_vect_out,
    Q,
    m_axi_aclk);
  output [10:0]scndry_vect_out;
  input [10:0]Q;
  input m_axi_aclk;

  wire [10:0]Q;
  wire m_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [10:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized2
   (tft_rst,
    scndry_out,
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ,
    out,
    sys_tft_clk);
  output tft_rst;
  output scndry_out;
  input \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ;
  input out;
  input sys_tft_clk;

  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ;
  wire out;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;
  wire sys_tft_clk;
  wire tft_rst;

  LUT3 #(
    .INIT(8'h7F)) 
    FDS_HSYNC_i_1
       (.I0(scndry_out),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ),
        .I2(out),
        .O(tft_rst));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(sys_tft_clk),
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
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module TinySoC_axi_tft_0_0_cdc_sync__parameterized2_1
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    sys_tft_clk);
  output scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input sys_tft_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;
  wire sys_tft_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(sys_tft_clk),
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
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module TinySoC_axi_tft_0_0_cntr_incr_decr_addn_f
   (Q,
    sig_inhibit_rdy_n,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    m_axi_bvalid,
    out,
    m_axi_aclk);
  output [2:0]Q;
  input sig_inhibit_rdy_n;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input m_axi_bvalid;
  input out;
  input m_axi_aclk;

  wire \INFERRED_GEN.cnt_i[1]_i_1_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_1_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire [2:0]Q;
  wire [0:0]addr_i_p1;
  wire m_axi_aclk;
  wire m_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    Cnt_p10
       (.I0(Q[0]),
        .I1(sig_inhibit_rdy_n),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(m_axi_bvalid),
        .O(addr_i_p1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[0]),
        .I1(m_axi_bvalid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(sig_inhibit_rdy_n),
        .I4(Q[1]),
        .O(\INFERRED_GEN.cnt_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[1]),
        .I1(sig_inhibit_rdy_n),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(m_axi_bvalid),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\INFERRED_GEN.cnt_i[2]_i_1_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1),
        .Q(Q[0]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(out));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module TinySoC_axi_tft_0_0_pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 );
  output ce_expnd_i_3;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module TinySoC_axi_tft_0_0_pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 );
  output ce_expnd_i_1;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;

  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module TinySoC_axi_tft_0_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    state1__2,
    Q,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[3] ,
    s_axi_rdata,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    bus2ip_wrce,
    \TFT_iic_reg_data_reg[7] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    TFT_dps_reg_reg,
    TFT_intr_en_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_wrce_or,
    bus2ip_rdce_or,
    Bus_RNW_reg_reg_0,
    cs_ce_clr,
    s_axi_aclk,
    bus2ip_sreset,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awready,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    s_axi_bready,
    s_axi_rready,
    s_axi_wdata,
    tft_dps,
    prmry_in,
    TFT_intr_en_reg_0,
    D,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_araddr,
    s_axi_awaddr,
    TFT_status_reg_reg,
    \IP2Bus_Data_reg[28] ,
    TFT_status_reg,
    \IP2Bus_Data_reg[0] ,
    TFT_iic_xfer);
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output state1__2;
  output [2:0]Q;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[3] ;
  output [26:0]s_axi_rdata;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [1:0]bus2ip_wrce;
  output \TFT_iic_reg_data_reg[7] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output TFT_dps_reg_reg;
  output TFT_intr_en_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_wrce_or;
  output bus2ip_rdce_or;
  output Bus_RNW_reg_reg_0;
  input cs_ce_clr;
  input s_axi_aclk;
  input bus2ip_sreset;
  input s_axi_rvalid_i_reg_0;
  input s_axi_bvalid_i_reg_0;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_awready;
  input bus2ip_rdce_d1;
  input bus2ip_rdce_d2;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_wdata;
  input tft_dps;
  input prmry_in;
  input TFT_intr_en_reg_0;
  input [0:0]D;
  input [26:0]\s_axi_rdata_i_reg[31]_0 ;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  input TFT_status_reg_reg;
  input [2:0]\IP2Bus_Data_reg[28] ;
  input TFT_status_reg;
  input [0:0]\IP2Bus_Data_reg[0] ;
  input TFT_iic_xfer;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [0:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\IP2Bus_Data_reg[0] ;
  wire [2:0]\IP2Bus_Data_reg[28] ;
  wire [2:0]Q;
  wire TFT_dps_reg_reg;
  wire \TFT_iic_reg_data_reg[7] ;
  wire TFT_iic_xfer;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_sreset;
  wire [1:0]bus2ip_wrce;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_reg_0;
  wire [26:0]s_axi_rdata;
  wire [26:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_reg_0;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[3] ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire tft_dps;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(Q[0]),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(s_axi_awready),
        .I5(Q[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8F8888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(bus2ip_rdce_d1),
        .I3(bus2ip_rdce_d2),
        .I4(Q[2]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(bus2ip_sreset));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(bus2ip_sreset));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(bus2ip_sreset));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(bus2ip_sreset));
  TinySoC_axi_tft_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 (\bus2ip_addr_i_reg_n_0_[3] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 (\bus2ip_addr_i_reg_n_0_[2] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[28] (\IP2Bus_Data_reg[28] ),
        .Q(start2),
        .TFT_dps_reg_reg(TFT_dps_reg_reg),
        .\TFT_iic_reg_data_reg[7] (\TFT_iic_reg_data_reg[7] ),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_intr_en_reg(TFT_intr_en_reg),
        .TFT_intr_en_reg_0(TFT_intr_en_reg_0),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(TFT_status_reg_reg),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce(bus2ip_wrce),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[3] (\s_axi_wdata[3] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .tft_dps(tft_dps));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[0]),
        .I4(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I5(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[1]),
        .I4(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I5(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[3]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[3]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(bus2ip_sreset));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(bus2ip_sreset));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFFFAA00)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(bus2ip_rnw_i),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_reg_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q[2]),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_reg_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_sreset));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_sreset));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module TinySoC_axi_tft_0_0_srl_fifo_f
   (m_axi_bready,
    out,
    m_axi_aclk,
    m_axi_bvalid,
    sig_inhibit_rdy_n);
  output m_axi_bready;
  input out;
  input m_axi_aclk;
  input m_axi_bvalid;
  input sig_inhibit_rdy_n;

  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;

  TinySoC_axi_tft_0_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module TinySoC_axi_tft_0_0_srl_fifo_rbu_f
   (m_axi_bready,
    out,
    m_axi_aclk,
    m_axi_bvalid,
    sig_inhibit_rdy_n);
  output m_axi_bready;
  input out;
  input m_axi_aclk;
  input m_axi_bvalid;
  input sig_inhibit_rdy_n;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire FIFO_Full_reg_n_0;
  wire fifo_full_p1__0;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;
  wire sig_rd_empty;

  TinySoC_axi_tft_0_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.\INFERRED_GEN.cnt_i_reg[0]_0 (FIFO_Full_reg_n_0),
        .Q({sig_rd_empty,CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1__0),
        .Q(FIFO_Full_reg_n_0),
        .R(out));
  LUT6 #(
    .INIT(64'h000000000400A2AA)) 
    fifo_full_p1
       (.I0(CNTR_INCR_DECR_ADDN_F_I_n_1),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg_n_0),
        .I3(m_axi_bvalid),
        .I4(CNTR_INCR_DECR_ADDN_F_I_n_2),
        .I5(sig_rd_empty),
        .O(fifo_full_p1__0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_bready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(m_axi_bready));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_tft_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
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
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_tft_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
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
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_tft_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[3] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[3] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
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
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [9]),
        .I4(\dest_graysync_ff[3] [7]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [8]),
        .I4(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module TinySoC_axi_tft_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[1] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module TinySoC_axi_tft_0_0_xpm_cdc_sync_rst
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
module TinySoC_axi_tft_0_0_xpm_cdc_sync_rst__2
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

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [8:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_2__1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__1_n_0 ),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__1_n_0 ),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(\count_value_i[8]_i_2__1_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(\count_value_i[8]_i_2__1_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[8]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized0
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [8:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair87" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .O(\count_value_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(\count_value_i[8]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(\count_value_i[8]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized1
   (\count_value_i_reg[1]_0 ,
    CO,
    D,
    \count_value_i_reg[0]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[3] ,
    DI,
    S,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    ram_empty_i,
    rd_en,
    rd_clk);
  output \count_value_i_reg[1]_0 ;
  output [0:0]CO;
  output [2:0]D;
  output \count_value_i_reg[0]_0 ;
  input [1:0]Q;
  input [1:0]\grdc.rd_data_count_i_reg[3] ;
  input [0:0]DI;
  input [1:0]S;
  input \count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input ram_empty_i;
  input rd_en;
  input rd_clk;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire \grdc.rd_data_count_i[3]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_7_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_8_n_0 ;
  wire [1:0]\grdc.rd_data_count_i_reg[3] ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0606090A0A000505)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_1 ),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_2 [1]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222022)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[1]_1 ),
        .I2(\count_value_i_reg[1]_2 [0]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[1]_2 [1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFD5BFDD402A4022)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[1]_2 [1]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[1]_2 [0]),
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
  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[3]_i_3 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[3] [1]),
        .O(\grdc.rd_data_count_i[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[3]_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\grdc.rd_data_count_i_reg[3] [0]),
        .O(\grdc.rd_data_count_i[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \grdc.rd_data_count_i[3]_i_7 
       (.I0(\grdc.rd_data_count_i[3]_i_4_n_0 ),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\grdc.rd_data_count_i_reg[3] [1]),
        .I3(Q[1]),
        .O(\grdc.rd_data_count_i[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[3]_i_8 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\grdc.rd_data_count_i_reg[3] [0]),
        .I2(Q[0]),
        .O(\grdc.rd_data_count_i[3]_i_8_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({CO,\grdc.rd_data_count_i_reg[3]_i_1_n_1 ,\grdc.rd_data_count_i_reg[3]_i_1_n_2 ,\grdc.rd_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,\grdc.rd_data_count_i[3]_i_3_n_0 ,\grdc.rd_data_count_i[3]_i_4_n_0 ,Q[0]}),
        .O({D,\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({S,\grdc.rd_data_count_i[3]_i_7_n_0 ,\grdc.rd_data_count_i[3]_i_8_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized2
   (E,
    \count_value_i_reg[8]_0 ,
    \count_value_i_reg[8]_1 ,
    CO,
    D,
    src_in_bin,
    S,
    \count_value_i_reg[6]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    p_1_in,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] ,
    \grdc.rd_data_count_i_reg[9] ,
    DI,
    \grdc.rd_data_count_i_reg[3] ,
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ,
    \count_value_i_reg[9]_0 ,
    rd_clk);
  output [0:0]E;
  output [8:0]\count_value_i_reg[8]_0 ;
  output [1:0]\count_value_i_reg[8]_1 ;
  output [0:0]CO;
  output [8:0]D;
  output [9:0]src_in_bin;
  output [1:0]S;
  output [3:0]\count_value_i_reg[6]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input p_1_in;
  input [8:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] ;
  input [8:0]\grdc.rd_data_count_i_reg[9] ;
  input [0:0]DI;
  input \grdc.rd_data_count_i_reg[3] ;
  input \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  input \count_value_i_reg[9]_0 ;
  input rd_clk;

  wire [0:0]CO;
  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire \count_value_i[6]_i_1__4_n_0 ;
  wire \count_value_i[7]_i_1__4_n_0 ;
  wire \count_value_i[8]_i_1__4_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire [8:0]\count_value_i_reg[8]_0 ;
  wire [1:0]\count_value_i_reg[8]_1 ;
  wire \count_value_i_reg[9]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire [8:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_9_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 ;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire [8:0]\grdc.rd_data_count_i_reg[9] ;
  wire p_1_in;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [9:0]src_in_bin;
  wire [3:1]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF0200FD)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[8]_0 [0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h10FFEF00)) 
    \count_value_i[1]_i_1__4 
       (.I0(rd_en),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[8]_0 [0]),
        .I4(\count_value_i_reg[8]_0 [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \count_value_i[2]_i_1__4 
       (.I0(\count_value_i_reg[8]_0 [1]),
        .I1(\count_value_i_reg[8]_0 [0]),
        .I2(p_1_in),
        .I3(\count_value_i_reg[8]_0 [2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[3]_i_1__4 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .I1(p_1_in),
        .I2(\count_value_i_reg[8]_0 [0]),
        .I3(\count_value_i_reg[8]_0 [1]),
        .I4(\count_value_i_reg[8]_0 [3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count_value_i[4]_i_1__4 
       (.I0(\count_value_i_reg[8]_0 [3]),
        .I1(\count_value_i_reg[8]_0 [1]),
        .I2(\count_value_i_reg[8]_0 [0]),
        .I3(p_1_in),
        .I4(\count_value_i_reg[8]_0 [2]),
        .I5(\count_value_i_reg[8]_0 [4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__4 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .I1(\count_value_i_reg[8]_0 [2]),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(\count_value_i_reg[8]_0 [3]),
        .I4(\count_value_i_reg[8]_0 [5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h5455000000000000)) 
    \count_value_i[5]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\count_value_i_reg[8]_0 [0]),
        .I5(\count_value_i_reg[8]_0 [1]),
        .O(\count_value_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[6]_i_1__4 
       (.I0(\count_value_i[9]_i_2__0_n_0 ),
        .I1(\count_value_i_reg[8]_0 [6]),
        .O(\count_value_i[6]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[7]_i_1__4 
       (.I0(\count_value_i_reg[8]_0 [6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[8]_0 [7]),
        .O(\count_value_i[7]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[8]_i_1__4 
       (.I0(\count_value_i[9]_i_2__0_n_0 ),
        .I1(\count_value_i_reg[8]_0 [6]),
        .I2(\count_value_i_reg[8]_0 [7]),
        .I3(\count_value_i_reg[8]_0 [8]),
        .O(\count_value_i[8]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[9]_i_1__0 
       (.I0(\count_value_i[9]_i_2__0_n_0 ),
        .I1(\count_value_i_reg[8]_0 [8]),
        .I2(\count_value_i_reg[8]_0 [7]),
        .I3(\count_value_i_reg[8]_0 [6]),
        .I4(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .I1(\count_value_i_reg[8]_0 [2]),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(\count_value_i_reg[8]_0 [3]),
        .I4(\count_value_i_reg[8]_0 [5]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg[8]_0 [0]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[8]_0 [8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\count_value_i_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ),
        .CO({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED [3:1],\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_value_i_reg[8]_0 [8]}),
        .O({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED [3:2],src_in_bin[9:8]}),
        .S({1'b0,1'b0,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(\count_value_i_reg[8]_0 [3]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(\count_value_i_reg[8]_0 [1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(\count_value_i_reg[8]_0 [0]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\count_value_i_reg[8]_0 [7:4]),
        .O(src_in_bin[7:4]),
        .S({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.CI(1'b0),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(\count_value_i_reg[8]_0 [3:0]),
        .O(src_in_bin[3:0]),
        .S({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(\count_value_i_reg[8]_0 [8]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\count_value_i_reg[8]_0 [7]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(\count_value_i_reg[8]_0 [6]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(\count_value_i_reg[8]_0 [5]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(\count_value_i_reg[8]_0 [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4 
       (.I0(\count_value_i_reg[8]_0 [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6 
       (.I0(\count_value_i_reg[8]_0 [3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8 
       (.I0(\count_value_i_reg[8]_0 [1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF0200FD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[8]_0 [0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2 
       (.I0(\count_value_i_reg[8]_0 [7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3 
       (.I0(\count_value_i_reg[8]_0 [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4 
       (.I0(\count_value_i_reg[8]_0 [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6 
       (.I0(\count_value_i_reg[8]_0 [7]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7 
       (.I0(\count_value_i_reg[8]_0 [6]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8 
       (.I0(\count_value_i_reg[8]_0 [5]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_2 
       (.I0(\count_value_i_reg[8]_0 [8]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [8]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_2_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [0]),
        .DI({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ,DI}),
        .O(D[3:0]),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CO(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED [3:1],D[8]}),
        .S({1'b0,1'b0,1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_2_n_0 }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\count_value_i_reg[8]_0 [8]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [8]),
        .I2(\count_value_i_reg[8]_0 [7]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [7]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [6]),
        .I5(\count_value_i_reg[8]_0 [6]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(\count_value_i_reg[8]_0 [5]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [5]),
        .I2(\count_value_i_reg[8]_0 [4]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [4]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [3]),
        .I5(\count_value_i_reg[8]_0 [3]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_9 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [2]),
        .I2(\count_value_i_reg[8]_0 [1]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] [0]),
        .I5(\count_value_i_reg[8]_0 [0]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_3 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED [3],CO,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_9_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[3]_i_5 
       (.I0(\count_value_i_reg[8]_0 [2]),
        .I1(\grdc.rd_data_count_i_reg[9] [1]),
        .I2(\count_value_i_reg[8]_0 [3]),
        .I3(\grdc.rd_data_count_i_reg[9] [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \grdc.rd_data_count_i[3]_i_6 
       (.I0(\count_value_i_reg[8]_0 [1]),
        .I1(\grdc.rd_data_count_i_reg[9] [0]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .I3(\count_value_i_reg[8]_0 [2]),
        .I4(\grdc.rd_data_count_i_reg[9] [1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_6 
       (.I0(\count_value_i_reg[8]_0 [6]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .I2(\count_value_i_reg[8]_0 [7]),
        .I3(\grdc.rd_data_count_i_reg[9] [6]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_7 
       (.I0(\count_value_i_reg[8]_0 [5]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .I2(\count_value_i_reg[8]_0 [6]),
        .I3(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg[8]_0 [4]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .I2(\count_value_i_reg[8]_0 [5]),
        .I3(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_9 
       (.I0(\count_value_i_reg[8]_0 [3]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .I2(\count_value_i_reg[8]_0 [4]),
        .I3(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[9]_i_4 
       (.I0(\count_value_i_reg[8]_0 [8]),
        .I1(\grdc.rd_data_count_i_reg[9] [7]),
        .I2(\count_value_i_reg_n_0_[9] ),
        .I3(\grdc.rd_data_count_i_reg[9] [8]),
        .O(\count_value_i_reg[8]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[9]_i_5 
       (.I0(\count_value_i_reg[8]_0 [7]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .I2(\count_value_i_reg[8]_0 [8]),
        .I3(\grdc.rd_data_count_i_reg[9] [7]),
        .O(\count_value_i_reg[8]_1 [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized2_7
   (Q,
    D,
    wrst_busy,
    rst_d1,
    \count_value_i_reg[6]_0 ,
    wr_en,
    \gwdc.wr_data_count_i_reg[9] ,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [9:0]Q;
  output [8:0]D;
  input wrst_busy;
  input rst_d1;
  input \count_value_i_reg[6]_0 ;
  input wr_en;
  input [9:0]\gwdc.wr_data_count_i_reg[9] ;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [8:0]D;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[9]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[9]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire [9:0]\gwdc.wr_data_count_i_reg[9] ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [0:0]\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\count_value_i_reg[6]_0 ),
        .I5(wr_en),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[8]_i_1__1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[9]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[9] [3]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[9] [2]),
        .O(\gwdc.wr_data_count_i[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[9] [1]),
        .O(\gwdc.wr_data_count_i[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[9] [0]),
        .O(\gwdc.wr_data_count_i[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[9] [7]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[9] [6]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[9] [5]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[9] [4]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[9]_i_2 
       (.I0(Q[9]),
        .I1(\gwdc.wr_data_count_i_reg[9] [9]),
        .O(\gwdc.wr_data_count_i[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[9]_i_3 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[9] [8]),
        .O(\gwdc.wr_data_count_i[9]_i_3_n_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({D[2:0],\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\gwdc.wr_data_count_i[3]_i_2_n_0 ,\gwdc.wr_data_count_i[3]_i_3_n_0 ,\gwdc.wr_data_count_i[3]_i_4_n_0 ,\gwdc.wr_data_count_i[3]_i_5_n_0 }));
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[6:3]),
        .S({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }));
  CARRY4 \gwdc.wr_data_count_i_reg[9]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED [3:1],\gwdc.wr_data_count_i_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED [3:2],D[8:7]}),
        .S({1'b0,1'b0,\gwdc.wr_data_count_i[9]_i_2_n_0 ,\gwdc.wr_data_count_i[9]_i_3_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized3
   (ram_empty_i0,
    p_1_in,
    ram_empty_i,
    rd_en,
    Q,
    CO,
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output ram_empty_i0;
  output p_1_in;
  input ram_empty_i;
  input rd_en;
  input [1:0]Q;
  input [0:0]CO;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \count_value_i_reg_n_0_[6] ;
  wire \count_value_i_reg_n_0_[7] ;
  wire \count_value_i_reg_n_0_[8] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 ;
  wire going_empty0;
  wire p_1_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [3:3]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h02FD)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h10FFEF00)) 
    \count_value_i[1]_i_1__3 
       (.I0(rd_en),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \count_value_i[2]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(\count_value_i_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[3]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg_n_0_[1] ),
        .I4(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count_value_i[4]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\count_value_i_reg_n_0_[2] ),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \count_value_i[4]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__3 
       (.I0(\count_value_i[8]_i_2__2_n_0 ),
        .I1(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(\count_value_i[8]_i_2__2_n_0 ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__3 
       (.I0(\count_value_i[8]_i_2__2_n_0 ),
        .I1(\count_value_i_reg_n_0_[5] ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .I3(\count_value_i_reg_n_0_[7] ),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__3 
       (.I0(\count_value_i[8]_i_2__2_n_0 ),
        .I1(\count_value_i_reg_n_0_[7] ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .I3(\count_value_i_reg_n_0_[5] ),
        .I4(\count_value_i_reg_n_0_[8] ),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \count_value_i[8]_i_2__2 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\count_value_i_reg_n_0_[2] ),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[8]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[6] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[7] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[8] ),
        .R(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54550000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(going_empty0),
        .I5(CO),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg_n_0_[8] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [8]),
        .I2(\count_value_i_reg_n_0_[7] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [7]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [6]),
        .I5(\count_value_i_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [5]),
        .I2(\count_value_i_reg_n_0_[4] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [4]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [3]),
        .I5(\count_value_i_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [2]),
        .I2(\count_value_i_reg_n_0_[1] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [1]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [0]),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED [3],going_empty0,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_6_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized3_8
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] ,
    wrst_busy,
    wr_clk);
  output [8:0]Q;
  output [5:0]D;
  input wr_pntr_plus1_pf_carry;
  input [8:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] ;
  input wrst_busy;
  input wr_clk;

  wire [5:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire [8:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i[8]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i[8]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2 
       (.I0(Q[8]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] [8]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0 ));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(wr_pntr_plus1_pf_carry),
        .DI(Q[3:0]),
        .O({D[0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[4:1]),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CO(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED [3:1],D[5]}),
        .S({1'b0,1'b0,1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[9]_i_2_n_0 }));
endmodule

(* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "block" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "512" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_async" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "9" *) (* READ_DATA_WIDTH = "36" *) 
(* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "36" *) (* WR_DATA_COUNT_WIDTH = "9" *) 
(* XPM_MODULE = "TRUE" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_async
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
  input [35:0]din;
  output full;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [35:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
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
  wire [35:0]din;
  wire [35:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
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
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "512" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "18432" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "507" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "507" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* RD_DC_WIDTH_EXT = "10" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "36" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "36" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* WR_DC_WIDTH_EXT = "10" *) 
  (* WR_DEPTH_LOG = "9" *) 
  (* WR_PNTR_WIDTH = "9" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  TinySoC_axi_tft_0_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
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
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) 
(* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "512" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "18432" *) (* FIFO_WRITE_DEPTH = "512" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "507" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "507" *) (* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "9" *) (* RD_DC_WIDTH_EXT = "10" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "9" *) 
(* READ_DATA_WIDTH = "36" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "36" *) (* WR_DATA_COUNT_WIDTH = "9" *) (* WR_DC_WIDTH_EXT = "10" *) 
(* WR_DEPTH_LOG = "9" *) (* WR_PNTR_WIDTH = "9" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_base
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
  input [35:0]din;
  output full;
  output full_n;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [35:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
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
  wire [8:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [8:0]diff_pntr_pe;
  wire [9:4]diff_pntr_pf_q;
  wire [9:4]diff_pntr_pf_q0;
  wire [35:0]din;
  wire [35:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_16 ;
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
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire [9:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [9:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire leaving_empty;
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
  wire [8:0]rd_data_count;
  wire rd_en;
  wire [8:0]rd_pntr_ext;
  wire [8:0]rd_pntr_wr;
  wire [8:0]rd_pntr_wr_cdc;
  wire [9:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_32;
  wire rdp_inst_n_33;
  wire rdp_inst_n_34;
  wire rdp_inst_n_35;
  wire rdp_inst_n_36;
  wire rdp_inst_n_37;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire [9:0]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire [9:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [8:0]wr_pntr_rd_cdc;
  wire [9:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [35:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h69C1)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
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
  TinySoC_axi_tft_0_0_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
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
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  TinySoC_axi_tft_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .d_out_reg(\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (rst_d1_inst_n_2),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 (count_value_i),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 (wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_fifo_reg_vec_5 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (rd_rst_busy));
  TinySoC_axi_tft_0_0_xpm_fifo_reg_vec__parameterized0_6 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.CO(\gen_fwft.rdpp1_inst_n_1 ),
        .D(\grdc.diff_wr_rd_pntr_rdc [9:4]),
        .DI(\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .S({rdp_inst_n_34,rdp_inst_n_35,rdp_inst_n_36,rdp_inst_n_37}),
        .\grdc.rd_data_count_i_reg[9] (rd_pntr_ext[7:2]),
        .\grdc.rd_data_count_i_reg[9]_0 ({rdp_inst_n_10,rdp_inst_n_11}),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[9]_0 (rd_rst_busy),
        .\reg_out_i_reg[9]_1 (wr_pntr_rd_cdc_dc));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
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
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[8:0]));
  LUT4 #(
    .INIT(16'hC8AA)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
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
    .INIT(32'hBAA2AA22)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(almost_empty),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .I4(rd_en),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
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
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.CO(\gen_fwft.rdpp1_inst_n_1 ),
        .D(\grdc.diff_wr_rd_pntr_rdc [3:1]),
        .DI(\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .S({rdp_inst_n_32,rdp_inst_n_33}),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_5 ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_0 ),
        .\count_value_i_reg[1]_1 (rd_rst_busy),
        .\count_value_i_reg[1]_2 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[3] (rd_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
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
        .D(\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .Q(full),
        .S(wrst_busy));
  LUT4 #(
    .INIT(16'hABAA)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .R(rd_rst_busy));
  LUT4 #(
    .INIT(16'h88B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(diff_pntr_pf_q[6]),
        .I1(diff_pntr_pf_q[5]),
        .I2(diff_pntr_pf_q[9]),
        .I3(diff_pntr_pf_q[4]),
        .I4(diff_pntr_pf_q[7]),
        .I5(diff_pntr_pf_q[8]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
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
  (* ADDR_WIDTH_A = "9" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "36" *) 
  (* BYTE_WRITE_WIDTH_B = "36" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "35" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "36" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "18432" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "512" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "36" *) 
  (* P_MIN_WIDTH_DATA_A = "36" *) 
  (* P_MIN_WIDTH_DATA_B = "36" *) 
  (* P_MIN_WIDTH_DATA_ECC = "36" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "36" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "9" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "9" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "36" *) 
  (* P_WIDTH_COL_WRITE_B = "36" *) 
  (* READ_DATA_WIDTH_A = "36" *) 
  (* READ_DATA_WIDTH_B = "36" *) 
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
  (* WRITE_DATA_WIDTH_A = "36" *) 
  (* WRITE_DATA_WIDTH_B = "36" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  TinySoC_axi_tft_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[8:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [35:0]),
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
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[8]),
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
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [8]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [9]),
        .Q(wr_data_count[8]),
        .R(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized2 rdp_inst
       (.CO(leaving_empty),
        .D(diff_pntr_pe),
        .DI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ),
        .E(ram_rd_en_i),
        .Q(curr_fwft_state),
        .S({rdp_inst_n_32,rdp_inst_n_33}),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_34,rdp_inst_n_35,rdp_inst_n_36,rdp_inst_n_37}),
        .\count_value_i_reg[8]_0 (rd_pntr_ext),
        .\count_value_i_reg[8]_1 ({rdp_inst_n_10,rdp_inst_n_11}),
        .\count_value_i_reg[9]_0 (rd_rst_busy),
        .\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 (\gen_fwft.rdpp1_inst_n_5 ),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] ({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[9] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 }),
        .p_1_in(p_1_in),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.CO(leaving_empty),
        .E(ram_rd_en_i),
        .Q(curr_fwft_state),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .p_1_in(p_1_in),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  TinySoC_axi_tft_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.d_out_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (rst_d1_inst_n_2),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized2_7 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[6]_0 (full),
        .\gwdc.wr_data_count_i_reg[9] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized3_8 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  TinySoC_axi_tft_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\grdc.rd_data_count_i0 ),
        .clr_full(clr_full),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_wr_rst_ic_reg_0 (xpm_fifo_rst_inst_n_2),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_reg_bit
   (rst_d1,
    d_out_reg_0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    overflow_i0,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    wrst_busy,
    wr_clk,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    rst,
    \gof.overflow_i_reg ,
    prog_full,
    wr_en);
  output rst_d1;
  output d_out_reg_0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output overflow_i0;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  input wrst_busy;
  input wr_clk;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input rst;
  input \gof.overflow_i_reg ;
  input prog_full;
  input wr_en;

  wire d_out_reg_0;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1131)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(\gof.overflow_i_reg ),
        .I1(rst),
        .I2(rst_d1),
        .I3(wrst_busy),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'hCF8A008A)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I1(rst),
        .I2(rst_d1),
        .I3(\gof.overflow_i_reg ),
        .I4(prog_full),
        .O(d_out_reg_0));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gof.overflow_i_reg ),
        .I2(rst_d1),
        .I3(wrst_busy),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(\gof.overflow_i_reg ),
        .I1(rst_d1),
        .I2(wrst_busy),
        .I3(wr_en),
        .O(overflow_i0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(rst_d1),
        .I1(wrst_busy),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    Q,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    clr_full,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    almost_full,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 ,
    rst,
    rst_d1,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  output [8:0]Q;
  output d_out_reg;
  input wr_pntr_plus1_pf_carry;
  input clr_full;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input almost_full;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 ;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 ;
  input [8:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 ;
  input rst;
  input rst_d1;
  input wrst_busy;
  input [8:0]D;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire almost_full;
  wire clr_full;
  wire d_out_reg;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [8:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_3 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 ;
  wire going_afull0;
  wire leaving_afull;
  wire leaving_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:3]\NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00EAFFFF00EA0000)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(leaving_afull),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(going_afull0),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [7]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [6]),
        .I5(Q[6]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [4]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [3]),
        .I5(Q[3]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [1]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_0 [0]),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0 ));
  CARRY4 \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_CO_UNCONNECTED [3],going_afull0,\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_2 ,\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ,\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ,\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_7_n_0 }));
  LUT5 #(
    .INIT(32'hEA00EAEA)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(leaving_full),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(leaving_afull),
        .I3(rst),
        .I4(rst_d1),
        .O(d_out_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [7]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [6]),
        .I5(Q[6]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [4]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [3]),
        .I5(Q[3]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [1]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_0 [0]),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [7]),
        .I2(Q[8]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [8]),
        .I4(Q[6]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [6]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [4]),
        .I2(Q[5]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [5]),
        .I4(Q[3]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [3]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [1]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [2]),
        .I4(Q[0]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_0 [0]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED [3],leaving_full,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 }));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED [3],leaving_afull,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 }));
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
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_reg_vec_5
   (Q,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output [8:0]Q;
  input \reg_out_i_reg[0]_0 ;
  input [8:0]D;
  input rd_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire rd_clk;
  wire \reg_out_i_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [9:0]Q;
  input wrst_busy;
  input [9:0]D;
  input wr_clk;

  wire [9:0]D;
  wire [9:0]Q;
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
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_reg_vec__parameterized0_6
   (Q,
    D,
    DI,
    \grdc.rd_data_count_i_reg[9] ,
    CO,
    S,
    \grdc.rd_data_count_i_reg[9]_0 ,
    \reg_out_i_reg[9]_0 ,
    \reg_out_i_reg[9]_1 ,
    rd_clk);
  output [9:0]Q;
  output [5:0]D;
  output [0:0]DI;
  input [5:0]\grdc.rd_data_count_i_reg[9] ;
  input [0:0]CO;
  input [3:0]S;
  input [1:0]\grdc.rd_data_count_i_reg[9]_0 ;
  input \reg_out_i_reg[9]_0 ;
  input [9:0]\reg_out_i_reg[9]_1 ;
  input rd_clk;

  wire [0:0]CO;
  wire [5:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [3:0]S;
  wire \grdc.rd_data_count_i[7]_i_2_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_5_n_0 ;
  wire \grdc.rd_data_count_i[9]_i_3_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_3 ;
  wire [5:0]\grdc.rd_data_count_i_reg[9] ;
  wire [1:0]\grdc.rd_data_count_i_reg[9]_0 ;
  wire \grdc.rd_data_count_i_reg[9]_i_2_n_3 ;
  wire rd_clk;
  wire \reg_out_i_reg[9]_0 ;
  wire [9:0]\reg_out_i_reg[9]_1 ;
  wire [3:1]\NLW_grdc.rd_data_count_i_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_grdc.rd_data_count_i_reg[9]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9] [0]),
        .O(DI));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\grdc.rd_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\grdc.rd_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .O(\grdc.rd_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [1]),
        .O(\grdc.rd_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[9]_i_3 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\grdc.rd_data_count_i[9]_i_3_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[7]_i_1 
       (.CI(CO),
        .CO({\grdc.rd_data_count_i_reg[7]_i_1_n_0 ,\grdc.rd_data_count_i_reg[7]_i_1_n_1 ,\grdc.rd_data_count_i_reg[7]_i_1_n_2 ,\grdc.rd_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\grdc.rd_data_count_i[7]_i_2_n_0 ,\grdc.rd_data_count_i[7]_i_3_n_0 ,\grdc.rd_data_count_i[7]_i_4_n_0 ,\grdc.rd_data_count_i[7]_i_5_n_0 }),
        .O(D[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[9]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_grdc.rd_data_count_i_reg[9]_i_2_CO_UNCONNECTED [3:1],\grdc.rd_data_count_i_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\grdc.rd_data_count_i[9]_i_3_n_0 }),
        .O({\NLW_grdc.rd_data_count_i_reg[9]_i_2_O_UNCONNECTED [3:2],D[5:4]}),
        .S({1'b0,1'b0,\grdc.rd_data_count_i_reg[9]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[9]_1 [9]),
        .Q(Q[9]),
        .R(\reg_out_i_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module TinySoC_axi_tft_0_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    \gen_rst_ic.fifo_wr_rst_ic_reg_0 ,
    clr_full,
    SR,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    Q,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output \gen_rst_ic.fifo_wr_rst_ic_reg_0 ;
  output clr_full;
  output [0:0]SR;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input [1:0]Q;
  input rd_en;
  input \guf.underflow_i_reg ;

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
  wire clr_full;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hFF101010)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4F4F4F4F4)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\gen_rst_ic.rst_seq_reentered ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(rst),
        .I3(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(wrst_busy),
        .I1(rst_d1),
        .I2(rst),
        .O(clr_full));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
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
    .INIT(64'hFEFCFEFFFEFCFEF0)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\gen_rst_ic.rst_seq_reentered ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
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
  TinySoC_axi_tft_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
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
    .INIT(64'hFFFEFFFFFFFEFFFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
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
  TinySoC_axi_tft_0_0_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \grdc.rd_data_count_i[9]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(rd_en),
        .I2(\guf.underflow_i_reg ),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst),
        .I1(\gen_rst_ic.fifo_wr_rst_ic ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\gwack.wr_ack_i_reg ),
        .I5(wr_en),
        .O(\gen_rst_ic.fifo_wr_rst_ic_reg_0 ));
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
endmodule

(* ADDR_WIDTH_A = "9" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "36" *) (* BYTE_WRITE_WIDTH_B = "36" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "2" *) 
(* MEMORY_SIZE = "18432" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "512" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "36" *) 
(* P_MIN_WIDTH_DATA_A = "36" *) (* P_MIN_WIDTH_DATA_B = "36" *) (* P_MIN_WIDTH_DATA_ECC = "36" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "36" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "9" *) (* P_WIDTH_ADDR_READ_B = "9" *) 
(* P_WIDTH_ADDR_WRITE_A = "9" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) (* P_WIDTH_COL_WRITE_A = "36" *) 
(* P_WIDTH_COL_WRITE_B = "36" *) (* READ_DATA_WIDTH_A = "36" *) (* READ_DATA_WIDTH_B = "36" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "36" *) (* WRITE_DATA_WIDTH_B = "36" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module TinySoC_axi_tft_0_0_xpm_memory_base
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
  input [8:0]addra;
  input [35:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [35:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [35:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [35:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [35:0]dina;
  wire [35:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
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
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "18432" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
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
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP(dina[33:32]),
        .DIPBDIP(dina[35:34]),
        .DOADO(doutb[15:0]),
        .DOBDO(doutb[31:16]),
        .DOPADOP(doutb[33:32]),
        .DOPBDOP(doutb[35:34]),
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
