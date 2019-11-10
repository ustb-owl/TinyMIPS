// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 22:45:24 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_axi_bram_ctrl_0_0/TinySoC_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : TinySoC_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TinySoC_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module TinySoC_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 60000000, ID_WIDTH 0, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [14:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [14:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [14:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;

  wire [14:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [14:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "13" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "8192" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  TinySoC_axi_bram_ctrl_0_0_axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[14:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module TinySoC_axi_bram_ctrl_0_0_SRL_FIFO
   (bid_gets_fifo_load,
    bvalid_cnt_inc,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    \axi_bid_int_reg[0] ,
    \Addr_Counters[3].FDRE_I_0 ,
    s_axi_aclk,
    s_axi_awid,
    AW2Arb_BVALID_Cnt,
    Data_Exists_DFF_0,
    p_1_out,
    bid_gets_fifo_load_d1_reg,
    aw_active_re,
    bid_gets_fifo_load_d1,
    s_axi_bready,
    \axi_bid_int_reg[0]_0 ,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ,
    s_axi_wlast,
    s_axi_wvalid,
    axi_wdata_full_reg,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ,
    axi_wr_burst,
    s_axi_bid);
  output bid_gets_fifo_load;
  output bvalid_cnt_inc;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  output \axi_bid_int_reg[0] ;
  input \Addr_Counters[3].FDRE_I_0 ;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input [2:0]AW2Arb_BVALID_Cnt;
  input Data_Exists_DFF_0;
  input p_1_out;
  input bid_gets_fifo_load_d1_reg;
  input aw_active_re;
  input bid_gets_fifo_load_d1;
  input s_axi_bready;
  input \axi_bid_int_reg[0]_0 ;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ;
  input s_axi_wlast;
  input s_axi_wvalid;
  input axi_wdata_full_reg;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  input axi_wr_burst;
  input [0:0]s_axi_bid;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire D;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_3_n_0;
  wire Data_Exists_DFF_i_4_n_0;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active_re;
  wire \axi_bid_int[0]_i_2_n_0 ;
  wire \axi_bid_int[0]_i_3_n_0 ;
  wire \axi_bid_int_reg[0] ;
  wire \axi_bid_int_reg[0]_0 ;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_reg;
  wire bvalid_cnt_inc;
  wire p_1_out;
  wire s_axi_aclk;
  wire [0:0]s_axi_awid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[0]_i_2_n_0 ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(aw_active_re),
        .I1(\axi_bid_int[0]_i_2_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .I4(\Addr_Counters[3].FDRE_I_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(CI));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[0]_i_2_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[0]_i_2_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[0]_i_2_n_0 ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(bid_fifo_not_empty),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT5 #(
    .INIT(32'hFFF20022)) 
    Data_Exists_DFF_i_1
       (.I0(p_1_out),
        .I1(Data_Exists_DFF_0),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_i_3_n_0),
        .I4(bid_fifo_not_empty),
        .O(D));
  LUT6 #(
    .INIT(64'h000000000000FEFF)) 
    Data_Exists_DFF_i_2
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(bvalid_cnt_inc),
        .I4(Data_Exists_DFF_i_4_n_0),
        .I5(bid_gets_fifo_load_d1),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    Data_Exists_DFF_i_4
       (.I0(\axi_bid_int_reg[0]_0 ),
        .I1(s_axi_bready),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(AW2Arb_BVALID_Cnt[2]),
        .O(Data_Exists_DFF_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid),
        .Q(bid_fifo_rd));
  LUT4 #(
    .INIT(16'h08A8)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ));
  LUT6 #(
    .INIT(64'hFFF0808080808080)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .I4(p_1_out),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .O(bvalid_cnt_inc));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \axi_bid_int[0]_i_1 
       (.I0(s_axi_awid),
        .I1(bid_fifo_rd),
        .I2(bid_gets_fifo_load),
        .I3(\axi_bid_int[0]_i_2_n_0 ),
        .I4(s_axi_bid),
        .O(\axi_bid_int_reg[0] ));
  LUT6 #(
    .INIT(64'hAAA8A8A88A888888)) 
    \axi_bid_int[0]_i_2 
       (.I0(bid_fifo_not_empty),
        .I1(bid_gets_fifo_load_d1),
        .I2(\axi_bid_int[0]_i_3_n_0 ),
        .I3(s_axi_bready),
        .I4(\axi_bid_int_reg[0]_0 ),
        .I5(bvalid_cnt_inc),
        .O(\axi_bid_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \axi_bid_int[0]_i_3 
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .O(\axi_bid_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000202020)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(bvalid_cnt_inc),
        .I1(Data_Exists_DFF_0),
        .I2(p_1_out),
        .I3(bid_fifo_not_empty),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .I5(bid_gets_fifo_load_d1_reg),
        .O(bid_gets_fifo_load));
endmodule

(* C_BRAM_ADDR_WIDTH = "13" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "artix7" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "8192" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "1" *) (* C_SELECT_XPM = "1" *) (* C_SINGLE_PORT_BRAM = "1" *) 
(* C_S_AXI_ADDR_WIDTH = "15" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) 
(* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) (* ORIG_REF_NAME = "axi_bram_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module TinySoC_axi_bram_ctrl_0_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [14:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [14:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[14:2] = \^bram_addr_a [14:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[14] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  TinySoC_axi_bram_ctrl_0_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_rst_a(bram_rst_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module TinySoC_axi_bram_ctrl_0_0_axi_bram_ctrl_top
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    bram_rst_a,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    bram_addr_a,
    s_axi_wready,
    bram_we_a,
    s_axi_bid,
    s_axi_rid,
    bram_en_a,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_awid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_arburst,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_araddr,
    s_axi_awlen,
    s_axi_arsize,
    s_axi_arlen);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output bram_rst_a;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output [12:0]bram_addr_a;
  output s_axi_wready;
  output [3:0]bram_we_a;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_a;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [31:0]bram_rddata_a;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_awsize;
  input [14:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire axi_bvalid_int_reg;
  wire [12:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  TinySoC_axi_bram_ctrl_0_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .SR(bram_rst_a),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module TinySoC_axi_bram_ctrl_0_0_full_axi
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    SR,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    bram_addr_a,
    s_axi_wready,
    bram_we_a,
    s_axi_bid,
    s_axi_rid,
    bram_en_a,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_awid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_arburst,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_araddr,
    s_axi_awlen,
    s_axi_arsize,
    s_axi_arlen);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output [0:0]SR;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output [12:0]bram_addr_a;
  output s_axi_wready;
  output [3:0]bram_we_a;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_a;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [31:0]bram_rddata_a;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_awsize;
  input [14:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ;
  wire AW2Arb_Active_Clr;
  wire \GEN_ARB.I_SNG_PORT_n_0 ;
  wire \GEN_ARB.I_SNG_PORT_n_12 ;
  wire \GEN_ARB.I_SNG_PORT_n_4 ;
  wire \GEN_ARB.I_SNG_PORT_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire I_RD_CHNL_n_38;
  wire I_RD_CHNL_n_39;
  wire I_RD_CHNL_n_40;
  wire I_RD_CHNL_n_41;
  wire I_RD_CHNL_n_52;
  wire I_RD_CHNL_n_53;
  wire I_RD_CHNL_n_54;
  wire I_RD_CHNL_n_55;
  wire I_RD_CHNL_n_56;
  wire I_RD_CHNL_n_57;
  wire I_WR_CHNL_n_36;
  wire I_WR_CHNL_n_37;
  wire I_WR_CHNL_n_38;
  wire I_WR_CHNL_n_40;
  wire I_WR_CHNL_n_41;
  wire I_WR_CHNL_n_51;
  wire I_WR_CHNL_n_52;
  wire I_WR_CHNL_n_53;
  wire I_WR_CHNL_n_54;
  wire I_WR_CHNL_n_55;
  wire I_WR_CHNL_n_56;
  wire I_WR_CHNL_n_57;
  wire I_WR_CHNL_n_58;
  wire I_WR_CHNL_n_59;
  wire [0:0]SR;
  wire ar_active_d1;
  wire ar_active_re;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_bvalid_int_reg;
  wire [12:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire curr_narrow_burst_en;
  wire p_0_out;
  wire [9:0]p_1_in;
  wire p_1_out;
  wire [14:6]p_2_in;
  wire [3:0]p_4_in;
  wire p_5_in;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(bram_addr_a[7]),
        .I1(bram_addr_a[5]),
        .I2(I_RD_CHNL_n_52),
        .I3(bram_addr_a[4]),
        .I4(bram_addr_a[6]),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(bram_addr_a[8]),
        .I1(bram_addr_a[6]),
        .I2(bram_addr_a[4]),
        .I3(I_RD_CHNL_n_52),
        .I4(bram_addr_a[5]),
        .I5(bram_addr_a[7]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(bram_addr_a[1]),
        .I1(bram_addr_a[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(bram_addr_a[4]),
        .I1(bram_addr_a[3]),
        .I2(bram_addr_a[2]),
        .I3(bram_addr_a[0]),
        .I4(bram_addr_a[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(bram_addr_a[5]),
        .I1(bram_addr_a[1]),
        .I2(bram_addr_a[0]),
        .I3(bram_addr_a[2]),
        .I4(bram_addr_a[3]),
        .I5(bram_addr_a[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(bram_addr_a[6]),
        .I1(bram_addr_a[4]),
        .I2(I_RD_CHNL_n_52),
        .I3(bram_addr_a[5]),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[8]),
        .Q(bram_addr_a[8]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[9]),
        .Q(bram_addr_a[9]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_RD_CHNL_n_40),
        .Q(bram_addr_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_RD_CHNL_n_39),
        .Q(bram_addr_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_RD_CHNL_n_38),
        .Q(bram_addr_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[0]),
        .Q(bram_addr_a[0]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[1]),
        .Q(bram_addr_a[1]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[2]),
        .Q(bram_addr_a[2]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[3]),
        .Q(bram_addr_a[3]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[4]),
        .Q(bram_addr_a[4]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[5]),
        .Q(bram_addr_a[5]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[6]),
        .Q(bram_addr_a[6]),
        .R(I_WR_CHNL_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_53),
        .D(p_1_in[7]),
        .Q(bram_addr_a[7]),
        .R(I_WR_CHNL_n_37));
  TinySoC_axi_bram_ctrl_0_0_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .\FSM_sequential_arb_sm_cs_reg[0]_0 (I_WR_CHNL_n_59),
        .\FSM_sequential_arb_sm_cs_reg[0]_1 (I_RD_CHNL_n_57),
        .\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 (I_WR_CHNL_n_41),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0] (I_WR_CHNL_n_54),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (I_WR_CHNL_n_56),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (I_WR_CHNL_n_55),
        .\GEN_NARROW_EN.curr_narrow_burst_reg (I_WR_CHNL_n_57),
        .\GEN_NARROW_EN.curr_narrow_burst_reg_0 (I_WR_CHNL_n_58),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 (I_RD_CHNL_n_41),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] (I_RD_CHNL_n_54),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (I_RD_CHNL_n_56),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (I_RD_CHNL_n_55),
        .Q(p_4_in),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .ar_active_reg_0(\GEN_ARB.I_SNG_PORT_n_12 ),
        .ar_active_reg_1(SR),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .axi_arready_int_reg_0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .bram_we_a(bram_we_a),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[1:0]),
        .s_axi_araddr_1_sp_1(\GEN_ARB.I_SNG_PORT_n_5 ),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arburst_0_sp_1(\GEN_ARB.I_SNG_PORT_n_4 ),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[1:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awburst_0_sp_1(\GEN_ARB.I_SNG_PORT_n_0 ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready));
  TinySoC_axi_bram_ctrl_0_0_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_WR_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (I_WR_CHNL_n_38),
        .\ADDR_SNG_PORT.bram_addr_int_reg[12] (I_RD_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 (I_WR_CHNL_n_37),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13] (I_RD_CHNL_n_39),
        .\ADDR_SNG_PORT.bram_addr_int_reg[14] (I_RD_CHNL_n_38),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_WR_CHNL_n_36),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (I_RD_CHNL_n_52),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 (I_WR_CHNL_n_53),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (I_WR_CHNL_n_52),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (I_WR_CHNL_n_51),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ),
        .D(p_2_in),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 (\GEN_ARB.I_SNG_PORT_n_12 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_ARB.I_SNG_PORT_n_4 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (\GEN_ARB.I_SNG_PORT_n_5 ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .ar_active_reg(I_RD_CHNL_n_53),
        .bram_addr_a(bram_addr_a),
        .bram_rddata_a(bram_rddata_a),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in),
        .p_5_in(p_5_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlen_5_sp_1(I_RD_CHNL_n_54),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arsize_0_sp_1(I_RD_CHNL_n_56),
        .s_axi_arsize_1_sp_1(I_RD_CHNL_n_55),
        .s_axi_arsize_2_sp_1(I_RD_CHNL_n_41),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(I_RD_CHNL_n_57));
  TinySoC_axi_bram_ctrl_0_0_wr_chnl I_WR_CHNL
       (.AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .D(p_2_in),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 (I_WR_CHNL_n_37),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_ARB.I_SNG_PORT_n_0 ),
        .\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 (I_WR_CHNL_n_40),
        .Q(p_4_in),
        .aw_active_d1(aw_active_d1),
        .aw_active_d1_reg_0(I_WR_CHNL_n_36),
        .aw_active_d1_reg_1(I_WR_CHNL_n_38),
        .aw_active_re(aw_active_re),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a[2:0]),
        .bram_en_a(bram_en_a),
        .bram_wrdata_a(bram_wrdata_a),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .p_1_out(p_1_out),
        .p_5_in(p_5_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr({s_axi_awaddr[14:3],s_axi_awaddr[1:0]}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlen_2_sp_1(I_WR_CHNL_n_57),
        .s_axi_awlen_3_sp_1(I_WR_CHNL_n_58),
        .s_axi_awsize(s_axi_awsize),
        .\s_axi_awsize[0]_0 (I_WR_CHNL_n_56),
        .s_axi_awsize_0_sp_1(I_WR_CHNL_n_41),
        .s_axi_awsize_1_sp_1(I_WR_CHNL_n_54),
        .s_axi_awsize_2_sp_1(I_WR_CHNL_n_55),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(I_WR_CHNL_n_59),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld[14]_i_3__0 (I_RD_CHNL_n_52),
        .\save_init_bram_addr_ld_reg[4] (I_WR_CHNL_n_52),
        .\save_init_bram_addr_ld_reg[5] (I_WR_CHNL_n_51),
        .\wrap_burst_total_reg[0] (I_WR_CHNL_n_53),
        .\wrap_burst_total_reg[0]_0 (SR));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module TinySoC_axi_bram_ctrl_0_0_rd_chnl
   (s_axi_aresetn_0,
    s_axi_rdata,
    ar_active_d1,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    s_axi_rid,
    p_5_in,
    \ADDR_SNG_PORT.bram_addr_int_reg[14] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[12] ,
    s_axi_arsize_2_sp_1,
    p_1_in,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    ar_active_reg,
    s_axi_arlen_5_sp_1,
    s_axi_arsize_1_sp_1,
    s_axi_arsize_0_sp_1,
    s_axi_rready_0,
    s_axi_aclk,
    ar_active_re,
    s_axi_arid,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ,
    p_0_out,
    s_axi_aresetn,
    s_axi_rready,
    bram_addr_a,
    D,
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ,
    s_axi_arburst,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ,
    s_axi_araddr,
    s_axi_awaddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    s_axi_arsize,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    s_axi_arlen,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    bram_rddata_a);
  output s_axi_aresetn_0;
  output [31:0]s_axi_rdata;
  output ar_active_d1;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output [0:0]s_axi_rid;
  output p_5_in;
  output \ADDR_SNG_PORT.bram_addr_int_reg[14] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[12] ;
  output s_axi_arsize_2_sp_1;
  output [9:0]p_1_in;
  output \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  output ar_active_reg;
  output s_axi_arlen_5_sp_1;
  output s_axi_arsize_1_sp_1;
  output s_axi_arsize_0_sp_1;
  output s_axi_rready_0;
  input s_axi_aclk;
  input ar_active_re;
  input [0:0]s_axi_arid;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  input p_0_out;
  input s_axi_aresetn;
  input s_axi_rready;
  input [12:0]bram_addr_a;
  input [8:0]D;
  input \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ;
  input [1:0]s_axi_arburst;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  input [14:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input [2:0]s_axi_arsize;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input [7:0]s_axi_arlen;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input [31:0]bram_rddata_a;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[12] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[14] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire [8:0]D;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active_d1;
  wire ar_active_re;
  wire ar_active_reg;
  wire axi_rd_burst;
  wire axi_rdata_en;
  wire axi_rid_temp;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [12:0]bram_addr_a;
  wire [31:0]bram_rddata_a;
  wire [7:0]brst_cnt;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire end_brst_rd_clr_cmb;
  wire last_bram_addr;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [1:0]narrow_burst_cnt_ld_mod;
  wire [1:0]narrow_burst_cnt_ld_reg;
  wire p_0_in;
  wire p_0_out;
  wire p_15_out16_out;
  wire [9:0]p_1_in;
  wire [7:0]p_1_in__0;
  wire p_5_in;
  wire pend_rd_op;
  wire [3:0]rd_data_sm_cs;
  wire [3:0]rd_data_sm_ns;
  wire [31:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlen_5_sn_1;
  wire [2:0]s_axi_arsize;
  wire s_axi_arsize_0_sn_1;
  wire s_axi_arsize_1_sn_1;
  wire s_axi_arsize_2_sn_1;
  wire [0:0]s_axi_awaddr;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire s_axi_rready_0;

  assign s_axi_arlen_5_sp_1 = s_axi_arlen_5_sn_1;
  assign s_axi_arsize_0_sp_1 = s_axi_arsize_0_sn_1;
  assign s_axi_arsize_1_sp_1 = s_axi_arsize_1_sn_1;
  assign s_axi_arsize_2_sp_1 = s_axi_arsize_2_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000100FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(narrow_addr_int[1]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_bram_addr_inc_d1),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I4(curr_narrow_burst),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D03FF03FF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'hF700F700F7000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(ar_active_re),
        .I3(rd_data_sm_cs[2]),
        .I4(act_rd_burst),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDD00000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .I2(pend_rd_op),
        .I3(ar_active_re),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000013FF02FF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .O(rd_data_sm_ns[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAFFAAAABABB)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004444455555555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ),
        .I2(rd_data_sm_cs[1]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD1D1D1D1F3F3F3FF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(brst_zero),
        .I4(end_brst_rd),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE000E0E0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(ar_active_re),
        .I1(rd_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I4(rd_data_sm_cs[0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000A00000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00010001F3507350)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(act_rd_burst),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I4(s_axi_rready),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[1]),
        .Q(rd_data_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ),
        .Q(rd_data_sm_cs[2]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(rd_data_sm_cs[3]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF0F0F0F4F005F004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500005555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004FF050004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515150015155555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF04FFF0F004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .Q(ar_active_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00B00000)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(s_axi_aresetn),
        .I3(end_brst_rd_clr),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00404040)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(pend_rd_op),
        .I1(brst_zero),
        .I2(p_0_out),
        .I3(curr_narrow_burst),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I1(curr_narrow_burst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF3FFF350035FF3)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .I5(s_axi_arsize[2]),
        .O(s_axi_arlen_5_sn_1));
  LUT6 #(
    .INIT(64'hE2E2B8B8E2FF8888)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I1(s_axi_arsize[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(s_axi_arsize_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF141714D7)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I4(s_axi_arsize[2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .O(s_axi_arsize_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_10 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC80FCFCFC800000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5575557555750000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(ar_active_re),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I5(narrow_bram_addr_inc_d1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ),
        .I5(s_axi_arlen_5_sn_1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFAFAFFFAFAAAE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h10031FF3)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8 
       (.I0(s_axi_arsize[2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA00CAFF0A000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I5(s_axi_arsize[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .Q(narrow_addr_int[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .Q(narrow_addr_int[1]),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .O(narrow_bram_addr_inc));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(curr_narrow_burst),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(narrow_burst_cnt_ld_reg[0]),
        .O(narrow_burst_cnt_ld_mod[0]));
  LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(narrow_burst_cnt_ld_reg[1]),
        .O(narrow_burst_cnt_ld_mod[1]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[0]),
        .Q(narrow_burst_cnt_ld_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[1]),
        .Q(narrow_burst_cnt_ld_reg[1]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h0000FFBA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(pend_rd_op),
        .I1(ar_active_d1),
        .I2(p_0_out),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7777755577777)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(s_axi_aresetn),
        .I1(curr_narrow_burst),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arburst[1]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ),
        .I5(s_axi_arsize_2_sn_1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_a[0]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_a[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_a[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_a[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_a[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_a[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_a[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_a[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_a[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_a[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_a[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_a[1]),
        .I2(rddata_mux_sel),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(p_0_in),
        .Q(s_axi_rdata[1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_a[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_a[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_a[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_a[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_a[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_a[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_a[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_a[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_a[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_a[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_a[2]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_a[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02040004070C070C)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_a[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 
       (.I0(act_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_a[3]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_a[4]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_a[5]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_a[6]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_a[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_a[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_a[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[0]),
        .Q(rd_skid_buf[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[10]),
        .Q(rd_skid_buf[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[11]),
        .Q(rd_skid_buf[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[12]),
        .Q(rd_skid_buf[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[13]),
        .Q(rd_skid_buf[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[14]),
        .Q(rd_skid_buf[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[15]),
        .Q(rd_skid_buf[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[16]),
        .Q(rd_skid_buf[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[17]),
        .Q(rd_skid_buf[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[18]),
        .Q(rd_skid_buf[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[19]),
        .Q(rd_skid_buf[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[1]),
        .Q(rd_skid_buf[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[20]),
        .Q(rd_skid_buf[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[21]),
        .Q(rd_skid_buf[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[22]),
        .Q(rd_skid_buf[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[23]),
        .Q(rd_skid_buf[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[24]),
        .Q(rd_skid_buf[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[25]),
        .Q(rd_skid_buf[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[26]),
        .Q(rd_skid_buf[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[27]),
        .Q(rd_skid_buf[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[28]),
        .Q(rd_skid_buf[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[29]),
        .Q(rd_skid_buf[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[2]),
        .Q(rd_skid_buf[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[30]),
        .Q(rd_skid_buf[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[31]),
        .Q(rd_skid_buf[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[3]),
        .Q(rd_skid_buf[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[4]),
        .Q(rd_skid_buf[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[5]),
        .Q(rd_skid_buf[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[6]),
        .Q(rd_skid_buf[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[7]),
        .Q(rd_skid_buf[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[8]),
        .Q(rd_skid_buf[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[9]),
        .Q(rd_skid_buf[9]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h030003000000AA00)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I2(act_rd_burst_two),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(ar_active_re),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[3]),
        .I4(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ),
        .O(act_rd_burst_two));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ),
        .Q(axi_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00A0C0C000A000A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(act_rd_burst_two),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FECE3202)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_rid),
        .I1(ar_active_re),
        .I2(axi_rvalid_set),
        .I3(axi_rid_temp),
        .I4(s_axi_arid),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ),
        .Q(s_axi_rid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid),
        .Q(axi_rid_temp),
        .R(s_axi_aresetn_0));
  TinySoC_axi_bram_ctrl_0_0_ua_narrow_0 \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW 
       (.D(narrow_burst_cnt_ld_mod),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .curr_narrow_burst(curr_narrow_burst),
        .narrow_addr_int(narrow_addr_int),
        .s_axi_araddr(s_axi_araddr[1:0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arsize(s_axi_arsize));
  TinySoC_axi_bram_ctrl_0_0_wrap_brst_1 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_3 (ar_active_d1),
        .\ADDR_SNG_PORT.bram_addr_int_reg[12] (\ADDR_SNG_PORT.bram_addr_int_reg[12] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13] (\ADDR_SNG_PORT.bram_addr_int_reg[13] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[14] (\ADDR_SNG_PORT.bram_addr_int_reg[14] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .D(D),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .Q(rd_data_sm_cs),
        .SR(s_axi_aresetn_0),
        .ar_active_re(ar_active_re),
        .ar_active_reg(ar_active_reg),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_a(bram_addr_a),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[14:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arsize_2_sp_1(s_axi_arsize_2_sn_1),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_rready(s_axi_rready));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(ar_active_re),
        .I4(act_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I1(act_rd_burst_set),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(ar_active_re),
        .I4(act_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h04000002FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I3(act_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hD0DF0000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FFFFFF77F0FF)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[0]),
        .I5(rlast_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I2(disable_b2b_brst),
        .I3(last_bram_addr),
        .I4(axi_rvalid_clr_ok),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(axi_rvalid_clr_ok),
        .I3(axi_rvalid_set),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00BBFFFB00BB000B)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .I5(p_5_in),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00005050C0C0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F5FFFFC5)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(ar_active_re),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDFF00F5DDFFFFF5)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_4 
       (.I0(rd_data_sm_cs[2]),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F070F0F000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(brst_one),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(ar_active_re),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0BBBBBBB)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(pend_rd_op),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(end_brst_rd),
        .I5(brst_zero),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .Q(p_5_in),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h08FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[0]),
        .O(p_1_in__0[0]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[1]),
        .I4(brst_cnt[0]),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hFB08FB08FB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(ar_active_re),
        .I2(brst_cnt[3]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[0]),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'hFB0808FBFB08FB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[4]),
        .I4(brst_cnt[3]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2 
       (.I0(brst_cnt[0]),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[2]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[5]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hFB0808FBFB08FB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[6]),
        .I4(brst_cnt[5]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_1_in__0[6]));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88BB8B8B8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(ar_active_re),
        .I2(brst_cnt[7]),
        .I3(brst_cnt[6]),
        .I4(brst_cnt[5]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[3]),
        .I4(brst_cnt[4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .Q(brst_cnt_max_d1),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(brst_cnt[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(brst_cnt[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(brst_cnt[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(brst_cnt[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(brst_cnt[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(brst_cnt[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(brst_cnt[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(brst_cnt[7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h4444004444400040)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(brst_one),
        .I3(ar_active_re),
        .I4(act_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(brst_zero),
        .I2(s_axi_aresetn),
        .I3(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_2 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAABAAABABABAAABA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[1]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000FBFBFBBB)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I4(brst_one),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF04FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFCFD03000000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(ar_active_re),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(end_brst_rd_clr),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .Q(end_brst_rd_clr),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h55300000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBBBBBBBAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I2(ar_active_re),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .O(p_15_out16_out));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_10 
       (.I0(brst_cnt[4]),
        .I1(brst_cnt[3]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBCFCB)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[7]),
        .I4(brst_cnt[6]),
        .I5(brst_cnt[5]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7 
       (.I0(pend_rd_op),
        .I1(ar_active_d1),
        .I2(p_0_out),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF7F7777)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_8 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_9 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_15_out16_out),
        .Q(last_bram_addr),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hE2C0AA00E2C0E2C0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ),
        .I2(pend_rd_op),
        .I3(ar_active_re),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I5(end_brst_rd_clr_cmb),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h10101011)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I4(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFFFFFD)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I5(pend_rd_op),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFF50FF1FFF5)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(ar_active_re),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(pend_rd_op),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .O(end_brst_rd_clr_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .Q(pend_rd_op),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h000000000000D5AA)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ),
        .I3(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h37373737CFCFCF0F)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I4(act_rd_burst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C007F7F7F7)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_rready),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ),
        .Q(rddata_mux_sel),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_awready_int_i_2
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(s_axi_rready_0));
endmodule

(* ORIG_REF_NAME = "sng_port_arb" *) 
module TinySoC_axi_bram_ctrl_0_0_sng_port_arb
   (s_axi_awburst_0_sp_1,
    aw_active_re,
    curr_narrow_burst_en,
    p_1_out,
    s_axi_arburst_0_sp_1,
    s_axi_araddr_1_sp_1,
    ar_active_re,
    p_0_out,
    bram_we_a,
    ar_active_reg_0,
    s_axi_awready,
    s_axi_arready,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    s_axi_awburst,
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ,
    s_axi_awaddr,
    \GEN_NARROW_EN.curr_narrow_burst_reg ,
    \GEN_NARROW_EN.curr_narrow_burst_reg_0 ,
    aw_active_d1,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    s_axi_arburst,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ,
    s_axi_araddr,
    ar_active_d1,
    \FSM_sequential_arb_sm_cs_reg[0]_0 ,
    s_axi_rready,
    axi_arready_int_reg_0,
    s_axi_arvalid,
    \FSM_sequential_arb_sm_cs_reg[0]_1 ,
    AW2Arb_Active_Clr,
    s_axi_awvalid,
    Q,
    s_axi_aresetn,
    ar_active_reg_1,
    s_axi_aclk);
  output s_axi_awburst_0_sp_1;
  output aw_active_re;
  output curr_narrow_burst_en;
  output p_1_out;
  output s_axi_arburst_0_sp_1;
  output s_axi_araddr_1_sp_1;
  output ar_active_re;
  output p_0_out;
  output [3:0]bram_we_a;
  output ar_active_reg_0;
  output s_axi_awready;
  output s_axi_arready;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input [1:0]s_axi_awburst;
  input \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ;
  input [1:0]s_axi_awaddr;
  input \GEN_NARROW_EN.curr_narrow_burst_reg ;
  input \GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  input aw_active_d1;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input [1:0]s_axi_arburst;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ;
  input [1:0]s_axi_araddr;
  input ar_active_d1;
  input \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  input s_axi_rready;
  input axi_arready_int_reg_0;
  input s_axi_arvalid;
  input \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  input AW2Arb_Active_Clr;
  input s_axi_awvalid;
  input [3:0]Q;
  input s_axi_aresetn;
  input ar_active_reg_1;
  input s_axi_aclk;

  wire AW2Arb_Active_Clr;
  wire \FSM_sequential_arb_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NARROW_EN.curr_narrow_burst_reg ;
  wire \GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire [3:0]Q;
  wire ar_active_d1;
  wire ar_active_i_1_n_0;
  wire ar_active_i_3_n_0;
  wire ar_active_re;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire [1:0]arb_sm_cs;
  wire [1:1]arb_sm_ns;
  wire aw_active_d1;
  wire aw_active_i_1_n_0;
  wire aw_active_re;
  wire axi_arready_cmb;
  wire axi_arready_int_i_2_n_0;
  wire axi_arready_int_i_3_n_0;
  wire axi_arready_int_i_4_n_0;
  wire axi_arready_int_reg_0;
  wire axi_awready_cmb;
  wire [3:0]bram_we_a;
  wire curr_narrow_burst_en;
  wire last_arb_won;
  wire last_arb_won_cmb;
  wire last_arb_won_i_1_n_0;
  wire p_0_out;
  wire p_1_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_araddr_1_sn_1;
  wire [1:0]s_axi_arburst;
  wire s_axi_arburst_0_sn_1;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire s_axi_awburst_0_sn_1;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;

  assign s_axi_araddr_1_sp_1 = s_axi_araddr_1_sn_1;
  assign s_axi_arburst_0_sp_1 = s_axi_arburst_0_sn_1;
  assign s_axi_awburst_0_sp_1 = s_axi_awburst_0_sn_1;
  LUT6 #(
    .INIT(64'hFA08F008FAF8F0F8)) 
    \FSM_sequential_arb_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_arb_sm_cs[0]_i_2 
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .O(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000CFFFFC4CC0000)) 
    \FSM_sequential_arb_sm_cs[1]_i_1 
       (.I0(last_arb_won),
        .I1(s_axi_arvalid),
        .I2(arb_sm_cs[0]),
        .I3(s_axi_awvalid),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFECCFECFCECCCE)) 
    \FSM_sequential_arb_sm_cs[1]_i_2 
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(axi_arready_int_i_4_n_0),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE \FSM_sequential_arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ),
        .Q(arb_sm_cs[0]),
        .R(ar_active_reg_1));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE \FSM_sequential_arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ),
        .Q(arb_sm_cs[1]),
        .R(ar_active_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .O(s_axi_awburst_0_sn_1));
  LUT6 #(
    .INIT(64'hDDDFDDDFDDDFFFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(aw_active_re),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E000E000E00000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(\GEN_NARROW_EN.curr_narrow_burst_reg ),
        .I1(\GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .I2(p_1_out),
        .I3(aw_active_d1),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(curr_narrow_burst_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(p_0_out),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(axi_arready_int_reg_0),
        .O(ar_active_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I3(s_axi_arburst[0]),
        .I4(s_axi_arburst[1]),
        .I5(s_axi_araddr_1_sn_1),
        .O(s_axi_arburst_0_sn_1));
  LUT6 #(
    .INIT(64'hDDDFDDDFDDDFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(ar_active_re),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_arburst[0]),
        .I5(s_axi_arburst[1]),
        .O(s_axi_araddr_1_sn_1));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    ar_active_i_1
       (.I0(arb_sm_ns),
        .I1(ar_active_i_3_n_0),
        .I2(axi_arready_int_i_3_n_0),
        .I3(s_axi_arvalid),
        .I4(p_0_out),
        .O(ar_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00C40CCC)) 
    ar_active_i_2
       (.I0(last_arb_won),
        .I1(s_axi_arvalid),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(s_axi_awvalid),
        .O(arb_sm_ns));
  LUT6 #(
    .INIT(64'h00FF007000000070)) 
    ar_active_i_3
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(arb_sm_cs[0]),
        .I4(arb_sm_cs[1]),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .O(ar_active_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_i_1_n_0),
        .Q(p_0_out),
        .R(ar_active_reg_1));
  LUT6 #(
    .INIT(64'h0A0ACFFF0A0A0000)) 
    aw_active_i_1
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(arb_sm_cs[1]),
        .I2(arb_sm_cs[0]),
        .I3(AW2Arb_Active_Clr),
        .I4(axi_awready_cmb),
        .I5(p_1_out),
        .O(aw_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_i_1_n_0),
        .Q(p_1_out),
        .R(ar_active_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    axi_arready_int_i_1
       (.I0(s_axi_rready),
        .I1(axi_arready_int_reg_0),
        .I2(axi_arready_int_i_2_n_0),
        .I3(s_axi_arvalid),
        .I4(axi_arready_int_i_3_n_0),
        .I5(axi_arready_int_i_4_n_0),
        .O(axi_arready_cmb));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    axi_arready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(arb_sm_cs[1]),
        .I3(arb_sm_cs[0]),
        .O(axi_arready_int_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_arready_int_i_3
       (.I0(AW2Arb_Active_Clr),
        .I1(arb_sm_cs[0]),
        .I2(arb_sm_cs[1]),
        .O(axi_arready_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    axi_arready_int_i_4
       (.I0(arb_sm_cs[0]),
        .I1(arb_sm_cs[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .I4(last_arb_won),
        .O(axi_arready_int_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(ar_active_reg_1));
  LUT6 #(
    .INIT(64'h0000AA000000F300)) 
    axi_awready_int_i_1
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I1(s_axi_arvalid),
        .I2(last_arb_won),
        .I3(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I4(arb_sm_cs[0]),
        .I5(arb_sm_cs[1]),
        .O(axi_awready_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(ar_active_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[0]_INST_0 
       (.I0(p_1_out),
        .I1(Q[0]),
        .O(bram_we_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[1]_INST_0 
       (.I0(p_1_out),
        .I1(Q[1]),
        .O(bram_we_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[2]_INST_0 
       (.I0(p_1_out),
        .I1(Q[2]),
        .O(bram_we_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[3]_INST_0 
       (.I0(p_1_out),
        .I1(Q[3]),
        .O(bram_we_a[3]));
  LUT6 #(
    .INIT(64'h082AFFFF0A2A0000)) 
    last_arb_won_i_1
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[0]),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_awvalid),
        .I4(last_arb_won_cmb),
        .I5(last_arb_won),
        .O(last_arb_won_i_1_n_0));
  LUT6 #(
    .INIT(64'hAEAEAAAEAAAEAAAE)) 
    last_arb_won_i_2
       (.I0(axi_arready_cmb),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(s_axi_rready),
        .I5(axi_arready_int_reg_0),
        .O(last_arb_won_cmb));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_i_1_n_0),
        .Q(last_arb_won),
        .R(ar_active_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[14]_i_1 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .O(aw_active_re));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[14]_i_1__0 
       (.I0(p_0_out),
        .I1(ar_active_d1),
        .O(ar_active_re));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module TinySoC_axi_bram_ctrl_0_0_ua_narrow
   (\GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    D,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    s_axi_awsize,
    s_axi_awaddr,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    narrow_addr_int,
    curr_narrow_burst,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 );
  output \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  output \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input [1:0]D;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awaddr;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input [1:0]narrow_addr_int;
  input curr_narrow_burst;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;

  wire [1:0]D;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  wire curr_narrow_burst;
  wire [1:0]narrow_addr_int;
  wire [1:0]s_axi_awaddr;
  wire [2:0]s_axi_awsize;
  wire ua_narrow_load1_carry_i_1_n_0;
  wire ua_narrow_load1_carry_i_2_n_0;
  wire ua_narrow_load1_carry_i_3_n_0;
  wire ua_narrow_load1_carry_i_4_n_0;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:2]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF00B8B800FFB8B8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(D[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .I5(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAA88AA08AA88AA2A)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awaddr[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFCCCC0050CCCC)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I2(curr_narrow_burst),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .I5(narrow_addr_int[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ));
  LUT6 #(
    .INIT(64'h888888B8B8B8B8B8)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(D[1]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awaddr[1]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[3:2],ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,ua_narrow_load1_carry_i_1_n_0,ua_narrow_load1_carry_i_2_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ua_narrow_load1_carry_i_3_n_0,ua_narrow_load1_carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h00010011)) 
    ua_narrow_load1_carry_i_1
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awaddr[1]),
        .O(ua_narrow_load1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    ua_narrow_load1_carry_i_2
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awsize[0]),
        .O(ua_narrow_load1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEC)) 
    ua_narrow_load1_carry_i_3
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(ua_narrow_load1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h11540044)) 
    ua_narrow_load1_carry_i_4
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awaddr[1]),
        .O(ua_narrow_load1_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module TinySoC_axi_bram_ctrl_0_0_ua_narrow_0
   (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    D,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    s_axi_arburst,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    s_axi_arsize,
    s_axi_araddr,
    narrow_addr_int,
    curr_narrow_burst,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 );
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input [1:0]D;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input [1:0]s_axi_arburst;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_araddr;
  input [1:0]narrow_addr_int;
  input curr_narrow_burst;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;

  wire [1:0]D;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  wire curr_narrow_burst;
  wire [1:0]narrow_addr_int;
  wire [1:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [2:0]s_axi_arsize;
  wire ua_narrow_load1_carry_i_1__0_n_0;
  wire ua_narrow_load1_carry_i_2__0_n_0;
  wire ua_narrow_load1_carry_i_3__0_n_0;
  wire ua_narrow_load1_carry_i_4__0_n_0;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:2]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF00B8B800FFB8B8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(D[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ),
        .I5(narrow_addr_int[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hA888A8A8A88AA8AA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFCCCC0050CCCC)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I2(curr_narrow_burst),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ),
        .I5(narrow_addr_int[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(D[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arburst[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA888A88A)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_araddr[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[3:2],ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,ua_narrow_load1_carry_i_1__0_n_0,ua_narrow_load1_carry_i_2__0_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ua_narrow_load1_carry_i_3__0_n_0,ua_narrow_load1_carry_i_4__0_n_0}));
  LUT5 #(
    .INIT(32'h00010101)) 
    ua_narrow_load1_carry_i_1__0
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(ua_narrow_load1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    ua_narrow_load1_carry_i_2__0
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    ua_narrow_load1_carry_i_3__0
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h15140404)) 
    ua_narrow_load1_carry_i_4__0
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .O(ua_narrow_load1_carry_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module TinySoC_axi_bram_ctrl_0_0_wr_chnl
   (aw_active_d1,
    bram_wrdata_a,
    s_axi_wready,
    axi_bvalid_int_reg_0,
    s_axi_bid,
    aw_active_d1_reg_0,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ,
    aw_active_d1_reg_1,
    AW2Arb_Active_Clr,
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ,
    s_axi_awsize_0_sp_1,
    D,
    \save_init_bram_addr_ld_reg[5] ,
    \save_init_bram_addr_ld_reg[4] ,
    \wrap_burst_total_reg[0] ,
    s_axi_awsize_1_sp_1,
    s_axi_awsize_2_sp_1,
    \s_axi_awsize[0]_0 ,
    s_axi_awlen_2_sp_1,
    s_axi_awlen_3_sp_1,
    s_axi_awvalid_0,
    bram_en_a,
    Q,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_aclk,
    s_axi_awid,
    p_1_out,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_wvalid,
    curr_narrow_burst_en,
    s_axi_awsize,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    s_axi_awaddr,
    aw_active_re,
    s_axi_wlast,
    s_axi_bready,
    \save_init_bram_addr_ld[14]_i_3__0 ,
    s_axi_awvalid,
    s_axi_awlen,
    bram_addr_a,
    p_5_in,
    s_axi_awburst,
    s_axi_wstrb);
  output aw_active_d1;
  output [31:0]bram_wrdata_a;
  output s_axi_wready;
  output axi_bvalid_int_reg_0;
  output [0:0]s_axi_bid;
  output aw_active_d1_reg_0;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  output aw_active_d1_reg_1;
  output AW2Arb_Active_Clr;
  output \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ;
  output s_axi_awsize_0_sp_1;
  output [8:0]D;
  output \save_init_bram_addr_ld_reg[5] ;
  output \save_init_bram_addr_ld_reg[4] ;
  output \wrap_burst_total_reg[0] ;
  output s_axi_awsize_1_sp_1;
  output s_axi_awsize_2_sp_1;
  output \s_axi_awsize[0]_0 ;
  output s_axi_awlen_2_sp_1;
  output s_axi_awlen_3_sp_1;
  output s_axi_awvalid_0;
  output bram_en_a;
  output [3:0]Q;
  input \wrap_burst_total_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input p_1_out;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input curr_narrow_burst_en;
  input [2:0]s_axi_awsize;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input [13:0]s_axi_awaddr;
  input aw_active_re;
  input s_axi_wlast;
  input s_axi_bready;
  input \save_init_bram_addr_ld[14]_i_3__0 ;
  input s_axi_awvalid;
  input [7:0]s_axi_awlen;
  input [2:0]bram_addr_a;
  input p_5_in;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_wstrb;

  wire AW2Arb_Active_Clr;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire [8:0]D;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ;
  wire \GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire [3:0]Q;
  wire aw_active_d1;
  wire aw_active_d1_reg_0;
  wire aw_active_d1_reg_1;
  wire aw_active_re;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_2_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire [2:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_wrdata_a;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst_reg;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [1:0]narrow_burst_cnt_ld_reg;
  wire p_11_in;
  wire p_1_out;
  wire p_5_in;
  wire p_6_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlen_2_sn_1;
  wire s_axi_awlen_3_sn_1;
  wire [2:0]s_axi_awsize;
  wire \s_axi_awsize[0]_0 ;
  wire s_axi_awsize_0_sn_1;
  wire s_axi_awsize_1_sn_1;
  wire s_axi_awsize_2_sn_1;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[14]_i_3__0 ;
  wire \save_init_bram_addr_ld_reg[4] ;
  wire \save_init_bram_addr_ld_reg[5] ;
  wire \wrap_burst_total_reg[0] ;
  wire \wrap_burst_total_reg[0]_0 ;

  assign s_axi_awlen_2_sp_1 = s_axi_awlen_2_sn_1;
  assign s_axi_awlen_3_sp_1 = s_axi_awlen_3_sn_1;
  assign s_axi_awsize_0_sp_1 = s_axi_awsize_0_sn_1;
  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  assign s_axi_awsize_2_sp_1 = s_axi_awsize_2_sn_1;
  LUT6 #(
    .INIT(64'h00000000000100FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .I4(curr_narrow_burst),
        .I5(curr_fixed_burst_reg),
        .O(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ));
  TinySoC_axi_bram_ctrl_0_0_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .\Addr_Counters[3].FDRE_I_0 (\wrap_burst_total_reg[0]_0 ),
        .Data_Exists_DFF_0(aw_active_d1),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (BID_FIFO_n_2),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .aw_active_re(aw_active_re),
        .\axi_bid_int_reg[0] (BID_FIFO_n_3),
        .\axi_bid_int_reg[0]_0 (axi_bvalid_int_reg_0),
        .axi_wdata_full_reg(axi_wdata_full_reg),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(axi_bvalid_int_i_2_n_0),
        .bvalid_cnt_inc(bvalid_cnt_inc),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT6 #(
    .INIT(64'hFFFF1555FFFF0000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I1(s_axi_wlast),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(AW2Arb_Active_Clr),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA202FFFFA2020000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I1(s_axi_wlast),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFC88CC88)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1 
       (.I0(BID_FIFO_n_2),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I2(s_axi_wlast),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(p_1_out),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .S(\wrap_burst_total_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ),
        .Q(AW2Arb_Active_Clr),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00FF05FF33FF05FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[4]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[5]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8000000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0000B800)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A000808080)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_13 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCC44444400404040)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_14 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[3]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_15 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[3]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_16 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_17 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_18 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[4]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_19 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awvalid),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_20 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[6]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I1(s_axi_wvalid),
        .I2(curr_narrow_burst),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ),
        .O(s_axi_awsize_1_sn_1));
  LUT6 #(
    .INIT(64'hFCAF0CA0FCA00CA0)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ),
        .I5(s_axi_awsize[2]),
        .O(\s_axi_awsize[0]_0 ));
  LUT6 #(
    .INIT(64'h5757575743004343)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ),
        .O(s_axi_awsize_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDFDD)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .I5(curr_narrow_burst),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .Q(narrow_addr_int[0]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .Q(narrow_addr_int[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(narrow_addr_int[1]),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(curr_narrow_burst),
        .O(narrow_bram_addr_inc));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(p_1_out),
        .I3(aw_active_d1),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(p_1_out),
        .I4(aw_active_d1),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_11_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_in),
        .Q(axi_wlast_d1),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0FBB0F0000000000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(axi_wlast_d1),
        .I1(p_11_in),
        .I2(s_axi_awsize_0_sn_1),
        .I3(curr_narrow_burst_en),
        .I4(curr_narrow_burst),
        .I5(s_axi_aresetn),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awlen[6]),
        .O(s_axi_awlen_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_4 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awlen[0]),
        .O(s_axi_awlen_3_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  TinySoC_axi_bram_ctrl_0_0_ua_narrow \GEN_UA_NARROW.I_UA_NARROW 
       (.D(narrow_burst_cnt_ld_reg),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 (\GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ),
        .curr_narrow_burst(curr_narrow_burst),
        .narrow_addr_int(narrow_addr_int),
        .s_axi_awaddr(s_axi_awaddr[1:0]),
        .s_axi_awsize(s_axi_awsize));
  LUT6 #(
    .INIT(64'hFFFFF020F222F020)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(p_1_out),
        .I2(axi_wdata_full_reg),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .I5(AW2Arb_Active_Clr),
        .O(axi_wdata_full_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFC08080)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(p_1_out),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ),
        .Q(p_6_in),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF40000)) 
    \GEN_WRDATA[31].bram_wrdata_int[31]_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(AW2Arb_Active_Clr),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .O(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .I1(clr_bram_we),
        .I2(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[0]),
        .Q(Q[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[1]),
        .Q(Q[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[2]),
        .Q(Q[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[3]),
        .Q(Q[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  TinySoC_axi_bram_ctrl_0_0_wrap_brst I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int_reg[11] (AW2Arb_Active_Clr),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .D(D),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .aw_active_d1_reg(aw_active_d1_reg_0),
        .aw_active_d1_reg_0(aw_active_d1_reg_1),
        .aw_active_re(aw_active_re),
        .bram_addr_a(bram_addr_a),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_16),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_17),
        .curr_wrap_burst_reg_reg_0(aw_active_d1),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[13:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_0_sp_1(s_axi_awsize_0_sn_1),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld[14]_i_3__0_0 (\save_init_bram_addr_ld[14]_i_3__0 ),
        .\save_init_bram_addr_ld_reg[4]_0 (\save_init_bram_addr_ld_reg[4] ),
        .\save_init_bram_addr_ld_reg[5]_0 (\save_init_bram_addr_ld_reg[5] ),
        .\wrap_burst_total_reg[0]_0 (\wrap_burst_total_reg[0] ),
        .\wrap_burst_total_reg[0]_1 (\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(aw_active_d1),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    axi_awready_int_i_3
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .O(s_axi_awvalid_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_bvalid_int_i_2_n_0),
        .I2(bvalid_cnt_inc),
        .O(axi_bvalid_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFFFEEEE)) 
    axi_bvalid_int_i_2
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(s_axi_bready),
        .I3(axi_bvalid_int_reg_0),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5754)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst_i_2_n_0),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I3(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT4 #(
    .INIT(16'hA0E0)) 
    axi_wr_burst_i_2
       (.I0(AW2Arb_Active_Clr),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .O(axi_wr_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(\wrap_burst_total_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    bram_en_a_INST_0
       (.I0(p_6_in),
        .I1(p_5_in),
        .O(bram_en_a));
  LUT6 #(
    .INIT(64'h88887777777F8880)) 
    \bvalid_cnt[0]_i_1 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(bvalid_cnt_inc),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA045FA05FA05FA0)) 
    \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC86CCC6CCC6CCC)) 
    \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_16),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_17),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module TinySoC_axi_bram_ctrl_0_0_wrap_brst
   (aw_active_d1_reg,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ,
    aw_active_d1_reg_0,
    D,
    \save_init_bram_addr_ld_reg[5]_0 ,
    \save_init_bram_addr_ld_reg[4]_0 ,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_awsize_0_sp_1,
    curr_fixed_burst_reg_reg,
    curr_wrap_burst_reg_reg,
    curr_wrap_burst_reg_reg_0,
    p_1_out,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    \save_init_bram_addr_ld[14]_i_3__0_0 ,
    curr_wrap_burst_reg,
    curr_narrow_burst,
    narrow_addr_int,
    narrow_bram_addr_inc_d1,
    s_axi_awvalid,
    s_axi_awlen,
    s_axi_awsize,
    bram_addr_a,
    curr_fixed_burst_reg,
    s_axi_awburst,
    \wrap_burst_total_reg[0]_1 ,
    aw_active_re,
    s_axi_aclk);
  output aw_active_d1_reg;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  output aw_active_d1_reg_0;
  output [8:0]D;
  output \save_init_bram_addr_ld_reg[5]_0 ;
  output \save_init_bram_addr_ld_reg[4]_0 ;
  output \wrap_burst_total_reg[0]_0 ;
  output s_axi_awsize_0_sp_1;
  output curr_fixed_burst_reg_reg;
  output curr_wrap_burst_reg_reg;
  input curr_wrap_burst_reg_reg_0;
  input p_1_out;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input s_axi_aresetn;
  input [11:0]s_axi_awaddr;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input \save_init_bram_addr_ld[14]_i_3__0_0 ;
  input curr_wrap_burst_reg;
  input curr_narrow_burst;
  input [1:0]narrow_addr_int;
  input narrow_bram_addr_inc_d1;
  input s_axi_awvalid;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [2:0]bram_addr_a;
  input curr_fixed_burst_reg;
  input [1:0]s_axi_awburst;
  input \wrap_burst_total_reg[0]_1 ;
  input aw_active_re;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire [8:0]D;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  wire aw_active_d1_reg;
  wire aw_active_d1_reg_0;
  wire aw_active_re;
  wire [2:0]bram_addr_a;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire curr_wrap_burst_reg_reg_0;
  wire [12:1]data0;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire p_1_out;
  wire [5:3]p_2_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_0_sn_1;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[14]_i_3__0_0 ;
  wire \save_init_bram_addr_ld_reg[4]_0 ;
  wire \save_init_bram_addr_ld_reg[5]_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[0]_i_2_n_0 ;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_2_n_0 ;
  wire \wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg[0]_1 ;

  assign s_axi_awsize_0_sp_1 = s_axi_awsize_0_sn_1;
  LUT4 #(
    .INIT(16'h04FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(aw_active_d1_reg_0),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I3(s_axi_aresetn),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ));
  LUT3 #(
    .INIT(8'hFB)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_10 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_11 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[0]),
        .I5(narrow_bram_addr_inc_d1),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h4F444444)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(curr_wrap_burst_reg_reg_0),
        .I1(p_1_out),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ),
        .I3(s_axi_wvalid),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .O(aw_active_d1_reg_0));
  LUT5 #(
    .INIT(32'hFFFF54FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_8 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I1(\save_init_bram_addr_ld[14]_i_3__0_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(curr_wrap_burst_reg),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F00C000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_9 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[1]),
        .I2(wrap_burst_total[1]),
        .I3(bram_addr_a[0]),
        .I4(wrap_burst_total[0]),
        .I5(wrap_burst_total[2]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h37F3000037F3FFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(data0[1]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(aw_active_d1_reg),
        .I5(s_axi_awaddr[0]),
        .O(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h5D7500005D75FFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(aw_active_d1_reg),
        .I5(s_axi_awaddr[1]),
        .O(\save_init_bram_addr_ld_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h557500005575FFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(data0[3]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(aw_active_d1_reg),
        .I5(s_axi_awaddr[2]),
        .O(\save_init_bram_addr_ld_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
    curr_fixed_burst_reg_i_1
       (.I0(curr_fixed_burst_reg),
        .I1(curr_wrap_burst_reg_reg_0),
        .I2(p_1_out),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ),
        .O(curr_fixed_burst_reg_reg));
  LUT6 #(
    .INIT(64'h000000008ABA8A8A)) 
    curr_wrap_burst_reg_i_1
       (.I0(curr_wrap_burst_reg),
        .I1(curr_wrap_burst_reg_reg_0),
        .I2(p_1_out),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ),
        .O(curr_wrap_burst_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[8]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[7]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[9]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(data0[10]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[9]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_1 
       (.I0(data0[11]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[10]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[14]_i_2 
       (.I0(data0[12]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[11]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \save_init_bram_addr_ld[14]_i_3__0 
       (.I0(curr_wrap_burst_reg_reg_0),
        .I1(p_1_out),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_8_n_0 ),
        .O(aw_active_d1_reg));
  LUT6 #(
    .INIT(64'hE2EE2222E22E2222)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(aw_active_d1_reg),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(data0[1]),
        .I5(wrap_burst_total[0]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hEE2EE2EE22222222)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(aw_active_d1_reg),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[0]),
        .I5(data0[2]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hEEEEE2EE22222222)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(aw_active_d1_reg),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[0]),
        .I5(data0[3]),
        .O(p_2_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(data0[4]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(data0[5]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[6]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[7]),
        .I1(aw_active_d1_reg),
        .I2(s_axi_awaddr[6]),
        .O(D[3]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[4]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[5]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[6]),
        .Q(data0[10]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[7]),
        .Q(data0[11]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[8]),
        .Q(data0[12]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(p_2_in[3]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(p_2_in[4]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(p_2_in[5]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[0]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[1]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[2]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[3]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAEAAAAAEAAAAAAAA)) 
    \wrap_burst_total[0]_i_1 
       (.I0(\wrap_burst_total[0]_i_2_n_0 ),
        .I1(\wrap_burst_total[0]_i_3_n_0 ),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awsize_0_sn_1),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008000A0002800A0)) 
    \wrap_burst_total[0]_i_2 
       (.I0(\wrap_burst_total[2]_i_2_n_0 ),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awvalid),
        .I5(s_axi_awlen[3]),
        .O(\wrap_burst_total[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[0]),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wrap_burst_total[0]_i_4 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(s_axi_awsize_0_sn_1));
  LUT6 #(
    .INIT(64'h00AA2A8000002A00)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total[2]_i_2_n_0 ),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[2]),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[2]),
        .I3(\wrap_burst_total[2]_i_2_n_0 ),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \wrap_burst_total[2]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[2]),
        .O(\wrap_burst_total[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module TinySoC_axi_bram_ctrl_0_0_wrap_brst_1
   (\ADDR_SNG_PORT.bram_addr_int_reg[14] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[12] ,
    p_1_in,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    ar_active_reg,
    s_axi_arsize_2_sp_1,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ,
    SR,
    bram_addr_a,
    D,
    p_0_out,
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ,
    s_axi_araddr,
    s_axi_awaddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_3 ,
    s_axi_arsize,
    s_axi_arlen,
    curr_narrow_burst,
    narrow_bram_addr_inc_d1,
    narrow_addr_int,
    Q,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ,
    end_brst_rd,
    brst_zero,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ,
    s_axi_rready,
    axi_rd_burst,
    s_axi_aresetn,
    curr_wrap_burst_reg,
    ar_active_re,
    s_axi_aclk);
  output \ADDR_SNG_PORT.bram_addr_int_reg[14] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[12] ;
  output [9:0]p_1_in;
  output \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  output ar_active_reg;
  output s_axi_arsize_2_sp_1;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  output [0:0]SR;
  input [12:0]bram_addr_a;
  input [8:0]D;
  input p_0_out;
  input \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  input [12:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input curr_fixed_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_3 ;
  input [2:0]s_axi_arsize;
  input [3:0]s_axi_arlen;
  input curr_narrow_burst;
  input narrow_bram_addr_inc_d1;
  input [1:0]narrow_addr_int;
  input [3:0]Q;
  input \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  input end_brst_rd;
  input brst_zero;
  input \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ;
  input s_axi_rready;
  input axi_rd_burst;
  input s_axi_aresetn;
  input curr_wrap_burst_reg;
  input ar_active_re;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_3 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[12] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[14] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire [8:0]D;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ar_active_re;
  wire ar_active_reg;
  wire axi_rd_burst;
  wire [12:0]bram_addr_a;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [12:1]data0;
  wire end_brst_rd;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire p_0_out;
  wire [9:0]p_1_in;
  wire [14:3]p_3_in;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire s_axi_arsize_2_sn_1;
  wire [0:0]s_axi_awaddr;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[14]_i_3_n_0 ;
  wire \save_init_bram_addr_ld[14]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[14]_i_5_n_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[0]_i_2__0_n_0 ;
  wire \wrap_burst_total[0]_i_3__0_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[1]_i_2_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;

  assign s_axi_arsize_2_sp_1 = s_axi_arsize_2_sn_1;
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(bram_addr_a[8]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[10]),
        .I4(p_0_out),
        .I5(D[4]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h5FDF55D5)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I2(p_0_out),
        .I3(curr_fixed_burst_reg),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .O(ar_active_reg));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(bram_addr_a[9]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[11]),
        .I4(p_0_out),
        .I5(D[5]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(bram_addr_a[10]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I2(D[6]),
        .I3(p_0_out),
        .I4(p_3_in[12]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[12] ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_1 
       (.I0(bram_addr_a[11]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I2(D[7]),
        .I3(p_0_out),
        .I4(p_3_in[13]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[13] ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \ADDR_SNG_PORT.bram_addr_int[14]_i_1 
       (.I0(bram_addr_a[12]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I2(D[8]),
        .I3(p_0_out),
        .I4(p_3_in[14]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[14] ));
  LUT4 #(
    .INIT(16'h1101)) 
    \ADDR_SNG_PORT.bram_addr_int[14]_i_2 
       (.I0(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ),
        .I2(p_0_out),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[11]_3 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I2(bram_addr_a[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(p_0_out),
        .I3(s_axi_awaddr),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F606F6060606F)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(bram_addr_a[1]),
        .I1(bram_addr_a[0]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ),
        .I4(p_0_out),
        .I5(p_3_in[3]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h6F6F606F6060606F)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(bram_addr_a[2]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I4(p_0_out),
        .I5(p_3_in[4]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h9F9F909F9090909F)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(bram_addr_a[3]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .I4(p_0_out),
        .I5(p_3_in[5]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .I1(bram_addr_a[4]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[6]),
        .I4(p_0_out),
        .I5(D[0]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(bram_addr_a[1]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[2]),
        .I3(bram_addr_a[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[3] ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_a[5]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[7]),
        .I4(p_0_out),
        .I5(D[1]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_a[6]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[8]),
        .I4(p_0_out),
        .I5(D[2]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_a[7]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[14]_i_2_n_0 ),
        .I3(p_3_in[9]),
        .I4(p_0_out),
        .I5(D[3]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA8A8A8AA)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .I4(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ),
        .I3(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA2FFEF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\GEN_NO_RD_CMD_OPT.end_brst_rd_reg ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ),
        .I5(Q[3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .I3(Q[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(data0[8]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[8]),
        .O(p_3_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(data0[9]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[9]),
        .O(p_3_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(data0[10]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[10]),
        .O(p_3_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(data0[11]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[11]),
        .O(p_3_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[14]_i_2__0 
       (.I0(data0[12]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[12]),
        .O(p_3_in[14]));
  LUT6 #(
    .INIT(64'h0000000011111113)) 
    \save_init_bram_addr_ld[14]_i_3 
       (.I0(curr_narrow_burst),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I2(narrow_bram_addr_inc_d1),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[1]),
        .I5(\save_init_bram_addr_ld[14]_i_4_n_0 ),
        .O(\save_init_bram_addr_ld[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFFFFDFF)) 
    \save_init_bram_addr_ld[14]_i_4 
       (.I0(curr_wrap_burst_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[0]),
        .I5(\save_init_bram_addr_ld[14]_i_5_n_0 ),
        .O(\save_init_bram_addr_ld[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5040104000400040)) 
    \save_init_bram_addr_ld[14]_i_5 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(bram_addr_a[0]),
        .I3(wrap_burst_total[1]),
        .I4(bram_addr_a[2]),
        .I5(bram_addr_a[1]),
        .O(\save_init_bram_addr_ld[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC80CFFFFC80C0000)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(wrap_burst_total[0]),
        .I1(data0[1]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I5(s_axi_araddr[1]),
        .O(p_3_in[3]));
  LUT6 #(
    .INIT(64'hA28AFFFFA28A0000)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I5(s_axi_araddr[2]),
        .O(p_3_in[4]));
  LUT6 #(
    .INIT(64'hAA8AFFFFAA8A0000)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(data0[3]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(p_3_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(data0[4]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .O(p_3_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(data0[5]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[5]),
        .O(p_3_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(data0[6]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[6]),
        .O(p_3_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(data0[7]),
        .I1(\save_init_bram_addr_ld[14]_i_3_n_0 ),
        .I2(s_axi_araddr[7]),
        .O(p_3_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[10]),
        .Q(data0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[11]),
        .Q(data0[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[12]),
        .Q(data0[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[13]),
        .Q(data0[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[14]),
        .Q(data0[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[3]),
        .Q(data0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[4]),
        .Q(data0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[5]),
        .Q(data0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[6]),
        .Q(data0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[7]),
        .Q(data0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[8]),
        .Q(data0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(p_3_in[9]),
        .Q(data0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(\wrap_burst_total[0]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize_2_sn_1),
        .I5(\wrap_burst_total[0]_i_3__0_n_0 ),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBCEF)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[2]),
        .O(\wrap_burst_total[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \wrap_burst_total[0]_i_3__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .O(\wrap_burst_total[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0808000000000800)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[1]),
        .I5(\wrap_burst_total[1]_i_2_n_0 ),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \wrap_burst_total[1]_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arsize[0]),
        .O(\wrap_burst_total[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(s_axi_arsize_2_sn_1),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(s_axi_arsize_2_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(SR));
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
