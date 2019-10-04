#ifndef TINYLANG_BACK_TAC_DEFINE_H_
#define TINYLANG_BACK_TAC_DEFINE_H_

#include <list>
#include <unordered_set>
#include <unordered_map>
#include <string>
#include <vector>
#include <cstddef>

#include "define/type.h"
#include "back/tac/ir/tac.h"

namespace tinylang::back::tac {

// function info
struct FuncInfo {
  // label of current function
  TACPtr label;
  // type of current function, 'nullptr' if is entry function
  define::TypePtr type;
  // list of arguments of function
  TACPtrList args;
  // list of variables in function
  std::unordered_set<TACPtr> vars;
  // list of instructions in function
  // empty if is just a declaration
  std::list<TACPtr> irs;
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

// data info list
using DataInfoList = std::vector<DataInfo>;

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_DEFINE_H_
