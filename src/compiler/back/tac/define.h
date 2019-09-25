#ifndef TINYLANG_BACK_TAC_DEFINE_H_
#define TINYLANG_BACK_TAC_DEFINE_H_

#include <unordered_map>
#include <string>
#include <cstddef>

#include "back/tac/ir/tac.h"

namespace tinylang::back::tac {

// function info
struct FuncInfo {
  // label of current function
  TACPtr label;
  // list of arguments of function
  TACPtrList args;
  // list of variables in function
  TACPtrList vars;
  // list of instructions in function
  // empty if is just a declaration
  TACPtrList irs;
};

// function info map
using FuncInfoMap = std::unordered_map<std::string, FuncInfo>;

// data info
struct DataInfo {
  // content of data
  TACPtrList content;
  // size of element
  std::size_t elem_size;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_DEFINE_H_
