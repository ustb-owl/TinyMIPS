#include "back/tac/codegen/tmgen.h"

#include <algorithm>

using namespace tinylang::back::tac;

namespace {

using Asm = TinyMIPSAsm;
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

// check if instruction is pseudo instruction
inline bool IsPseudo(const Asm &tm) {
  return static_cast<int>(tm.opcode) >= static_cast<int>(Opcode::NOP);
}

// check if instruction is jump or branch
inline bool IsJump(const Asm &tm) {
  const auto &op = tm.opcode;
  return op == Opcode::BEQ || op == Opcode::BNE || op == Opcode::JAL ||
         op == Opcode::JALR;
}

// check if instruction is store
inline bool IsStore(const Asm &tm) {
  return tm.opcode == Opcode::SB || tm.opcode == Opcode::SW;
}

// check if current instruction has dest
inline bool HasDest(const Asm &tm) {
  return !IsPseudo(tm) && !IsJump(tm) && !IsStore(tm);
}

// check if two registers are related
inline bool IsRegRelated(Reg r1, Reg r2) {
  return r1 != Reg::Zero && r1 == r2;
}

// check if registers and asm are related
inline bool IsRelated(const Asm &tm, Reg op, Reg dest) {
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
inline bool IsRelated(const Asm &tm, Reg op) {
  return IsRelated(tm, op, Reg::Zero);
}

// check if instruction and branch are related
inline bool IsBranchRelated(const Asm &tm, const Asm &branch) {
  return IsRelated(tm, branch.dest) || IsRelated(tm, branch.opr1);
}

// dump content of asm to stream
void DumpAsm(std::ostream &os, const Asm &tm) {
  os << opcode_str[static_cast<int>(tm.opcode)];
  if (!IsPseudo(tm)) os << '\t';
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
      os << "$0, " << reg_str[static_cast<int>(tm.dest)];
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

}  // namespace

void TinyMIPSAsmGen::ReorderJump() {
  // check if is already reordered
  if (is_reordered_) return;
  is_reordered_ = true;
  // record position and last elements
  std::size_t pos = 0;
  auto last = asms_.end(), last2 = asms_.end();
  // traverse all instructions
  for (auto it = asms_.begin(); it != asms_.end(); ++it, ++pos) {
    switch (it->opcode) {
      case Opcode::BEQ: case Opcode::BNE: {
        // check if is related
        if (!pos || (pos && IsBranchRelated(*last, *it)) ||
            (pos > 1 && IsJump(*last2))) {
          // insert NOP after branch
          last = it;
          it = asms_.insert(++it, {Opcode::NOP});
        }
        else {
          // just swap
          std::swap(*last, *it);
        }
        break;
      }
      case Opcode::JAL: {
        // check if is related
        if (!pos || (pos > 1 && IsJump(*last2))) {
          // insert NOP after jump
          last = it;
          it = asms_.insert(++it, {Opcode::NOP});
        }
        else {
          // just swap
          std::swap(*last, *it);
        }
        break;
      }
      case Opcode::JALR: {
        if (!pos || (pos && IsRelated(*last, it->dest, Reg::RA)) ||
            (pos > 1 && IsJump(*last2))) {
          // insert NOP after jump
          last = it;
          it = asms_.insert(++it, {Opcode::NOP});
        }
        else {
          // just swap
          std::swap(*last, *it);
        }
        break;
      }
      default:;
    }
    // update iterators
    last2 = last;
    last = it;
  }
}

void TinyMIPSAsmGen::PushNop() {
  PushAsm(Opcode::NOP);
}

void TinyMIPSAsmGen::PushLabel(std::string_view label) {
  // remove redundant jumps
  while (asms_.back().opcode == Opcode::JAL &&
         asms_.back().imm_str == label) {
    asms_.pop_back();
  }
  PushAsm(Opcode::LABEL, label);
}

void TinyMIPSAsmGen::PushMove(Reg dest, Reg src) {
  // do not generate redundant move
  if (dest == src) return;
  // try to modify the dest of last instruction
  if (HasDest(asms_.back()) && asms_.back().dest == src) {
    asms_.back().dest = dest;
  }
  else {
    PushAsm(Opcode::OR, dest, src, Reg::Zero);
  }
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
}

void TinyMIPSAsmGen::PushJump(std::string_view label) {
  PushAsm(Opcode::JAL, label);
}

void TinyMIPSAsmGen::PushJump(Reg dest) {
  PushAsm(Opcode::JALR, dest);
}

void TinyMIPSAsmGen::Dump(std::ostream &os, std::string_view indent) {
  ReorderJump();
  for (const auto &i : asms_) {
    if (i.opcode != Opcode::LABEL) os << indent;
    DumpAsm(os, i);
    os << std::endl;
  }
}
