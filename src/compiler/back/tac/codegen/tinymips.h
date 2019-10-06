#ifndef TINYLANG_BACK_TAC_CODEGEN_TINYMIPS_H_
#define TINYLANG_BACK_TAC_CODEGEN_TINYMIPS_H_

#include <ostream>
#include <string>
#include <cstdint>

namespace tinylang::back::tac {

enum class TinyMIPSOpcode : std::uint8_t {
  ADDU, ADDIU, SUBU, SLT, SLTU,
  AND, LUI, OR, XOR,
  SLL, SLLV, SRAV, SRLV,
  BEQ, BNE, JAL, JALR,
  LB, LBU, LW, SB, SW,
  NOP,
};

enum class TinyMIPSReg : std::uint8_t {
  Zero, AT,
  V0, V1,
  A0, A1, A2, A3,
  T0, T1, T2, T3, T4, T5, T6, T7,
  S0, S1, S2, S3, S4, S5, S6, S7,
  T8, T9,
  K0, K1,
  GP, SP, FP, RA,
};

struct TinyMIPSAsm {
  TinyMIPSAsm(TinyMIPSOpcode op) : opcode(op) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest, TinyMIPSReg opr1,
              TinyMIPSReg opr2)
      : opcode(op), dest(dest), opr1(opr1), opr2(opr2) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest, TinyMIPSReg opr1,
              std::int16_t imm)
      : opcode(op), dest(dest), opr1(opr1), imm(imm) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest, TinyMIPSReg opr1,
              const std::string imm_str)
      : opcode(op), dest(dest), opr1(opr1), imm_str(imm_str) {}
  TinyMIPSAsm(TinyMIPSOpcode op, std::uint32_t index)
      : opcode(op), index(index) {}
  TinyMIPSAsm(TinyMIPSOpcode op, const std::string index_str)
      : opcode(op), imm_str(imm_str) {}

  void Dump(std::ostream &os) const {
    using Opcode = TinyMIPSOpcode;
    const char *opcode_str[] = {
      "addu", "addiu", "subu", "slt", "sltu",
      "and", "lui", "or", "xor",
      "sll", "sllv", "srav", "srlv",
      "beq", "bne", "jal", "jalr",
      "lb", "lbu", "lw", "sb", "sw",
      "nop",
    };
    const char *reg_str[] = {
      "$0", "$at",
      "$v0", "$v1",
      "$a0", "$a1", "$a2", "$a3",
      "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7",
      "$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$s7",
      "$t8", "$t9",
      "$k0", "$k1",
      "$gp", "$sp", "$fp", "$ra",
    };
    os << opcode_str[static_cast<int>(opcode)];
    if (opcode != Opcode::NOP) os << '\t';
    switch (opcode) {
      case Opcode::ADDU: case Opcode::SUBU: case Opcode::SLT:
      case Opcode::SLTU: case Opcode::AND: case Opcode::OR:
      case Opcode::XOR: case Opcode::SLLV: case Opcode::SRAV:
      case Opcode::SRLV: case Opcode::JALR: {
        os << reg_str[static_cast<int>(dest)] << ", ";
        os << reg_str[static_cast<int>(opr1)] << ", ";
        os << reg_str[static_cast<int>(opr2)];
        break;
      }
      case Opcode::ADDIU: case Opcode::LUI: case Opcode::BEQ:
      case Opcode::BNE: case Opcode::SLL: {
        os << reg_str[static_cast<int>(dest)] << ", ";
        os << reg_str[static_cast<int>(opr1)] << ", ";
        if (!imm_str.empty()) {
          os << imm_str;
        }
        else {
          os << imm;
        }
        break;
      }
      case Opcode::JAL: {
        if (!imm_str.empty()) {
          os << imm_str;
        }
        else {
          os << index;
        }
        break;
      }
      case Opcode::LB: case Opcode::LBU: case Opcode::LW:
      case Opcode::SB: case Opcode::SW: {
        os << reg_str[static_cast<int>(dest)] << ", ";
        if (!imm_str.empty()) {
          os << imm_str;
        }
        else {
          os << imm;
        }
        os << '(' << reg_str[static_cast<int>(opr1)] << ')';
        break;
      }
      default:;
    }
  }

  TinyMIPSOpcode opcode;
  TinyMIPSReg dest, opr1, opr2;
  std::int16_t imm;
  std::string imm_str;
  std::uint32_t index;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_TINYMIPS_H_
