#ifndef TINYLANG_BACK_TAC_IR_H_
#define TINYLANG_BACK_TAC_IR_H_

#include <utility>
#include <cassert>

#include "back/ir.h"
#include "back/tac/ir/tac.h"

namespace tinylang::back::tac {

class TACIR : public IRInterface {
 public:
  TACIR(const TACPtr &value) : value_(value) { assert(value_ != nullptr); }

  const std::any value() const override { return value_; }

 private:
  TACPtr value_;
};

// make a new TAC IR
template <typename T, typename... Args>
inline IRPtr MakeTAC(Args &&... args) {
  auto tac = std::make_shared<T>(std::forward(args)...);
  return std::make_shared<TACIR>(tac);
}

// cast IR to TAC IR
inline const TACPtr &TACCast(const IRPtr &ir) {
  return IRCast<TACPtr>(ir);
}

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_H_
