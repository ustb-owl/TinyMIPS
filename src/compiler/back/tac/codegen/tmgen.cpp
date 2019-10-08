#include "back/tac/codegen/tmgen.h"

#include <algorithm>

using namespace tinylang::back::tac;

namespace {

using Opcode = TinyMIPSOpcode;
using Reg = TinyMIPSReg;

const char *opcode_str[] = {
  "addu", "addiu", "subu", "slt", "sltu",
  "and", "lui", "or", "xor",
  "sll", "sllv", "srav", "srlv",
  "beq", "bne", "jal", "jalr",
  "lb", "lbu", "lw", "sb", "sw",
  "nop", "",
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

// dump content of asm to stream
void DumpAsm(std::ostream &os, const TinyMIPSAsm &tm) {
  os << opcode_str[static_cast<int>(tm.opcode)];
  if (tm.opcode != Opcode::NOP || tm.opcode != Opcode::LABEL) os << '\t';
  switch (tm.opcode) {
    case Opcode::ADDU: case Opcode::SUBU: case Opcode::SLT:
    case Opcode::SLTU: case Opcode::AND: case Opcode::OR:
    case Opcode::XOR: case Opcode::SLLV: case Opcode::SRAV:
    case Opcode::SRLV: {
      os << reg_str[static_cast<int>(tm.dest)] << ", ";
      os << reg_str[static_cast<int>(tm.opr1)] << ", ";
      os << reg_str[static_cast<int>(tm.opr2)];
      break;
    }
    case Opcode::ADDIU: case Opcode::BEQ: case Opcode::BNE:
    case Opcode::SLL: {
      os << reg_str[static_cast<int>(tm.dest)] << ", ";
      os << reg_str[static_cast<int>(tm.opr1)] << ", ";
      if (!tm.imm_str.empty()) {
        os << tm.imm_str;
      }
      else {
        os << tm.imm;
      }
      break;
    }
    case Opcode::LUI: {
      os << reg_str[static_cast<int>(tm.dest)] << ", ";
      if (!tm.imm_str.empty()) {
        os << tm.imm_str;
      }
      else {
        os << tm.imm;
      }
      break;
    }
    case Opcode::JAL: {
      if (!tm.imm_str.empty()) {
        os << tm.imm_str;
      }
      else {
        os << tm.index;
      }
      break;
    }
    case Opcode::JALR: {
      os << reg_str[static_cast<int>(tm.dest)];
      break;
    }
    case Opcode::LB: case Opcode::LBU: case Opcode::LW:
    case Opcode::SB: case Opcode::SW: {
      os << reg_str[static_cast<int>(tm.dest)] << ", ";
      if (!tm.imm_str.empty()) {
        os << tm.imm_str;
      }
      else {
        os << tm.imm;
      }
      os << '(' << reg_str[static_cast<int>(tm.opr1)] << ')';
      break;
    }
    case Opcode::LABEL: {
      os << tm.imm_str << ':';
      break;
    }
    default:;
  }
}

// check if opcode is jump or branch
inline bool IsJump(TinyMIPSOpcode op) {
  return op == Opcode::BEQ || op == Opcode::BNE || op == Opcode::JAL ||
         op == Opcode::JALR;
}

// check if two registers are related
inline bool IsRegRelated(Reg r1, Reg r2) {
  return r1 != Reg::Zero && r1 == r2;
}

// check if registers and asm are related
inline bool IsRelated(const TinyMIPSAsm &tm, Reg op, Reg dest) {
  switch (tm.opcode) {
    case Opcode::ADDU: case Opcode::SUBU: case Opcode::SLT:
    case Opcode::SLTU: case Opcode::AND: case Opcode::OR:
    case Opcode::XOR: case Opcode::SLLV: case Opcode::SRAV:
    case Opcode::SRLV: {
      return IsRegRelated(tm.dest, op) || IsRegRelated(dest, tm.opr1) ||
             IsRegRelated(dest, tm.opr2);
    }
    case Opcode::ADDIU: case Opcode::SLL: {
      return IsRegRelated(tm.dest, op) || IsRegRelated(dest, tm.opr1);
    }
    case Opcode::BEQ: case Opcode::BNE: {
      return IsRegRelated(dest, tm.opr1) || IsRegRelated(dest, tm.opr2);
    }
    case Opcode::LUI: {
      return IsRegRelated(tm.dest, op);
    }
    case Opcode::JAL: {
      return IsRegRelated(Reg::RA, op);
    }
    case Opcode::JALR: {
      return IsRegRelated(Reg::RA, op) || IsRegRelated(dest, tm.dest);
    }
    case Opcode::LB: case Opcode::LBU: case Opcode::LW: {
      return IsRegRelated(tm.dest, op) || IsRegRelated(dest, tm.opr1);
    }
    case Opcode::SB: case Opcode::SW: {
      return IsRegRelated(dest, tm.dest) || IsRegRelated(dest, tm.opr1);
    }
    default:;
  }
  return false;
}

// check if registers and asm are related
inline bool IsRelated(const TinyMIPSAsm &tm, Reg op) {
  return IsRelated(tm, op, Reg::Zero);
}

}  // namespace

void TinyMIPSAsmGen::PushNop() {
  PushAsm(Opcode::NOP);
}

void TinyMIPSAsmGen::PushLabel(std::string_view label) {
  PushAsm(Opcode::LABEL, label);
}

void TinyMIPSAsmGen::PushMove(Reg dest, Reg src) {
  if (dest != src) PushAsm(Opcode::OR, dest, src, Reg::Zero);
}

void TinyMIPSAsmGen::PushLoadImm(Reg dest, std::uint32_t imm) {
  if ((!(imm & 0xffff0000) && !(imm & 0x8000)) ||
      ((imm & 0xffff0000) == 0xffff0000 && (imm & 0x8000))) {
    PushAsm(Opcode::ADDIU, dest, Reg::Zero, imm);
  }
  else if (!(imm & 0x8000)) {
    PushAsm(Opcode::LUI, dest, imm >> 16);
    PushAsm(Opcode::ADDIU, dest, dest, imm & 0xffff);
  }
  else {
    PushAsm(Opcode::LUI, dest, (imm >> 16) + 1);
    PushAsm(Opcode::ADDIU, dest, dest, imm & 0xffff);
  }
}

void TinyMIPSAsmGen::PushLoadImm(Reg dest, std::string_view imm_str) {
  using namespace std::string_literals;
  PushAsm(Opcode::LUI, dest, "%hi("s + imm_str.data() + ")");
  PushAsm(Opcode::ADDIU, dest, dest, "%lo("s + imm_str.data() + ")");
}

void TinyMIPSAsmGen::PushBranch(Reg cond, std::string_view label) {
  PushAsm(Opcode::BNE, cond, Reg::Zero, label);
  if (asms_.size() <= 1 ||
      (asms_.size() > 1 && IsRelated(asms_[asms_.size() - 2], cond)) ||
      (asms_.size() > 2 && IsJump(asms_[asms_.size() - 3].opcode))) {
    PushNop();
  }
  else {
    std::swap(asms_[asms_.size() - 2], asms_.back());
  }
}

void TinyMIPSAsmGen::PushJump(std::string_view label) {
  PushAsm(Opcode::JAL, label);
  if (asms_.size() <= 1 ||
      (asms_.size() > 2 && IsJump(asms_[asms_.size() - 3].opcode))) {
    PushNop();
  }
  else {
    std::swap(asms_[asms_.size() - 2], asms_.back());
  }
}

void TinyMIPSAsmGen::PushJump(Reg dest) {
  PushAsm(Opcode::JALR, dest);
  if (asms_.size() <= 1 ||
      (asms_.size() > 1 &&
       IsRelated(asms_[asms_.size() - 2], dest, Reg::RA)) ||
      (asms_.size() > 2 && IsJump(asms_[asms_.size() - 3].opcode))) {
    PushNop();
  }
  else {
    std::swap(asms_[asms_.size() - 2], asms_.back());
  }
}

void TinyMIPSAsmGen::Dump(std::ostream &os, std::string_view indent) {
  for (const auto &i : asms_) {
    if (i.opcode != Opcode::LABEL) os << indent;
    DumpAsm(os, i);
    os << std::endl;
  }
}
