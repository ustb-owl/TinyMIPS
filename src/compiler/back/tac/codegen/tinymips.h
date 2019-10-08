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
  NOP, LABEL,
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
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest)
      : opcode(op), dest(dest) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest, TinyMIPSReg opr1,
              TinyMIPSReg opr2)
      : opcode(op), dest(dest), opr1(opr1), opr2(opr2) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest, std::int16_t imm)
      : opcode(op), dest(dest), imm(imm) {}
  TinyMIPSAsm(TinyMIPSOpcode op, TinyMIPSReg dest,
              const std::string imm_str)
      : opcode(op), dest(dest), imm_str(imm_str) {}
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

  TinyMIPSOpcode opcode;
  TinyMIPSReg dest, opr1, opr2;
  std::int16_t imm;
  std::string imm_str;
  std::uint32_t index;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_TINYMIPS_H_
