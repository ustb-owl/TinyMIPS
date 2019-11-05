`timescale 1ns / 1ps

`include "bus.v"
`include "debug.v"

module TinyMIPS(
  input                   clk,
  input                   rst,
  // debug signals
  output                  debug_reg_write_en,
  output  [`REG_ADDR_BUS] debug_reg_write_addr,
  output  [`DATA_BUS]     debug_reg_write_data,
  output  [`ADDR_BUS]     debug_pc_addr,
  // AXI channel (ROM)
  output  [3:0]           rom_arid,
  output  [31:0]          rom_araddr,
  output  [3:0]           rom_arlen,
  output  [2:0]           rom_arsize,
  output  [1:0]           rom_arburst,
  output  [1:0]           rom_arlock,
  output  [3:0]           rom_arcache,
  output  [2:0]           rom_arprot,
  output                  rom_arvalid,
  input                   rom_arready,
  input   [3:0]           rom_rid,
  input   [31:0]          rom_rdata,
  input   [1:0]           rom_rresp,
  input                   rom_rlast,
  input                   rom_rvalid,
  output                  rom_rready,
  output  [3:0]           rom_awid,
  output  [31:0]          rom_awaddr,
  output  [3:0]           rom_awlen,
  output  [2:0]           rom_awsize,
  output  [1:0]           rom_awburst,
  output  [1:0]           rom_awlock,
  output  [3:0]           rom_awcache,
  output  [2:0]           rom_awprot,
  output                  rom_awvalid,
  input                   rom_awready,
  output  [3:0]           rom_wid,
  output  [31:0]          rom_wdata,
  output  [3:0]           rom_wstrb,
  output                  rom_wlast,
  output                  rom_wvalid,
  input                   rom_wready,
  input   [3:0]           rom_bid,
  input   [1:0]           rom_bresp,
  input                   rom_bvalid,
  output                  rom_bready,
  // AXI channel (RAM)
  output  [3:0]           ram_arid,
  output  [31:0]          ram_araddr,
  output  [3:0]           ram_arlen,
  output  [2:0]           ram_arsize,
  output  [1:0]           ram_arburst,
  output  [1:0]           ram_arlock,
  output  [3:0]           ram_arcache,
  output  [2:0]           ram_arprot,
  output                  ram_arvalid,
  input                   ram_arready,
  input   [3:0]           ram_rid,
  input   [31:0]          ram_rdata,
  input   [1:0]           ram_rresp,
  input                   ram_rlast,
  input                   ram_rvalid,
  output                  ram_rready,
  output  [3:0]           ram_awid,
  output  [31:0]          ram_awaddr,
  output  [3:0]           ram_awlen,
  output  [2:0]           ram_awsize,
  output  [1:0]           ram_awburst,
  output  [1:0]           ram_awlock,
  output  [3:0]           ram_awcache,
  output  [2:0]           ram_awprot,
  output                  ram_awvalid,
  input                   ram_awready,
  output  [3:0]           ram_wid,
  output  [31:0]          ram_wdata,
  output  [3:0]           ram_wstrb,
  output                  ram_wlast,
  output                  ram_wvalid,
  input                   ram_wready,
  input   [3:0]           ram_bid,
  input   [1:0]           ram_bresp,
  input                   ram_bvalid,
  output                  ram_bready
);

  // CPU core
  `DEBUG wire             core_stall;
  `DEBUG wire             core_rom_en;
  wire[`MEM_SEL_BUS]      core_rom_write_en;
  `DEBUG wire[`ADDR_BUS]  core_rom_addr;
  `DEBUG wire[`DATA_BUS]  core_rom_read_data;
  wire[`DATA_BUS]         core_rom_write_data;
  wire                    core_ram_en;
  wire[`MEM_SEL_BUS]      core_ram_write_en;
  wire[`ADDR_BUS]         core_ram_addr;
  wire[`DATA_BUS]         core_ram_read_data;
  wire[`DATA_BUS]         core_ram_write_data;
  wire                    core_debug_reg_write_en;

  Core core(
    .clk                  (clk),
    .rst                  (rst),
    .stall                (core_stall),

    .rom_en               (core_rom_en),
    .rom_write_en         (core_rom_write_en),
    .rom_addr             (core_rom_addr),
    .rom_read_data        (core_rom_read_data),
    .rom_write_data       (core_rom_write_data),

    .ram_en               (core_ram_en),
    .ram_write_en         (core_ram_write_en),
    .ram_addr             (core_ram_addr),
    .ram_read_data        (core_ram_read_data),
    .ram_write_data       (core_ram_write_data),

    .debug_reg_write_en   (core_debug_reg_write_en),
    .debug_reg_write_addr (debug_reg_write_addr),
    .debug_reg_write_data (debug_reg_write_data),
    .debug_pc_addr        (debug_pc_addr)
  );


  // MMU
  wire[`ADDR_BUS]         mmu_rom_addr, mmu_ram_addr;

  StaticMMU static_mmu(
    .rom_addr_in          (core_rom_addr),
    .ram_addr_in          (core_ram_addr),
    .rom_addr_out         (mmu_rom_addr),
    .ram_addr_out         (mmu_ram_addr)
  );


  // AXI adapter for ROM interface
  wire                    rom_adapter_en, rom_adapter_ready;

  AXIAdapter rom_adapter(
    .clk                  (clk),
    .rst                  (rst),

    .sram_en              (rom_adapter_en),
    .sram_ready           (rom_adapter_ready),
    .sram_write_en        (core_rom_write_en),
    .sram_addr            (mmu_rom_addr),
    .sram_read_data       (core_rom_read_data),
    .sram_write_data      (core_rom_write_data),

    .arid                 (rom_arid),
    .araddr               (rom_araddr),
    .arlen                (rom_arlen),
    .arsize               (rom_arsize),
    .arburst              (rom_arburst),
    .arlock               (rom_arlock),
    .arcache              (rom_arcache),
    .arprot               (rom_arprot),
    .arvalid              (rom_arvalid),
    .arready              (rom_arready),
    .rid                  (rom_rid),
    .rdata                (rom_rdata),
    .rresp                (rom_rresp),
    .rlast                (rom_rlast),
    .rvalid               (rom_rvalid),
    .rready               (rom_rready),
    .awid                 (rom_awid),
    .awaddr               (rom_awaddr),
    .awlen                (rom_awlen),
    .awsize               (rom_awsize),
    .awburst              (rom_awburst),
    .awlock               (rom_awlock),
    .awcache              (rom_awcache),
    .awprot               (rom_awprot),
    .awvalid              (rom_awvalid),
    .awready              (rom_awready),
    .wid                  (rom_wid),
    .wdata                (rom_wdata),
    .wstrb                (rom_wstrb),
    .wlast                (rom_wlast),
    .wvalid               (rom_wvalid),
    .wready               (rom_wready),
    .bid                  (rom_bid),
    .bresp                (rom_bresp),
    .bvalid               (rom_bvalid),
    .bready               (rom_bready)
  );


  // AXI adapter for RAM interface
  wire                    ram_adapter_en, ram_adapter_ready;

  AXIAdapter ram_adapter(
    .clk                  (clk),
    .rst                  (rst),

    .sram_en              (ram_adapter_en),
    .sram_ready           (ram_adapter_ready),
    .sram_write_en        (core_ram_write_en),
    .sram_addr            (mmu_ram_addr),
    .sram_read_data       (core_ram_read_data),
    .sram_write_data      (core_ram_write_data),

    .arid                 (ram_arid),
    .araddr               (ram_araddr),
    .arlen                (ram_arlen),
    .arsize               (ram_arsize),
    .arburst              (ram_arburst),
    .arlock               (ram_arlock),
    .arcache              (ram_arcache),
    .arprot               (ram_arprot),
    .arvalid              (ram_arvalid),
    .arready              (ram_arready),
    .rid                  (ram_rid),
    .rdata                (ram_rdata),
    .rresp                (ram_rresp),
    .rlast                (ram_rlast),
    .rvalid               (ram_rvalid),
    .rready               (ram_rready),
    .awid                 (ram_awid),
    .awaddr               (ram_awaddr),
    .awlen                (ram_awlen),
    .awsize               (ram_awsize),
    .awburst              (ram_awburst),
    .awlock               (ram_awlock),
    .awcache              (ram_awcache),
    .awprot               (ram_awprot),
    .awvalid              (ram_awvalid),
    .awready              (ram_awready),
    .wid                  (ram_wid),
    .wdata                (ram_wdata),
    .wstrb                (ram_wstrb),
    .wlast                (ram_wlast),
    .wvalid               (ram_wvalid),
    .wready               (ram_wready),
    .bid                  (ram_bid),
    .bresp                (ram_bresp),
    .bvalid               (ram_bvalid),
    .bready               (ram_bready)
  );


  // control signals
  reg   ram_en_delay;
  wire  ram_en = core_ram_en & core_stall;

  assign core_stall         = !rom_adapter_ready || !ram_adapter_ready;
  assign debug_reg_write_en = core_stall ? 0 : core_debug_reg_write_en;
  assign rom_adapter_en     = !core_stall && core_rom_en;
  assign ram_adapter_en     = (ram_en_delay ^ ram_en) & ram_en;

  always @(posedge clk) begin
    ram_en_delay <= ram_en;
  end


endmodule // TinyMIPS
