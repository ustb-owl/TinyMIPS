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

// make a new TAC IR pointer by existing TAC IR
inline IRPtr MakeTAC(const TACPtr &tac) {
  return std::make_shared<TACIR>(tac);
}

// cast IR to TAC IR
inline TACPtr TACCast(const IRPtr &ir) {
  return IRCast<TACPtr>(ir);
}

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_H_
