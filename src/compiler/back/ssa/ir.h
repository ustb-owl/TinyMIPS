#ifndef TINYLANG_BACK_SSA_IR_H_
#define TINYLANG_BACK_SSA_IR_H_

#include <utility>
#include <cassert>

#include "back/ir.h"
#include "back/ssa/ir/ssa.h"

namespace tinylang::back::ssa {

class SSAIR : public IRInterface {
 public:
  SSAIR(const SSAPtr &value) : value_(value) { assert(value_); }

  const std::any value() const override { return value_; }

 private:
  SSAPtr value_;
};

// make a new SSA IR
template <typename T, typename... Args>
inline IRPtr MakeSSA(Args &&... args) {
  auto ssa = std::make_shared<T>(std::forward(args)...);
  return std::make_shared<SSAIR>(ssa);
}

// cast IR to SSA IR
inline const SSAPtr &SSACast(const IRPtr &ir) {
  return IRCast<SSAPtr>(ir);
}

}  // namespace tinylang::back::ssa

#endif  // TINYLANG_BACK_SSA_IR_H_
