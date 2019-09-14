`timescale 1ns / 1ps

`include "bus.v"
`include "segpos.v"
`include "opcode.v"
`include "funct.v"

module ID(
  input                   rst,
  // from IF stage (PC)
  input   [`ADDR_BUS]     addr,
  input   [`INST_BUS]     inst,
  // load related signals
  input                   load_related_1,
  input                   load_related_2,
  // regfile channel #1
  output                  reg_read_en_1,
  output  [`REG_ADDR_BUS] reg_addr_1,
  input   [`DATA_BUS]     reg_data_1,
  // regfile channel #2
  output                  reg_read_en_2,
  output  [`REG_ADDR_BUS] reg_addr_2,
  input   [`DATA_BUS]     reg_data_2,
  // stall request
  output                  stall_request,
  // to IF stage
  output                  branch_flag,
  output  [`ADDR_BUS]     branch_addr,
  // to EX stage
  output  [`FUNCT_BUS]    funct,
  output  [`SHAMT_BUS]    shamt,
  output  [`DATA_BUS]     operand_1,
  output  [`DATA_BUS]     operand_2,
  // to MEM stage
  output                  mem_read_flag,
  output                  mem_write_flag,
  output                  mem_sign_ext_flag,
  output  [3:0]           mem_sel,
  output  [`DATA_BUS]     mem_write_data,
  // to WB stage (write back to regfile)
  output                  reg_write_en,
  output  [`REG_ADDR_BUS] reg_write_addr,
  output  [`ADDR_BUS]     current_pc_addr
);

  // extract information from instruction
  wire[`INST_OP_BUS]  inst_op     = inst[`SEG_OPCODE];
  wire[`REG_ADDR_BUS] inst_rs     = inst[`SEG_RS];
  wire[`REG_ADDR_BUS] inst_rt     = inst[`SEG_RT];
  wire[`REG_ADDR_BUS] inst_rd     = inst[`SEG_RD];
  wire[`SHAMT_BUS]    inst_shamt  = inst[`SEG_SHAMT];
  wire[`FUNCT_BUS]    inst_funct  = inst[`SEG_FUNCT];

  assign shamt = inst_shamt;

  // extract immediate from instruction
  wire[`HALF_DATA_BUS] inst_imm = inst[`SEG_IMM];
  wire[`DATA_BUS] zero_ext_imm_hi = {inst_imm, 16'b0};
  wire[`DATA_BUS] sign_ext_imm = {{16{inst_imm[15]}}, inst_imm};

  // generate the stall request signal
  assign stall_request = load_related_1 || load_related_2;

  // generate address of registers to be read
  reg reg_read_en_1, reg_read_en_2;
  reg[`REG_ADDR_BUS] reg_addr_1, reg_addr_2;

  always @(*) begin
    if (rst) begin
      reg_read_en_1 <= 0;
      reg_read_en_2 <= 0;
      reg_addr_1 <= 0;
      reg_addr_2 <= 0;
    end
    else begin
      case (inst_op)
        // arithmetic & logic (immediate)
        `OP_ADDIU,
        // memory accessing
        `OP_LB, `OP_LW, `OP_LBU: begin
          reg_read_en_1 <= 1;
          reg_read_en_2 <= 0;
          reg_addr_1 <= inst_rs;
          reg_addr_2 <= 0;
        end
        // branch
        `OP_BEQ, `OP_BNE,
        // memory accessing
        `OP_SB, `OP_SW,
        // r-type
        `OP_SPECIAL: begin
          reg_read_en_1 <= 1;
          reg_read_en_2 <= 1;
          reg_addr_1 <= inst_rs;
          reg_addr_2 <= inst_rt;
        end
        default: begin  // OP_JAL, OP_LUI
          reg_read_en_1 <= 0;
          reg_read_en_2 <= 0;
          reg_addr_1 <= 0;
          reg_addr_2 <= 0;
        end
      endcase
    end
  end

  // generate FUNCT signal
  FunctGen funct_gen(inst_op, inst_funct, inst_rt, funct);

  // calculate link address
  wire[`ADDR_BUS] link_addr = addr + 8;

  // generate operand_1
  reg[`DATA_BUS] operand_1;

  always @(*) begin
    if (rst) begin
      operand_1 <= 0;
    end
    else begin
      case (inst_op)
        // immediate
        `OP_ADDIU, `OP_LUI,
        // memory accessing
        `OP_LB, `OP_LW, `OP_LBU, `OP_SB, `OP_SW: begin
          operand_1 <= reg_data_1;
        end
        `OP_SPECIAL: begin
          operand_1 <= funct == `FUNCT_JALR ? link_addr : reg_data_1;
        end
        `OP_JAL: begin
          operand_1 <= link_addr;
        end
        default: begin
          operand_1 <= 0;
        end
      endcase
    end
  end

  // generate operand_2
  reg[`DATA_BUS] operand_2;

  always @(*) begin
    if (rst) begin
      operand_2 <= 0;
    end
    else begin
      case (inst_op)
        `OP_LUI: begin
          operand_2 <= zero_ext_imm_hi;
        end
        // arithmetic & logic (immediate)
        `OP_ADDIU,
        // memory accessing
        `OP_LB, `OP_LW, `OP_LBU, `OP_SB, `OP_SW: begin
          operand_2 <= sign_ext_imm;
        end
        `OP_SPECIAL: begin
          operand_2 <= reg_data_2;
        end
        default: begin
          operand_2 <= 0;
        end
      endcase
    end
  end

  // generate write address of registers
  reg reg_write_en;
  reg[`REG_ADDR_BUS] reg_write_addr;

  always @(*) begin
    if (rst) begin
      reg_write_en <= 0;
      reg_write_addr <= 0;
    end
    else begin
      case (inst_op)
        // immediate
        `OP_ADDIU, `OP_LUI: begin
          reg_write_en <= 1;
          reg_write_addr <= inst_rt;
        end
        `OP_SPECIAL: begin
          reg_write_en <= 1;
          reg_write_addr <= inst_rd;
        end
        `OP_JAL: begin
          reg_write_en <= 1;
          reg_write_addr <= 31;   // $ra (return address)
        end
        `OP_LB, `OP_LBU, `OP_LW: begin
          reg_write_en <= 1;
          reg_write_addr <= inst_rt;
        end
        default: begin
          reg_write_en <= 0;
          reg_write_addr <= 0;
        end
      endcase
    end
  end

  // generate branch address
  reg branch_flag;
  reg[`ADDR_BUS] branch_addr;

  wire[`ADDR_BUS] addr_plus_4 = addr + 4;
  wire[25:0] jump_addr = inst[25:0];
  wire[`DATA_BUS] sign_ext_imm_sll2 = {{14{inst[15]}}, inst[15:0], 2'b00};

  assign current_pc_addr = addr;

  always @(*) begin
    if (rst) begin
      branch_flag <= 0;
      branch_addr <= 0;
    end
    else begin
      case (inst_op)
        `OP_JAL: begin
          branch_flag <= 1;
          branch_addr <= {addr_plus_4[31:28], jump_addr, 2'b00};
        end
        `OP_SPECIAL: begin
          if (inst_funct == `FUNCT_JALR) begin
            branch_flag <= 1;
            branch_addr <= reg_data_1;
          end
          else begin
            branch_flag <= 0;
            branch_addr <= 0;
          end
        end
        `OP_BEQ: begin
          if (reg_data_1 == reg_data_2) begin
            branch_flag <= 1;
            branch_addr <= addr_plus_4 + sign_ext_imm_sll2;
          end
          else begin
            branch_flag <= 0;
            branch_addr <= 0;
          end
        end
        `OP_BNE: begin
          if (reg_data_1 != reg_data_2) begin
            branch_flag <= 1;
            branch_addr <= addr_plus_4 + sign_ext_imm_sll2;
          end
          else begin
            branch_flag <= 0;
            branch_addr <= 0;
          end
        end
        default: begin
          branch_flag <= 0;
          branch_addr <= 0;
        end
      endcase
    end
  end

  // generate control signal of memory accessing
  reg mem_read_flag, mem_write_flag, mem_sign_ext_flag;
  reg[3:0] mem_sel;
  reg[`DATA_BUS] mem_write_data;

  always @(*) begin
    if (rst) begin
      mem_write_flag <= 0;
    end
    else begin
      case (inst_op)
        `OP_SB, `OP_SW: mem_write_flag <= 1;
        default: mem_write_flag <= 0;
      endcase
    end
  end
  
  always @(*) begin
    if (rst) begin
      mem_read_flag <= 0;
    end
    else begin
      case (inst_op)
        `OP_LB, `OP_LBU, `OP_LW: mem_read_flag <= 1;
        default: mem_read_flag <= 0;
      endcase
    end
  end
  
  always @(*) begin
    if (rst) begin
      mem_sign_ext_flag <= 0;
    end
    else begin
      case (inst_op)
        `OP_LB, `OP_LW: mem_sign_ext_flag <= 1;
        default: mem_sign_ext_flag <= 0;
      endcase
    end
  end

  // mem_sel: lb & sb -> 1, lw & sw -> 1111
  always @(*) begin
    if (rst) begin
      mem_sel <= 4'b0000;
    end
    else begin
      case (inst_op)
        `OP_LB, `OP_LBU, `OP_SB: mem_sel <= 4'b0001;
        `OP_LW, `OP_SW: mem_sel <= 4'b1111;
        default: mem_sel <= 4'b0000;
      endcase
    end
  end

  // generate data to be written to memory
  always @(*) begin
    if (rst) begin
      mem_write_data <= 0;
    end
    else begin
      case (inst_op)
        `OP_SB, `OP_SW: mem_write_data <= reg_data_2;
        default: mem_write_data <= 0;
      endcase
    end
  end

endmodule // ID
