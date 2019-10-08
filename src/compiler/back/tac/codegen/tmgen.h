#ifndef TINYLANG_BACK_TAC_CODEGEN_TMGEN_H_
#define TINYLANG_BACK_TAC_CODEGEN_TMGEN_H_

#include <ostream>
#include <vector>
#include <utility>
#include <string_view>

#include "back/tac/codegen/tinymips.h"

namespace tinylang::back::tac {

class TinyMIPSAsmGen {
 public:
  TinyMIPSAsmGen() { Reset(); }

  // reset internal state
  void Reset() { asms_.clear(); }

  // push a new assembly
  template <typename... Args>
  void PushAsm(Args &&... args) {
    asms_.emplace_back(std::forward<Args>(args)...);
  }

  // push 'nop' pseudo instruction
  void PushNop();
  // push a label
  void PushLabel(std::string_view label);
  // push 'move' pseudo instruction
  void PushMove(TinyMIPSReg dest, TinyMIPSReg src);
  // push 'li' pseudo instruction
  void PushLoadImm(TinyMIPSReg dest, std::uint32_t imm);
  // push 'la' pseudo instruction
  void PushLoadImm(TinyMIPSReg dest, std::string_view imm_str);
  // push a new branch instruction
  void PushBranch(TinyMIPSReg cond, std::string_view label);
  // push a new jump instruction
  void PushJump(std::string_view label);
  // push a new jump instruction
  void PushJump(TinyMIPSReg dest);
  // dump assembly code to stream
  void Dump(std::ostream &os, std::string_view indent);

 private:
  std::vector<TinyMIPSAsm> asms_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_TMGEN_H_
