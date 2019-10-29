`timescale 1ns / 1ps

module mycpu_top(
  input                   aclk,
  input                   aresetn,
  input   [6:0]           int,
  // AXI channel
  output  [3:0]           arid,
  output  [31:0]          araddr,
  output  [3:0]           arlen,
  output  [2:0]           arsize,
  output  [1:0]           arburst,
  output  [1:0]           arlock,
  output  [3:0]           arcache,
  output  [2:0]           arprot,
  output                  arvalid,
  input                   arready,
  input   [3:0]           rid,
  input   [31:0]          rdata,
  input   [1:0]           rresp,
  input                   rlast,
  input                   rvalid,
  output                  rready,
  output  [3:0]           awid,
  output  [31:0]          awaddr,
  output  [3:0]           awlen,
  output  [2:0]           awsize,
  output  [1:0]           awburst,
  output  [1:0]           awlock,
  output  [3:0]           awcache,
  output  [2:0]           awprot,
  output                  awvalid,
  input                   awready,
  output  [3:0]           wid,
  output  [31:0]          wdata,
  output  [3:0]           wstrb,
  output                  wlast,
  output                  wvalid,
  input                   wready,
  input   [3:0]           bid,
  input   [1:0]           bresp,
  input                   bvalid,
  output                  bready,
  // debug signals
  output  [31:0]          debug_wb_pc,
  output  [3:0]           debug_wb_rf_wen,
  output  [4:0]           debug_wb_rf_wnum,
  output  [31:0]          debug_wb_rf_wdata
);

  wire                    debug_reg_write_en;
  wire    [3:0]           rom_arid;
  wire    [31:0]          rom_araddr;
  wire    [3:0]           rom_arlen;
  wire    [2:0]           rom_arsize;
  wire    [1:0]           rom_arburst;
  wire    [1:0]           rom_arlock;
  wire    [3:0]           rom_arcache;
  wire    [2:0]           rom_arprot;
  wire                    rom_arvalid;
  wire                    rom_arready;
  wire    [3:0]           rom_rid;
  wire    [31:0]          rom_rdata;
  wire    [1:0]           rom_rresp;
  wire                    rom_rlast;
  wire                    rom_rvalid;
  wire                    rom_rready;
  wire    [3:0]           rom_awid;
  wire    [31:0]          rom_awaddr;
  wire    [3:0]           rom_awlen;
  wire    [2:0]           rom_awsize;
  wire    [1:0]           rom_awburst;
  wire    [1:0]           rom_awlock;
  wire    [3:0]           rom_awcache;
  wire    [2:0]           rom_awprot;
  wire                    rom_awvalid;
  wire                    rom_awready;
  wire    [3:0]           rom_wid;
  wire    [31:0]          rom_wdata;
  wire    [3:0]           rom_wstrb;
  wire                    rom_wlast;
  wire                    rom_wvalid;
  wire                    rom_wready;
  wire    [3:0]           rom_bid;
  wire    [1:0]           rom_bresp;
  wire                    rom_bvalid;
  wire                    rom_bready;
  wire    [3:0]           ram_arid;
  wire    [31:0]          ram_araddr;
  wire    [3:0]           ram_arlen;
  wire    [2:0]           ram_arsize;
  wire    [1:0]           ram_arburst;
  wire    [1:0]           ram_arlock;
  wire    [3:0]           ram_arcache;
  wire    [2:0]           ram_arprot;
  wire                    ram_arvalid;
  wire                    ram_arready;
  wire    [3:0]           ram_rid;
  wire    [31:0]          ram_rdata;
  wire    [1:0]           ram_rresp;
  wire                    ram_rlast;
  wire                    ram_rvalid;
  wire                    ram_rready;
  wire    [3:0]           ram_awid;
  wire    [31:0]          ram_awaddr;
  wire    [3:0]           ram_awlen;
  wire    [2:0]           ram_awsize;
  wire    [1:0]           ram_awburst;
  wire    [1:0]           ram_awlock;
  wire    [3:0]           ram_awcache;
  wire    [2:0]           ram_awprot;
  wire                    ram_awvalid;
  wire                    ram_awready;
  wire    [3:0]           ram_wid;
  wire    [31:0]          ram_wdata;
  wire    [3:0]           ram_wstrb;
  wire                    ram_wlast;
  wire                    ram_wvalid;
  wire                    ram_wready;
  wire    [3:0]           ram_bid;
  wire    [1:0]           ram_bresp;
  wire                    ram_bvalid;
  wire                    ram_bready;

  assign debug_wb_rf_wen = {4{debug_reg_write_en}};

  TinyMIPS tinymips(
    .clk                  (aclk),
    .rst                  (~aresetn),

    .debug_reg_write_en   (debug_reg_write_en),
    .debug_reg_write_addr (debug_wb_rf_wnum),
    .debug_reg_write_data (debug_wb_rf_wdata),
    .debug_pc_addr        (debug_wb_pc),

    .rom_arid             (rom_arid),
    .rom_araddr           (rom_araddr),
    .rom_arlen            (rom_arlen),
    .rom_arsize           (rom_arsize),
    .rom_arburst          (rom_arburst),
    .rom_arlock           (rom_arlock),
    .rom_arcache          (rom_arcache),
    .rom_arprot           (rom_arprot),
    .rom_arvalid          (rom_arvalid),
    .rom_arready          (rom_arready),
    .rom_rid              (rom_rid),
    .rom_rdata            (rom_rdata),
    .rom_rresp            (rom_rresp),
    .rom_rlast            (rom_rlast),
    .rom_rvalid           (rom_rvalid),
    .rom_rready           (rom_rready),
    .rom_awid             (rom_awid),
    .rom_awaddr           (rom_awaddr),
    .rom_awlen            (rom_awlen),
    .rom_awsize           (rom_awsize),
    .rom_awburst          (rom_awburst),
    .rom_awlock           (rom_awlock),
    .rom_awcache          (rom_awcache),
    .rom_awprot           (rom_awprot),
    .rom_awvalid          (rom_awvalid),
    .rom_awready          (rom_awready),
    .rom_wid              (rom_wid),
    .rom_wdata            (rom_wdata),
    .rom_wstrb            (rom_wstrb),
    .rom_wlast            (rom_wlast),
    .rom_wvalid           (rom_wvalid),
    .rom_wready           (rom_wready),
    .rom_bid              (rom_bid),
    .rom_bresp            (rom_bresp),
    .rom_bvalid           (rom_bvalid),
    .rom_bready           (rom_bready),

    .ram_arid             (ram_arid),
    .ram_araddr           (ram_araddr),
    .ram_arlen            (ram_arlen),
    .ram_arsize           (ram_arsize),
    .ram_arburst          (ram_arburst),
    .ram_arlock           (ram_arlock),
    .ram_arcache          (ram_arcache),
    .ram_arprot           (ram_arprot),
    .ram_arvalid          (ram_arvalid),
    .ram_arready          (ram_arready),
    .ram_rid              (ram_rid),
    .ram_rdata            (ram_rdata),
    .ram_rresp            (ram_rresp),
    .ram_rlast            (ram_rlast),
    .ram_rvalid           (ram_rvalid),
    .ram_rready           (ram_rready),
    .ram_awid             (ram_awid),
    .ram_awaddr           (ram_awaddr),
    .ram_awlen            (ram_awlen),
    .ram_awsize           (ram_awsize),
    .ram_awburst          (ram_awburst),
    .ram_awlock           (ram_awlock),
    .ram_awcache          (ram_awcache),
    .ram_awprot           (ram_awprot),
    .ram_awvalid          (ram_awvalid),
    .ram_awready          (ram_awready),
    .ram_wid              (ram_wid),
    .ram_wdata            (ram_wdata),
    .ram_wstrb            (ram_wstrb),
    .ram_wlast            (ram_wlast),
    .ram_wvalid           (ram_wvalid),
    .ram_wready           (ram_wready),
    .ram_bid              (ram_bid),
    .ram_bresp            (ram_bresp),
    .ram_bvalid           (ram_bvalid),
    .ram_bready           (ram_bready)
  );

  InternalCrossbar internal_crossbar(
    .aclk                 (aclk),
    .aresetn              (aresetn),

    .s_axi_awid           ({rom_awid,     ram_awid}),
    .s_axi_awaddr         ({rom_awaddr,   ram_awaddr}),
    .s_axi_awlen          ({rom_awlen,    ram_awlen}),
    .s_axi_awsize         ({rom_awsize,   ram_awsize}),
    .s_axi_awburst        ({rom_awburst,  ram_awburst}),
    .s_axi_awlock         ({rom_awlock,   ram_awlock}),
    .s_axi_awcache        ({rom_awcache,  ram_awcache}),
    .s_axi_awprot         ({rom_awprot,   ram_awprot}),
    .s_axi_awqos          (8'b0),
    .s_axi_awvalid        ({rom_awvalid,  ram_awvalid}),
    .s_axi_awready        ({rom_awready,  ram_awready}),
    .s_axi_wid            ({rom_wid,      ram_wid}),
    .s_axi_wdata          ({rom_wdata,    ram_wdata}),
    .s_axi_wstrb          ({rom_wstrb,    ram_wstrb}),
    .s_axi_wlast          ({rom_wlast,    ram_wlast}),
    .s_axi_wvalid         ({rom_wvalid,   ram_wvalid}),
    .s_axi_wready         ({rom_wready,   ram_wready}),
    .s_axi_bid            ({rom_bid,      ram_bid}),
    .s_axi_bresp          ({rom_bresp,    ram_bresp}),
    .s_axi_bvalid         ({rom_bvalid,   ram_bvalid}),
    .s_axi_bready         ({rom_bready,   ram_bready}),
    .s_axi_arid           ({rom_arid,     ram_arid}),
    .s_axi_araddr         ({rom_araddr,   ram_araddr}),
    .s_axi_arlen          ({rom_arlen,    ram_arlen}),
    .s_axi_arsize         ({rom_arsize,   ram_arsize}),
    .s_axi_arburst        ({rom_arburst,  ram_arburst}),
    .s_axi_arlock         ({rom_arlock,   ram_arlock}),
    .s_axi_arcache        ({rom_arcache,  ram_arcache}),
    .s_axi_arprot         ({rom_arprot,   ram_arprot}),
    .s_axi_arqos          (8'b0),
    .s_axi_arvalid        ({rom_arvalid,  ram_arvalid}),
    .s_axi_arready        ({rom_arready,  ram_arready}),
    .s_axi_rid            ({rom_rid,      ram_rid}),
    .s_axi_rdata          ({rom_rdata,    ram_rdata}),
    .s_axi_rresp          ({rom_rresp,    ram_rresp}),
    .s_axi_rlast          ({rom_rlast,    ram_rlast}),
    .s_axi_rvalid         ({rom_rvalid,   ram_rvalid}),
    .s_axi_rready         ({rom_rready,   ram_rready}),

    .m_axi_awid           (awid),
    .m_axi_awaddr         (awaddr),
    .m_axi_awlen          (awlen),
    .m_axi_awsize         (awsize),
    .m_axi_awburst        (awburst),
    .m_axi_awlock         (awlock),
    .m_axi_awcache        (awcache),
    .m_axi_awprot         (awprot),
    .m_axi_awqos          (),
    .m_axi_awvalid        (awvalid),
    .m_axi_awready        (awready),
    .m_axi_wid            (wid),
    .m_axi_wdata          (wdata),
    .m_axi_wstrb          (wstrb),
    .m_axi_wlast          (wlast),
    .m_axi_wvalid         (wvalid),
    .m_axi_wready         (wready),
    .m_axi_bid            (bid),
    .m_axi_bresp          (bresp),
    .m_axi_bvalid         (bvalid),
    .m_axi_bready         (bready),
    .m_axi_arid           (arid),
    .m_axi_araddr         (araddr),
    .m_axi_arlen          (arlen),
    .m_axi_arsize         (arsize),
    .m_axi_arburst        (arburst),
    .m_axi_arlock         (arlock),
    .m_axi_arcache        (arcache),
    .m_axi_arprot         (arprot),
    .m_axi_arqos          (),
    .m_axi_arvalid        (arvalid),
    .m_axi_arready        (arready),
    .m_axi_rid            (rid),
    .m_axi_rdata          (rdata),
    .m_axi_rresp          (rresp),
    .m_axi_rlast          (rlast),
    .m_axi_rvalid         (rvalid),
    .m_axi_rready         (rready)
  );

endmodule // mycpu_top
