#ifndef TINYLANG_DEFINE_SYMBOL_H_
#define TINYLANG_DEFINE_SYMBOL_H_

#include <string>

#include "define/type.h"
#include "util/nested.h"

namespace tinylang::define {

// scope environment (symbol table)
using EnvPtr = util::NestedMapPtr<std::string, TypePtr>;

// make a new environment
inline EnvPtr MakeEnvironment() {
  return util::MakeNestedMap<std::string, TypePtr>();
}

// make a new environment (with outer environment)
inline EnvPtr MakeEnvironment(const EnvPtr &outer) {
  return util::MakeNestedMap<std::string, TypePtr>(outer);
}

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_SYMBOL_H_
