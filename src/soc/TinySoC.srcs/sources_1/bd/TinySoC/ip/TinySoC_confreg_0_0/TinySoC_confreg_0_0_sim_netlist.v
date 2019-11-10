// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 16:52:10 2019
// Host        : DESKTOP-GEFP0LA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/MaxXing/Documents/Verilog/TinyMIPS/soc/TinySoC.srcs/sources_1/bd/TinySoC/ip/TinySoC_confreg_0_0/TinySoC_confreg_0_0_sim_netlist.v
// Design      : TinySoC_confreg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TinySoC_confreg_0_0,confreg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "confreg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module TinySoC_confreg_0_0
   (aclk,
    timer_clk,
    aresetn,
    arid,
    araddr,
    arlen,
    arsize,
    arburst,
    arlock,
    arcache,
    arprot,
    arvalid,
    arready,
    rid,
    rdata,
    rresp,
    rlast,
    rvalid,
    rready,
    awid,
    awaddr,
    awlen,
    awsize,
    awburst,
    awlock,
    awcache,
    awprot,
    awvalid,
    awready,
    wid,
    wdata,
    wstrb,
    wlast,
    wvalid,
    wready,
    bid,
    bresp,
    bvalid,
    bready,
    ram_random_mask,
    led,
    led_rg0,
    led_rg1,
    num_csn,
    num_a_g,
    switch,
    btn_key_col,
    btn_key_row,
    btn_step,
    user_cr0,
    user_cr1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF interface_aximm, FREQ_HZ 60000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 timer_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timer_clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, INSERT_VIP 0" *) input timer_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARID" *) input [5:0]arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARADDR" *) input [31:0]araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARLEN" *) input [7:0]arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARSIZE" *) input [2:0]arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARBURST" *) input [1:0]arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARLOCK" *) input [1:0]arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARCACHE" *) input [3:0]arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARPROT" *) input [2:0]arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARVALID" *) input arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARREADY" *) output arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RID" *) output [5:0]rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RDATA" *) output [31:0]rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RRESP" *) output [1:0]rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RLAST" *) output rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RVALID" *) output rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RREADY" *) input rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWID" *) input [5:0]awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWADDR" *) input [31:0]awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWLEN" *) input [7:0]awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWSIZE" *) input [2:0]awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWBURST" *) input [1:0]awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWLOCK" *) input [1:0]awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWCACHE" *) input [3:0]awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWPROT" *) input [2:0]awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWVALID" *) input awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWREADY" *) output awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WID" *) input [5:0]wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WDATA" *) input [31:0]wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WSTRB" *) input [3:0]wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WLAST" *) input wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WVALID" *) input wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WREADY" *) output wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BID" *) output [5:0]bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BRESP" *) output [1:0]bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BVALID" *) output bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_aximm, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 60000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /main_mmcm_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input bready;
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

  wire \<const0> ;
  wire aclk;
  wire [31:0]araddr;
  wire aresetn;
  wire [5:0]arid;
  wire arready;
  wire arvalid;
  wire [31:0]awaddr;
  wire [5:0]awid;
  wire awready;
  wire awvalid;
  wire [5:0]bid;
  wire bready;
  wire [3:0]btn_key_col;
  wire [3:0]btn_key_row;
  wire [1:0]btn_step;
  wire bvalid;
  wire [15:0]led;
  wire [1:0]led_rg0;
  wire [1:0]led_rg1;
  wire n_0_541;
  wire [6:0]num_a_g;
  wire [7:0]num_csn;
  wire [4:0]ram_random_mask;
  wire [31:0]rdata;
  wire rlast;
  wire rready;
  wire rvalid;
  wire [7:0]switch;
  wire timer_clk;
  wire [31:0]user_cr0;
  wire [31:0]user_cr1;
  wire [31:0]wdata;
  wire wlast;
  wire wready;
  wire wvalid;

  assign bresp[1] = \<const0> ;
  assign bresp[0] = \<const0> ;
  assign rid[5:0] = bid;
  assign rresp[1] = \<const0> ;
  assign rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_541
       (.I0(aresetn),
        .O(n_0_541));
  TinySoC_confreg_0_0_confreg inst
       (.aclk(aclk),
        .araddr(araddr[15:0]),
        .aresetn(aresetn),
        .arid(arid),
        .arready(arready),
        .arvalid(arvalid),
        .awaddr(awaddr[15:0]),
        .awid(awid),
        .awready(awready),
        .awvalid(awvalid),
        .bid(bid),
        .bready(bready),
        .btn_key_col(btn_key_col),
        .btn_key_row(btn_key_row),
        .btn_step(btn_step),
        .bvalid(bvalid),
        .conf_rvalid_reg_reg_0(rvalid),
        .conf_wready_reg_reg_0(wready),
        .led(led),
        .led_rg0(led_rg0),
        .led_rg1(led_rg1),
        .num_a_g(num_a_g),
        .num_csn(num_csn),
        .ram_random_mask(ram_random_mask),
        .rdata(rdata),
        .rlast(rlast),
        .rready(rready),
        .switch(switch),
        .timer_clk(timer_clk),
        .user_cr0(user_cr0),
        .user_cr1(user_cr1),
        .wdata(wdata),
        .wlast(wlast),
        .wvalid(wvalid));
endmodule

(* ORIG_REF_NAME = "confreg" *) 
module TinySoC_confreg_0_0_confreg
   (bvalid,
    rlast,
    bid,
    user_cr0,
    user_cr1,
    led,
    led_rg0,
    led_rg1,
    rdata,
    num_csn,
    num_a_g,
    conf_wready_reg_reg_0,
    awready,
    conf_rvalid_reg_reg_0,
    arready,
    btn_key_col,
    ram_random_mask,
    arvalid,
    awvalid,
    bready,
    aclk,
    wdata,
    timer_clk,
    aresetn,
    wvalid,
    wlast,
    rready,
    btn_key_row,
    btn_step,
    switch,
    arid,
    awid,
    araddr,
    awaddr);
  output bvalid;
  output rlast;
  output [5:0]bid;
  output [31:0]user_cr0;
  output [31:0]user_cr1;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [31:0]rdata;
  output [7:0]num_csn;
  output [6:0]num_a_g;
  output conf_wready_reg_reg_0;
  output awready;
  output conf_rvalid_reg_reg_0;
  output arready;
  output [3:0]btn_key_col;
  output [4:0]ram_random_mask;
  input arvalid;
  input awvalid;
  input bready;
  input aclk;
  input [31:0]wdata;
  input timer_clk;
  input aresetn;
  input wvalid;
  input wlast;
  input rready;
  input [3:0]btn_key_row;
  input [1:0]btn_step;
  input [7:0]switch;
  input [5:0]arid;
  input [5:0]awid;
  input [15:0]araddr;
  input [15:0]awaddr;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire R_or_W;
  wire aclk;
  wire ar_enter;
  wire [15:0]araddr;
  wire aresetn;
  wire [5:0]arid;
  wire arready;
  wire arvalid;
  wire aw_enter;
  wire [15:0]awaddr;
  wire [5:0]awid;
  wire awready;
  wire awvalid;
  wire [5:0]bid;
  wire bready;
  wire [3:0]btn_key_col;
  wire [15:0]btn_key_r;
  wire btn_key_r0;
  wire \btn_key_r[0]_i_1_n_0 ;
  wire \btn_key_r[10]_i_1_n_0 ;
  wire \btn_key_r[10]_i_2_n_0 ;
  wire \btn_key_r[10]_i_3_n_0 ;
  wire \btn_key_r[11]_i_1_n_0 ;
  wire \btn_key_r[11]_i_2_n_0 ;
  wire \btn_key_r[11]_i_3_n_0 ;
  wire \btn_key_r[11]_i_4_n_0 ;
  wire \btn_key_r[11]_i_5_n_0 ;
  wire \btn_key_r[12]_i_1_n_0 ;
  wire \btn_key_r[12]_i_2_n_0 ;
  wire \btn_key_r[13]_i_1_n_0 ;
  wire \btn_key_r[14]_i_1_n_0 ;
  wire \btn_key_r[14]_i_2_n_0 ;
  wire \btn_key_r[14]_i_4_n_0 ;
  wire \btn_key_r[14]_i_6_n_0 ;
  wire \btn_key_r[15]_i_10_n_0 ;
  wire \btn_key_r[15]_i_11_n_0 ;
  wire \btn_key_r[15]_i_1_n_0 ;
  wire \btn_key_r[15]_i_2_n_0 ;
  wire \btn_key_r[15]_i_3_n_0 ;
  wire \btn_key_r[15]_i_4_n_0 ;
  wire \btn_key_r[15]_i_5_n_0 ;
  wire \btn_key_r[15]_i_6_n_0 ;
  wire \btn_key_r[15]_i_7_n_0 ;
  wire \btn_key_r[15]_i_9_n_0 ;
  wire \btn_key_r[1]_i_1_n_0 ;
  wire \btn_key_r[2]_i_1_n_0 ;
  wire \btn_key_r[3]_i_1_n_0 ;
  wire \btn_key_r[3]_i_2_n_0 ;
  wire \btn_key_r[3]_i_3_n_0 ;
  wire \btn_key_r[3]_i_4_n_0 ;
  wire \btn_key_r[3]_i_5_n_0 ;
  wire \btn_key_r[3]_i_6_n_0 ;
  wire \btn_key_r[3]_i_7_n_0 ;
  wire \btn_key_r[4]_i_1_n_0 ;
  wire \btn_key_r[5]_i_1_n_0 ;
  wire \btn_key_r[6]_i_1_n_0 ;
  wire \btn_key_r[6]_i_3_n_0 ;
  wire \btn_key_r[7]_i_1_n_0 ;
  wire \btn_key_r[7]_i_2_n_0 ;
  wire \btn_key_r[7]_i_3_n_0 ;
  wire \btn_key_r[7]_i_4_n_0 ;
  wire \btn_key_r[7]_i_5_n_0 ;
  wire \btn_key_r[8]_i_1_n_0 ;
  wire \btn_key_r[9]_i_1_n_0 ;
  wire [3:0]btn_key_row;
  wire btn_key_tmp1;
  wire btn_key_tmp10;
  wire btn_key_tmp11;
  wire btn_key_tmp12;
  wire btn_key_tmp14;
  wire btn_key_tmp15;
  wire btn_key_tmp2;
  wire btn_key_tmp3;
  wire btn_key_tmp4;
  wire btn_key_tmp5;
  wire btn_key_tmp6;
  wire btn_key_tmp7;
  wire btn_key_tmp8;
  wire btn_key_tmp9;
  wire [1:0]btn_step;
  wire btn_step0_r;
  wire btn_step0_r_i_1_n_0;
  wire btn_step1_r;
  wire btn_step1_r_i_1_n_0;
  wire [15:0]buf_addr;
  wire \buf_id[0]_i_1_n_0 ;
  wire \buf_id[1]_i_1_n_0 ;
  wire \buf_id[2]_i_1_n_0 ;
  wire \buf_id[3]_i_1_n_0 ;
  wire \buf_id[4]_i_1_n_0 ;
  wire \buf_id[5]_i_1_n_0 ;
  wire \buf_id[5]_i_3_n_0 ;
  wire busy;
  wire busy01_out;
  wire busy_i_1_n_0;
  wire bvalid;
  wire conf_bvalid_reg_i_1_n_0;
  wire conf_rdata_reg0;
  wire \conf_rdata_reg[0]_i_10_n_0 ;
  wire \conf_rdata_reg[0]_i_1_n_0 ;
  wire \conf_rdata_reg[0]_i_2_n_0 ;
  wire \conf_rdata_reg[0]_i_3_n_0 ;
  wire \conf_rdata_reg[0]_i_4_n_0 ;
  wire \conf_rdata_reg[0]_i_5_n_0 ;
  wire \conf_rdata_reg[0]_i_6_n_0 ;
  wire \conf_rdata_reg[0]_i_7_n_0 ;
  wire \conf_rdata_reg[0]_i_8_n_0 ;
  wire \conf_rdata_reg[0]_i_9_n_0 ;
  wire \conf_rdata_reg[10]_i_1_n_0 ;
  wire \conf_rdata_reg[10]_i_2_n_0 ;
  wire \conf_rdata_reg[10]_i_3_n_0 ;
  wire \conf_rdata_reg[10]_i_4_n_0 ;
  wire \conf_rdata_reg[10]_i_5_n_0 ;
  wire \conf_rdata_reg[10]_i_6_n_0 ;
  wire \conf_rdata_reg[11]_i_1_n_0 ;
  wire \conf_rdata_reg[11]_i_2_n_0 ;
  wire \conf_rdata_reg[11]_i_3_n_0 ;
  wire \conf_rdata_reg[11]_i_4_n_0 ;
  wire \conf_rdata_reg[11]_i_5_n_0 ;
  wire \conf_rdata_reg[11]_i_6_n_0 ;
  wire \conf_rdata_reg[11]_i_7_n_0 ;
  wire \conf_rdata_reg[12]_i_1_n_0 ;
  wire \conf_rdata_reg[12]_i_2_n_0 ;
  wire \conf_rdata_reg[12]_i_3_n_0 ;
  wire \conf_rdata_reg[12]_i_4_n_0 ;
  wire \conf_rdata_reg[12]_i_5_n_0 ;
  wire \conf_rdata_reg[12]_i_6_n_0 ;
  wire \conf_rdata_reg[13]_i_1_n_0 ;
  wire \conf_rdata_reg[13]_i_2_n_0 ;
  wire \conf_rdata_reg[13]_i_3_n_0 ;
  wire \conf_rdata_reg[13]_i_4_n_0 ;
  wire \conf_rdata_reg[13]_i_5_n_0 ;
  wire \conf_rdata_reg[13]_i_6_n_0 ;
  wire \conf_rdata_reg[13]_i_7_n_0 ;
  wire \conf_rdata_reg[14]_i_1_n_0 ;
  wire \conf_rdata_reg[14]_i_2_n_0 ;
  wire \conf_rdata_reg[14]_i_3_n_0 ;
  wire \conf_rdata_reg[14]_i_4_n_0 ;
  wire \conf_rdata_reg[14]_i_5_n_0 ;
  wire \conf_rdata_reg[14]_i_6_n_0 ;
  wire \conf_rdata_reg[14]_i_7_n_0 ;
  wire \conf_rdata_reg[14]_i_8_n_0 ;
  wire \conf_rdata_reg[14]_i_9_n_0 ;
  wire \conf_rdata_reg[15]_i_10_n_0 ;
  wire \conf_rdata_reg[15]_i_1_n_0 ;
  wire \conf_rdata_reg[15]_i_2_n_0 ;
  wire \conf_rdata_reg[15]_i_3_n_0 ;
  wire \conf_rdata_reg[15]_i_4_n_0 ;
  wire \conf_rdata_reg[15]_i_5_n_0 ;
  wire \conf_rdata_reg[15]_i_6_n_0 ;
  wire \conf_rdata_reg[15]_i_7_n_0 ;
  wire \conf_rdata_reg[15]_i_8_n_0 ;
  wire \conf_rdata_reg[15]_i_9_n_0 ;
  wire \conf_rdata_reg[16]_i_1_n_0 ;
  wire \conf_rdata_reg[16]_i_2_n_0 ;
  wire \conf_rdata_reg[16]_i_3_n_0 ;
  wire \conf_rdata_reg[16]_i_4_n_0 ;
  wire \conf_rdata_reg[16]_i_5_n_0 ;
  wire \conf_rdata_reg[16]_i_6_n_0 ;
  wire \conf_rdata_reg[17]_i_1_n_0 ;
  wire \conf_rdata_reg[17]_i_2_n_0 ;
  wire \conf_rdata_reg[17]_i_3_n_0 ;
  wire \conf_rdata_reg[17]_i_4_n_0 ;
  wire \conf_rdata_reg[17]_i_5_n_0 ;
  wire \conf_rdata_reg[17]_i_6_n_0 ;
  wire \conf_rdata_reg[18]_i_1_n_0 ;
  wire \conf_rdata_reg[18]_i_2_n_0 ;
  wire \conf_rdata_reg[18]_i_3_n_0 ;
  wire \conf_rdata_reg[18]_i_4_n_0 ;
  wire \conf_rdata_reg[18]_i_5_n_0 ;
  wire \conf_rdata_reg[18]_i_6_n_0 ;
  wire \conf_rdata_reg[19]_i_1_n_0 ;
  wire \conf_rdata_reg[19]_i_2_n_0 ;
  wire \conf_rdata_reg[19]_i_3_n_0 ;
  wire \conf_rdata_reg[19]_i_4_n_0 ;
  wire \conf_rdata_reg[19]_i_5_n_0 ;
  wire \conf_rdata_reg[19]_i_6_n_0 ;
  wire \conf_rdata_reg[1]_i_1_n_0 ;
  wire \conf_rdata_reg[1]_i_2_n_0 ;
  wire \conf_rdata_reg[1]_i_3_n_0 ;
  wire \conf_rdata_reg[1]_i_4_n_0 ;
  wire \conf_rdata_reg[1]_i_5_n_0 ;
  wire \conf_rdata_reg[1]_i_6_n_0 ;
  wire \conf_rdata_reg[1]_i_7_n_0 ;
  wire \conf_rdata_reg[1]_i_8_n_0 ;
  wire \conf_rdata_reg[20]_i_1_n_0 ;
  wire \conf_rdata_reg[20]_i_2_n_0 ;
  wire \conf_rdata_reg[20]_i_3_n_0 ;
  wire \conf_rdata_reg[20]_i_4_n_0 ;
  wire \conf_rdata_reg[20]_i_5_n_0 ;
  wire \conf_rdata_reg[20]_i_6_n_0 ;
  wire \conf_rdata_reg[21]_i_1_n_0 ;
  wire \conf_rdata_reg[21]_i_2_n_0 ;
  wire \conf_rdata_reg[21]_i_3_n_0 ;
  wire \conf_rdata_reg[21]_i_4_n_0 ;
  wire \conf_rdata_reg[21]_i_5_n_0 ;
  wire \conf_rdata_reg[21]_i_6_n_0 ;
  wire \conf_rdata_reg[22]_i_1_n_0 ;
  wire \conf_rdata_reg[22]_i_2_n_0 ;
  wire \conf_rdata_reg[22]_i_3_n_0 ;
  wire \conf_rdata_reg[22]_i_4_n_0 ;
  wire \conf_rdata_reg[22]_i_5_n_0 ;
  wire \conf_rdata_reg[22]_i_6_n_0 ;
  wire \conf_rdata_reg[23]_i_1_n_0 ;
  wire \conf_rdata_reg[23]_i_2_n_0 ;
  wire \conf_rdata_reg[23]_i_3_n_0 ;
  wire \conf_rdata_reg[23]_i_4_n_0 ;
  wire \conf_rdata_reg[23]_i_5_n_0 ;
  wire \conf_rdata_reg[23]_i_6_n_0 ;
  wire \conf_rdata_reg[24]_i_1_n_0 ;
  wire \conf_rdata_reg[24]_i_2_n_0 ;
  wire \conf_rdata_reg[24]_i_3_n_0 ;
  wire \conf_rdata_reg[24]_i_4_n_0 ;
  wire \conf_rdata_reg[24]_i_5_n_0 ;
  wire \conf_rdata_reg[24]_i_6_n_0 ;
  wire \conf_rdata_reg[25]_i_1_n_0 ;
  wire \conf_rdata_reg[25]_i_2_n_0 ;
  wire \conf_rdata_reg[25]_i_3_n_0 ;
  wire \conf_rdata_reg[25]_i_4_n_0 ;
  wire \conf_rdata_reg[25]_i_5_n_0 ;
  wire \conf_rdata_reg[25]_i_6_n_0 ;
  wire \conf_rdata_reg[26]_i_1_n_0 ;
  wire \conf_rdata_reg[26]_i_2_n_0 ;
  wire \conf_rdata_reg[26]_i_3_n_0 ;
  wire \conf_rdata_reg[26]_i_4_n_0 ;
  wire \conf_rdata_reg[26]_i_5_n_0 ;
  wire \conf_rdata_reg[26]_i_6_n_0 ;
  wire \conf_rdata_reg[27]_i_1_n_0 ;
  wire \conf_rdata_reg[27]_i_2_n_0 ;
  wire \conf_rdata_reg[27]_i_3_n_0 ;
  wire \conf_rdata_reg[27]_i_4_n_0 ;
  wire \conf_rdata_reg[27]_i_5_n_0 ;
  wire \conf_rdata_reg[27]_i_6_n_0 ;
  wire \conf_rdata_reg[28]_i_1_n_0 ;
  wire \conf_rdata_reg[28]_i_2_n_0 ;
  wire \conf_rdata_reg[28]_i_3_n_0 ;
  wire \conf_rdata_reg[28]_i_4_n_0 ;
  wire \conf_rdata_reg[28]_i_5_n_0 ;
  wire \conf_rdata_reg[28]_i_6_n_0 ;
  wire \conf_rdata_reg[29]_i_1_n_0 ;
  wire \conf_rdata_reg[29]_i_2_n_0 ;
  wire \conf_rdata_reg[29]_i_3_n_0 ;
  wire \conf_rdata_reg[29]_i_4_n_0 ;
  wire \conf_rdata_reg[29]_i_5_n_0 ;
  wire \conf_rdata_reg[29]_i_6_n_0 ;
  wire \conf_rdata_reg[2]_i_1_n_0 ;
  wire \conf_rdata_reg[2]_i_2_n_0 ;
  wire \conf_rdata_reg[2]_i_3_n_0 ;
  wire \conf_rdata_reg[2]_i_4_n_0 ;
  wire \conf_rdata_reg[2]_i_5_n_0 ;
  wire \conf_rdata_reg[2]_i_6_n_0 ;
  wire \conf_rdata_reg[2]_i_7_n_0 ;
  wire \conf_rdata_reg[2]_i_8_n_0 ;
  wire \conf_rdata_reg[30]_i_1_n_0 ;
  wire \conf_rdata_reg[30]_i_2_n_0 ;
  wire \conf_rdata_reg[30]_i_3_n_0 ;
  wire \conf_rdata_reg[30]_i_4_n_0 ;
  wire \conf_rdata_reg[30]_i_5_n_0 ;
  wire \conf_rdata_reg[30]_i_6_n_0 ;
  wire \conf_rdata_reg[31]_i_10_n_0 ;
  wire \conf_rdata_reg[31]_i_11_n_0 ;
  wire \conf_rdata_reg[31]_i_12_n_0 ;
  wire \conf_rdata_reg[31]_i_13_n_0 ;
  wire \conf_rdata_reg[31]_i_14_n_0 ;
  wire \conf_rdata_reg[31]_i_15_n_0 ;
  wire \conf_rdata_reg[31]_i_16_n_0 ;
  wire \conf_rdata_reg[31]_i_17_n_0 ;
  wire \conf_rdata_reg[31]_i_18_n_0 ;
  wire \conf_rdata_reg[31]_i_19_n_0 ;
  wire \conf_rdata_reg[31]_i_2_n_0 ;
  wire \conf_rdata_reg[31]_i_3_n_0 ;
  wire \conf_rdata_reg[31]_i_4_n_0 ;
  wire \conf_rdata_reg[31]_i_5_n_0 ;
  wire \conf_rdata_reg[31]_i_6_n_0 ;
  wire \conf_rdata_reg[31]_i_7_n_0 ;
  wire \conf_rdata_reg[31]_i_8_n_0 ;
  wire \conf_rdata_reg[31]_i_9_n_0 ;
  wire \conf_rdata_reg[3]_i_1_n_0 ;
  wire \conf_rdata_reg[3]_i_2_n_0 ;
  wire \conf_rdata_reg[3]_i_3_n_0 ;
  wire \conf_rdata_reg[3]_i_4_n_0 ;
  wire \conf_rdata_reg[3]_i_5_n_0 ;
  wire \conf_rdata_reg[3]_i_6_n_0 ;
  wire \conf_rdata_reg[3]_i_7_n_0 ;
  wire \conf_rdata_reg[3]_i_8_n_0 ;
  wire \conf_rdata_reg[4]_i_1_n_0 ;
  wire \conf_rdata_reg[4]_i_2_n_0 ;
  wire \conf_rdata_reg[4]_i_3_n_0 ;
  wire \conf_rdata_reg[4]_i_4_n_0 ;
  wire \conf_rdata_reg[4]_i_5_n_0 ;
  wire \conf_rdata_reg[4]_i_6_n_0 ;
  wire \conf_rdata_reg[4]_i_7_n_0 ;
  wire \conf_rdata_reg[4]_i_8_n_0 ;
  wire \conf_rdata_reg[5]_i_1_n_0 ;
  wire \conf_rdata_reg[5]_i_2_n_0 ;
  wire \conf_rdata_reg[5]_i_3_n_0 ;
  wire \conf_rdata_reg[5]_i_4_n_0 ;
  wire \conf_rdata_reg[5]_i_5_n_0 ;
  wire \conf_rdata_reg[5]_i_6_n_0 ;
  wire \conf_rdata_reg[5]_i_7_n_0 ;
  wire \conf_rdata_reg[5]_i_8_n_0 ;
  wire \conf_rdata_reg[6]_i_1_n_0 ;
  wire \conf_rdata_reg[6]_i_2_n_0 ;
  wire \conf_rdata_reg[6]_i_3_n_0 ;
  wire \conf_rdata_reg[6]_i_4_n_0 ;
  wire \conf_rdata_reg[6]_i_5_n_0 ;
  wire \conf_rdata_reg[6]_i_6_n_0 ;
  wire \conf_rdata_reg[6]_i_7_n_0 ;
  wire \conf_rdata_reg[6]_i_8_n_0 ;
  wire \conf_rdata_reg[7]_i_10_n_0 ;
  wire \conf_rdata_reg[7]_i_11_n_0 ;
  wire \conf_rdata_reg[7]_i_1_n_0 ;
  wire \conf_rdata_reg[7]_i_2_n_0 ;
  wire \conf_rdata_reg[7]_i_3_n_0 ;
  wire \conf_rdata_reg[7]_i_4_n_0 ;
  wire \conf_rdata_reg[7]_i_5_n_0 ;
  wire \conf_rdata_reg[7]_i_6_n_0 ;
  wire \conf_rdata_reg[7]_i_7_n_0 ;
  wire \conf_rdata_reg[7]_i_8_n_0 ;
  wire \conf_rdata_reg[7]_i_9_n_0 ;
  wire \conf_rdata_reg[8]_i_1_n_0 ;
  wire \conf_rdata_reg[8]_i_2_n_0 ;
  wire \conf_rdata_reg[8]_i_3_n_0 ;
  wire \conf_rdata_reg[8]_i_4_n_0 ;
  wire \conf_rdata_reg[8]_i_5_n_0 ;
  wire \conf_rdata_reg[8]_i_6_n_0 ;
  wire \conf_rdata_reg[9]_i_1_n_0 ;
  wire \conf_rdata_reg[9]_i_2_n_0 ;
  wire \conf_rdata_reg[9]_i_3_n_0 ;
  wire \conf_rdata_reg[9]_i_4_n_0 ;
  wire \conf_rdata_reg[9]_i_5_n_0 ;
  wire \conf_rdata_reg[9]_i_6_n_0 ;
  wire \conf_rdata_reg[9]_i_7_n_0 ;
  wire conf_rvalid_reg_i_1_n_0;
  wire conf_rvalid_reg_reg_0;
  wire [31:0]conf_wdata_r;
  wire [31:0]conf_wdata_r1;
  wire \conf_wdata_r[31]_i_3_n_0 ;
  wire conf_wdata_r_3;
  wire conf_wready_reg_i_1_n_0;
  wire conf_wready_reg_reg_0;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire \cr0[31]_i_2_n_0 ;
  wire \cr1[31]_i_2_n_0 ;
  wire \cr1[31]_i_3_n_0 ;
  wire [31:0]cr2;
  wire [31:0]cr3;
  wire [31:0]cr4;
  wire \cr4[31]_i_2_n_0 ;
  wire [31:0]cr5;
  wire [31:0]cr6;
  wire \cr6[31]_i_2_n_0 ;
  wire [31:0]cr7;
  wire [31:0]data;
  wire [3:0]data0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire [31:0]io_simu;
  wire \io_simu[31]_i_2_n_0 ;
  wire \io_simu[31]_i_3_n_0 ;
  wire \io_simu[31]_i_4_n_0 ;
  wire \io_simu[31]_i_5_n_0 ;
  wire key_count0;
  wire \key_count[0]_i_3_n_0 ;
  wire \key_count_reg[0]_i_2_n_0 ;
  wire \key_count_reg[0]_i_2_n_1 ;
  wire \key_count_reg[0]_i_2_n_2 ;
  wire \key_count_reg[0]_i_2_n_3 ;
  wire \key_count_reg[0]_i_2_n_4 ;
  wire \key_count_reg[0]_i_2_n_5 ;
  wire \key_count_reg[0]_i_2_n_6 ;
  wire \key_count_reg[0]_i_2_n_7 ;
  wire \key_count_reg[12]_i_1_n_0 ;
  wire \key_count_reg[12]_i_1_n_1 ;
  wire \key_count_reg[12]_i_1_n_2 ;
  wire \key_count_reg[12]_i_1_n_3 ;
  wire \key_count_reg[12]_i_1_n_4 ;
  wire \key_count_reg[12]_i_1_n_5 ;
  wire \key_count_reg[12]_i_1_n_6 ;
  wire \key_count_reg[12]_i_1_n_7 ;
  wire \key_count_reg[16]_i_1_n_1 ;
  wire \key_count_reg[16]_i_1_n_2 ;
  wire \key_count_reg[16]_i_1_n_3 ;
  wire \key_count_reg[16]_i_1_n_4 ;
  wire \key_count_reg[16]_i_1_n_5 ;
  wire \key_count_reg[16]_i_1_n_6 ;
  wire \key_count_reg[16]_i_1_n_7 ;
  wire \key_count_reg[4]_i_1_n_0 ;
  wire \key_count_reg[4]_i_1_n_1 ;
  wire \key_count_reg[4]_i_1_n_2 ;
  wire \key_count_reg[4]_i_1_n_3 ;
  wire \key_count_reg[4]_i_1_n_4 ;
  wire \key_count_reg[4]_i_1_n_5 ;
  wire \key_count_reg[4]_i_1_n_6 ;
  wire \key_count_reg[4]_i_1_n_7 ;
  wire \key_count_reg[8]_i_1_n_0 ;
  wire \key_count_reg[8]_i_1_n_1 ;
  wire \key_count_reg[8]_i_1_n_2 ;
  wire \key_count_reg[8]_i_1_n_3 ;
  wire \key_count_reg[8]_i_1_n_4 ;
  wire \key_count_reg[8]_i_1_n_5 ;
  wire \key_count_reg[8]_i_1_n_6 ;
  wire \key_count_reg[8]_i_1_n_7 ;
  wire \key_count_reg_n_0_[0] ;
  wire \key_count_reg_n_0_[10] ;
  wire \key_count_reg_n_0_[11] ;
  wire \key_count_reg_n_0_[12] ;
  wire \key_count_reg_n_0_[13] ;
  wire \key_count_reg_n_0_[14] ;
  wire \key_count_reg_n_0_[15] ;
  wire \key_count_reg_n_0_[16] ;
  wire \key_count_reg_n_0_[17] ;
  wire \key_count_reg_n_0_[18] ;
  wire \key_count_reg_n_0_[1] ;
  wire \key_count_reg_n_0_[2] ;
  wire \key_count_reg_n_0_[3] ;
  wire \key_count_reg_n_0_[4] ;
  wire \key_count_reg_n_0_[5] ;
  wire \key_count_reg_n_0_[6] ;
  wire \key_count_reg_n_0_[7] ;
  wire \key_count_reg_n_0_[8] ;
  wire \key_count_reg_n_0_[9] ;
  wire key_flag;
  wire key_flag_i_1_n_0;
  wire key_flag_i_2_n_0;
  wire key_sample;
  wire key_start1__1;
  wire [15:0]led;
  wire \led_data[0]_i_1_n_0 ;
  wire \led_data[10]_i_1_n_0 ;
  wire \led_data[11]_i_1_n_0 ;
  wire \led_data[12]_i_1_n_0 ;
  wire \led_data[13]_i_1_n_0 ;
  wire \led_data[14]_i_1_n_0 ;
  wire \led_data[15]_i_1_n_0 ;
  wire \led_data[15]_i_2_n_0 ;
  wire \led_data[15]_i_3_n_0 ;
  wire \led_data[15]_i_4_n_0 ;
  wire \led_data[15]_i_5_n_0 ;
  wire \led_data[15]_i_6_n_0 ;
  wire \led_data[1]_i_1_n_0 ;
  wire \led_data[2]_i_1_n_0 ;
  wire \led_data[3]_i_1_n_0 ;
  wire \led_data[4]_i_1_n_0 ;
  wire \led_data[5]_i_1_n_0 ;
  wire \led_data[6]_i_1_n_0 ;
  wire \led_data[7]_i_1_n_0 ;
  wire \led_data[8]_i_1_n_0 ;
  wire \led_data[9]_i_1_n_0 ;
  wire \led_data_reg_n_0_[16] ;
  wire \led_data_reg_n_0_[17] ;
  wire \led_data_reg_n_0_[18] ;
  wire \led_data_reg_n_0_[19] ;
  wire \led_data_reg_n_0_[20] ;
  wire \led_data_reg_n_0_[21] ;
  wire \led_data_reg_n_0_[22] ;
  wire \led_data_reg_n_0_[23] ;
  wire \led_data_reg_n_0_[24] ;
  wire \led_data_reg_n_0_[25] ;
  wire \led_data_reg_n_0_[26] ;
  wire \led_data_reg_n_0_[27] ;
  wire \led_data_reg_n_0_[28] ;
  wire \led_data_reg_n_0_[29] ;
  wire \led_data_reg_n_0_[30] ;
  wire \led_data_reg_n_0_[31] ;
  wire [1:0]led_rg0;
  wire \led_rg0_data[1]_i_2_n_0 ;
  wire \led_rg0_data[1]_i_3_n_0 ;
  wire \led_rg0_data[1]_i_4_n_0 ;
  wire \led_rg0_data[1]_i_5_n_0 ;
  wire \led_rg0_data_reg_n_0_[10] ;
  wire \led_rg0_data_reg_n_0_[11] ;
  wire \led_rg0_data_reg_n_0_[12] ;
  wire \led_rg0_data_reg_n_0_[13] ;
  wire \led_rg0_data_reg_n_0_[14] ;
  wire \led_rg0_data_reg_n_0_[15] ;
  wire \led_rg0_data_reg_n_0_[16] ;
  wire \led_rg0_data_reg_n_0_[17] ;
  wire \led_rg0_data_reg_n_0_[18] ;
  wire \led_rg0_data_reg_n_0_[19] ;
  wire \led_rg0_data_reg_n_0_[20] ;
  wire \led_rg0_data_reg_n_0_[21] ;
  wire \led_rg0_data_reg_n_0_[22] ;
  wire \led_rg0_data_reg_n_0_[23] ;
  wire \led_rg0_data_reg_n_0_[24] ;
  wire \led_rg0_data_reg_n_0_[25] ;
  wire \led_rg0_data_reg_n_0_[26] ;
  wire \led_rg0_data_reg_n_0_[27] ;
  wire \led_rg0_data_reg_n_0_[28] ;
  wire \led_rg0_data_reg_n_0_[29] ;
  wire \led_rg0_data_reg_n_0_[2] ;
  wire \led_rg0_data_reg_n_0_[30] ;
  wire \led_rg0_data_reg_n_0_[31] ;
  wire \led_rg0_data_reg_n_0_[3] ;
  wire \led_rg0_data_reg_n_0_[4] ;
  wire \led_rg0_data_reg_n_0_[5] ;
  wire \led_rg0_data_reg_n_0_[6] ;
  wire \led_rg0_data_reg_n_0_[7] ;
  wire \led_rg0_data_reg_n_0_[8] ;
  wire \led_rg0_data_reg_n_0_[9] ;
  wire [1:0]led_rg1;
  wire \led_rg1_data[1]_i_2_n_0 ;
  wire \led_rg1_data_reg_n_0_[10] ;
  wire \led_rg1_data_reg_n_0_[11] ;
  wire \led_rg1_data_reg_n_0_[12] ;
  wire \led_rg1_data_reg_n_0_[13] ;
  wire \led_rg1_data_reg_n_0_[14] ;
  wire \led_rg1_data_reg_n_0_[15] ;
  wire \led_rg1_data_reg_n_0_[16] ;
  wire \led_rg1_data_reg_n_0_[17] ;
  wire \led_rg1_data_reg_n_0_[18] ;
  wire \led_rg1_data_reg_n_0_[19] ;
  wire \led_rg1_data_reg_n_0_[20] ;
  wire \led_rg1_data_reg_n_0_[21] ;
  wire \led_rg1_data_reg_n_0_[22] ;
  wire \led_rg1_data_reg_n_0_[23] ;
  wire \led_rg1_data_reg_n_0_[24] ;
  wire \led_rg1_data_reg_n_0_[25] ;
  wire \led_rg1_data_reg_n_0_[26] ;
  wire \led_rg1_data_reg_n_0_[27] ;
  wire \led_rg1_data_reg_n_0_[28] ;
  wire \led_rg1_data_reg_n_0_[29] ;
  wire \led_rg1_data_reg_n_0_[2] ;
  wire \led_rg1_data_reg_n_0_[30] ;
  wire \led_rg1_data_reg_n_0_[31] ;
  wire \led_rg1_data_reg_n_0_[3] ;
  wire \led_rg1_data_reg_n_0_[4] ;
  wire \led_rg1_data_reg_n_0_[5] ;
  wire \led_rg1_data_reg_n_0_[6] ;
  wire \led_rg1_data_reg_n_0_[7] ;
  wire \led_rg1_data_reg_n_0_[8] ;
  wire \led_rg1_data_reg_n_0_[9] ;
  wire no_mask;
  wire no_mask_i_1_n_0;
  wire no_mask_i_2_n_0;
  wire no_mask_i_3_n_0;
  wire [6:0]num_a_g;
  wire [6:0]num_a_g_2;
  wire [7:0]num_csn;
  wire \num_csn[0]_i_1_n_0 ;
  wire \num_csn[1]_i_1_n_0 ;
  wire \num_csn[2]_i_1_n_0 ;
  wire \num_csn[3]_i_1_n_0 ;
  wire \num_csn[4]_i_1_n_0 ;
  wire \num_csn[5]_i_1_n_0 ;
  wire \num_csn[6]_i_1_n_0 ;
  wire \num_csn[7]_i_1_n_0 ;
  wire \num_data_reg_n_0_[0] ;
  wire \num_data_reg_n_0_[1] ;
  wire \num_data_reg_n_0_[2] ;
  wire \num_data_reg_n_0_[3] ;
  wire num_monitor;
  wire num_monitor_i_1_n_0;
  wire num_monitor_i_2_n_0;
  wire num_monitor_i_3_n_0;
  wire open_trace;
  wire open_trace_i_10_n_0;
  wire open_trace_i_1_n_0;
  wire open_trace_i_2_n_0;
  wire open_trace_i_3_n_0;
  wire open_trace_i_4_n_0;
  wire open_trace_i_5_n_0;
  wire open_trace_i_6_n_0;
  wire open_trace_i_7_n_0;
  wire open_trace_i_8_n_0;
  wire open_trace_i_9_n_0;
  wire [3:0]p_0_in;
  wire p_0_in0_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in_1;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in38_in;
  wire p_15_in40_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire [15:0]p_1_in;
  wire p_1_in1_in;
  wire p_1_in_0;
  wire p_28_in;
  wire p_2_in31_in;
  wire p_8_in;
  wire p_9_in;
  wire \pseudo_random_23[0]_i_1_n_0 ;
  wire \pseudo_random_23[10]_i_1_n_0 ;
  wire \pseudo_random_23[11]_i_1_n_0 ;
  wire \pseudo_random_23[12]_i_1_n_0 ;
  wire \pseudo_random_23[13]_i_1_n_0 ;
  wire \pseudo_random_23[14]_i_1_n_0 ;
  wire \pseudo_random_23[15]_i_1_n_0 ;
  wire \pseudo_random_23[1]_i_1_n_0 ;
  wire \pseudo_random_23[2]_i_1_n_0 ;
  wire \pseudo_random_23[3]_i_1_n_0 ;
  wire \pseudo_random_23[4]_i_1_n_0 ;
  wire \pseudo_random_23[5]_i_1_n_0 ;
  wire \pseudo_random_23[6]_i_1_n_0 ;
  wire \pseudo_random_23[7]_i_1_n_0 ;
  wire \pseudo_random_23[8]_i_1_n_0 ;
  wire \pseudo_random_23[9]_i_1_n_0 ;
  wire \pseudo_random_23_reg_n_0_[0] ;
  wire \pseudo_random_23_reg_n_0_[10] ;
  wire \pseudo_random_23_reg_n_0_[12] ;
  wire \pseudo_random_23_reg_n_0_[18] ;
  wire \pseudo_random_23_reg_n_0_[21] ;
  wire \pseudo_random_23_reg_n_0_[4] ;
  wire \pseudo_random_23_reg_n_0_[6] ;
  wire \pseudo_random_23_reg_n_0_[9] ;
  wire r_retire__1;
  wire [4:0]ram_random_mask;
  wire [31:0]rdata;
  wire rlast;
  wire rready;
  wire [3:0]scan_data;
  wire \scan_data[0]_i_2_n_0 ;
  wire \scan_data[0]_i_3_n_0 ;
  wire \scan_data[1]_i_2_n_0 ;
  wire \scan_data[1]_i_3_n_0 ;
  wire \scan_data[2]_i_2_n_0 ;
  wire \scan_data[2]_i_3_n_0 ;
  wire \scan_data[3]_i_2_n_0 ;
  wire \scan_data[3]_i_3_n_0 ;
  wire [3:0]scan_data_4;
  wire [2:0]sel0;
  wire short_delay;
  wire short_delay_i_1_n_0;
  wire short_delay_i_2_n_0;
  wire short_delay_i_3_n_0;
  wire [2:0]state;
  wire state_count0;
  wire [3:3]state_count_reg__0;
  wire \state_count_reg_n_0_[0] ;
  wire \state_count_reg_n_0_[1] ;
  wire \state_count_reg_n_0_[2] ;
  wire step0_count0;
  wire \step0_count[0]_i_3_n_0 ;
  wire \step0_count_reg[0]_i_2_n_0 ;
  wire \step0_count_reg[0]_i_2_n_1 ;
  wire \step0_count_reg[0]_i_2_n_2 ;
  wire \step0_count_reg[0]_i_2_n_3 ;
  wire \step0_count_reg[0]_i_2_n_4 ;
  wire \step0_count_reg[0]_i_2_n_5 ;
  wire \step0_count_reg[0]_i_2_n_6 ;
  wire \step0_count_reg[0]_i_2_n_7 ;
  wire \step0_count_reg[12]_i_1_n_0 ;
  wire \step0_count_reg[12]_i_1_n_1 ;
  wire \step0_count_reg[12]_i_1_n_2 ;
  wire \step0_count_reg[12]_i_1_n_3 ;
  wire \step0_count_reg[12]_i_1_n_4 ;
  wire \step0_count_reg[12]_i_1_n_5 ;
  wire \step0_count_reg[12]_i_1_n_6 ;
  wire \step0_count_reg[12]_i_1_n_7 ;
  wire \step0_count_reg[16]_i_1_n_1 ;
  wire \step0_count_reg[16]_i_1_n_2 ;
  wire \step0_count_reg[16]_i_1_n_3 ;
  wire \step0_count_reg[16]_i_1_n_4 ;
  wire \step0_count_reg[16]_i_1_n_5 ;
  wire \step0_count_reg[16]_i_1_n_6 ;
  wire \step0_count_reg[16]_i_1_n_7 ;
  wire \step0_count_reg[4]_i_1_n_0 ;
  wire \step0_count_reg[4]_i_1_n_1 ;
  wire \step0_count_reg[4]_i_1_n_2 ;
  wire \step0_count_reg[4]_i_1_n_3 ;
  wire \step0_count_reg[4]_i_1_n_4 ;
  wire \step0_count_reg[4]_i_1_n_5 ;
  wire \step0_count_reg[4]_i_1_n_6 ;
  wire \step0_count_reg[4]_i_1_n_7 ;
  wire \step0_count_reg[8]_i_1_n_0 ;
  wire \step0_count_reg[8]_i_1_n_1 ;
  wire \step0_count_reg[8]_i_1_n_2 ;
  wire \step0_count_reg[8]_i_1_n_3 ;
  wire \step0_count_reg[8]_i_1_n_4 ;
  wire \step0_count_reg[8]_i_1_n_5 ;
  wire \step0_count_reg[8]_i_1_n_6 ;
  wire \step0_count_reg[8]_i_1_n_7 ;
  wire \step0_count_reg_n_0_[0] ;
  wire \step0_count_reg_n_0_[10] ;
  wire \step0_count_reg_n_0_[11] ;
  wire \step0_count_reg_n_0_[12] ;
  wire \step0_count_reg_n_0_[13] ;
  wire \step0_count_reg_n_0_[14] ;
  wire \step0_count_reg_n_0_[15] ;
  wire \step0_count_reg_n_0_[16] ;
  wire \step0_count_reg_n_0_[17] ;
  wire \step0_count_reg_n_0_[18] ;
  wire \step0_count_reg_n_0_[1] ;
  wire \step0_count_reg_n_0_[2] ;
  wire \step0_count_reg_n_0_[3] ;
  wire \step0_count_reg_n_0_[4] ;
  wire \step0_count_reg_n_0_[5] ;
  wire \step0_count_reg_n_0_[6] ;
  wire \step0_count_reg_n_0_[7] ;
  wire \step0_count_reg_n_0_[8] ;
  wire \step0_count_reg_n_0_[9] ;
  wire step0_flag;
  wire step0_flag_i_1_n_0;
  wire step0_sample;
  wire step1_count0;
  wire \step1_count[0]_i_3_n_0 ;
  wire \step1_count_reg[0]_i_2_n_0 ;
  wire \step1_count_reg[0]_i_2_n_1 ;
  wire \step1_count_reg[0]_i_2_n_2 ;
  wire \step1_count_reg[0]_i_2_n_3 ;
  wire \step1_count_reg[0]_i_2_n_4 ;
  wire \step1_count_reg[0]_i_2_n_5 ;
  wire \step1_count_reg[0]_i_2_n_6 ;
  wire \step1_count_reg[0]_i_2_n_7 ;
  wire \step1_count_reg[12]_i_1_n_0 ;
  wire \step1_count_reg[12]_i_1_n_1 ;
  wire \step1_count_reg[12]_i_1_n_2 ;
  wire \step1_count_reg[12]_i_1_n_3 ;
  wire \step1_count_reg[12]_i_1_n_4 ;
  wire \step1_count_reg[12]_i_1_n_5 ;
  wire \step1_count_reg[12]_i_1_n_6 ;
  wire \step1_count_reg[12]_i_1_n_7 ;
  wire \step1_count_reg[16]_i_1_n_1 ;
  wire \step1_count_reg[16]_i_1_n_2 ;
  wire \step1_count_reg[16]_i_1_n_3 ;
  wire \step1_count_reg[16]_i_1_n_4 ;
  wire \step1_count_reg[16]_i_1_n_5 ;
  wire \step1_count_reg[16]_i_1_n_6 ;
  wire \step1_count_reg[16]_i_1_n_7 ;
  wire \step1_count_reg[4]_i_1_n_0 ;
  wire \step1_count_reg[4]_i_1_n_1 ;
  wire \step1_count_reg[4]_i_1_n_2 ;
  wire \step1_count_reg[4]_i_1_n_3 ;
  wire \step1_count_reg[4]_i_1_n_4 ;
  wire \step1_count_reg[4]_i_1_n_5 ;
  wire \step1_count_reg[4]_i_1_n_6 ;
  wire \step1_count_reg[4]_i_1_n_7 ;
  wire \step1_count_reg[8]_i_1_n_0 ;
  wire \step1_count_reg[8]_i_1_n_1 ;
  wire \step1_count_reg[8]_i_1_n_2 ;
  wire \step1_count_reg[8]_i_1_n_3 ;
  wire \step1_count_reg[8]_i_1_n_4 ;
  wire \step1_count_reg[8]_i_1_n_5 ;
  wire \step1_count_reg[8]_i_1_n_6 ;
  wire \step1_count_reg[8]_i_1_n_7 ;
  wire \step1_count_reg_n_0_[0] ;
  wire \step1_count_reg_n_0_[10] ;
  wire \step1_count_reg_n_0_[11] ;
  wire \step1_count_reg_n_0_[12] ;
  wire \step1_count_reg_n_0_[13] ;
  wire \step1_count_reg_n_0_[14] ;
  wire \step1_count_reg_n_0_[15] ;
  wire \step1_count_reg_n_0_[16] ;
  wire \step1_count_reg_n_0_[17] ;
  wire \step1_count_reg_n_0_[18] ;
  wire \step1_count_reg_n_0_[1] ;
  wire \step1_count_reg_n_0_[2] ;
  wire \step1_count_reg_n_0_[3] ;
  wire \step1_count_reg_n_0_[4] ;
  wire \step1_count_reg_n_0_[5] ;
  wire \step1_count_reg_n_0_[6] ;
  wire \step1_count_reg_n_0_[7] ;
  wire \step1_count_reg_n_0_[8] ;
  wire \step1_count_reg_n_0_[9] ;
  wire step1_flag;
  wire step1_flag_i_1_n_0;
  wire step1_sample;
  wire [7:0]switch;
  wire \timer[0]_i_2_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[24]_i_2_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[28]_i_2_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_5_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire timer_clk;
  wire [31:0]timer_r1;
  wire [31:0]timer_r2;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_1_n_0 ;
  wire \timer_reg[0]_i_1_n_1 ;
  wire \timer_reg[0]_i_1_n_2 ;
  wire \timer_reg[0]_i_1_n_3 ;
  wire \timer_reg[0]_i_1_n_4 ;
  wire \timer_reg[0]_i_1_n_5 ;
  wire \timer_reg[0]_i_1_n_6 ;
  wire \timer_reg[0]_i_1_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_1 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_1 ;
  wire \timer_reg[20]_i_1_n_2 ;
  wire \timer_reg[20]_i_1_n_3 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_1 ;
  wire \timer_reg[24]_i_1_n_2 ;
  wire \timer_reg[24]_i_1_n_3 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[28]_i_1_n_1 ;
  wire \timer_reg[28]_i_1_n_2 ;
  wire \timer_reg[28]_i_1_n_3 ;
  wire \timer_reg[28]_i_1_n_4 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire [31:0]user_cr0;
  wire [31:0]user_cr1;
  wire [7:0]virtual_uart_data;
  wire \virtual_uart_data[7]_i_2_n_0 ;
  wire \virtual_uart_data[7]_i_3_n_0 ;
  wire [31:0]wdata;
  wire wlast;
  wire write_cr0;
  wire write_cr1;
  wire write_cr2;
  wire write_cr3;
  wire write_cr4;
  wire write_cr5;
  wire write_cr6;
  wire write_cr7;
  wire write_io_simu;
  wire write_led_rg0;
  wire write_led_rg1;
  wire write_num;
  wire write_timer;
  wire write_timer_begin;
  wire write_timer_begin_i_1_n_0;
  wire write_timer_begin_r1;
  wire write_timer_begin_r2;
  wire write_timer_begin_r3;
  wire write_timer_end_r1;
  wire write_timer_end_r2;
  wire write_uart_valid;
  wire wvalid;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_key_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0717FFFF47460000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(key_start1__1),
        .I3(key_sample),
        .I4(state_count_reg__0),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20FF4000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(key_start1__1),
        .I3(state_count_reg__0),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088FFFF00100000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(key_start1__1),
        .I1(state[0]),
        .I2(key_sample),
        .I3(state[1]),
        .I4(state_count_reg__0),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(btn_key_row[3]),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .O(key_start1__1));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:011,iSTATE2:010,iSTATE3:001,iSTATE4:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:011,iSTATE2:010,iSTATE3:001,iSTATE4:000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:101,iSTATE0:100,iSTATE1:011,iSTATE2:010,iSTATE3:001,iSTATE4:000" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    R_or_W_i_1
       (.I0(arvalid),
        .I1(awvalid),
        .I2(R_or_W),
        .O(ar_enter));
  FDRE R_or_W_reg
       (.C(aclk),
        .CE(busy01_out),
        .D(ar_enter),
        .Q(R_or_W),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    arready_INST_0
       (.I0(R_or_W),
        .I1(awvalid),
        .I2(busy),
        .O(arready));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h23)) 
    awready_INST_0
       (.I0(R_or_W),
        .I1(busy),
        .I2(arvalid),
        .O(awready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \btn_key_col[0]_INST_0 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(btn_key_col[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \btn_key_col[1]_INST_0 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(btn_key_col[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \btn_key_col[2]_INST_0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(btn_key_col[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \btn_key_col[3]_INST_0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(btn_key_col[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \btn_key_r[0]_i_1 
       (.I0(btn_key_r[0]),
        .I1(btn_key_r0),
        .I2(btn_key_tmp1),
        .I3(\btn_key_r[14]_i_4_n_0 ),
        .O(\btn_key_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001FF00000000)) 
    \btn_key_r[10]_i_1 
       (.I0(\btn_key_r[11]_i_2_n_0 ),
        .I1(\btn_key_r[10]_i_2_n_0 ),
        .I2(\btn_key_r[11]_i_3_n_0 ),
        .I3(btn_key_r0),
        .I4(\btn_key_r[14]_i_4_n_0 ),
        .I5(\btn_key_r[10]_i_3_n_0 ),
        .O(\btn_key_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6000000000000000)) 
    \btn_key_r[10]_i_2 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(\btn_key_r[14]_i_6_n_0 ),
        .I5(state[0]),
        .O(\btn_key_r[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \btn_key_r[10]_i_3 
       (.I0(btn_key_tmp11),
        .I1(btn_key_r0),
        .I2(btn_key_r[10]),
        .O(\btn_key_r[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \btn_key_r[11]_i_1 
       (.I0(\btn_key_r[15]_i_4_n_0 ),
        .I1(\btn_key_r[11]_i_2_n_0 ),
        .I2(\btn_key_r[11]_i_3_n_0 ),
        .I3(\btn_key_r[11]_i_4_n_0 ),
        .I4(\btn_key_r[15]_i_2_n_0 ),
        .I5(\btn_key_r[11]_i_5_n_0 ),
        .O(\btn_key_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440800080000000)) 
    \btn_key_r[11]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[3]),
        .I5(btn_key_row[2]),
        .O(\btn_key_r[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0AA0C000C0000000)) 
    \btn_key_r[11]_i_3 
       (.I0(\btn_key_r[15]_i_11_n_0 ),
        .I1(\btn_key_r[15]_i_10_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[3]),
        .I5(btn_key_row[2]),
        .O(\btn_key_r[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \btn_key_r[11]_i_4 
       (.I0(btn_key_tmp14),
        .I1(btn_key_r[11]),
        .I2(btn_key_r0),
        .I3(btn_key_tmp15),
        .I4(btn_key_tmp11),
        .I5(\btn_key_r[10]_i_2_n_0 ),
        .O(\btn_key_r[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \btn_key_r[11]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(p_0_in7_in),
        .I4(btn_key_r0),
        .I5(btn_key_r[11]),
        .O(\btn_key_r[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[11]_i_6 
       (.I0(\btn_key_r[15]_i_7_n_0 ),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(btn_key_tmp14));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[11]_i_7 
       (.I0(\btn_key_r[15]_i_7_n_0 ),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .O(btn_key_tmp15));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[11]_i_8 
       (.I0(\btn_key_r[15]_i_11_n_0 ),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .O(btn_key_tmp11));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[11]_i_9 
       (.I0(btn_key_row[2]),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .O(p_0_in7_in));
  LUT5 #(
    .INIT(32'h07030400)) 
    \btn_key_r[12]_i_1 
       (.I0(\btn_key_r[12]_i_2_n_0 ),
        .I1(btn_key_r0),
        .I2(\btn_key_r[14]_i_4_n_0 ),
        .I3(btn_key_tmp4),
        .I4(btn_key_r[12]),
        .O(\btn_key_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6080000000000000)) 
    \btn_key_r[12]_i_2 
       (.I0(btn_key_row[0]),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(\btn_key_r[14]_i_6_n_0 ),
        .I5(state[0]),
        .O(\btn_key_r[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \btn_key_r[12]_i_3 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[2]),
        .I5(btn_key_row[3]),
        .O(btn_key_tmp4));
  LUT5 #(
    .INIT(32'h07030400)) 
    \btn_key_r[13]_i_1 
       (.I0(\btn_key_r[14]_i_2_n_0 ),
        .I1(btn_key_r0),
        .I2(\btn_key_r[14]_i_4_n_0 ),
        .I3(btn_key_tmp8),
        .I4(btn_key_r[13]),
        .O(\btn_key_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \btn_key_r[13]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[2]),
        .I5(btn_key_row[3]),
        .O(btn_key_tmp8));
  LUT6 #(
    .INIT(64'h001F000F00100000)) 
    \btn_key_r[14]_i_1 
       (.I0(\btn_key_r[15]_i_5_n_0 ),
        .I1(\btn_key_r[14]_i_2_n_0 ),
        .I2(btn_key_r0),
        .I3(\btn_key_r[14]_i_4_n_0 ),
        .I4(btn_key_tmp12),
        .I5(btn_key_r[14]),
        .O(\btn_key_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CC08000C0000000)) 
    \btn_key_r[14]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[3]),
        .I5(btn_key_row[2]),
        .O(\btn_key_r[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \btn_key_r[14]_i_3 
       (.I0(key_start1__1),
        .I1(state[2]),
        .I2(state[1]),
        .O(btn_key_r0));
  LUT6 #(
    .INIT(64'hDDDDFFDD75557757)) 
    \btn_key_r[14]_i_4 
       (.I0(aresetn),
        .I1(state[2]),
        .I2(key_sample),
        .I3(key_start1__1),
        .I4(state[0]),
        .I5(state[1]),
        .O(\btn_key_r[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[14]_i_5 
       (.I0(\btn_key_r[15]_i_11_n_0 ),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[3]),
        .O(btn_key_tmp12));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \btn_key_r[14]_i_6 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\btn_key_r[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55570000)) 
    \btn_key_r[15]_i_1 
       (.I0(\btn_key_r[15]_i_2_n_0 ),
        .I1(\btn_key_r[15]_i_3_n_0 ),
        .I2(\btn_key_r[15]_i_4_n_0 ),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_6_n_0 ),
        .O(\btn_key_r[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \btn_key_r[15]_i_10 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\btn_key_r[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \btn_key_r[15]_i_11 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\btn_key_r[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFAF7A3BFFFFFFFF)) 
    \btn_key_r[15]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(key_start1__1),
        .I3(key_sample),
        .I4(state[2]),
        .I5(aresetn),
        .O(\btn_key_r[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAAAAAAAAAAA)) 
    \btn_key_r[15]_i_3 
       (.I0(\btn_key_r[14]_i_2_n_0 ),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(\btn_key_r[15]_i_7_n_0 ),
        .O(\btn_key_r[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCEECCCCCCFCCCCC)) 
    \btn_key_r[15]_i_4 
       (.I0(p_0_in5_in),
        .I1(\btn_key_r[14]_i_4_n_0 ),
        .I2(\btn_key_r[15]_i_9_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\btn_key_r[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h38C0C00008000000)) 
    \btn_key_r[15]_i_5 
       (.I0(\btn_key_r[15]_i_10_n_0 ),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(\btn_key_r[15]_i_11_n_0 ),
        .O(\btn_key_r[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \btn_key_r[15]_i_6 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(p_0_in5_in),
        .I4(btn_key_r0),
        .I5(btn_key_r[15]),
        .O(\btn_key_r[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \btn_key_r[15]_i_7 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\btn_key_r[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[15]_i_8 
       (.I0(btn_key_row[3]),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .O(p_0_in5_in));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[15]_i_9 
       (.I0(btn_key_row[0]),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .O(\btn_key_r[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h07030400)) 
    \btn_key_r[1]_i_1 
       (.I0(\btn_key_r[3]_i_5_n_0 ),
        .I1(btn_key_r0),
        .I2(\btn_key_r[14]_i_4_n_0 ),
        .I3(btn_key_tmp5),
        .I4(btn_key_r[1]),
        .O(\btn_key_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \btn_key_r[1]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[1]),
        .I5(btn_key_row[0]),
        .O(btn_key_tmp5));
  LUT6 #(
    .INIT(64'h001F000F00100000)) 
    \btn_key_r[2]_i_1 
       (.I0(\btn_key_r[3]_i_3_n_0 ),
        .I1(\btn_key_r[3]_i_5_n_0 ),
        .I2(btn_key_r0),
        .I3(\btn_key_r[14]_i_4_n_0 ),
        .I4(btn_key_tmp9),
        .I5(btn_key_r[2]),
        .O(\btn_key_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[2]_i_2 
       (.I0(\btn_key_r[15]_i_11_n_0 ),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .O(btn_key_tmp9));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \btn_key_r[3]_i_1 
       (.I0(\btn_key_r[3]_i_2_n_0 ),
        .I1(\btn_key_r[3]_i_3_n_0 ),
        .I2(\btn_key_r[3]_i_4_n_0 ),
        .I3(\btn_key_r[3]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_2_n_0 ),
        .I5(\btn_key_r[3]_i_6_n_0 ),
        .O(\btn_key_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \btn_key_r[3]_i_2 
       (.I0(\btn_key_r[14]_i_4_n_0 ),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(\btn_key_r[15]_i_11_n_0 ),
        .O(\btn_key_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0440400040000000)) 
    \btn_key_r[3]_i_3 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[1]),
        .I5(btn_key_row[0]),
        .O(\btn_key_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040554000)) 
    \btn_key_r[3]_i_4 
       (.I0(btn_key_tmp11),
        .I1(\btn_key_r[15]_i_7_n_0 ),
        .I2(\btn_key_r[15]_i_9_n_0 ),
        .I3(btn_key_r0),
        .I4(btn_key_r[3]),
        .I5(\btn_key_r[3]_i_7_n_0 ),
        .O(\btn_key_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0880800080000000)) 
    \btn_key_r[3]_i_5 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(\btn_key_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \btn_key_r[3]_i_6 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\btn_key_r[15]_i_9_n_0 ),
        .I4(btn_key_r0),
        .I5(btn_key_r[3]),
        .O(\btn_key_r[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h60000000)) 
    \btn_key_r[3]_i_7 
       (.I0(btn_key_row[0]),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(\btn_key_r[15]_i_11_n_0 ),
        .O(\btn_key_r[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000CAA)) 
    \btn_key_r[4]_i_1 
       (.I0(btn_key_r[4]),
        .I1(btn_key_tmp2),
        .I2(btn_key_tmp1),
        .I3(btn_key_r0),
        .I4(\btn_key_r[14]_i_4_n_0 ),
        .O(\btn_key_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \btn_key_r[4]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(btn_key_tmp2));
  LUT6 #(
    .INIT(64'h001F000F00100000)) 
    \btn_key_r[5]_i_1 
       (.I0(btn_key_tmp1),
        .I1(\btn_key_r[7]_i_2_n_0 ),
        .I2(btn_key_r0),
        .I3(\btn_key_r[14]_i_4_n_0 ),
        .I4(btn_key_tmp6),
        .I5(btn_key_r[5]),
        .O(\btn_key_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \btn_key_r[5]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(btn_key_tmp6));
  LUT6 #(
    .INIT(64'h000001FF00000000)) 
    \btn_key_r[6]_i_1 
       (.I0(\btn_key_r[7]_i_2_n_0 ),
        .I1(btn_key_tmp1),
        .I2(\btn_key_r[7]_i_4_n_0 ),
        .I3(btn_key_r0),
        .I4(\btn_key_r[14]_i_4_n_0 ),
        .I5(\btn_key_r[6]_i_3_n_0 ),
        .O(\btn_key_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \btn_key_r[6]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[1]),
        .I5(btn_key_row[0]),
        .O(btn_key_tmp1));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \btn_key_r[6]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(p_0_in8_in),
        .I4(btn_key_r0),
        .I5(btn_key_r[6]),
        .O(\btn_key_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \btn_key_r[7]_i_1 
       (.I0(\btn_key_r[15]_i_4_n_0 ),
        .I1(\btn_key_r[7]_i_2_n_0 ),
        .I2(\btn_key_r[7]_i_3_n_0 ),
        .I3(\btn_key_r[7]_i_4_n_0 ),
        .I4(\btn_key_r[15]_i_2_n_0 ),
        .I5(\btn_key_r[7]_i_5_n_0 ),
        .O(\btn_key_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2880000040000000)) 
    \btn_key_r[7]_i_2 
       (.I0(btn_key_row[0]),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(\btn_key_r[14]_i_6_n_0 ),
        .I5(state[0]),
        .O(\btn_key_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010101000000)) 
    \btn_key_r[7]_i_3 
       (.I0(btn_key_tmp10),
        .I1(btn_key_tmp11),
        .I2(btn_key_tmp1),
        .I3(btn_key_tmp14),
        .I4(btn_key_r0),
        .I5(btn_key_r[7]),
        .O(\btn_key_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3880800008808000)) 
    \btn_key_r[7]_i_4 
       (.I0(\btn_key_r[15]_i_10_n_0 ),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .I5(\btn_key_r[15]_i_11_n_0 ),
        .O(\btn_key_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \btn_key_r[7]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(p_0_in8_in),
        .I4(btn_key_r0),
        .I5(btn_key_r[7]),
        .O(\btn_key_r[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[7]_i_6 
       (.I0(\btn_key_r[15]_i_11_n_0 ),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(btn_key_tmp10));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[7]_i_7 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .O(p_0_in8_in));
  LUT5 #(
    .INIT(32'h07030400)) 
    \btn_key_r[8]_i_1 
       (.I0(\btn_key_r[10]_i_2_n_0 ),
        .I1(btn_key_r0),
        .I2(\btn_key_r[14]_i_4_n_0 ),
        .I3(btn_key_tmp3),
        .I4(btn_key_r[8]),
        .O(\btn_key_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \btn_key_r[8]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[3]),
        .I5(btn_key_row[2]),
        .O(btn_key_tmp3));
  LUT6 #(
    .INIT(64'h001F000F00100000)) 
    \btn_key_r[9]_i_1 
       (.I0(\btn_key_r[10]_i_2_n_0 ),
        .I1(\btn_key_r[11]_i_2_n_0 ),
        .I2(btn_key_r0),
        .I3(\btn_key_r[14]_i_4_n_0 ),
        .I4(btn_key_tmp7),
        .I5(btn_key_r[9]),
        .O(\btn_key_r[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \btn_key_r[9]_i_2 
       (.I0(state[0]),
        .I1(\btn_key_r[14]_i_6_n_0 ),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[3]),
        .I5(btn_key_row[2]),
        .O(btn_key_tmp7));
  FDRE \btn_key_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[0]_i_1_n_0 ),
        .Q(btn_key_r[0]),
        .R(1'b0));
  FDRE \btn_key_r_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[10]_i_1_n_0 ),
        .Q(btn_key_r[10]),
        .R(1'b0));
  FDRE \btn_key_r_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[11]_i_1_n_0 ),
        .Q(btn_key_r[11]),
        .R(1'b0));
  FDRE \btn_key_r_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[12]_i_1_n_0 ),
        .Q(btn_key_r[12]),
        .R(1'b0));
  FDRE \btn_key_r_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[13]_i_1_n_0 ),
        .Q(btn_key_r[13]),
        .R(1'b0));
  FDRE \btn_key_r_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[14]_i_1_n_0 ),
        .Q(btn_key_r[14]),
        .R(1'b0));
  FDRE \btn_key_r_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[15]_i_1_n_0 ),
        .Q(btn_key_r[15]),
        .R(1'b0));
  FDRE \btn_key_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[1]_i_1_n_0 ),
        .Q(btn_key_r[1]),
        .R(1'b0));
  FDRE \btn_key_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[2]_i_1_n_0 ),
        .Q(btn_key_r[2]),
        .R(1'b0));
  FDRE \btn_key_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[3]_i_1_n_0 ),
        .Q(btn_key_r[3]),
        .R(1'b0));
  FDRE \btn_key_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[4]_i_1_n_0 ),
        .Q(btn_key_r[4]),
        .R(1'b0));
  FDRE \btn_key_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[5]_i_1_n_0 ),
        .Q(btn_key_r[5]),
        .R(1'b0));
  FDRE \btn_key_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[6]_i_1_n_0 ),
        .Q(btn_key_r[6]),
        .R(1'b0));
  FDRE \btn_key_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[7]_i_1_n_0 ),
        .Q(btn_key_r[7]),
        .R(1'b0));
  FDRE \btn_key_r_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[8]_i_1_n_0 ),
        .Q(btn_key_r[8]),
        .R(1'b0));
  FDRE \btn_key_r_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[9]_i_1_n_0 ),
        .Q(btn_key_r[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    btn_step0_r_i_1
       (.I0(btn_step[0]),
        .I1(step0_sample),
        .I2(btn_step0_r),
        .O(btn_step0_r_i_1_n_0));
  FDSE btn_step0_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_step0_r_i_1_n_0),
        .Q(btn_step0_r),
        .S(\buf_id[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    btn_step1_r_i_1
       (.I0(btn_step[1]),
        .I1(step1_sample),
        .I2(btn_step1_r),
        .O(btn_step1_r_i_1_n_0));
  FDSE btn_step1_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_step1_r_i_1_n_0),
        .Q(btn_step1_r),
        .S(\buf_id[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[0]_i_1 
       (.I0(araddr[0]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[10]_i_1 
       (.I0(araddr[10]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[11]_i_1 
       (.I0(araddr[11]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[12]_i_1 
       (.I0(araddr[12]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[13]_i_1 
       (.I0(araddr[13]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[14]_i_1 
       (.I0(araddr[14]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[14]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[15]_i_1 
       (.I0(araddr[15]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[1]_i_1 
       (.I0(araddr[1]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[2]_i_1 
       (.I0(araddr[2]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[3]_i_1 
       (.I0(araddr[3]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[4]_i_1 
       (.I0(araddr[4]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[5]_i_1 
       (.I0(araddr[5]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[6]_i_1 
       (.I0(araddr[6]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[7]_i_1 
       (.I0(araddr[7]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[8]_i_1 
       (.I0(araddr[8]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_addr[9]_i_1 
       (.I0(araddr[9]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awaddr[9]),
        .O(p_1_in[9]));
  FDRE \buf_addr_reg[0] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[0]),
        .Q(buf_addr[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[10] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[10]),
        .Q(buf_addr[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[11] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[11]),
        .Q(buf_addr[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[12] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[12]),
        .Q(buf_addr[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[13] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[13]),
        .Q(buf_addr[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[14] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[14]),
        .Q(buf_addr[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[15] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[15]),
        .Q(buf_addr[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[1] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[1]),
        .Q(buf_addr[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[2] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[2]),
        .Q(buf_addr[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[3] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[3]),
        .Q(buf_addr[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[4] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[4]),
        .Q(buf_addr[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[5] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[5]),
        .Q(buf_addr[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[6] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[6]),
        .Q(buf_addr[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[7] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[7]),
        .Q(buf_addr[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[8] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[8]),
        .Q(buf_addr[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_addr_reg[9] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[9]),
        .Q(buf_addr[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[0]_i_1 
       (.I0(arid[0]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[0]),
        .O(\buf_id[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[1]_i_1 
       (.I0(arid[1]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[1]),
        .O(\buf_id[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[2]_i_1 
       (.I0(arid[2]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[2]),
        .O(\buf_id[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[3]_i_1 
       (.I0(arid[3]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[3]),
        .O(\buf_id[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[4]_i_1 
       (.I0(arid[4]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[4]),
        .O(\buf_id[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buf_id[5]_i_1 
       (.I0(aresetn),
        .O(\buf_id[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \buf_id[5]_i_2 
       (.I0(busy),
        .I1(arvalid),
        .I2(awvalid),
        .O(busy01_out));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[5]_i_3 
       (.I0(arid[5]),
        .I1(arvalid),
        .I2(awvalid),
        .I3(R_or_W),
        .I4(awid[5]),
        .O(\buf_id[5]_i_3_n_0 ));
  FDRE \buf_id_reg[0] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[0]_i_1_n_0 ),
        .Q(bid[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_id_reg[1] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[1]_i_1_n_0 ),
        .Q(bid[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_id_reg[2] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[2]_i_1_n_0 ),
        .Q(bid[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_id_reg[3] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[3]_i_1_n_0 ),
        .Q(bid[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_id_reg[4] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[4]_i_1_n_0 ),
        .Q(bid[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \buf_id_reg[5] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[5]_i_3_n_0 ),
        .Q(bid[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h545454FE54FE54FE)) 
    busy_i_1
       (.I0(busy),
        .I1(arvalid),
        .I2(awvalid),
        .I3(r_retire__1),
        .I4(bvalid),
        .I5(bready),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    busy_i_2
       (.I0(rready),
        .I1(rlast),
        .I2(conf_rvalid_reg_reg_0),
        .O(r_retire__1));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(\buf_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF4444444)) 
    conf_bvalid_reg_i_1
       (.I0(bready),
        .I1(bvalid),
        .I2(wvalid),
        .I3(conf_wready_reg_reg_0),
        .I4(wlast),
        .O(conf_bvalid_reg_i_1_n_0));
  FDRE conf_bvalid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(conf_bvalid_reg_i_1_n_0),
        .Q(bvalid),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[0]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[0]_i_2_n_0 ),
        .I2(\conf_rdata_reg[0]_i_3_n_0 ),
        .I3(io_simu[0]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[0]_i_4_n_0 ),
        .O(\conf_rdata_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[0]_i_10 
       (.I0(user_cr1[0]),
        .I1(cr3[0]),
        .I2(user_cr0[0]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[0]),
        .O(\conf_rdata_reg[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \conf_rdata_reg[0]_i_2 
       (.I0(\conf_rdata_reg[31]_i_6_n_0 ),
        .I1(buf_addr[3]),
        .I2(buf_addr[4]),
        .O(\conf_rdata_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CA00CA)) 
    \conf_rdata_reg[0]_i_3 
       (.I0(virtual_uart_data[0]),
        .I1(open_trace),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(num_monitor),
        .O(\conf_rdata_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[0]_i_4 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[15]_i_4_n_0 ),
        .I2(\conf_rdata_reg[0]_i_5_n_0 ),
        .I3(\conf_rdata_reg[0]_i_6_n_0 ),
        .I4(timer_r2[0]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[0]_i_5 
       (.I0(\conf_rdata_reg[14]_i_8_n_0 ),
        .I1(\num_data_reg_n_0_[0] ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\conf_rdata_reg[0]_i_7_n_0 ),
        .I4(\conf_rdata_reg[0]_i_8_n_0 ),
        .I5(\conf_rdata_reg[15]_i_8_n_0 ),
        .O(\conf_rdata_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[0]_i_6 
       (.I0(\conf_rdata_reg[0]_i_9_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[0]_i_10_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[0]_i_7 
       (.I0(led[0]),
        .I1(led_rg1[0]),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(led_rg0[0]),
        .O(\conf_rdata_reg[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0F3A003A)) 
    \conf_rdata_reg[0]_i_8 
       (.I0(switch[0]),
        .I1(btn_step1_r),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(btn_key_r[0]),
        .O(\conf_rdata_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[0]_i_9 
       (.I0(cr5[0]),
        .I1(cr7[0]),
        .I2(cr4[0]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[0]),
        .O(\conf_rdata_reg[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \conf_rdata_reg[10]_i_1 
       (.I0(io_simu[10]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[10]_i_2_n_0 ),
        .I3(\conf_rdata_reg[10]_i_3_n_0 ),
        .I4(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[10]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[10]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[10]_i_5_n_0 ),
        .I4(timer_r2[10]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[10]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[14]_i_6_n_0 ),
        .I2(btn_key_r[10]),
        .I3(\conf_rdata_reg[10]_i_6_n_0 ),
        .I4(data5[2]),
        .I5(\conf_rdata_reg[14]_i_8_n_0 ),
        .O(\conf_rdata_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[10]_i_4 
       (.I0(user_cr1[10]),
        .I1(cr3[10]),
        .I2(user_cr0[10]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[10]),
        .O(\conf_rdata_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[10]_i_5 
       (.I0(cr5[10]),
        .I1(cr7[10]),
        .I2(cr4[10]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[10]),
        .O(\conf_rdata_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \conf_rdata_reg[10]_i_6 
       (.I0(\conf_rdata_reg[14]_i_9_n_0 ),
        .I1(\led_rg0_data_reg_n_0_[10] ),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(\led_rg1_data_reg_n_0_[10] ),
        .I5(led[10]),
        .O(\conf_rdata_reg[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \conf_rdata_reg[11]_i_1 
       (.I0(io_simu[11]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[11]_i_2_n_0 ),
        .I3(\conf_rdata_reg[11]_i_3_n_0 ),
        .I4(\conf_rdata_reg[15]_i_4_n_0 ),
        .I5(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[11]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[11]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[11]_i_5_n_0 ),
        .I4(timer_r2[11]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \conf_rdata_reg[11]_i_3 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\conf_rdata_reg[15]_i_8_n_0 ),
        .I3(btn_key_r[11]),
        .I4(switch[5]),
        .I5(\conf_rdata_reg[11]_i_6_n_0 ),
        .O(\conf_rdata_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[11]_i_4 
       (.I0(user_cr1[11]),
        .I1(cr3[11]),
        .I2(user_cr0[11]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[11]),
        .O(\conf_rdata_reg[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[11]_i_5 
       (.I0(cr5[11]),
        .I1(cr7[11]),
        .I2(cr4[11]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[11]),
        .O(\conf_rdata_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000CAAAA)) 
    \conf_rdata_reg[11]_i_6 
       (.I0(\conf_rdata_reg[11]_i_7_n_0 ),
        .I1(data5[3]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(buf_addr[4]),
        .I5(buf_addr[5]),
        .O(\conf_rdata_reg[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[11]_i_7 
       (.I0(led[11]),
        .I1(\led_rg1_data_reg_n_0_[11] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[11] ),
        .O(\conf_rdata_reg[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \conf_rdata_reg[12]_i_1 
       (.I0(io_simu[12]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[12]_i_2_n_0 ),
        .I3(\conf_rdata_reg[12]_i_3_n_0 ),
        .I4(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[12]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[12]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[12]_i_5_n_0 ),
        .I4(timer_r2[12]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[12]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[14]_i_6_n_0 ),
        .I2(btn_key_r[12]),
        .I3(\conf_rdata_reg[12]_i_6_n_0 ),
        .I4(data4[0]),
        .I5(\conf_rdata_reg[14]_i_8_n_0 ),
        .O(\conf_rdata_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[12]_i_4 
       (.I0(user_cr1[12]),
        .I1(cr3[12]),
        .I2(user_cr0[12]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[12]),
        .O(\conf_rdata_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[12]_i_5 
       (.I0(cr5[12]),
        .I1(cr7[12]),
        .I2(cr4[12]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[12]),
        .O(\conf_rdata_reg[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \conf_rdata_reg[12]_i_6 
       (.I0(\conf_rdata_reg[14]_i_9_n_0 ),
        .I1(\led_rg0_data_reg_n_0_[12] ),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(\led_rg1_data_reg_n_0_[12] ),
        .I5(led[12]),
        .O(\conf_rdata_reg[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \conf_rdata_reg[13]_i_1 
       (.I0(io_simu[13]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[13]_i_2_n_0 ),
        .I3(\conf_rdata_reg[13]_i_3_n_0 ),
        .I4(\conf_rdata_reg[15]_i_4_n_0 ),
        .I5(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[13]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[13]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[13]_i_5_n_0 ),
        .I4(timer_r2[13]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \conf_rdata_reg[13]_i_3 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\conf_rdata_reg[15]_i_8_n_0 ),
        .I3(btn_key_r[13]),
        .I4(switch[6]),
        .I5(\conf_rdata_reg[13]_i_6_n_0 ),
        .O(\conf_rdata_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[13]_i_4 
       (.I0(user_cr1[13]),
        .I1(cr3[13]),
        .I2(user_cr0[13]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[13]),
        .O(\conf_rdata_reg[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[13]_i_5 
       (.I0(cr5[13]),
        .I1(cr7[13]),
        .I2(cr4[13]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[13]),
        .O(\conf_rdata_reg[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000CAAAA)) 
    \conf_rdata_reg[13]_i_6 
       (.I0(\conf_rdata_reg[13]_i_7_n_0 ),
        .I1(data4[1]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(buf_addr[4]),
        .I5(buf_addr[5]),
        .O(\conf_rdata_reg[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[13]_i_7 
       (.I0(led[13]),
        .I1(\led_rg1_data_reg_n_0_[13] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[13] ),
        .O(\conf_rdata_reg[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \conf_rdata_reg[14]_i_1 
       (.I0(io_simu[14]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[14]_i_2_n_0 ),
        .I3(\conf_rdata_reg[14]_i_3_n_0 ),
        .I4(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[14]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[14]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[14]_i_5_n_0 ),
        .I4(timer_r2[14]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[14]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[14]_i_6_n_0 ),
        .I2(btn_key_r[14]),
        .I3(\conf_rdata_reg[14]_i_7_n_0 ),
        .I4(data4[2]),
        .I5(\conf_rdata_reg[14]_i_8_n_0 ),
        .O(\conf_rdata_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[14]_i_4 
       (.I0(user_cr1[14]),
        .I1(cr3[14]),
        .I2(user_cr0[14]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[14]),
        .O(\conf_rdata_reg[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[14]_i_5 
       (.I0(cr5[14]),
        .I1(cr7[14]),
        .I2(cr4[14]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[14]),
        .O(\conf_rdata_reg[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \conf_rdata_reg[14]_i_6 
       (.I0(buf_addr[4]),
        .I1(buf_addr[5]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .O(\conf_rdata_reg[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \conf_rdata_reg[14]_i_7 
       (.I0(\conf_rdata_reg[14]_i_9_n_0 ),
        .I1(\led_rg0_data_reg_n_0_[14] ),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(\led_rg1_data_reg_n_0_[14] ),
        .I5(led[14]),
        .O(\conf_rdata_reg[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \conf_rdata_reg[14]_i_8 
       (.I0(buf_addr[2]),
        .I1(buf_addr[3]),
        .I2(buf_addr[4]),
        .I3(buf_addr[5]),
        .O(\conf_rdata_reg[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \conf_rdata_reg[14]_i_9 
       (.I0(buf_addr[4]),
        .I1(buf_addr[5]),
        .O(\conf_rdata_reg[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \conf_rdata_reg[15]_i_1 
       (.I0(io_simu[15]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[15]_i_2_n_0 ),
        .I3(\conf_rdata_reg[15]_i_3_n_0 ),
        .I4(\conf_rdata_reg[15]_i_4_n_0 ),
        .I5(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[15]_i_10 
       (.I0(led[15]),
        .I1(\led_rg1_data_reg_n_0_[15] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[15] ),
        .O(\conf_rdata_reg[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[15]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[15]_i_5_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[15]_i_6_n_0 ),
        .I4(timer_r2[15]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \conf_rdata_reg[15]_i_3 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\conf_rdata_reg[15]_i_8_n_0 ),
        .I3(btn_key_r[15]),
        .I4(switch[7]),
        .I5(\conf_rdata_reg[15]_i_9_n_0 ),
        .O(\conf_rdata_reg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \conf_rdata_reg[15]_i_4 
       (.I0(buf_addr[13]),
        .I1(buf_addr[14]),
        .I2(buf_addr[12]),
        .O(\conf_rdata_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[15]_i_5 
       (.I0(user_cr1[15]),
        .I1(cr3[15]),
        .I2(user_cr0[15]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[15]),
        .O(\conf_rdata_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[15]_i_6 
       (.I0(cr5[15]),
        .I1(cr7[15]),
        .I2(cr4[15]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[15]),
        .O(\conf_rdata_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \conf_rdata_reg[15]_i_7 
       (.I0(buf_addr[12]),
        .I1(buf_addr[5]),
        .I2(buf_addr[4]),
        .I3(buf_addr[3]),
        .I4(buf_addr[2]),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conf_rdata_reg[15]_i_8 
       (.I0(buf_addr[5]),
        .I1(buf_addr[4]),
        .O(\conf_rdata_reg[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000CAAAA)) 
    \conf_rdata_reg[15]_i_9 
       (.I0(\conf_rdata_reg[15]_i_10_n_0 ),
        .I1(data4[3]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(buf_addr[4]),
        .I5(buf_addr[5]),
        .O(\conf_rdata_reg[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[16]_i_1 
       (.I0(io_simu[16]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[16]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[16]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[16]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[16]_i_4_n_0 ),
        .I4(\conf_rdata_reg[16]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[16]_i_3 
       (.I0(user_cr1[16]),
        .I1(cr3[16]),
        .I2(user_cr0[16]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[16]),
        .O(\conf_rdata_reg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[16]_i_4 
       (.I0(cr5[16]),
        .I1(cr7[16]),
        .I2(cr4[16]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[16]),
        .O(\conf_rdata_reg[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[16]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[16]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data3[0]),
        .I4(\conf_rdata_reg[16]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[16]_i_6 
       (.I0(\led_data_reg_n_0_[16] ),
        .I1(\led_rg1_data_reg_n_0_[16] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[16] ),
        .O(\conf_rdata_reg[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[17]_i_1 
       (.I0(io_simu[17]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[17]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[17]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[17]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[17]_i_4_n_0 ),
        .I4(\conf_rdata_reg[17]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[17]_i_3 
       (.I0(user_cr1[17]),
        .I1(cr3[17]),
        .I2(user_cr0[17]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[17]),
        .O(\conf_rdata_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[17]_i_4 
       (.I0(cr5[17]),
        .I1(cr7[17]),
        .I2(cr4[17]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[17]),
        .O(\conf_rdata_reg[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[17]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[17]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data3[1]),
        .I4(\conf_rdata_reg[17]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[17]_i_6 
       (.I0(\led_data_reg_n_0_[17] ),
        .I1(\led_rg1_data_reg_n_0_[17] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[17] ),
        .O(\conf_rdata_reg[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[18]_i_1 
       (.I0(io_simu[18]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[18]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[18]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[18]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[18]_i_4_n_0 ),
        .I4(\conf_rdata_reg[18]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[18]_i_3 
       (.I0(user_cr1[18]),
        .I1(cr3[18]),
        .I2(user_cr0[18]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[18]),
        .O(\conf_rdata_reg[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[18]_i_4 
       (.I0(cr5[18]),
        .I1(cr7[18]),
        .I2(cr4[18]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[18]),
        .O(\conf_rdata_reg[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[18]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[18]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data3[2]),
        .I4(\conf_rdata_reg[18]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[18]_i_6 
       (.I0(\led_data_reg_n_0_[18] ),
        .I1(\led_rg1_data_reg_n_0_[18] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[18] ),
        .O(\conf_rdata_reg[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[19]_i_1 
       (.I0(io_simu[19]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[19]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[19]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[19]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[19]_i_4_n_0 ),
        .I4(\conf_rdata_reg[19]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[19]_i_3 
       (.I0(user_cr1[19]),
        .I1(cr3[19]),
        .I2(user_cr0[19]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[19]),
        .O(\conf_rdata_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[19]_i_4 
       (.I0(cr5[19]),
        .I1(cr7[19]),
        .I2(cr4[19]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[19]),
        .O(\conf_rdata_reg[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[19]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[19]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data3[3]),
        .I4(\conf_rdata_reg[19]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[19]_i_6 
       (.I0(\led_data_reg_n_0_[19] ),
        .I1(\led_rg1_data_reg_n_0_[19] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[19] ),
        .O(\conf_rdata_reg[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[1]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[1]),
        .I3(io_simu[1]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[1]_i_2_n_0 ),
        .O(\conf_rdata_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[1]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[15]_i_4_n_0 ),
        .I2(\conf_rdata_reg[1]_i_3_n_0 ),
        .I3(\conf_rdata_reg[1]_i_4_n_0 ),
        .I4(timer_r2[1]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[1]_i_3 
       (.I0(\conf_rdata_reg[14]_i_8_n_0 ),
        .I1(\num_data_reg_n_0_[1] ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\conf_rdata_reg[1]_i_5_n_0 ),
        .I4(\conf_rdata_reg[1]_i_6_n_0 ),
        .I5(\conf_rdata_reg[15]_i_8_n_0 ),
        .O(\conf_rdata_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[1]_i_4 
       (.I0(\conf_rdata_reg[1]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[1]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[1]_i_5 
       (.I0(led[1]),
        .I1(led_rg1[1]),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(led_rg0[1]),
        .O(\conf_rdata_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCC00AAF0CCFFAAF0)) 
    \conf_rdata_reg[1]_i_6 
       (.I0(btn_key_r[1]),
        .I1(switch[0]),
        .I2(switch[1]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(btn_step0_r),
        .O(\conf_rdata_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[1]_i_7 
       (.I0(cr5[1]),
        .I1(cr7[1]),
        .I2(cr4[1]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[1]),
        .O(\conf_rdata_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[1]_i_8 
       (.I0(user_cr1[1]),
        .I1(cr3[1]),
        .I2(user_cr0[1]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[1]),
        .O(\conf_rdata_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[20]_i_1 
       (.I0(io_simu[20]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[20]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[20]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[20]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[20]_i_4_n_0 ),
        .I4(\conf_rdata_reg[20]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[20]_i_3 
       (.I0(user_cr1[20]),
        .I1(cr3[20]),
        .I2(user_cr0[20]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[20]),
        .O(\conf_rdata_reg[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[20]_i_4 
       (.I0(cr5[20]),
        .I1(cr7[20]),
        .I2(cr4[20]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[20]),
        .O(\conf_rdata_reg[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[20]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[20]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data2[0]),
        .I4(\conf_rdata_reg[20]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[20]_i_6 
       (.I0(\led_data_reg_n_0_[20] ),
        .I1(\led_rg1_data_reg_n_0_[20] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[20] ),
        .O(\conf_rdata_reg[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[21]_i_1 
       (.I0(io_simu[21]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[21]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[21]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[21]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[21]_i_4_n_0 ),
        .I4(\conf_rdata_reg[21]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[21]_i_3 
       (.I0(user_cr1[21]),
        .I1(cr3[21]),
        .I2(user_cr0[21]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[21]),
        .O(\conf_rdata_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[21]_i_4 
       (.I0(cr5[21]),
        .I1(cr7[21]),
        .I2(cr4[21]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[21]),
        .O(\conf_rdata_reg[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[21]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[21]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data2[1]),
        .I4(\conf_rdata_reg[21]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[21]_i_6 
       (.I0(\led_data_reg_n_0_[21] ),
        .I1(\led_rg1_data_reg_n_0_[21] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[21] ),
        .O(\conf_rdata_reg[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[22]_i_1 
       (.I0(io_simu[22]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[22]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[22]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[22]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[22]_i_4_n_0 ),
        .I4(\conf_rdata_reg[22]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[22]_i_3 
       (.I0(user_cr1[22]),
        .I1(cr3[22]),
        .I2(user_cr0[22]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[22]),
        .O(\conf_rdata_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[22]_i_4 
       (.I0(cr5[22]),
        .I1(cr7[22]),
        .I2(cr4[22]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[22]),
        .O(\conf_rdata_reg[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[22]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[22]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data2[2]),
        .I4(\conf_rdata_reg[22]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[22]_i_6 
       (.I0(\led_data_reg_n_0_[22] ),
        .I1(\led_rg1_data_reg_n_0_[22] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[22] ),
        .O(\conf_rdata_reg[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[23]_i_1 
       (.I0(io_simu[23]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[23]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[23]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[23]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[23]_i_4_n_0 ),
        .I4(\conf_rdata_reg[23]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[23]_i_3 
       (.I0(user_cr1[23]),
        .I1(cr3[23]),
        .I2(user_cr0[23]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[23]),
        .O(\conf_rdata_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[23]_i_4 
       (.I0(cr5[23]),
        .I1(cr7[23]),
        .I2(cr4[23]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[23]),
        .O(\conf_rdata_reg[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[23]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[23]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data2[3]),
        .I4(\conf_rdata_reg[23]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[23]_i_6 
       (.I0(\led_data_reg_n_0_[23] ),
        .I1(\led_rg1_data_reg_n_0_[23] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[23] ),
        .O(\conf_rdata_reg[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[24]_i_1 
       (.I0(io_simu[24]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[24]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[24]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[24]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[24]_i_4_n_0 ),
        .I4(\conf_rdata_reg[24]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[24]_i_3 
       (.I0(user_cr1[24]),
        .I1(cr3[24]),
        .I2(user_cr0[24]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[24]),
        .O(\conf_rdata_reg[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[24]_i_4 
       (.I0(cr5[24]),
        .I1(cr7[24]),
        .I2(cr4[24]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[24]),
        .O(\conf_rdata_reg[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[24]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[24]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data1[0]),
        .I4(\conf_rdata_reg[24]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[24]_i_6 
       (.I0(\led_data_reg_n_0_[24] ),
        .I1(\led_rg1_data_reg_n_0_[24] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[24] ),
        .O(\conf_rdata_reg[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[25]_i_1 
       (.I0(io_simu[25]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[25]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[25]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[25]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[25]_i_4_n_0 ),
        .I4(\conf_rdata_reg[25]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[25]_i_3 
       (.I0(user_cr1[25]),
        .I1(cr3[25]),
        .I2(user_cr0[25]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[25]),
        .O(\conf_rdata_reg[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[25]_i_4 
       (.I0(cr5[25]),
        .I1(cr7[25]),
        .I2(cr4[25]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[25]),
        .O(\conf_rdata_reg[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[25]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[25]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data1[1]),
        .I4(\conf_rdata_reg[25]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[25]_i_6 
       (.I0(\led_data_reg_n_0_[25] ),
        .I1(\led_rg1_data_reg_n_0_[25] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[25] ),
        .O(\conf_rdata_reg[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[26]_i_1 
       (.I0(io_simu[26]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[26]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[26]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[26]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[26]_i_4_n_0 ),
        .I4(\conf_rdata_reg[26]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[26]_i_3 
       (.I0(user_cr1[26]),
        .I1(cr3[26]),
        .I2(user_cr0[26]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[26]),
        .O(\conf_rdata_reg[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[26]_i_4 
       (.I0(cr5[26]),
        .I1(cr7[26]),
        .I2(cr4[26]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[26]),
        .O(\conf_rdata_reg[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[26]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[26]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data1[2]),
        .I4(\conf_rdata_reg[26]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[26]_i_6 
       (.I0(\led_data_reg_n_0_[26] ),
        .I1(\led_rg1_data_reg_n_0_[26] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[26] ),
        .O(\conf_rdata_reg[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[27]_i_1 
       (.I0(io_simu[27]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[27]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[27]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[27]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[27]_i_4_n_0 ),
        .I4(\conf_rdata_reg[27]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[27]_i_3 
       (.I0(user_cr1[27]),
        .I1(cr3[27]),
        .I2(user_cr0[27]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[27]),
        .O(\conf_rdata_reg[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[27]_i_4 
       (.I0(cr5[27]),
        .I1(cr7[27]),
        .I2(cr4[27]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[27]),
        .O(\conf_rdata_reg[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[27]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[27]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data1[3]),
        .I4(\conf_rdata_reg[27]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[27]_i_6 
       (.I0(\led_data_reg_n_0_[27] ),
        .I1(\led_rg1_data_reg_n_0_[27] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[27] ),
        .O(\conf_rdata_reg[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[28]_i_1 
       (.I0(io_simu[28]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[28]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[28]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[28]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[28]_i_4_n_0 ),
        .I4(\conf_rdata_reg[28]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[28]_i_3 
       (.I0(user_cr1[28]),
        .I1(cr3[28]),
        .I2(user_cr0[28]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[28]),
        .O(\conf_rdata_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[28]_i_4 
       (.I0(cr5[28]),
        .I1(cr7[28]),
        .I2(cr4[28]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[28]),
        .O(\conf_rdata_reg[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[28]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[28]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data0[0]),
        .I4(\conf_rdata_reg[28]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[28]_i_6 
       (.I0(\led_data_reg_n_0_[28] ),
        .I1(\led_rg1_data_reg_n_0_[28] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[28] ),
        .O(\conf_rdata_reg[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[29]_i_1 
       (.I0(io_simu[29]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[29]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[29]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[29]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[29]_i_4_n_0 ),
        .I4(\conf_rdata_reg[29]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[29]_i_3 
       (.I0(user_cr1[29]),
        .I1(cr3[29]),
        .I2(user_cr0[29]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[29]),
        .O(\conf_rdata_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[29]_i_4 
       (.I0(cr5[29]),
        .I1(cr7[29]),
        .I2(cr4[29]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[29]),
        .O(\conf_rdata_reg[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[29]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[29]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data0[1]),
        .I4(\conf_rdata_reg[29]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[29]_i_6 
       (.I0(\led_data_reg_n_0_[29] ),
        .I1(\led_rg1_data_reg_n_0_[29] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[29] ),
        .O(\conf_rdata_reg[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[2]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[2]),
        .I3(io_simu[2]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[2]_i_2_n_0 ),
        .O(\conf_rdata_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \conf_rdata_reg[2]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[2]_i_3_n_0 ),
        .I2(\conf_rdata_reg[2]_i_4_n_0 ),
        .I3(timer_r2[2]),
        .I4(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[2]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[2]_i_5_n_0 ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\num_data_reg_n_0_[2] ),
        .I4(\conf_rdata_reg[14]_i_8_n_0 ),
        .I5(\conf_rdata_reg[2]_i_6_n_0 ),
        .O(\conf_rdata_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[2]_i_4 
       (.I0(\conf_rdata_reg[2]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[2]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[2]_i_5 
       (.I0(led[2]),
        .I1(\led_rg1_data_reg_n_0_[2] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[2] ),
        .O(\conf_rdata_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080C00)) 
    \conf_rdata_reg[2]_i_6 
       (.I0(btn_key_r[2]),
        .I1(buf_addr[5]),
        .I2(buf_addr[4]),
        .I3(switch[2]),
        .I4(buf_addr[2]),
        .I5(buf_addr[3]),
        .O(\conf_rdata_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[2]_i_7 
       (.I0(cr5[2]),
        .I1(cr7[2]),
        .I2(cr4[2]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[2]),
        .O(\conf_rdata_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[2]_i_8 
       (.I0(user_cr1[2]),
        .I1(cr3[2]),
        .I2(user_cr0[2]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[2]),
        .O(\conf_rdata_reg[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[30]_i_1 
       (.I0(io_simu[30]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[30]_i_2_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[30]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[30]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[30]_i_4_n_0 ),
        .I4(\conf_rdata_reg[30]_i_5_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[30]_i_3 
       (.I0(user_cr1[30]),
        .I1(cr3[30]),
        .I2(user_cr0[30]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[30]),
        .O(\conf_rdata_reg[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[30]_i_4 
       (.I0(cr5[30]),
        .I1(cr7[30]),
        .I2(cr4[30]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[30]),
        .O(\conf_rdata_reg[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[30]_i_5 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[30]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data0[2]),
        .I4(\conf_rdata_reg[30]_i_6_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[30]_i_6 
       (.I0(\led_data_reg_n_0_[30] ),
        .I1(\led_rg1_data_reg_n_0_[30] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[30] ),
        .O(\conf_rdata_reg[30]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h08888888)) 
    \conf_rdata_reg[31]_i_1 
       (.I0(busy),
        .I1(R_or_W),
        .I2(conf_rvalid_reg_reg_0),
        .I3(rlast),
        .I4(rready),
        .O(conf_rdata_reg0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[31]_i_10 
       (.I0(cr5[31]),
        .I1(cr7[31]),
        .I2(cr4[31]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[31]),
        .O(\conf_rdata_reg[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[31]_i_11 
       (.I0(\conf_rdata_reg[31]_i_16_n_0 ),
        .I1(timer_r2[31]),
        .I2(\conf_rdata_reg[31]_i_17_n_0 ),
        .I3(data0[3]),
        .I4(\conf_rdata_reg[31]_i_18_n_0 ),
        .I5(\conf_rdata_reg[31]_i_19_n_0 ),
        .O(\conf_rdata_reg[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \conf_rdata_reg[31]_i_12 
       (.I0(buf_addr[14]),
        .I1(buf_addr[13]),
        .O(\conf_rdata_reg[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \conf_rdata_reg[31]_i_13 
       (.I0(buf_addr[9]),
        .I1(buf_addr[6]),
        .I2(buf_addr[10]),
        .I3(buf_addr[11]),
        .I4(buf_addr[7]),
        .I5(buf_addr[8]),
        .O(\conf_rdata_reg[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \conf_rdata_reg[31]_i_14 
       (.I0(buf_addr[12]),
        .I1(buf_addr[5]),
        .I2(buf_addr[13]),
        .I3(buf_addr[7]),
        .I4(buf_addr[6]),
        .I5(buf_addr[14]),
        .O(\conf_rdata_reg[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \conf_rdata_reg[31]_i_15 
       (.I0(buf_addr[8]),
        .I1(buf_addr[10]),
        .I2(buf_addr[9]),
        .I3(buf_addr[11]),
        .O(\conf_rdata_reg[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \conf_rdata_reg[31]_i_16 
       (.I0(buf_addr[2]),
        .I1(buf_addr[3]),
        .I2(buf_addr[4]),
        .I3(buf_addr[5]),
        .I4(buf_addr[12]),
        .O(\conf_rdata_reg[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \conf_rdata_reg[31]_i_17 
       (.I0(buf_addr[5]),
        .I1(buf_addr[12]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(buf_addr[4]),
        .O(\conf_rdata_reg[31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[31]_i_18 
       (.I0(\led_data_reg_n_0_[31] ),
        .I1(\led_rg1_data_reg_n_0_[31] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[31] ),
        .O(\conf_rdata_reg[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \conf_rdata_reg[31]_i_19 
       (.I0(buf_addr[5]),
        .I1(buf_addr[12]),
        .I2(buf_addr[4]),
        .O(\conf_rdata_reg[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[31]_i_2 
       (.I0(io_simu[31]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[31]_i_4_n_0 ),
        .I3(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \conf_rdata_reg[31]_i_3 
       (.I0(buf_addr[4]),
        .I1(buf_addr[3]),
        .I2(\conf_rdata_reg[31]_i_6_n_0 ),
        .I3(buf_addr[1]),
        .I4(buf_addr[0]),
        .I5(buf_addr[15]),
        .O(\conf_rdata_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[31]_i_4 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_8_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[31]_i_10_n_0 ),
        .I4(\conf_rdata_reg[31]_i_11_n_0 ),
        .I5(\conf_rdata_reg[31]_i_12_n_0 ),
        .O(\conf_rdata_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \conf_rdata_reg[31]_i_5 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(buf_addr[1]),
        .I2(buf_addr[0]),
        .I3(buf_addr[15]),
        .O(\conf_rdata_reg[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h88888000)) 
    \conf_rdata_reg[31]_i_6 
       (.I0(\conf_rdata_reg[31]_i_14_n_0 ),
        .I1(\conf_rdata_reg[31]_i_15_n_0 ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(buf_addr[4]),
        .O(\conf_rdata_reg[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \conf_rdata_reg[31]_i_7 
       (.I0(buf_addr[13]),
        .I1(buf_addr[14]),
        .I2(buf_addr[12]),
        .I3(buf_addr[4]),
        .I4(buf_addr[5]),
        .O(\conf_rdata_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[31]_i_8 
       (.I0(user_cr1[31]),
        .I1(cr3[31]),
        .I2(user_cr0[31]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[31]),
        .O(\conf_rdata_reg[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \conf_rdata_reg[31]_i_9 
       (.I0(buf_addr[13]),
        .I1(buf_addr[14]),
        .I2(buf_addr[12]),
        .I3(buf_addr[4]),
        .I4(buf_addr[5]),
        .O(\conf_rdata_reg[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[3]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[3]),
        .I3(io_simu[3]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[3]_i_2_n_0 ),
        .O(\conf_rdata_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[3]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[15]_i_4_n_0 ),
        .I2(\conf_rdata_reg[3]_i_3_n_0 ),
        .I3(\conf_rdata_reg[3]_i_4_n_0 ),
        .I4(timer_r2[3]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[3]_i_3 
       (.I0(\conf_rdata_reg[14]_i_8_n_0 ),
        .I1(\num_data_reg_n_0_[3] ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\conf_rdata_reg[3]_i_5_n_0 ),
        .I4(\conf_rdata_reg[3]_i_6_n_0 ),
        .I5(\conf_rdata_reg[15]_i_8_n_0 ),
        .O(\conf_rdata_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[3]_i_4 
       (.I0(\conf_rdata_reg[3]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[3]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[3]_i_5 
       (.I0(led[3]),
        .I1(\led_rg1_data_reg_n_0_[3] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[3] ),
        .O(\conf_rdata_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \conf_rdata_reg[3]_i_6 
       (.I0(switch[3]),
        .I1(btn_key_r[3]),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(switch[1]),
        .O(\conf_rdata_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[3]_i_7 
       (.I0(cr5[3]),
        .I1(cr7[3]),
        .I2(cr4[3]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[3]),
        .O(\conf_rdata_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[3]_i_8 
       (.I0(user_cr1[3]),
        .I1(cr3[3]),
        .I2(user_cr0[3]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[3]),
        .O(\conf_rdata_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[4]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[4]),
        .I3(io_simu[4]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[4]_i_2_n_0 ),
        .O(\conf_rdata_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \conf_rdata_reg[4]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[4]_i_3_n_0 ),
        .I2(\conf_rdata_reg[4]_i_4_n_0 ),
        .I3(timer_r2[4]),
        .I4(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[4]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[4]_i_5_n_0 ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(data6[0]),
        .I4(\conf_rdata_reg[14]_i_8_n_0 ),
        .I5(\conf_rdata_reg[4]_i_6_n_0 ),
        .O(\conf_rdata_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[4]_i_4 
       (.I0(\conf_rdata_reg[4]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[4]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[4]_i_5 
       (.I0(led[4]),
        .I1(\led_rg1_data_reg_n_0_[4] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[4] ),
        .O(\conf_rdata_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080C00)) 
    \conf_rdata_reg[4]_i_6 
       (.I0(btn_key_r[4]),
        .I1(buf_addr[5]),
        .I2(buf_addr[4]),
        .I3(switch[4]),
        .I4(buf_addr[2]),
        .I5(buf_addr[3]),
        .O(\conf_rdata_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[4]_i_7 
       (.I0(cr5[4]),
        .I1(cr7[4]),
        .I2(cr4[4]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[4]),
        .O(\conf_rdata_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[4]_i_8 
       (.I0(user_cr1[4]),
        .I1(cr3[4]),
        .I2(user_cr0[4]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[4]),
        .O(\conf_rdata_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[5]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[5]),
        .I3(io_simu[5]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[5]_i_2_n_0 ),
        .O(\conf_rdata_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[5]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[15]_i_4_n_0 ),
        .I2(\conf_rdata_reg[5]_i_3_n_0 ),
        .I3(\conf_rdata_reg[5]_i_4_n_0 ),
        .I4(timer_r2[5]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[5]_i_3 
       (.I0(\conf_rdata_reg[14]_i_8_n_0 ),
        .I1(data6[1]),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\conf_rdata_reg[5]_i_5_n_0 ),
        .I4(\conf_rdata_reg[5]_i_6_n_0 ),
        .I5(\conf_rdata_reg[15]_i_8_n_0 ),
        .O(\conf_rdata_reg[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[5]_i_4 
       (.I0(\conf_rdata_reg[5]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[5]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[5]_i_5 
       (.I0(led[5]),
        .I1(\led_rg1_data_reg_n_0_[5] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[5] ),
        .O(\conf_rdata_reg[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \conf_rdata_reg[5]_i_6 
       (.I0(switch[5]),
        .I1(btn_key_r[5]),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(switch[2]),
        .O(\conf_rdata_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[5]_i_7 
       (.I0(cr5[5]),
        .I1(cr7[5]),
        .I2(cr4[5]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[5]),
        .O(\conf_rdata_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[5]_i_8 
       (.I0(user_cr1[5]),
        .I1(cr3[5]),
        .I2(user_cr0[5]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[5]),
        .O(\conf_rdata_reg[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[6]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[6]),
        .I3(io_simu[6]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[6]_i_2_n_0 ),
        .O(\conf_rdata_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \conf_rdata_reg[6]_i_2 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[6]_i_3_n_0 ),
        .I2(\conf_rdata_reg[6]_i_4_n_0 ),
        .I3(timer_r2[6]),
        .I4(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[6]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[6]_i_5_n_0 ),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(data6[2]),
        .I4(\conf_rdata_reg[14]_i_8_n_0 ),
        .I5(\conf_rdata_reg[6]_i_6_n_0 ),
        .O(\conf_rdata_reg[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[6]_i_4 
       (.I0(\conf_rdata_reg[6]_i_7_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[6]_i_8_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[6]_i_5 
       (.I0(led[6]),
        .I1(\led_rg1_data_reg_n_0_[6] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[6] ),
        .O(\conf_rdata_reg[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080C00)) 
    \conf_rdata_reg[6]_i_6 
       (.I0(btn_key_r[6]),
        .I1(buf_addr[5]),
        .I2(buf_addr[4]),
        .I3(switch[6]),
        .I4(buf_addr[2]),
        .I5(buf_addr[3]),
        .O(\conf_rdata_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[6]_i_7 
       (.I0(cr5[6]),
        .I1(cr7[6]),
        .I2(cr4[6]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[6]),
        .O(\conf_rdata_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[6]_i_8 
       (.I0(user_cr1[6]),
        .I1(cr3[6]),
        .I2(user_cr0[6]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[6]),
        .O(\conf_rdata_reg[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \conf_rdata_reg[7]_i_1 
       (.I0(\conf_rdata_reg[7]_i_2_n_0 ),
        .I1(\conf_rdata_reg[7]_i_3_n_0 ),
        .I2(virtual_uart_data[7]),
        .I3(io_simu[7]),
        .I4(\conf_rdata_reg[7]_i_4_n_0 ),
        .I5(\conf_rdata_reg[7]_i_5_n_0 ),
        .O(\conf_rdata_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[7]_i_10 
       (.I0(cr5[7]),
        .I1(cr7[7]),
        .I2(cr4[7]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[7]),
        .O(\conf_rdata_reg[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[7]_i_11 
       (.I0(user_cr1[7]),
        .I1(cr3[7]),
        .I2(user_cr0[7]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[7]),
        .O(\conf_rdata_reg[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \conf_rdata_reg[7]_i_2 
       (.I0(buf_addr[15]),
        .I1(buf_addr[0]),
        .I2(buf_addr[1]),
        .O(\conf_rdata_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \conf_rdata_reg[7]_i_3 
       (.I0(\conf_rdata_reg[31]_i_6_n_0 ),
        .I1(buf_addr[2]),
        .I2(buf_addr[3]),
        .O(\conf_rdata_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \conf_rdata_reg[7]_i_4 
       (.I0(\conf_rdata_reg[31]_i_6_n_0 ),
        .I1(buf_addr[3]),
        .I2(buf_addr[4]),
        .O(\conf_rdata_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[7]_i_5 
       (.I0(\conf_rdata_reg[31]_i_13_n_0 ),
        .I1(\conf_rdata_reg[15]_i_4_n_0 ),
        .I2(\conf_rdata_reg[7]_i_6_n_0 ),
        .I3(\conf_rdata_reg[7]_i_7_n_0 ),
        .I4(timer_r2[7]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[7]_i_6 
       (.I0(\conf_rdata_reg[14]_i_8_n_0 ),
        .I1(data6[3]),
        .I2(\conf_rdata_reg[14]_i_9_n_0 ),
        .I3(\conf_rdata_reg[7]_i_8_n_0 ),
        .I4(\conf_rdata_reg[7]_i_9_n_0 ),
        .I5(\conf_rdata_reg[15]_i_8_n_0 ),
        .O(\conf_rdata_reg[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \conf_rdata_reg[7]_i_7 
       (.I0(\conf_rdata_reg[7]_i_10_n_0 ),
        .I1(\conf_rdata_reg[31]_i_9_n_0 ),
        .I2(\conf_rdata_reg[7]_i_11_n_0 ),
        .I3(\conf_rdata_reg[31]_i_7_n_0 ),
        .O(\conf_rdata_reg[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[7]_i_8 
       (.I0(led[7]),
        .I1(\led_rg1_data_reg_n_0_[7] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[7] ),
        .O(\conf_rdata_reg[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \conf_rdata_reg[7]_i_9 
       (.I0(switch[7]),
        .I1(btn_key_r[7]),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(switch[3]),
        .O(\conf_rdata_reg[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \conf_rdata_reg[8]_i_1 
       (.I0(io_simu[8]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[8]_i_2_n_0 ),
        .I3(\conf_rdata_reg[8]_i_3_n_0 ),
        .I4(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[8]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[8]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[8]_i_5_n_0 ),
        .I4(timer_r2[8]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \conf_rdata_reg[8]_i_3 
       (.I0(\conf_rdata_reg[15]_i_4_n_0 ),
        .I1(\conf_rdata_reg[14]_i_6_n_0 ),
        .I2(btn_key_r[8]),
        .I3(\conf_rdata_reg[8]_i_6_n_0 ),
        .I4(data5[0]),
        .I5(\conf_rdata_reg[14]_i_8_n_0 ),
        .O(\conf_rdata_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[8]_i_4 
       (.I0(user_cr1[8]),
        .I1(cr3[8]),
        .I2(user_cr0[8]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[8]),
        .O(\conf_rdata_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[8]_i_5 
       (.I0(cr5[8]),
        .I1(cr7[8]),
        .I2(cr4[8]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[8]),
        .O(\conf_rdata_reg[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \conf_rdata_reg[8]_i_6 
       (.I0(\conf_rdata_reg[14]_i_9_n_0 ),
        .I1(\led_rg0_data_reg_n_0_[8] ),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(\led_rg1_data_reg_n_0_[8] ),
        .I5(led[8]),
        .O(\conf_rdata_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \conf_rdata_reg[9]_i_1 
       (.I0(io_simu[9]),
        .I1(\conf_rdata_reg[31]_i_3_n_0 ),
        .I2(\conf_rdata_reg[9]_i_2_n_0 ),
        .I3(\conf_rdata_reg[9]_i_3_n_0 ),
        .I4(\conf_rdata_reg[15]_i_4_n_0 ),
        .I5(\conf_rdata_reg[31]_i_5_n_0 ),
        .O(\conf_rdata_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \conf_rdata_reg[9]_i_2 
       (.I0(\conf_rdata_reg[31]_i_7_n_0 ),
        .I1(\conf_rdata_reg[9]_i_4_n_0 ),
        .I2(\conf_rdata_reg[31]_i_9_n_0 ),
        .I3(\conf_rdata_reg[9]_i_5_n_0 ),
        .I4(timer_r2[9]),
        .I5(\conf_rdata_reg[15]_i_7_n_0 ),
        .O(\conf_rdata_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \conf_rdata_reg[9]_i_3 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\conf_rdata_reg[15]_i_8_n_0 ),
        .I3(btn_key_r[9]),
        .I4(switch[4]),
        .I5(\conf_rdata_reg[9]_i_6_n_0 ),
        .O(\conf_rdata_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[9]_i_4 
       (.I0(user_cr1[9]),
        .I1(cr3[9]),
        .I2(user_cr0[9]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr2[9]),
        .O(\conf_rdata_reg[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \conf_rdata_reg[9]_i_5 
       (.I0(cr5[9]),
        .I1(cr7[9]),
        .I2(cr4[9]),
        .I3(buf_addr[2]),
        .I4(buf_addr[3]),
        .I5(cr6[9]),
        .O(\conf_rdata_reg[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000CAAAA)) 
    \conf_rdata_reg[9]_i_6 
       (.I0(\conf_rdata_reg[9]_i_7_n_0 ),
        .I1(data5[1]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .I4(buf_addr[4]),
        .I5(buf_addr[5]),
        .O(\conf_rdata_reg[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \conf_rdata_reg[9]_i_7 
       (.I0(led[9]),
        .I1(\led_rg1_data_reg_n_0_[9] ),
        .I2(buf_addr[3]),
        .I3(buf_addr[2]),
        .I4(\led_rg0_data_reg_n_0_[9] ),
        .O(\conf_rdata_reg[9]_i_7_n_0 ));
  FDRE \conf_rdata_reg_reg[0] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[0]_i_1_n_0 ),
        .Q(rdata[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[10] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[10]_i_1_n_0 ),
        .Q(rdata[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[11] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[11]_i_1_n_0 ),
        .Q(rdata[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[12] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[12]_i_1_n_0 ),
        .Q(rdata[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[13] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[13]_i_1_n_0 ),
        .Q(rdata[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[14] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[14]_i_1_n_0 ),
        .Q(rdata[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[15] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[15]_i_1_n_0 ),
        .Q(rdata[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[16] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[16]_i_1_n_0 ),
        .Q(rdata[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[17] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[17]_i_1_n_0 ),
        .Q(rdata[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[18] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[18]_i_1_n_0 ),
        .Q(rdata[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[19] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[19]_i_1_n_0 ),
        .Q(rdata[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[1] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[1]_i_1_n_0 ),
        .Q(rdata[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[20] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[20]_i_1_n_0 ),
        .Q(rdata[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[21] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[21]_i_1_n_0 ),
        .Q(rdata[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[22] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[22]_i_1_n_0 ),
        .Q(rdata[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[23] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[23]_i_1_n_0 ),
        .Q(rdata[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[24] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[24]_i_1_n_0 ),
        .Q(rdata[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[25] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[25]_i_1_n_0 ),
        .Q(rdata[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[26] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[26]_i_1_n_0 ),
        .Q(rdata[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[27] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[27]_i_1_n_0 ),
        .Q(rdata[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[28] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[28]_i_1_n_0 ),
        .Q(rdata[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[29] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[29]_i_1_n_0 ),
        .Q(rdata[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[2] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[2]_i_1_n_0 ),
        .Q(rdata[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[30] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[30]_i_1_n_0 ),
        .Q(rdata[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[31] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[31]_i_2_n_0 ),
        .Q(rdata[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[3] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[3]_i_1_n_0 ),
        .Q(rdata[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[4] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[4]_i_1_n_0 ),
        .Q(rdata[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[5] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[5]_i_1_n_0 ),
        .Q(rdata[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[6] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[6]_i_1_n_0 ),
        .Q(rdata[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[7] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[7]_i_1_n_0 ),
        .Q(rdata[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[8] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[8]_i_1_n_0 ),
        .Q(rdata[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_rdata_reg_reg[9] 
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(\conf_rdata_reg[9]_i_1_n_0 ),
        .Q(rdata[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE conf_rlast_reg_reg
       (.C(aclk),
        .CE(conf_rdata_reg0),
        .D(conf_rdata_reg0),
        .Q(rlast),
        .R(\buf_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h08F8F8F8)) 
    conf_rvalid_reg_i_1
       (.I0(R_or_W),
        .I1(busy),
        .I2(conf_rvalid_reg_reg_0),
        .I3(rlast),
        .I4(rready),
        .O(conf_rvalid_reg_i_1_n_0));
  FDRE conf_rvalid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(conf_rvalid_reg_i_1_n_0),
        .Q(conf_rvalid_reg_reg_0),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \conf_wdata_r1_reg[0] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[0]),
        .Q(conf_wdata_r1[0]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[10] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[10]),
        .Q(conf_wdata_r1[10]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[11] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[11]),
        .Q(conf_wdata_r1[11]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[12] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[12]),
        .Q(conf_wdata_r1[12]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[13] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[13]),
        .Q(conf_wdata_r1[13]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[14] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[14]),
        .Q(conf_wdata_r1[14]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[15] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[15]),
        .Q(conf_wdata_r1[15]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[16] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[16]),
        .Q(conf_wdata_r1[16]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[17] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[17]),
        .Q(conf_wdata_r1[17]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[18] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[18]),
        .Q(conf_wdata_r1[18]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[19] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[19]),
        .Q(conf_wdata_r1[19]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[1] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[1]),
        .Q(conf_wdata_r1[1]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[20] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[20]),
        .Q(conf_wdata_r1[20]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[21] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[21]),
        .Q(conf_wdata_r1[21]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[22] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[22]),
        .Q(conf_wdata_r1[22]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[23] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[23]),
        .Q(conf_wdata_r1[23]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[24] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[24]),
        .Q(conf_wdata_r1[24]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[25] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[25]),
        .Q(conf_wdata_r1[25]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[26] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[26]),
        .Q(conf_wdata_r1[26]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[27] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[27]),
        .Q(conf_wdata_r1[27]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[28] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[28]),
        .Q(conf_wdata_r1[28]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[29] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[29]),
        .Q(conf_wdata_r1[29]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[2] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[2]),
        .Q(conf_wdata_r1[2]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[30] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[30]),
        .Q(conf_wdata_r1[30]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[31] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[31]),
        .Q(conf_wdata_r1[31]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[3] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[3]),
        .Q(conf_wdata_r1[3]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[4] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[4]),
        .Q(conf_wdata_r1[4]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[5] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[5]),
        .Q(conf_wdata_r1[5]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[6] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[6]),
        .Q(conf_wdata_r1[6]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[7] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[7]),
        .Q(conf_wdata_r1[7]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[8] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[8]),
        .Q(conf_wdata_r1[8]),
        .R(1'b0));
  FDRE \conf_wdata_r1_reg[9] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r[9]),
        .Q(conf_wdata_r1[9]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[0] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[10] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[10]),
        .Q(data[10]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[11] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[11]),
        .Q(data[11]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[12] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[12]),
        .Q(data[12]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[13] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[13]),
        .Q(data[13]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[14] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[14]),
        .Q(data[14]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[15] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[15]),
        .Q(data[15]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[16] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[16]),
        .Q(data[16]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[17] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[17]),
        .Q(data[17]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[18] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[18]),
        .Q(data[18]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[19] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[19]),
        .Q(data[19]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[1] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[20] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[20]),
        .Q(data[20]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[21] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[21]),
        .Q(data[21]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[22] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[22]),
        .Q(data[22]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[23] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[23]),
        .Q(data[23]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[24] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[24]),
        .Q(data[24]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[25] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[25]),
        .Q(data[25]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[26] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[26]),
        .Q(data[26]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[27] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[27]),
        .Q(data[27]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[28] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[28]),
        .Q(data[28]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[29] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[29]),
        .Q(data[29]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[2] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[30] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[30]),
        .Q(data[30]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[31] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[31]),
        .Q(data[31]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[3] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[4] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[5] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[6] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[7] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[7]),
        .Q(data[7]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[8] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[8]),
        .Q(data[8]),
        .R(1'b0));
  FDRE \conf_wdata_r2_reg[9] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(conf_wdata_r1[9]),
        .Q(data[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \conf_wdata_r[31]_i_1 
       (.I0(aresetn),
        .I1(write_timer),
        .O(conf_wdata_r_3));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \conf_wdata_r[31]_i_2 
       (.I0(\led_data[15]_i_5_n_0 ),
        .I1(\conf_wdata_r[31]_i_3_n_0 ),
        .I2(buf_addr[14]),
        .I3(buf_addr[12]),
        .I4(\virtual_uart_data[7]_i_3_n_0 ),
        .I5(\led_data[15]_i_3_n_0 ),
        .O(write_timer));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \conf_wdata_r[31]_i_3 
       (.I0(buf_addr[13]),
        .I1(buf_addr[15]),
        .O(\conf_wdata_r[31]_i_3_n_0 ));
  FDRE \conf_wdata_r_reg[0] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[0]),
        .Q(conf_wdata_r[0]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[10] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[10]),
        .Q(conf_wdata_r[10]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[11] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[11]),
        .Q(conf_wdata_r[11]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[12] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[12]),
        .Q(conf_wdata_r[12]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[13] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[13]),
        .Q(conf_wdata_r[13]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[14] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[14]),
        .Q(conf_wdata_r[14]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[15] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[15]),
        .Q(conf_wdata_r[15]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[16] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[16]),
        .Q(conf_wdata_r[16]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[17] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[17]),
        .Q(conf_wdata_r[17]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[18] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[18]),
        .Q(conf_wdata_r[18]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[19] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[19]),
        .Q(conf_wdata_r[19]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[1] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[1]),
        .Q(conf_wdata_r[1]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[20] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[20]),
        .Q(conf_wdata_r[20]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[21] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[21]),
        .Q(conf_wdata_r[21]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[22] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[22]),
        .Q(conf_wdata_r[22]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[23] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[23]),
        .Q(conf_wdata_r[23]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[24] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[24]),
        .Q(conf_wdata_r[24]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[25] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[25]),
        .Q(conf_wdata_r[25]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[26] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[26]),
        .Q(conf_wdata_r[26]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[27] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[27]),
        .Q(conf_wdata_r[27]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[28] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[28]),
        .Q(conf_wdata_r[28]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[29] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[29]),
        .Q(conf_wdata_r[29]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[2] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[2]),
        .Q(conf_wdata_r[2]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[30] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[30]),
        .Q(conf_wdata_r[30]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[31] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[31]),
        .Q(conf_wdata_r[31]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[3] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[3]),
        .Q(conf_wdata_r[3]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[4] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[4]),
        .Q(conf_wdata_r[4]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[5] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[5]),
        .Q(conf_wdata_r[5]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[6] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[6]),
        .Q(conf_wdata_r[6]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[7] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[7]),
        .Q(conf_wdata_r[7]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[8] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[8]),
        .Q(conf_wdata_r[8]),
        .R(1'b0));
  FDRE \conf_wdata_r_reg[9] 
       (.C(aclk),
        .CE(conf_wdata_r_3),
        .D(wdata[9]),
        .Q(conf_wdata_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF4C)) 
    conf_wready_reg_i_1
       (.I0(wlast),
        .I1(conf_wready_reg_reg_0),
        .I2(wvalid),
        .I3(aw_enter),
        .O(conf_wready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0A02)) 
    conf_wready_reg_i_2
       (.I0(awvalid),
        .I1(arvalid),
        .I2(busy),
        .I3(R_or_W),
        .O(aw_enter));
  FDRE conf_wready_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(conf_wready_reg_i_1_n_0),
        .Q(conf_wready_reg_reg_0),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE \count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE \count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({sel0,\count_reg_n_0_[16] }));
  FDRE \count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE \count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE \count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \cr0[31]_i_1 
       (.I0(\led_data[15]_i_5_n_0 ),
        .I1(buf_addr[2]),
        .I2(buf_addr[3]),
        .I3(\conf_rdata_reg[7]_i_2_n_0 ),
        .I4(\cr0[31]_i_2_n_0 ),
        .I5(\led_data[15]_i_3_n_0 ),
        .O(write_cr0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cr0[31]_i_2 
       (.I0(buf_addr[12]),
        .I1(buf_addr[13]),
        .I2(buf_addr[14]),
        .O(\cr0[31]_i_2_n_0 ));
  FDRE \cr0_reg[0] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[0]),
        .Q(user_cr0[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[10] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[10]),
        .Q(user_cr0[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[11] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[11]),
        .Q(user_cr0[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[12] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[12]),
        .Q(user_cr0[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[13] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[13]),
        .Q(user_cr0[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[14] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[14]),
        .Q(user_cr0[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[15] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[15]),
        .Q(user_cr0[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[16] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[16]),
        .Q(user_cr0[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[17] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[17]),
        .Q(user_cr0[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[18] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[18]),
        .Q(user_cr0[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[19] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[19]),
        .Q(user_cr0[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[1] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[1]),
        .Q(user_cr0[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[20] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[20]),
        .Q(user_cr0[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[21] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[21]),
        .Q(user_cr0[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[22] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[22]),
        .Q(user_cr0[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[23] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[23]),
        .Q(user_cr0[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[24] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[24]),
        .Q(user_cr0[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[25] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[25]),
        .Q(user_cr0[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[26] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[26]),
        .Q(user_cr0[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[27] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[27]),
        .Q(user_cr0[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[28] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[28]),
        .Q(user_cr0[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[29] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[29]),
        .Q(user_cr0[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[2] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[2]),
        .Q(user_cr0[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[30] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[30]),
        .Q(user_cr0[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[31] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[31]),
        .Q(user_cr0[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[3] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[3]),
        .Q(user_cr0[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[4] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[4]),
        .Q(user_cr0[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[5] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[5]),
        .Q(user_cr0[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[6] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[6]),
        .Q(user_cr0[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[7] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[7]),
        .Q(user_cr0[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[8] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[8]),
        .Q(user_cr0[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr0_reg[9] 
       (.C(aclk),
        .CE(write_cr0),
        .D(wdata[9]),
        .Q(user_cr0[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \cr1[31]_i_1 
       (.I0(\led_data[15]_i_3_n_0 ),
        .I1(buf_addr[2]),
        .I2(buf_addr[3]),
        .I3(buf_addr[0]),
        .I4(\cr1[31]_i_2_n_0 ),
        .O(write_cr1));
  LUT5 #(
    .INIT(32'h01000000)) 
    \cr1[31]_i_2 
       (.I0(buf_addr[1]),
        .I1(\cr0[31]_i_2_n_0 ),
        .I2(\cr1[31]_i_3_n_0 ),
        .I3(buf_addr[15]),
        .I4(p_28_in),
        .O(\cr1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cr1[31]_i_3 
       (.I0(buf_addr[8]),
        .I1(buf_addr[9]),
        .I2(buf_addr[10]),
        .I3(buf_addr[11]),
        .O(\cr1[31]_i_3_n_0 ));
  FDRE \cr1_reg[0] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[0]),
        .Q(user_cr1[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[10] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[10]),
        .Q(user_cr1[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[11] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[11]),
        .Q(user_cr1[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[12] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[12]),
        .Q(user_cr1[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[13] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[13]),
        .Q(user_cr1[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[14] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[14]),
        .Q(user_cr1[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[15] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[15]),
        .Q(user_cr1[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[16] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[16]),
        .Q(user_cr1[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[17] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[17]),
        .Q(user_cr1[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[18] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[18]),
        .Q(user_cr1[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[19] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[19]),
        .Q(user_cr1[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[1] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[1]),
        .Q(user_cr1[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[20] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[20]),
        .Q(user_cr1[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[21] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[21]),
        .Q(user_cr1[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[22] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[22]),
        .Q(user_cr1[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[23] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[23]),
        .Q(user_cr1[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[24] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[24]),
        .Q(user_cr1[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[25] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[25]),
        .Q(user_cr1[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[26] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[26]),
        .Q(user_cr1[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[27] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[27]),
        .Q(user_cr1[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[28] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[28]),
        .Q(user_cr1[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[29] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[29]),
        .Q(user_cr1[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[2] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[2]),
        .Q(user_cr1[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[30] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[30]),
        .Q(user_cr1[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[31] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[31]),
        .Q(user_cr1[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[3] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[3]),
        .Q(user_cr1[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[4] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[4]),
        .Q(user_cr1[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[5] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[5]),
        .Q(user_cr1[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[6] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[6]),
        .Q(user_cr1[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[7] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[7]),
        .Q(user_cr1[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[8] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[8]),
        .Q(user_cr1[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr1_reg[9] 
       (.C(aclk),
        .CE(write_cr1),
        .D(wdata[9]),
        .Q(user_cr1[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \cr2[31]_i_1 
       (.I0(\led_data[15]_i_3_n_0 ),
        .I1(buf_addr[2]),
        .I2(buf_addr[3]),
        .I3(buf_addr[0]),
        .I4(\cr1[31]_i_2_n_0 ),
        .O(write_cr2));
  FDRE \cr2_reg[0] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[0]),
        .Q(cr2[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[10] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[10]),
        .Q(cr2[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[11] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[11]),
        .Q(cr2[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[12] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[12]),
        .Q(cr2[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[13] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[13]),
        .Q(cr2[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[14] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[14]),
        .Q(cr2[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[15] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[15]),
        .Q(cr2[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[16] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[16]),
        .Q(cr2[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[17] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[17]),
        .Q(cr2[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[18] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[18]),
        .Q(cr2[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[19] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[19]),
        .Q(cr2[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[1] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[1]),
        .Q(cr2[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[20] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[20]),
        .Q(cr2[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[21] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[21]),
        .Q(cr2[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[22] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[22]),
        .Q(cr2[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[23] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[23]),
        .Q(cr2[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[24] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[24]),
        .Q(cr2[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[25] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[25]),
        .Q(cr2[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[26] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[26]),
        .Q(cr2[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[27] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[27]),
        .Q(cr2[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[28] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[28]),
        .Q(cr2[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[29] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[29]),
        .Q(cr2[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[2] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[2]),
        .Q(cr2[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[30] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[30]),
        .Q(cr2[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[31] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[31]),
        .Q(cr2[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[3] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[3]),
        .Q(cr2[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[4] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[4]),
        .Q(cr2[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[5] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[5]),
        .Q(cr2[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[6] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[6]),
        .Q(cr2[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[7] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[7]),
        .Q(cr2[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[8] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[8]),
        .Q(cr2[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr2_reg[9] 
       (.C(aclk),
        .CE(write_cr2),
        .D(wdata[9]),
        .Q(cr2[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cr3[31]_i_1 
       (.I0(\led_data[15]_i_3_n_0 ),
        .I1(buf_addr[2]),
        .I2(buf_addr[3]),
        .I3(buf_addr[0]),
        .I4(\cr1[31]_i_2_n_0 ),
        .O(write_cr3));
  FDRE \cr3_reg[0] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[0]),
        .Q(cr3[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[10] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[10]),
        .Q(cr3[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[11] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[11]),
        .Q(cr3[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[12] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[12]),
        .Q(cr3[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[13] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[13]),
        .Q(cr3[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[14] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[14]),
        .Q(cr3[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[15] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[15]),
        .Q(cr3[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[16] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[16]),
        .Q(cr3[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[17] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[17]),
        .Q(cr3[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[18] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[18]),
        .Q(cr3[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[19] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[19]),
        .Q(cr3[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[1] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[1]),
        .Q(cr3[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[20] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[20]),
        .Q(cr3[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[21] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[21]),
        .Q(cr3[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[22] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[22]),
        .Q(cr3[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[23] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[23]),
        .Q(cr3[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[24] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[24]),
        .Q(cr3[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[25] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[25]),
        .Q(cr3[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[26] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[26]),
        .Q(cr3[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[27] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[27]),
        .Q(cr3[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[28] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[28]),
        .Q(cr3[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[29] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[29]),
        .Q(cr3[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[2] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[2]),
        .Q(cr3[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[30] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[30]),
        .Q(cr3[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[31] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[31]),
        .Q(cr3[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[3] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[3]),
        .Q(cr3[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[4] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[4]),
        .Q(cr3[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[5] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[5]),
        .Q(cr3[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[6] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[6]),
        .Q(cr3[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[7] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[7]),
        .Q(cr3[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[8] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[8]),
        .Q(cr3[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr3_reg[9] 
       (.C(aclk),
        .CE(write_cr3),
        .D(wdata[9]),
        .Q(cr3[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \cr4[31]_i_1 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\cr4[31]_i_2_n_0 ),
        .I3(\cr1[31]_i_2_n_0 ),
        .O(write_cr4));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \cr4[31]_i_2 
       (.I0(buf_addr[4]),
        .I1(buf_addr[0]),
        .I2(buf_addr[6]),
        .I3(buf_addr[7]),
        .I4(buf_addr[5]),
        .O(\cr4[31]_i_2_n_0 ));
  FDRE \cr4_reg[0] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[0]),
        .Q(cr4[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[10] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[10]),
        .Q(cr4[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[11] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[11]),
        .Q(cr4[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[12] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[12]),
        .Q(cr4[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[13] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[13]),
        .Q(cr4[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[14] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[14]),
        .Q(cr4[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[15] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[15]),
        .Q(cr4[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[16] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[16]),
        .Q(cr4[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[17] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[17]),
        .Q(cr4[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[18] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[18]),
        .Q(cr4[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[19] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[19]),
        .Q(cr4[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[1] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[1]),
        .Q(cr4[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[20] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[20]),
        .Q(cr4[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[21] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[21]),
        .Q(cr4[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[22] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[22]),
        .Q(cr4[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[23] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[23]),
        .Q(cr4[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[24] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[24]),
        .Q(cr4[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[25] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[25]),
        .Q(cr4[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[26] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[26]),
        .Q(cr4[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[27] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[27]),
        .Q(cr4[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[28] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[28]),
        .Q(cr4[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[29] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[29]),
        .Q(cr4[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[2] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[2]),
        .Q(cr4[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[30] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[30]),
        .Q(cr4[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[31] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[31]),
        .Q(cr4[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[3] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[3]),
        .Q(cr4[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[4] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[4]),
        .Q(cr4[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[5] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[5]),
        .Q(cr4[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[6] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[6]),
        .Q(cr4[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[7] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[7]),
        .Q(cr4[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[8] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[8]),
        .Q(cr4[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr4_reg[9] 
       (.C(aclk),
        .CE(write_cr4),
        .D(wdata[9]),
        .Q(cr4[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \cr5[31]_i_1 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\cr4[31]_i_2_n_0 ),
        .I3(\cr1[31]_i_2_n_0 ),
        .O(write_cr5));
  FDRE \cr5_reg[0] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[0]),
        .Q(cr5[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[10] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[10]),
        .Q(cr5[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[11] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[11]),
        .Q(cr5[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[12] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[12]),
        .Q(cr5[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[13] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[13]),
        .Q(cr5[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[14] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[14]),
        .Q(cr5[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[15] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[15]),
        .Q(cr5[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[16] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[16]),
        .Q(cr5[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[17] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[17]),
        .Q(cr5[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[18] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[18]),
        .Q(cr5[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[19] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[19]),
        .Q(cr5[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[1] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[1]),
        .Q(cr5[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[20] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[20]),
        .Q(cr5[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[21] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[21]),
        .Q(cr5[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[22] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[22]),
        .Q(cr5[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[23] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[23]),
        .Q(cr5[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[24] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[24]),
        .Q(cr5[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[25] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[25]),
        .Q(cr5[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[26] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[26]),
        .Q(cr5[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[27] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[27]),
        .Q(cr5[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[28] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[28]),
        .Q(cr5[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[29] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[29]),
        .Q(cr5[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[2] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[2]),
        .Q(cr5[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[30] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[30]),
        .Q(cr5[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[31] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[31]),
        .Q(cr5[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[3] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[3]),
        .Q(cr5[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[4] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[4]),
        .Q(cr5[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[5] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[5]),
        .Q(cr5[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[6] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[6]),
        .Q(cr5[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[7] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[7]),
        .Q(cr5[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[8] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[8]),
        .Q(cr5[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr5_reg[9] 
       (.C(aclk),
        .CE(write_cr5),
        .D(wdata[9]),
        .Q(cr5[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \cr6[31]_i_1 
       (.I0(\cr0[31]_i_2_n_0 ),
        .I1(\cr6[31]_i_2_n_0 ),
        .I2(buf_addr[15]),
        .I3(buf_addr[1]),
        .I4(\led_data[15]_i_5_n_0 ),
        .I5(\cr4[31]_i_2_n_0 ),
        .O(write_cr6));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cr6[31]_i_2 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .O(\cr6[31]_i_2_n_0 ));
  FDRE \cr6_reg[0] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[0]),
        .Q(cr6[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[10] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[10]),
        .Q(cr6[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[11] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[11]),
        .Q(cr6[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[12] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[12]),
        .Q(cr6[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[13] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[13]),
        .Q(cr6[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[14] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[14]),
        .Q(cr6[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[15] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[15]),
        .Q(cr6[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[16] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[16]),
        .Q(cr6[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[17] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[17]),
        .Q(cr6[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[18] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[18]),
        .Q(cr6[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[19] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[19]),
        .Q(cr6[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[1] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[1]),
        .Q(cr6[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[20] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[20]),
        .Q(cr6[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[21] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[21]),
        .Q(cr6[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[22] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[22]),
        .Q(cr6[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[23] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[23]),
        .Q(cr6[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[24] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[24]),
        .Q(cr6[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[25] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[25]),
        .Q(cr6[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[26] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[26]),
        .Q(cr6[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[27] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[27]),
        .Q(cr6[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[28] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[28]),
        .Q(cr6[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[29] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[29]),
        .Q(cr6[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[2] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[2]),
        .Q(cr6[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[30] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[30]),
        .Q(cr6[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[31] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[31]),
        .Q(cr6[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[3] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[3]),
        .Q(cr6[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[4] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[4]),
        .Q(cr6[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[5] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[5]),
        .Q(cr6[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[6] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[6]),
        .Q(cr6[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[7] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[7]),
        .Q(cr6[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[8] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[8]),
        .Q(cr6[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr6_reg[9] 
       (.C(aclk),
        .CE(write_cr6),
        .D(wdata[9]),
        .Q(cr6[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cr7[31]_i_1 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .I2(\cr4[31]_i_2_n_0 ),
        .I3(\cr1[31]_i_2_n_0 ),
        .O(write_cr7));
  FDRE \cr7_reg[0] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[0]),
        .Q(cr7[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[10] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[10]),
        .Q(cr7[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[11] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[11]),
        .Q(cr7[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[12] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[12]),
        .Q(cr7[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[13] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[13]),
        .Q(cr7[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[14] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[14]),
        .Q(cr7[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[15] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[15]),
        .Q(cr7[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[16] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[16]),
        .Q(cr7[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[17] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[17]),
        .Q(cr7[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[18] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[18]),
        .Q(cr7[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[19] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[19]),
        .Q(cr7[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[1] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[1]),
        .Q(cr7[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[20] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[20]),
        .Q(cr7[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[21] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[21]),
        .Q(cr7[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[22] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[22]),
        .Q(cr7[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[23] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[23]),
        .Q(cr7[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[24] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[24]),
        .Q(cr7[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[25] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[25]),
        .Q(cr7[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[26] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[26]),
        .Q(cr7[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[27] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[27]),
        .Q(cr7[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[28] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[28]),
        .Q(cr7[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[29] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[29]),
        .Q(cr7[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[2] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[2]),
        .Q(cr7[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[30] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[30]),
        .Q(cr7[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[31] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[31]),
        .Q(cr7[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[3] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[3]),
        .Q(cr7[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[4] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[4]),
        .Q(cr7[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[5] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[5]),
        .Q(cr7[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[6] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[6]),
        .Q(cr7[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[7] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[7]),
        .Q(cr7[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[8] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[8]),
        .Q(cr7[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \cr7_reg[9] 
       (.C(aclk),
        .CE(write_cr7),
        .D(wdata[9]),
        .Q(cr7[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \io_simu[31]_i_1 
       (.I0(\io_simu[31]_i_2_n_0 ),
        .I1(\io_simu[31]_i_3_n_0 ),
        .I2(buf_addr[13]),
        .I3(buf_addr[15]),
        .I4(\io_simu[31]_i_4_n_0 ),
        .I5(\io_simu[31]_i_5_n_0 ),
        .O(write_io_simu));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \io_simu[31]_i_2 
       (.I0(\led_rg0_data[1]_i_3_n_0 ),
        .I1(buf_addr[7]),
        .I2(buf_addr[6]),
        .I3(buf_addr[1]),
        .I4(buf_addr[5]),
        .I5(buf_addr[12]),
        .O(\io_simu[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \io_simu[31]_i_3 
       (.I0(buf_addr[14]),
        .I1(wvalid),
        .I2(conf_wready_reg_reg_0),
        .I3(wlast),
        .O(\io_simu[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \io_simu[31]_i_4 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .O(\io_simu[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \io_simu[31]_i_5 
       (.I0(buf_addr[11]),
        .I1(buf_addr[9]),
        .I2(buf_addr[10]),
        .I3(buf_addr[8]),
        .O(\io_simu[31]_i_5_n_0 ));
  FDRE \io_simu_reg[0] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[16]),
        .Q(io_simu[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[10] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[26]),
        .Q(io_simu[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[11] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[27]),
        .Q(io_simu[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[12] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[28]),
        .Q(io_simu[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[13] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[29]),
        .Q(io_simu[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[14] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[30]),
        .Q(io_simu[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[15] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[31]),
        .Q(io_simu[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[16] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[0]),
        .Q(io_simu[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[17] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[1]),
        .Q(io_simu[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[18] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[2]),
        .Q(io_simu[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[19] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[3]),
        .Q(io_simu[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[1] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[17]),
        .Q(io_simu[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[20] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[4]),
        .Q(io_simu[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[21] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[5]),
        .Q(io_simu[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[22] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[6]),
        .Q(io_simu[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[23] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[7]),
        .Q(io_simu[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[24] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[8]),
        .Q(io_simu[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[25] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[9]),
        .Q(io_simu[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[26] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[10]),
        .Q(io_simu[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[27] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[11]),
        .Q(io_simu[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[28] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[12]),
        .Q(io_simu[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[29] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[13]),
        .Q(io_simu[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[2] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[18]),
        .Q(io_simu[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[30] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[14]),
        .Q(io_simu[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[31] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[15]),
        .Q(io_simu[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[3] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[19]),
        .Q(io_simu[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[4] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[20]),
        .Q(io_simu[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[5] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[21]),
        .Q(io_simu[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[6] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[22]),
        .Q(io_simu[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[7] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[23]),
        .Q(io_simu[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[8] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[24]),
        .Q(io_simu[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \io_simu_reg[9] 
       (.C(aclk),
        .CE(write_io_simu),
        .D(wdata[25]),
        .Q(io_simu[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \key_count[0]_i_1 
       (.I0(key_flag),
        .I1(aresetn),
        .O(key_count0));
  LUT1 #(
    .INIT(2'h1)) 
    \key_count[0]_i_3 
       (.I0(\key_count_reg_n_0_[0] ),
        .O(\key_count[0]_i_3_n_0 ));
  FDRE \key_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_7 ),
        .Q(\key_count_reg_n_0_[0] ),
        .R(key_count0));
  CARRY4 \key_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\key_count_reg[0]_i_2_n_0 ,\key_count_reg[0]_i_2_n_1 ,\key_count_reg[0]_i_2_n_2 ,\key_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\key_count_reg[0]_i_2_n_4 ,\key_count_reg[0]_i_2_n_5 ,\key_count_reg[0]_i_2_n_6 ,\key_count_reg[0]_i_2_n_7 }),
        .S({\key_count_reg_n_0_[3] ,\key_count_reg_n_0_[2] ,\key_count_reg_n_0_[1] ,\key_count[0]_i_3_n_0 }));
  FDRE \key_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[10] ),
        .R(key_count0));
  FDRE \key_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[11] ),
        .R(key_count0));
  FDRE \key_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[12] ),
        .R(key_count0));
  CARRY4 \key_count_reg[12]_i_1 
       (.CI(\key_count_reg[8]_i_1_n_0 ),
        .CO({\key_count_reg[12]_i_1_n_0 ,\key_count_reg[12]_i_1_n_1 ,\key_count_reg[12]_i_1_n_2 ,\key_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[12]_i_1_n_4 ,\key_count_reg[12]_i_1_n_5 ,\key_count_reg[12]_i_1_n_6 ,\key_count_reg[12]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[15] ,\key_count_reg_n_0_[14] ,\key_count_reg_n_0_[13] ,\key_count_reg_n_0_[12] }));
  FDRE \key_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[13] ),
        .R(key_count0));
  FDRE \key_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[14] ),
        .R(key_count0));
  FDRE \key_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[15] ),
        .R(key_count0));
  FDRE \key_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[16] ),
        .R(key_count0));
  CARRY4 \key_count_reg[16]_i_1 
       (.CI(\key_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_key_count_reg[16]_i_1_CO_UNCONNECTED [3],\key_count_reg[16]_i_1_n_1 ,\key_count_reg[16]_i_1_n_2 ,\key_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[16]_i_1_n_4 ,\key_count_reg[16]_i_1_n_5 ,\key_count_reg[16]_i_1_n_6 ,\key_count_reg[16]_i_1_n_7 }),
        .S({key_sample,\key_count_reg_n_0_[18] ,\key_count_reg_n_0_[17] ,\key_count_reg_n_0_[16] }));
  FDRE \key_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[17] ),
        .R(key_count0));
  FDRE \key_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[18] ),
        .R(key_count0));
  FDRE \key_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_4 ),
        .Q(key_sample),
        .R(key_count0));
  FDRE \key_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_6 ),
        .Q(\key_count_reg_n_0_[1] ),
        .R(key_count0));
  FDRE \key_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_5 ),
        .Q(\key_count_reg_n_0_[2] ),
        .R(key_count0));
  FDRE \key_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_4 ),
        .Q(\key_count_reg_n_0_[3] ),
        .R(key_count0));
  FDRE \key_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[4] ),
        .R(key_count0));
  CARRY4 \key_count_reg[4]_i_1 
       (.CI(\key_count_reg[0]_i_2_n_0 ),
        .CO({\key_count_reg[4]_i_1_n_0 ,\key_count_reg[4]_i_1_n_1 ,\key_count_reg[4]_i_1_n_2 ,\key_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[4]_i_1_n_4 ,\key_count_reg[4]_i_1_n_5 ,\key_count_reg[4]_i_1_n_6 ,\key_count_reg[4]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[7] ,\key_count_reg_n_0_[6] ,\key_count_reg_n_0_[5] ,\key_count_reg_n_0_[4] }));
  FDRE \key_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[5] ),
        .R(key_count0));
  FDRE \key_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[6] ),
        .R(key_count0));
  FDRE \key_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[7] ),
        .R(key_count0));
  FDRE \key_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[8] ),
        .R(key_count0));
  CARRY4 \key_count_reg[8]_i_1 
       (.CI(\key_count_reg[4]_i_1_n_0 ),
        .CO({\key_count_reg[8]_i_1_n_0 ,\key_count_reg[8]_i_1_n_1 ,\key_count_reg[8]_i_1_n_2 ,\key_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[8]_i_1_n_4 ,\key_count_reg[8]_i_1_n_5 ,\key_count_reg[8]_i_1_n_6 ,\key_count_reg[8]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[11] ,\key_count_reg_n_0_[10] ,\key_count_reg_n_0_[9] ,\key_count_reg_n_0_[8] }));
  FDRE \key_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[9] ),
        .R(key_count0));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAB)) 
    key_flag_i_1
       (.I0(key_flag),
        .I1(key_start1__1),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(key_flag_i_2_n_0),
        .O(key_flag_i_1_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    key_flag_i_2
       (.I0(state_count_reg__0),
        .I1(key_sample),
        .I2(aresetn),
        .O(key_flag_i_2_n_0));
  FDRE key_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(key_flag_i_1_n_0),
        .Q(key_flag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[0]_i_1 
       (.I0(wdata[0]),
        .I1(aresetn),
        .I2(switch[0]),
        .O(\led_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[10]_i_1 
       (.I0(wdata[10]),
        .I1(aresetn),
        .I2(switch[5]),
        .O(\led_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[11]_i_1 
       (.I0(wdata[11]),
        .I1(aresetn),
        .I2(switch[5]),
        .O(\led_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[12]_i_1 
       (.I0(wdata[12]),
        .I1(aresetn),
        .I2(switch[6]),
        .O(\led_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[13]_i_1 
       (.I0(wdata[13]),
        .I1(aresetn),
        .I2(switch[6]),
        .O(\led_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[14]_i_1 
       (.I0(wdata[14]),
        .I1(aresetn),
        .I2(switch[7]),
        .O(\led_data[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \led_data[15]_i_1 
       (.I0(\led_data[15]_i_3_n_0 ),
        .I1(\led_data[15]_i_4_n_0 ),
        .I2(buf_addr[14]),
        .I3(\led_data[15]_i_5_n_0 ),
        .I4(aresetn),
        .O(\led_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[15]_i_2 
       (.I0(wdata[15]),
        .I1(aresetn),
        .I2(switch[7]),
        .O(\led_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_data[15]_i_3 
       (.I0(buf_addr[5]),
        .I1(buf_addr[7]),
        .I2(buf_addr[6]),
        .I3(buf_addr[4]),
        .O(\led_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \led_data[15]_i_4 
       (.I0(buf_addr[12]),
        .I1(buf_addr[13]),
        .I2(buf_addr[15]),
        .I3(\led_data[15]_i_6_n_0 ),
        .I4(buf_addr[1]),
        .I5(buf_addr[0]),
        .O(\led_data[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \led_data[15]_i_5 
       (.I0(p_28_in),
        .I1(buf_addr[11]),
        .I2(buf_addr[10]),
        .I3(buf_addr[9]),
        .I4(buf_addr[8]),
        .O(\led_data[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led_data[15]_i_6 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .O(\led_data[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_data[15]_i_7 
       (.I0(wlast),
        .I1(conf_wready_reg_reg_0),
        .I2(wvalid),
        .O(p_28_in));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[1]_i_1 
       (.I0(wdata[1]),
        .I1(aresetn),
        .I2(switch[0]),
        .O(\led_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[2]_i_1 
       (.I0(wdata[2]),
        .I1(aresetn),
        .I2(switch[1]),
        .O(\led_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[3]_i_1 
       (.I0(wdata[3]),
        .I1(aresetn),
        .I2(switch[1]),
        .O(\led_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[4]_i_1 
       (.I0(wdata[4]),
        .I1(aresetn),
        .I2(switch[2]),
        .O(\led_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[5]_i_1 
       (.I0(wdata[5]),
        .I1(aresetn),
        .I2(switch[2]),
        .O(\led_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[6]_i_1 
       (.I0(wdata[6]),
        .I1(aresetn),
        .I2(switch[3]),
        .O(\led_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[7]_i_1 
       (.I0(wdata[7]),
        .I1(aresetn),
        .I2(switch[3]),
        .O(\led_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[8]_i_1 
       (.I0(wdata[8]),
        .I1(aresetn),
        .I2(switch[4]),
        .O(\led_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_data[9]_i_1 
       (.I0(wdata[9]),
        .I1(aresetn),
        .I2(switch[4]),
        .O(\led_data[9]_i_1_n_0 ));
  FDRE \led_data_reg[0] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_data_reg[10] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[10]_i_1_n_0 ),
        .Q(led[10]),
        .R(1'b0));
  FDRE \led_data_reg[11] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[11]_i_1_n_0 ),
        .Q(led[11]),
        .R(1'b0));
  FDRE \led_data_reg[12] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[12]_i_1_n_0 ),
        .Q(led[12]),
        .R(1'b0));
  FDRE \led_data_reg[13] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[13]_i_1_n_0 ),
        .Q(led[13]),
        .R(1'b0));
  FDRE \led_data_reg[14] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[14]_i_1_n_0 ),
        .Q(led[14]),
        .R(1'b0));
  FDRE \led_data_reg[15] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[15]_i_2_n_0 ),
        .Q(led[15]),
        .R(1'b0));
  FDRE \led_data_reg[16] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[16]),
        .Q(\led_data_reg_n_0_[16] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[17] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[17]),
        .Q(\led_data_reg_n_0_[17] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[18] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[18]),
        .Q(\led_data_reg_n_0_[18] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[19] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[19]),
        .Q(\led_data_reg_n_0_[19] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[1] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_data_reg[20] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[20]),
        .Q(\led_data_reg_n_0_[20] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[21] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[21]),
        .Q(\led_data_reg_n_0_[21] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[22] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[22]),
        .Q(\led_data_reg_n_0_[22] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[23] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[23]),
        .Q(\led_data_reg_n_0_[23] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[24] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[24]),
        .Q(\led_data_reg_n_0_[24] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[25] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[25]),
        .Q(\led_data_reg_n_0_[25] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[26] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[26]),
        .Q(\led_data_reg_n_0_[26] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[27] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[27]),
        .Q(\led_data_reg_n_0_[27] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[28] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[28]),
        .Q(\led_data_reg_n_0_[28] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[29] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[29]),
        .Q(\led_data_reg_n_0_[29] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[2] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_data_reg[30] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[30]),
        .Q(\led_data_reg_n_0_[30] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[31] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(wdata[31]),
        .Q(\led_data_reg_n_0_[31] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_data_reg[3] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(1'b0));
  FDRE \led_data_reg[4] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[4]_i_1_n_0 ),
        .Q(led[4]),
        .R(1'b0));
  FDRE \led_data_reg[5] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[5]_i_1_n_0 ),
        .Q(led[5]),
        .R(1'b0));
  FDRE \led_data_reg[6] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[6]_i_1_n_0 ),
        .Q(led[6]),
        .R(1'b0));
  FDRE \led_data_reg[7] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[7]_i_1_n_0 ),
        .Q(led[7]),
        .R(1'b0));
  FDRE \led_data_reg[8] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[8]_i_1_n_0 ),
        .Q(led[8]),
        .R(1'b0));
  FDRE \led_data_reg[9] 
       (.C(aclk),
        .CE(\led_data[15]_i_1_n_0 ),
        .D(\led_data[9]_i_1_n_0 ),
        .Q(led[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \led_rg0_data[1]_i_1 
       (.I0(buf_addr[1]),
        .I1(\led_rg0_data[1]_i_2_n_0 ),
        .I2(\led_rg0_data[1]_i_3_n_0 ),
        .I3(\led_data[15]_i_5_n_0 ),
        .I4(\led_rg0_data[1]_i_4_n_0 ),
        .I5(\led_rg0_data[1]_i_5_n_0 ),
        .O(write_led_rg0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \led_rg0_data[1]_i_2 
       (.I0(buf_addr[3]),
        .I1(buf_addr[2]),
        .O(\led_rg0_data[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led_rg0_data[1]_i_3 
       (.I0(buf_addr[4]),
        .I1(buf_addr[0]),
        .O(\led_rg0_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \led_rg0_data[1]_i_4 
       (.I0(buf_addr[15]),
        .I1(buf_addr[13]),
        .I2(buf_addr[12]),
        .O(\led_rg0_data[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \led_rg0_data[1]_i_5 
       (.I0(buf_addr[5]),
        .I1(buf_addr[7]),
        .I2(buf_addr[6]),
        .I3(buf_addr[14]),
        .O(\led_rg0_data[1]_i_5_n_0 ));
  FDRE \led_rg0_data_reg[0] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[0]),
        .Q(led_rg0[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[10] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[10]),
        .Q(\led_rg0_data_reg_n_0_[10] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[11] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[11]),
        .Q(\led_rg0_data_reg_n_0_[11] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[12] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[12]),
        .Q(\led_rg0_data_reg_n_0_[12] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[13] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[13]),
        .Q(\led_rg0_data_reg_n_0_[13] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[14] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[14]),
        .Q(\led_rg0_data_reg_n_0_[14] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[15] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[15]),
        .Q(\led_rg0_data_reg_n_0_[15] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[16] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[16]),
        .Q(\led_rg0_data_reg_n_0_[16] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[17] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[17]),
        .Q(\led_rg0_data_reg_n_0_[17] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[18] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[18]),
        .Q(\led_rg0_data_reg_n_0_[18] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[19] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[19]),
        .Q(\led_rg0_data_reg_n_0_[19] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[1] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[1]),
        .Q(led_rg0[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[20] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[20]),
        .Q(\led_rg0_data_reg_n_0_[20] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[21] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[21]),
        .Q(\led_rg0_data_reg_n_0_[21] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[22] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[22]),
        .Q(\led_rg0_data_reg_n_0_[22] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[23] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[23]),
        .Q(\led_rg0_data_reg_n_0_[23] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[24] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[24]),
        .Q(\led_rg0_data_reg_n_0_[24] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[25] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[25]),
        .Q(\led_rg0_data_reg_n_0_[25] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[26] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[26]),
        .Q(\led_rg0_data_reg_n_0_[26] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[27] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[27]),
        .Q(\led_rg0_data_reg_n_0_[27] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[28] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[28]),
        .Q(\led_rg0_data_reg_n_0_[28] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[29] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[29]),
        .Q(\led_rg0_data_reg_n_0_[29] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[2] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[2]),
        .Q(\led_rg0_data_reg_n_0_[2] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[30] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[30]),
        .Q(\led_rg0_data_reg_n_0_[30] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[31] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[31]),
        .Q(\led_rg0_data_reg_n_0_[31] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[3] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[3]),
        .Q(\led_rg0_data_reg_n_0_[3] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[4] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[4]),
        .Q(\led_rg0_data_reg_n_0_[4] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[5] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[5]),
        .Q(\led_rg0_data_reg_n_0_[5] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[6] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[6]),
        .Q(\led_rg0_data_reg_n_0_[6] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[7] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[7]),
        .Q(\led_rg0_data_reg_n_0_[7] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[8] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[8]),
        .Q(\led_rg0_data_reg_n_0_[8] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg0_data_reg[9] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(wdata[9]),
        .Q(\led_rg0_data_reg_n_0_[9] ),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \led_rg1_data[1]_i_1 
       (.I0(\led_rg0_data[1]_i_5_n_0 ),
        .I1(\led_rg0_data[1]_i_3_n_0 ),
        .I2(buf_addr[1]),
        .I3(buf_addr[2]),
        .I4(\led_data[15]_i_5_n_0 ),
        .I5(\led_rg1_data[1]_i_2_n_0 ),
        .O(write_led_rg1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \led_rg1_data[1]_i_2 
       (.I0(buf_addr[12]),
        .I1(buf_addr[13]),
        .I2(buf_addr[15]),
        .I3(buf_addr[3]),
        .O(\led_rg1_data[1]_i_2_n_0 ));
  FDRE \led_rg1_data_reg[0] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[0]),
        .Q(led_rg1[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[10] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[10]),
        .Q(\led_rg1_data_reg_n_0_[10] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[11] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[11]),
        .Q(\led_rg1_data_reg_n_0_[11] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[12] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[12]),
        .Q(\led_rg1_data_reg_n_0_[12] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[13] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[13]),
        .Q(\led_rg1_data_reg_n_0_[13] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[14] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[14]),
        .Q(\led_rg1_data_reg_n_0_[14] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[15] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[15]),
        .Q(\led_rg1_data_reg_n_0_[15] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[16] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[16]),
        .Q(\led_rg1_data_reg_n_0_[16] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[17] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[17]),
        .Q(\led_rg1_data_reg_n_0_[17] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[18] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[18]),
        .Q(\led_rg1_data_reg_n_0_[18] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[19] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[19]),
        .Q(\led_rg1_data_reg_n_0_[19] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[1] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[1]),
        .Q(led_rg1[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[20] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[20]),
        .Q(\led_rg1_data_reg_n_0_[20] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[21] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[21]),
        .Q(\led_rg1_data_reg_n_0_[21] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[22] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[22]),
        .Q(\led_rg1_data_reg_n_0_[22] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[23] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[23]),
        .Q(\led_rg1_data_reg_n_0_[23] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[24] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[24]),
        .Q(\led_rg1_data_reg_n_0_[24] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[25] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[25]),
        .Q(\led_rg1_data_reg_n_0_[25] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[26] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[26]),
        .Q(\led_rg1_data_reg_n_0_[26] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[27] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[27]),
        .Q(\led_rg1_data_reg_n_0_[27] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[28] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[28]),
        .Q(\led_rg1_data_reg_n_0_[28] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[29] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[29]),
        .Q(\led_rg1_data_reg_n_0_[29] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[2] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[2]),
        .Q(\led_rg1_data_reg_n_0_[2] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[30] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[30]),
        .Q(\led_rg1_data_reg_n_0_[30] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[31] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[31]),
        .Q(\led_rg1_data_reg_n_0_[31] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[3] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[3]),
        .Q(\led_rg1_data_reg_n_0_[3] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[4] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[4]),
        .Q(\led_rg1_data_reg_n_0_[4] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[5] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[5]),
        .Q(\led_rg1_data_reg_n_0_[5] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[6] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[6]),
        .Q(\led_rg1_data_reg_n_0_[6] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[7] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[7]),
        .Q(\led_rg1_data_reg_n_0_[7] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[8] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[8]),
        .Q(\led_rg1_data_reg_n_0_[8] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \led_rg1_data_reg[9] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(wdata[9]),
        .Q(\led_rg1_data_reg_n_0_[9] ),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    no_mask_i_1
       (.I0(short_delay_i_2_n_0),
        .I1(short_delay_i_3_n_0),
        .I2(no_mask_i_2_n_0),
        .I3(no_mask_i_3_n_0),
        .I4(aresetn),
        .I5(no_mask),
        .O(no_mask_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    no_mask_i_2
       (.I0(p_1_in1_in),
        .I1(\pseudo_random_23_reg_n_0_[10] ),
        .I2(\pseudo_random_23_reg_n_0_[9] ),
        .I3(p_11_in),
        .O(no_mask_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    no_mask_i_3
       (.I0(p_17_in),
        .I1(p_13_in),
        .I2(p_9_in),
        .I3(\pseudo_random_23_reg_n_0_[12] ),
        .O(no_mask_i_3_n_0));
  FDRE no_mask_reg
       (.C(aclk),
        .CE(1'b1),
        .D(no_mask_i_1_n_0),
        .Q(no_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBFDA)) 
    \num_a_g[0]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[0]),
        .I2(scan_data[2]),
        .I3(scan_data[1]),
        .O(num_a_g_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \num_a_g[1]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[0]),
        .I3(scan_data[1]),
        .O(num_a_g_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \num_a_g[2]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[1]),
        .I2(scan_data[2]),
        .I3(scan_data[0]),
        .O(num_a_g_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \num_a_g[3]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \num_a_g[4]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \num_a_g[5]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[0]),
        .I2(scan_data[1]),
        .I3(scan_data[2]),
        .O(num_a_g_2[5]));
  LUT4 #(
    .INIT(16'hD6FB)) 
    \num_a_g[6]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_2[6]));
  FDRE \num_a_g_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[0]),
        .Q(num_a_g[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[1]),
        .Q(num_a_g[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[2]),
        .Q(num_a_g[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[3]),
        .Q(num_a_g[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[4]),
        .Q(num_a_g[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[5]),
        .Q(num_a_g[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_a_g_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_2[6]),
        .Q(num_a_g[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \num_csn[0]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \num_csn[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\num_csn[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \num_csn[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \num_csn[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \num_csn[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \num_csn[5]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\num_csn[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \num_csn[6]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \num_csn[7]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\num_csn[7]_i_1_n_0 ));
  FDSE \num_csn_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[0]_i_1_n_0 ),
        .Q(num_csn[0]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[1]_i_1_n_0 ),
        .Q(num_csn[1]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[2]_i_1_n_0 ),
        .Q(num_csn[2]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[3]_i_1_n_0 ),
        .Q(num_csn[3]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[4]_i_1_n_0 ),
        .Q(num_csn[4]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[5]_i_1_n_0 ),
        .Q(num_csn[5]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[6]_i_1_n_0 ),
        .Q(num_csn[6]),
        .S(\buf_id[5]_i_1_n_0 ));
  FDSE \num_csn_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[7]_i_1_n_0 ),
        .Q(num_csn[7]),
        .S(\buf_id[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \num_data[31]_i_1 
       (.I0(\led_data[15]_i_5_n_0 ),
        .I1(buf_addr[4]),
        .I2(\led_data[15]_i_4_n_0 ),
        .I3(\led_rg0_data[1]_i_5_n_0 ),
        .O(write_num));
  FDRE \num_data_reg[0] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[0]),
        .Q(\num_data_reg_n_0_[0] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[10] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[10]),
        .Q(data5[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[11] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[11]),
        .Q(data5[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[12] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[12]),
        .Q(data4[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[13] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[13]),
        .Q(data4[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[14] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[14]),
        .Q(data4[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[15] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[15]),
        .Q(data4[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[16] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[16]),
        .Q(data3[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[17] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[17]),
        .Q(data3[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[18] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[18]),
        .Q(data3[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[19] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[19]),
        .Q(data3[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[1] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[1]),
        .Q(\num_data_reg_n_0_[1] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[20] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[20]),
        .Q(data2[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[21] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[21]),
        .Q(data2[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[22] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[22]),
        .Q(data2[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[23] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[23]),
        .Q(data2[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[24] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[24]),
        .Q(data1[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[25] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[25]),
        .Q(data1[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[26] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[26]),
        .Q(data1[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[27] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[27]),
        .Q(data1[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[28] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[28]),
        .Q(data0[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[29] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[29]),
        .Q(data0[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[2] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[2]),
        .Q(\num_data_reg_n_0_[2] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[30] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[30]),
        .Q(data0[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[31] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[31]),
        .Q(data0[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[3] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[3]),
        .Q(\num_data_reg_n_0_[3] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[4] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[4]),
        .Q(data6[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[5] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[5]),
        .Q(data6[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[6] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[6]),
        .Q(data6[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[7] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[7]),
        .Q(data6[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[8] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[8]),
        .Q(data5[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \num_data_reg[9] 
       (.C(aclk),
        .CE(write_num),
        .D(wdata[9]),
        .Q(data5[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    num_monitor_i_1
       (.I0(wdata[0]),
        .I1(num_monitor_i_2_n_0),
        .I2(\io_simu[31]_i_3_n_0 ),
        .I3(num_monitor_i_3_n_0),
        .I4(\io_simu[31]_i_5_n_0 ),
        .I5(num_monitor),
        .O(num_monitor_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    num_monitor_i_2
       (.I0(buf_addr[1]),
        .I1(buf_addr[0]),
        .I2(buf_addr[12]),
        .I3(buf_addr[13]),
        .I4(buf_addr[15]),
        .I5(\io_simu[31]_i_4_n_0 ),
        .O(num_monitor_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    num_monitor_i_3
       (.I0(buf_addr[4]),
        .I1(buf_addr[5]),
        .I2(buf_addr[6]),
        .I3(buf_addr[7]),
        .O(num_monitor_i_3_n_0));
  FDSE num_monitor_reg
       (.C(aclk),
        .CE(1'b1),
        .D(num_monitor_i_1_n_0),
        .Q(num_monitor),
        .S(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    open_trace_i_1
       (.I0(open_trace_i_2_n_0),
        .I1(\led_rg0_data[1]_i_4_n_0 ),
        .I2(buf_addr[3]),
        .I3(\io_simu[31]_i_5_n_0 ),
        .I4(open_trace_i_3_n_0),
        .I5(open_trace),
        .O(open_trace_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    open_trace_i_10
       (.I0(wdata[11]),
        .I1(wdata[10]),
        .I2(wdata[9]),
        .I3(wdata[8]),
        .O(open_trace_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    open_trace_i_2
       (.I0(open_trace_i_4_n_0),
        .I1(open_trace_i_5_n_0),
        .I2(wdata[25]),
        .I3(wdata[24]),
        .I4(wdata[23]),
        .I5(wdata[22]),
        .O(open_trace_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    open_trace_i_3
       (.I0(buf_addr[14]),
        .I1(p_28_in),
        .I2(buf_addr[0]),
        .I3(buf_addr[1]),
        .I4(buf_addr[2]),
        .I5(num_monitor_i_3_n_0),
        .O(open_trace_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    open_trace_i_4
       (.I0(open_trace_i_6_n_0),
        .I1(wdata[26]),
        .I2(wdata[27]),
        .I3(wdata[28]),
        .I4(wdata[29]),
        .O(open_trace_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    open_trace_i_5
       (.I0(wdata[17]),
        .I1(wdata[16]),
        .I2(open_trace_i_7_n_0),
        .I3(open_trace_i_8_n_0),
        .I4(open_trace_i_9_n_0),
        .I5(open_trace_i_10_n_0),
        .O(open_trace_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    open_trace_i_6
       (.I0(wdata[18]),
        .I1(wdata[19]),
        .I2(wdata[20]),
        .I3(wdata[21]),
        .I4(wdata[31]),
        .I5(wdata[30]),
        .O(open_trace_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    open_trace_i_7
       (.I0(wdata[7]),
        .I1(wdata[6]),
        .I2(wdata[5]),
        .I3(wdata[4]),
        .O(open_trace_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    open_trace_i_8
       (.I0(wdata[3]),
        .I1(wdata[2]),
        .I2(wdata[1]),
        .I3(wdata[0]),
        .O(open_trace_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    open_trace_i_9
       (.I0(wdata[15]),
        .I1(wdata[14]),
        .I2(wdata[13]),
        .I3(wdata[12]),
        .O(open_trace_i_9_n_0));
  FDSE open_trace_reg
       (.C(aclk),
        .CE(1'b1),
        .D(open_trace_i_1_n_0),
        .Q(open_trace),
        .S(\buf_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1DD1)) 
    \pseudo_random_23[0]_i_1 
       (.I0(switch[0]),
        .I1(aresetn),
        .I2(p_1_in_0),
        .I3(p_0_in_1),
        .O(\pseudo_random_23[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[10]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[9] ),
        .I1(aresetn),
        .I2(switch[5]),
        .O(\pseudo_random_23[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[11]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[10] ),
        .I1(aresetn),
        .I2(switch[5]),
        .O(\pseudo_random_23[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[12]_i_1 
       (.I0(p_1_in1_in),
        .I1(aresetn),
        .I2(switch[6]),
        .O(\pseudo_random_23[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[13]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[12] ),
        .I1(aresetn),
        .I2(switch[6]),
        .O(\pseudo_random_23[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[14]_i_1 
       (.I0(p_9_in),
        .I1(aresetn),
        .I2(switch[7]),
        .O(\pseudo_random_23[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[15]_i_1 
       (.I0(p_13_in),
        .I1(aresetn),
        .I2(switch[7]),
        .O(\pseudo_random_23[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[1]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[0] ),
        .I1(aresetn),
        .I2(switch[0]),
        .O(\pseudo_random_23[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[2]_i_1 
       (.I0(p_16_in),
        .I1(aresetn),
        .I2(switch[1]),
        .O(\pseudo_random_23[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[3]_i_1 
       (.I0(p_12_in),
        .I1(aresetn),
        .I2(switch[1]),
        .O(\pseudo_random_23[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[4]_i_1 
       (.I0(p_8_in),
        .I1(aresetn),
        .I2(switch[2]),
        .O(\pseudo_random_23[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[5]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[4] ),
        .I1(aresetn),
        .I2(switch[2]),
        .O(\pseudo_random_23[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[6]_i_1 
       (.I0(p_0_in0_in),
        .I1(aresetn),
        .I2(switch[3]),
        .O(\pseudo_random_23[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[7]_i_1 
       (.I0(\pseudo_random_23_reg_n_0_[6] ),
        .I1(aresetn),
        .I2(switch[3]),
        .O(\pseudo_random_23[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[8]_i_1 
       (.I0(p_15_in40_in),
        .I1(aresetn),
        .I2(switch[4]),
        .O(\pseudo_random_23[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \pseudo_random_23[9]_i_1 
       (.I0(p_11_in),
        .I1(aresetn),
        .I2(switch[4]),
        .O(\pseudo_random_23[9]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[0]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[10]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[11]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[12]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[13]_i_1_n_0 ),
        .Q(p_9_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[14]_i_1_n_0 ),
        .Q(p_13_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[15]_i_1_n_0 ),
        .Q(p_17_in),
        .R(1'b0));
  FDSE \pseudo_random_23_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_17_in),
        .Q(p_18_in),
        .S(\buf_id[5]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_18_in),
        .Q(p_0_in_1),
        .R(\buf_id[5]_i_1_n_0 ));
  FDSE \pseudo_random_23_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in_1),
        .Q(\pseudo_random_23_reg_n_0_[18] ),
        .S(\buf_id[5]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23_reg_n_0_[18] ),
        .Q(p_14_in38_in),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[1]_i_1_n_0 ),
        .Q(p_16_in),
        .R(1'b0));
  FDSE \pseudo_random_23_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_14_in38_in),
        .Q(p_2_in31_in),
        .S(\buf_id[5]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_2_in31_in),
        .Q(\pseudo_random_23_reg_n_0_[21] ),
        .R(\buf_id[5]_i_1_n_0 ));
  FDSE \pseudo_random_23_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23_reg_n_0_[21] ),
        .Q(p_1_in_0),
        .S(\buf_id[5]_i_1_n_0 ));
  FDRE \pseudo_random_23_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[2]_i_1_n_0 ),
        .Q(p_12_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[3]_i_1_n_0 ),
        .Q(p_8_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[4]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[5]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[6]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[7]_i_1_n_0 ),
        .Q(p_15_in40_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[8]_i_1_n_0 ),
        .Q(p_11_in),
        .R(1'b0));
  FDRE \pseudo_random_23_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pseudo_random_23[9]_i_1_n_0 ),
        .Q(\pseudo_random_23_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6000000)) 
    \ram_random_mask[0]_INST_0 
       (.I0(p_1_in1_in),
        .I1(p_0_in0_in),
        .I2(short_delay),
        .I3(\pseudo_random_23_reg_n_0_[10] ),
        .I4(p_2_in31_in),
        .I5(no_mask),
        .O(ram_random_mask[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6000000)) 
    \ram_random_mask[1]_INST_0 
       (.I0(\pseudo_random_23_reg_n_0_[12] ),
        .I1(\pseudo_random_23_reg_n_0_[4] ),
        .I2(short_delay),
        .I3(\pseudo_random_23_reg_n_0_[9] ),
        .I4(p_0_in_1),
        .I5(no_mask),
        .O(ram_random_mask[1]));
  LUT6 #(
    .INIT(64'hAAAAFFBEFFBEAAAA)) 
    \ram_random_mask[2]_INST_0 
       (.I0(no_mask),
        .I1(p_9_in),
        .I2(p_8_in),
        .I3(short_delay),
        .I4(p_11_in),
        .I5(p_1_in_0),
        .O(ram_random_mask[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6000000)) 
    \ram_random_mask[3]_INST_0 
       (.I0(p_13_in),
        .I1(p_12_in),
        .I2(short_delay),
        .I3(p_15_in40_in),
        .I4(p_14_in38_in),
        .I5(no_mask),
        .O(ram_random_mask[3]));
  LUT6 #(
    .INIT(64'hAAAAFFBEFFBEAAAA)) 
    \ram_random_mask[4]_INST_0 
       (.I0(no_mask),
        .I1(p_17_in),
        .I2(p_16_in),
        .I3(short_delay),
        .I4(\pseudo_random_23_reg_n_0_[6] ),
        .I5(p_18_in),
        .O(ram_random_mask[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[0]_i_2 
       (.I0(data1[0]),
        .I1(data3[0]),
        .I2(data0[0]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data2[0]),
        .O(\scan_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[0]_i_3 
       (.I0(data5[0]),
        .I1(\num_data_reg_n_0_[0] ),
        .I2(data4[0]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data6[0]),
        .O(\scan_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[1]_i_2 
       (.I0(data1[1]),
        .I1(data3[1]),
        .I2(data0[1]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data2[1]),
        .O(\scan_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[1]_i_3 
       (.I0(data5[1]),
        .I1(\num_data_reg_n_0_[1] ),
        .I2(data4[1]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data6[1]),
        .O(\scan_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[2]_i_2 
       (.I0(data1[2]),
        .I1(data3[2]),
        .I2(data0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data2[2]),
        .O(\scan_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[2]_i_3 
       (.I0(data5[2]),
        .I1(\num_data_reg_n_0_[2] ),
        .I2(data4[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data6[2]),
        .O(\scan_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[3]_i_2 
       (.I0(data1[3]),
        .I1(data3[3]),
        .I2(data0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data2[3]),
        .O(\scan_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \scan_data[3]_i_3 
       (.I0(data5[3]),
        .I1(\num_data_reg_n_0_[3] ),
        .I2(data4[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(data6[3]),
        .O(\scan_data[3]_i_3_n_0 ));
  FDRE \scan_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_4[0]),
        .Q(scan_data[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  MUXF7 \scan_data_reg[0]_i_1 
       (.I0(\scan_data[0]_i_2_n_0 ),
        .I1(\scan_data[0]_i_3_n_0 ),
        .O(scan_data_4[0]),
        .S(sel0[2]));
  FDRE \scan_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_4[1]),
        .Q(scan_data[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  MUXF7 \scan_data_reg[1]_i_1 
       (.I0(\scan_data[1]_i_2_n_0 ),
        .I1(\scan_data[1]_i_3_n_0 ),
        .O(scan_data_4[1]),
        .S(sel0[2]));
  FDRE \scan_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_4[2]),
        .Q(scan_data[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  MUXF7 \scan_data_reg[2]_i_1 
       (.I0(\scan_data[2]_i_2_n_0 ),
        .I1(\scan_data[2]_i_3_n_0 ),
        .O(scan_data_4[2]),
        .S(sel0[2]));
  FDRE \scan_data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_4[3]),
        .Q(scan_data[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  MUXF7 \scan_data_reg[3]_i_1 
       (.I0(\scan_data[3]_i_2_n_0 ),
        .I1(\scan_data[3]_i_3_n_0 ),
        .O(scan_data_4[3]),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'hF808)) 
    short_delay_i_1
       (.I0(short_delay_i_2_n_0),
        .I1(short_delay_i_3_n_0),
        .I2(aresetn),
        .I3(short_delay),
        .O(short_delay_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    short_delay_i_2
       (.I0(p_0_in0_in),
        .I1(\pseudo_random_23_reg_n_0_[4] ),
        .I2(p_15_in40_in),
        .I3(\pseudo_random_23_reg_n_0_[6] ),
        .O(short_delay_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    short_delay_i_3
       (.I0(p_16_in),
        .I1(\pseudo_random_23_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(p_12_in),
        .O(short_delay_i_3_n_0));
  FDRE short_delay_reg
       (.C(aclk),
        .CE(1'b1),
        .D(short_delay_i_1_n_0),
        .Q(short_delay),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state_count[0]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_count[1]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .I1(\state_count_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \state_count[2]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .I1(\state_count_reg_n_0_[1] ),
        .I2(\state_count_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \state_count[3]_i_1 
       (.I0(state_count_reg__0),
        .I1(aresetn),
        .O(state_count0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state_count[3]_i_2 
       (.I0(\state_count_reg_n_0_[1] ),
        .I1(\state_count_reg_n_0_[0] ),
        .I2(\state_count_reg_n_0_[2] ),
        .O(p_0_in[3]));
  FDRE \state_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\state_count_reg_n_0_[0] ),
        .R(state_count0));
  FDRE \state_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\state_count_reg_n_0_[1] ),
        .R(state_count0));
  FDRE \state_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\state_count_reg_n_0_[2] ),
        .R(state_count0));
  FDRE \state_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(state_count_reg__0),
        .R(state_count0));
  LUT2 #(
    .INIT(4'h7)) 
    \step0_count[0]_i_1 
       (.I0(step0_flag),
        .I1(aresetn),
        .O(step0_count0));
  LUT1 #(
    .INIT(2'h1)) 
    \step0_count[0]_i_3 
       (.I0(\step0_count_reg_n_0_[0] ),
        .O(\step0_count[0]_i_3_n_0 ));
  FDRE \step0_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_7 ),
        .Q(\step0_count_reg_n_0_[0] ),
        .R(step0_count0));
  CARRY4 \step0_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\step0_count_reg[0]_i_2_n_0 ,\step0_count_reg[0]_i_2_n_1 ,\step0_count_reg[0]_i_2_n_2 ,\step0_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step0_count_reg[0]_i_2_n_4 ,\step0_count_reg[0]_i_2_n_5 ,\step0_count_reg[0]_i_2_n_6 ,\step0_count_reg[0]_i_2_n_7 }),
        .S({\step0_count_reg_n_0_[3] ,\step0_count_reg_n_0_[2] ,\step0_count_reg_n_0_[1] ,\step0_count[0]_i_3_n_0 }));
  FDRE \step0_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[10] ),
        .R(step0_count0));
  FDRE \step0_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[11] ),
        .R(step0_count0));
  FDRE \step0_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[12] ),
        .R(step0_count0));
  CARRY4 \step0_count_reg[12]_i_1 
       (.CI(\step0_count_reg[8]_i_1_n_0 ),
        .CO({\step0_count_reg[12]_i_1_n_0 ,\step0_count_reg[12]_i_1_n_1 ,\step0_count_reg[12]_i_1_n_2 ,\step0_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[12]_i_1_n_4 ,\step0_count_reg[12]_i_1_n_5 ,\step0_count_reg[12]_i_1_n_6 ,\step0_count_reg[12]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[15] ,\step0_count_reg_n_0_[14] ,\step0_count_reg_n_0_[13] ,\step0_count_reg_n_0_[12] }));
  FDRE \step0_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[13] ),
        .R(step0_count0));
  FDRE \step0_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[14] ),
        .R(step0_count0));
  FDRE \step0_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[15] ),
        .R(step0_count0));
  FDRE \step0_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[16] ),
        .R(step0_count0));
  CARRY4 \step0_count_reg[16]_i_1 
       (.CI(\step0_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED [3],\step0_count_reg[16]_i_1_n_1 ,\step0_count_reg[16]_i_1_n_2 ,\step0_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[16]_i_1_n_4 ,\step0_count_reg[16]_i_1_n_5 ,\step0_count_reg[16]_i_1_n_6 ,\step0_count_reg[16]_i_1_n_7 }),
        .S({step0_sample,\step0_count_reg_n_0_[18] ,\step0_count_reg_n_0_[17] ,\step0_count_reg_n_0_[16] }));
  FDRE \step0_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[17] ),
        .R(step0_count0));
  FDRE \step0_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[18] ),
        .R(step0_count0));
  FDRE \step0_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_4 ),
        .Q(step0_sample),
        .R(step0_count0));
  FDRE \step0_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_6 ),
        .Q(\step0_count_reg_n_0_[1] ),
        .R(step0_count0));
  FDRE \step0_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_5 ),
        .Q(\step0_count_reg_n_0_[2] ),
        .R(step0_count0));
  FDRE \step0_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_4 ),
        .Q(\step0_count_reg_n_0_[3] ),
        .R(step0_count0));
  FDRE \step0_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[4] ),
        .R(step0_count0));
  CARRY4 \step0_count_reg[4]_i_1 
       (.CI(\step0_count_reg[0]_i_2_n_0 ),
        .CO({\step0_count_reg[4]_i_1_n_0 ,\step0_count_reg[4]_i_1_n_1 ,\step0_count_reg[4]_i_1_n_2 ,\step0_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[4]_i_1_n_4 ,\step0_count_reg[4]_i_1_n_5 ,\step0_count_reg[4]_i_1_n_6 ,\step0_count_reg[4]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[7] ,\step0_count_reg_n_0_[6] ,\step0_count_reg_n_0_[5] ,\step0_count_reg_n_0_[4] }));
  FDRE \step0_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[5] ),
        .R(step0_count0));
  FDRE \step0_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[6] ),
        .R(step0_count0));
  FDRE \step0_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[7] ),
        .R(step0_count0));
  FDRE \step0_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[8] ),
        .R(step0_count0));
  CARRY4 \step0_count_reg[8]_i_1 
       (.CI(\step0_count_reg[4]_i_1_n_0 ),
        .CO({\step0_count_reg[8]_i_1_n_0 ,\step0_count_reg[8]_i_1_n_1 ,\step0_count_reg[8]_i_1_n_2 ,\step0_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[8]_i_1_n_4 ,\step0_count_reg[8]_i_1_n_5 ,\step0_count_reg[8]_i_1_n_6 ,\step0_count_reg[8]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[11] ,\step0_count_reg_n_0_[10] ,\step0_count_reg_n_0_[9] ,\step0_count_reg_n_0_[8] }));
  FDRE \step0_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[9] ),
        .R(step0_count0));
  LUT5 #(
    .INIT(32'h0000AA28)) 
    step0_flag_i_1
       (.I0(aresetn),
        .I1(btn_step0_r),
        .I2(btn_step[0]),
        .I3(step0_flag),
        .I4(step0_sample),
        .O(step0_flag_i_1_n_0));
  FDRE step0_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(step0_flag_i_1_n_0),
        .Q(step0_flag),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \step1_count[0]_i_1 
       (.I0(step1_flag),
        .I1(aresetn),
        .O(step1_count0));
  LUT1 #(
    .INIT(2'h1)) 
    \step1_count[0]_i_3 
       (.I0(\step1_count_reg_n_0_[0] ),
        .O(\step1_count[0]_i_3_n_0 ));
  FDRE \step1_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_7 ),
        .Q(\step1_count_reg_n_0_[0] ),
        .R(step1_count0));
  CARRY4 \step1_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\step1_count_reg[0]_i_2_n_0 ,\step1_count_reg[0]_i_2_n_1 ,\step1_count_reg[0]_i_2_n_2 ,\step1_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step1_count_reg[0]_i_2_n_4 ,\step1_count_reg[0]_i_2_n_5 ,\step1_count_reg[0]_i_2_n_6 ,\step1_count_reg[0]_i_2_n_7 }),
        .S({\step1_count_reg_n_0_[3] ,\step1_count_reg_n_0_[2] ,\step1_count_reg_n_0_[1] ,\step1_count[0]_i_3_n_0 }));
  FDRE \step1_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[10] ),
        .R(step1_count0));
  FDRE \step1_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[11] ),
        .R(step1_count0));
  FDRE \step1_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[12] ),
        .R(step1_count0));
  CARRY4 \step1_count_reg[12]_i_1 
       (.CI(\step1_count_reg[8]_i_1_n_0 ),
        .CO({\step1_count_reg[12]_i_1_n_0 ,\step1_count_reg[12]_i_1_n_1 ,\step1_count_reg[12]_i_1_n_2 ,\step1_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[12]_i_1_n_4 ,\step1_count_reg[12]_i_1_n_5 ,\step1_count_reg[12]_i_1_n_6 ,\step1_count_reg[12]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[15] ,\step1_count_reg_n_0_[14] ,\step1_count_reg_n_0_[13] ,\step1_count_reg_n_0_[12] }));
  FDRE \step1_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[13] ),
        .R(step1_count0));
  FDRE \step1_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[14] ),
        .R(step1_count0));
  FDRE \step1_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[15] ),
        .R(step1_count0));
  FDRE \step1_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[16] ),
        .R(step1_count0));
  CARRY4 \step1_count_reg[16]_i_1 
       (.CI(\step1_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED [3],\step1_count_reg[16]_i_1_n_1 ,\step1_count_reg[16]_i_1_n_2 ,\step1_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[16]_i_1_n_4 ,\step1_count_reg[16]_i_1_n_5 ,\step1_count_reg[16]_i_1_n_6 ,\step1_count_reg[16]_i_1_n_7 }),
        .S({step1_sample,\step1_count_reg_n_0_[18] ,\step1_count_reg_n_0_[17] ,\step1_count_reg_n_0_[16] }));
  FDRE \step1_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[17] ),
        .R(step1_count0));
  FDRE \step1_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[18] ),
        .R(step1_count0));
  FDRE \step1_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_4 ),
        .Q(step1_sample),
        .R(step1_count0));
  FDRE \step1_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_6 ),
        .Q(\step1_count_reg_n_0_[1] ),
        .R(step1_count0));
  FDRE \step1_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_5 ),
        .Q(\step1_count_reg_n_0_[2] ),
        .R(step1_count0));
  FDRE \step1_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_4 ),
        .Q(\step1_count_reg_n_0_[3] ),
        .R(step1_count0));
  FDRE \step1_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[4] ),
        .R(step1_count0));
  CARRY4 \step1_count_reg[4]_i_1 
       (.CI(\step1_count_reg[0]_i_2_n_0 ),
        .CO({\step1_count_reg[4]_i_1_n_0 ,\step1_count_reg[4]_i_1_n_1 ,\step1_count_reg[4]_i_1_n_2 ,\step1_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[4]_i_1_n_4 ,\step1_count_reg[4]_i_1_n_5 ,\step1_count_reg[4]_i_1_n_6 ,\step1_count_reg[4]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[7] ,\step1_count_reg_n_0_[6] ,\step1_count_reg_n_0_[5] ,\step1_count_reg_n_0_[4] }));
  FDRE \step1_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[5] ),
        .R(step1_count0));
  FDRE \step1_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[6] ),
        .R(step1_count0));
  FDRE \step1_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[7] ),
        .R(step1_count0));
  FDRE \step1_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[8] ),
        .R(step1_count0));
  CARRY4 \step1_count_reg[8]_i_1 
       (.CI(\step1_count_reg[4]_i_1_n_0 ),
        .CO({\step1_count_reg[8]_i_1_n_0 ,\step1_count_reg[8]_i_1_n_1 ,\step1_count_reg[8]_i_1_n_2 ,\step1_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[8]_i_1_n_4 ,\step1_count_reg[8]_i_1_n_5 ,\step1_count_reg[8]_i_1_n_6 ,\step1_count_reg[8]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[11] ,\step1_count_reg_n_0_[10] ,\step1_count_reg_n_0_[9] ,\step1_count_reg_n_0_[8] }));
  FDRE \step1_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[9] ),
        .R(step1_count0));
  LUT5 #(
    .INIT(32'h0000AA28)) 
    step1_flag_i_1
       (.I0(aresetn),
        .I1(btn_step1_r),
        .I2(btn_step[1]),
        .I3(step1_flag),
        .I4(step1_sample),
        .O(step1_flag_i_1_n_0));
  FDRE step1_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(step1_flag_i_1_n_0),
        .Q(step1_flag),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[0]_i_2 
       (.I0(data[0]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[0]),
        .O(\timer[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[0]_i_3 
       (.I0(data[3]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[3]),
        .O(\timer[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[0]_i_4 
       (.I0(data[2]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[2]),
        .O(\timer[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[0]_i_5 
       (.I0(data[1]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[1]),
        .O(\timer[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \timer[0]_i_6 
       (.I0(timer_reg[0]),
        .I1(data[0]),
        .I2(write_timer_begin_r3),
        .I3(write_timer_begin_r2),
        .O(\timer[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[12]_i_2 
       (.I0(data[15]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[15]),
        .O(\timer[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[12]_i_3 
       (.I0(data[14]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[14]),
        .O(\timer[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[12]_i_4 
       (.I0(data[13]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[13]),
        .O(\timer[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[12]_i_5 
       (.I0(data[12]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[12]),
        .O(\timer[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[16]_i_2 
       (.I0(data[19]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[19]),
        .O(\timer[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[16]_i_3 
       (.I0(data[18]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[18]),
        .O(\timer[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[16]_i_4 
       (.I0(data[17]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[17]),
        .O(\timer[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[16]_i_5 
       (.I0(data[16]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[16]),
        .O(\timer[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[20]_i_2 
       (.I0(data[23]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[23]),
        .O(\timer[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[20]_i_3 
       (.I0(data[22]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[22]),
        .O(\timer[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[20]_i_4 
       (.I0(data[21]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[21]),
        .O(\timer[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[20]_i_5 
       (.I0(data[20]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[20]),
        .O(\timer[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[24]_i_2 
       (.I0(data[27]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[27]),
        .O(\timer[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[24]_i_3 
       (.I0(data[26]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[26]),
        .O(\timer[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[24]_i_4 
       (.I0(data[25]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[25]),
        .O(\timer[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[24]_i_5 
       (.I0(data[24]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[24]),
        .O(\timer[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[28]_i_2 
       (.I0(data[31]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[31]),
        .O(\timer[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[28]_i_3 
       (.I0(data[30]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[30]),
        .O(\timer[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[28]_i_4 
       (.I0(data[29]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[29]),
        .O(\timer[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[28]_i_5 
       (.I0(data[28]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[28]),
        .O(\timer[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[4]_i_2 
       (.I0(data[7]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[7]),
        .O(\timer[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[4]_i_3 
       (.I0(data[6]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[6]),
        .O(\timer[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[4]_i_4 
       (.I0(data[5]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[5]),
        .O(\timer[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[4]_i_5 
       (.I0(data[4]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[4]),
        .O(\timer[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[8]_i_2 
       (.I0(data[11]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[11]),
        .O(\timer[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[8]_i_3 
       (.I0(data[10]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[10]),
        .O(\timer[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[8]_i_4 
       (.I0(data[9]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[9]),
        .O(\timer[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \timer[8]_i_5 
       (.I0(data[8]),
        .I1(write_timer_begin_r2),
        .I2(write_timer_begin_r3),
        .I3(timer_reg[8]),
        .O(\timer[8]_i_5_n_0 ));
  FDRE \timer_r1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[0]),
        .Q(timer_r1[0]),
        .R(1'b0));
  FDRE \timer_r1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[10]),
        .Q(timer_r1[10]),
        .R(1'b0));
  FDRE \timer_r1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[11]),
        .Q(timer_r1[11]),
        .R(1'b0));
  FDRE \timer_r1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[12]),
        .Q(timer_r1[12]),
        .R(1'b0));
  FDRE \timer_r1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[13]),
        .Q(timer_r1[13]),
        .R(1'b0));
  FDRE \timer_r1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[14]),
        .Q(timer_r1[14]),
        .R(1'b0));
  FDRE \timer_r1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[15]),
        .Q(timer_r1[15]),
        .R(1'b0));
  FDRE \timer_r1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[16]),
        .Q(timer_r1[16]),
        .R(1'b0));
  FDRE \timer_r1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[17]),
        .Q(timer_r1[17]),
        .R(1'b0));
  FDRE \timer_r1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[18]),
        .Q(timer_r1[18]),
        .R(1'b0));
  FDRE \timer_r1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[19]),
        .Q(timer_r1[19]),
        .R(1'b0));
  FDRE \timer_r1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[1]),
        .Q(timer_r1[1]),
        .R(1'b0));
  FDRE \timer_r1_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[20]),
        .Q(timer_r1[20]),
        .R(1'b0));
  FDRE \timer_r1_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[21]),
        .Q(timer_r1[21]),
        .R(1'b0));
  FDRE \timer_r1_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[22]),
        .Q(timer_r1[22]),
        .R(1'b0));
  FDRE \timer_r1_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[23]),
        .Q(timer_r1[23]),
        .R(1'b0));
  FDRE \timer_r1_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[24]),
        .Q(timer_r1[24]),
        .R(1'b0));
  FDRE \timer_r1_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[25]),
        .Q(timer_r1[25]),
        .R(1'b0));
  FDRE \timer_r1_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[26]),
        .Q(timer_r1[26]),
        .R(1'b0));
  FDRE \timer_r1_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[27]),
        .Q(timer_r1[27]),
        .R(1'b0));
  FDRE \timer_r1_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[28]),
        .Q(timer_r1[28]),
        .R(1'b0));
  FDRE \timer_r1_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[29]),
        .Q(timer_r1[29]),
        .R(1'b0));
  FDRE \timer_r1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[2]),
        .Q(timer_r1[2]),
        .R(1'b0));
  FDRE \timer_r1_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[30]),
        .Q(timer_r1[30]),
        .R(1'b0));
  FDRE \timer_r1_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[31]),
        .Q(timer_r1[31]),
        .R(1'b0));
  FDRE \timer_r1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[3]),
        .Q(timer_r1[3]),
        .R(1'b0));
  FDRE \timer_r1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[4]),
        .Q(timer_r1[4]),
        .R(1'b0));
  FDRE \timer_r1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[5]),
        .Q(timer_r1[5]),
        .R(1'b0));
  FDRE \timer_r1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[6]),
        .Q(timer_r1[6]),
        .R(1'b0));
  FDRE \timer_r1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[7]),
        .Q(timer_r1[7]),
        .R(1'b0));
  FDRE \timer_r1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[8]),
        .Q(timer_r1[8]),
        .R(1'b0));
  FDRE \timer_r1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_reg[9]),
        .Q(timer_r1[9]),
        .R(1'b0));
  FDRE \timer_r2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[0]),
        .Q(timer_r2[0]),
        .R(1'b0));
  FDRE \timer_r2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[10]),
        .Q(timer_r2[10]),
        .R(1'b0));
  FDRE \timer_r2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[11]),
        .Q(timer_r2[11]),
        .R(1'b0));
  FDRE \timer_r2_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[12]),
        .Q(timer_r2[12]),
        .R(1'b0));
  FDRE \timer_r2_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[13]),
        .Q(timer_r2[13]),
        .R(1'b0));
  FDRE \timer_r2_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[14]),
        .Q(timer_r2[14]),
        .R(1'b0));
  FDRE \timer_r2_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[15]),
        .Q(timer_r2[15]),
        .R(1'b0));
  FDRE \timer_r2_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[16]),
        .Q(timer_r2[16]),
        .R(1'b0));
  FDRE \timer_r2_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[17]),
        .Q(timer_r2[17]),
        .R(1'b0));
  FDRE \timer_r2_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[18]),
        .Q(timer_r2[18]),
        .R(1'b0));
  FDRE \timer_r2_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[19]),
        .Q(timer_r2[19]),
        .R(1'b0));
  FDRE \timer_r2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[1]),
        .Q(timer_r2[1]),
        .R(1'b0));
  FDRE \timer_r2_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[20]),
        .Q(timer_r2[20]),
        .R(1'b0));
  FDRE \timer_r2_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[21]),
        .Q(timer_r2[21]),
        .R(1'b0));
  FDRE \timer_r2_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[22]),
        .Q(timer_r2[22]),
        .R(1'b0));
  FDRE \timer_r2_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[23]),
        .Q(timer_r2[23]),
        .R(1'b0));
  FDRE \timer_r2_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[24]),
        .Q(timer_r2[24]),
        .R(1'b0));
  FDRE \timer_r2_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[25]),
        .Q(timer_r2[25]),
        .R(1'b0));
  FDRE \timer_r2_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[26]),
        .Q(timer_r2[26]),
        .R(1'b0));
  FDRE \timer_r2_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[27]),
        .Q(timer_r2[27]),
        .R(1'b0));
  FDRE \timer_r2_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[28]),
        .Q(timer_r2[28]),
        .R(1'b0));
  FDRE \timer_r2_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[29]),
        .Q(timer_r2[29]),
        .R(1'b0));
  FDRE \timer_r2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[2]),
        .Q(timer_r2[2]),
        .R(1'b0));
  FDRE \timer_r2_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[30]),
        .Q(timer_r2[30]),
        .R(1'b0));
  FDRE \timer_r2_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[31]),
        .Q(timer_r2[31]),
        .R(1'b0));
  FDRE \timer_r2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[3]),
        .Q(timer_r2[3]),
        .R(1'b0));
  FDRE \timer_r2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[4]),
        .Q(timer_r2[4]),
        .R(1'b0));
  FDRE \timer_r2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[5]),
        .Q(timer_r2[5]),
        .R(1'b0));
  FDRE \timer_r2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[6]),
        .Q(timer_r2[6]),
        .R(1'b0));
  FDRE \timer_r2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[7]),
        .Q(timer_r2[7]),
        .R(1'b0));
  FDRE \timer_r2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[8]),
        .Q(timer_r2[8]),
        .R(1'b0));
  FDRE \timer_r2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(timer_r1[9]),
        .Q(timer_r2[9]),
        .R(1'b0));
  FDRE \timer_reg[0] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_7 ),
        .Q(timer_reg[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_1_n_0 ,\timer_reg[0]_i_1_n_1 ,\timer_reg[0]_i_1_n_2 ,\timer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\timer[0]_i_2_n_0 }),
        .O({\timer_reg[0]_i_1_n_4 ,\timer_reg[0]_i_1_n_5 ,\timer_reg[0]_i_1_n_6 ,\timer_reg[0]_i_1_n_7 }),
        .S({\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 ,\timer[0]_i_6_n_0 }));
  FDRE \timer_reg[10] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[11] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[12] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }));
  FDRE \timer_reg[13] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[14] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[15] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[16] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\timer_reg[16]_i_1_n_1 ,\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }));
  FDRE \timer_reg[17] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[18] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[19] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[1] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_6 ),
        .Q(timer_reg[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[20] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\timer_reg[20]_i_1_n_1 ,\timer_reg[20]_i_1_n_2 ,\timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 }));
  FDRE \timer_reg[21] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[22] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[23] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[24] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\timer_reg[24]_i_1_n_1 ,\timer_reg[24]_i_1_n_2 ,\timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S({\timer[24]_i_2_n_0 ,\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 }));
  FDRE \timer_reg[25] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[26] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[27] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[28] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO({\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3],\timer_reg[28]_i_1_n_1 ,\timer_reg[28]_i_1_n_2 ,\timer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[28]_i_1_n_4 ,\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S({\timer[28]_i_2_n_0 ,\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 ,\timer[28]_i_5_n_0 }));
  FDRE \timer_reg[29] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[2] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_5 ),
        .Q(timer_reg[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[30] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[31] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[3] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_4 ),
        .Q(timer_reg[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[4] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_1_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  FDRE \timer_reg[5] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[6] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[7] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \timer_reg[8] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(\buf_id[5]_i_1_n_0 ));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }));
  FDRE \timer_reg[9] 
       (.C(timer_clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \virtual_uart_data[7]_i_1 
       (.I0(\virtual_uart_data[7]_i_2_n_0 ),
        .I1(\virtual_uart_data[7]_i_3_n_0 ),
        .I2(buf_addr[11]),
        .I3(buf_addr[8]),
        .I4(buf_addr[10]),
        .I5(buf_addr[9]),
        .O(write_uart_valid));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \virtual_uart_data[7]_i_2 
       (.I0(buf_addr[15]),
        .I1(buf_addr[13]),
        .I2(buf_addr[12]),
        .I3(buf_addr[14]),
        .I4(p_28_in),
        .I5(num_monitor_i_3_n_0),
        .O(\virtual_uart_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \virtual_uart_data[7]_i_3 
       (.I0(buf_addr[0]),
        .I1(buf_addr[1]),
        .I2(buf_addr[2]),
        .I3(buf_addr[3]),
        .O(\virtual_uart_data[7]_i_3_n_0 ));
  FDRE \virtual_uart_data_reg[0] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[0]),
        .Q(virtual_uart_data[0]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[1] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[1]),
        .Q(virtual_uart_data[1]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[2] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[2]),
        .Q(virtual_uart_data[2]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[3] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[3]),
        .Q(virtual_uart_data[3]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[4] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[4]),
        .Q(virtual_uart_data[4]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[5] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[5]),
        .Q(virtual_uart_data[5]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[6] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[6]),
        .Q(virtual_uart_data[6]),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE \virtual_uart_data_reg[7] 
       (.C(aclk),
        .CE(write_uart_valid),
        .D(wdata[7]),
        .Q(virtual_uart_data[7]),
        .R(\buf_id[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    write_timer_begin_i_1
       (.I0(write_timer),
        .I1(write_timer_end_r2),
        .I2(write_timer_begin),
        .O(write_timer_begin_i_1_n_0));
  FDRE write_timer_begin_r1_reg
       (.C(timer_clk),
        .CE(1'b1),
        .D(write_timer_begin),
        .Q(write_timer_begin_r1),
        .R(1'b0));
  FDRE write_timer_begin_r2_reg
       (.C(timer_clk),
        .CE(1'b1),
        .D(write_timer_begin_r1),
        .Q(write_timer_begin_r2),
        .R(1'b0));
  FDRE write_timer_begin_r3_reg
       (.C(timer_clk),
        .CE(1'b1),
        .D(write_timer_begin_r2),
        .Q(write_timer_begin_r3),
        .R(1'b0));
  FDRE write_timer_begin_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_timer_begin_i_1_n_0),
        .Q(write_timer_begin),
        .R(\buf_id[5]_i_1_n_0 ));
  FDRE write_timer_end_r1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_timer_begin_r2),
        .Q(write_timer_end_r1),
        .R(1'b0));
  FDRE write_timer_end_r2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_timer_end_r1),
        .Q(write_timer_end_r2),
        .R(1'b0));
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
