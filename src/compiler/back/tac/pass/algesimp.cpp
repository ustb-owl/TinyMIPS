#include "back/tac/optimizer.h"
#include "define/type.h"

using namespace tinylang::back::tac;
using namespace tinylang::define;

namespace {

// algebraic simplification
class AlgebraicSimplificationPass : public PassBase {
 public:
  AlgebraicSimplificationPass() {}

  bool Run(FuncInfo &func) override {
    bool changed = false;
    for (auto &&i : func.irs) {
      replace_ = nullptr;
      i->RunPass(*this);
      if (replace_) {
        i = std::move(replace_);
        if (!changed) changed = true;
      }
    }
    return changed;
  }

  void RunOn(BinaryTAC &tac) override {
    if (tac.lhs()->IsConst() && tac.rhs()->IsConst()) return;
    if (tac.lhs()->IsConst()) {
      tac.lhs()->RunPass(*this);
      SimplifyRHS(tac.op(), tac.rhs(), tac.dest());
    }
    else if (tac.rhs()->IsConst()) {
      tac.rhs()->RunPass(*this);
      SimplifyLHS(tac.op(), tac.lhs(), tac.dest());
    }
    else if (tac.lhs() == tac.rhs()) {
      SimplifyEq(tac.op(), tac.lhs(), tac.dest());
    }
  }

  void RunOn(NumberTAC &tac) override {
    last_num_ = tac.num();
  }

 private:
  // simplify when rhs is constant
  void SimplifyLHS(BinaryOp op, const TACPtr &lhs, const TACPtr &dest) {
    switch (op) {
      // x + 0 = x, x - 0 = x
      case BinaryOp::Add: case BinaryOp::Sub: {
        if (!last_num_) MakeAssign(lhs, dest);
        break;
      }
      // x * 0 = 0, x * 1 = x
      case BinaryOp::Mul: case BinaryOp::UMul: {
        if (!last_num_) {
          MakeAssignZero(dest);
        }
        else if (last_num_ == 1) {
          MakeAssign(lhs, dest);
        }
        break;
      }
      // x / 1 = x, x / 0 = error
      case BinaryOp::Div: case BinaryOp::UDiv: {
        if (last_num_ == 1) MakeAssign(lhs, dest);
        break;
      }
      // x % 1 = 0, x % 0 = error
      case BinaryOp::Mod: case BinaryOp::UMod: {
        if (last_num_ == 1) MakeAssignZero(dest);
        break;
      }
      // (signed) x < S_MIN = 0, (unsigned) x < 0 = 0
      case BinaryOp::Less: case BinaryOp::ULess: {
        auto val_min = op == BinaryOp::Less ? 0x80000000 : 0;
        if (last_num_ == val_min) MakeAssignZero(dest);
        break;
      }
      // (signed) x <= S_MAX = 1, (unsigned) x <= U_MAX = 1
      case BinaryOp::LessEq: case BinaryOp::ULessEq: {
        auto val_max = op == BinaryOp::LessEq ? 0x7fffffff : 0xffffffff;
        if (last_num_ == val_max) MakeAssignOne(dest);
        break;
      }
      // (signed) x > S_MAX = 0, (unsigned) x > U_MAX = 0
      case BinaryOp::Great: case BinaryOp::UGreat: {
        auto val_max = op == BinaryOp::Great ? 0x7fffffff : 0xffffffff;
        if (last_num_ == val_max) MakeAssignZero(dest);
        break;
      }
      // (signed) x >= S_MIN = 1, (unsigned) x >= 0 = 1
      case BinaryOp::GreatEq: case BinaryOp::UGreatEq: {
        auto val_min = op == BinaryOp::GreatEq ? 0x80000000 : 0;
        if (last_num_ == val_min) MakeAssignOne(dest);
        break;
      }
      // x && 0 = 0, x && !0 = x
      case BinaryOp::LogicAnd: {
        if (!last_num_) {
          MakeAssignZero(dest);
        }
        else {
          MakeAssign(lhs, dest);
        }
        break;
      }
      // x || 0 = x, x || !0 = 1
      case BinaryOp::LogicOr: {
        if (!last_num_) {
          MakeAssign(lhs, dest);
        }
        else {
          MakeAssignOne(dest);
        }
        break;
      }
      // x & 0 = 0, x & U_MAX = x
      case BinaryOp::And: {
        if (!last_num_) {
          MakeAssignZero(dest);
        }
        else if (last_num_ == 0xffffffff) {
          MakeAssign(lhs, dest);
        }
        break;
      }
      // x | 0 = x, x & U_MAX = U_MAX
      case BinaryOp::Or: {
        if (!last_num_) {
          MakeAssign(lhs, dest);
        }
        else if (last_num_ == 0xffffffff) {
          MakeAssign(std::make_shared<NumberTAC>(0xffffffff), dest);
        }
        break;
      }
      // x ^ 0 = x
      // (signed) x >> 0 = x
      case BinaryOp::Xor: case BinaryOp::AShr: {
        if (!last_num_) MakeAssign(lhs, dest);
        break;
      }
      // x << 0 = x, x << (>=WORD_LEN) = 0
      // (unsigned) x >> 0 = x, x >> (>=WORD_LEN) = 0
      case BinaryOp::Shl: case BinaryOp::LShr: {
        if (!last_num_) {
          MakeAssign(lhs, dest);
        }
        else if (last_num_ >= kTypeSizeWordLength * 8) {
          MakeAssignZero(dest);
        }
        break;
      }
      default:;
    }
  }

  // simplify when lhs is constant
  void SimplifyRHS(BinaryOp op, const TACPtr &rhs, const TACPtr &dest) {
    switch (op) {
      // use exchange law
      case BinaryOp::Add: case BinaryOp::Mul: case BinaryOp::UMul:
      case BinaryOp::Equal: case BinaryOp::NotEqual:
      case BinaryOp::LogicAnd: case BinaryOp::LogicOr:
      case BinaryOp::And: case BinaryOp::Or: case BinaryOp::Xor: {
        SimplifyLHS(op, rhs, dest);
        break;
      }
      // 0 / x = 0, 0 % x = 0
      // 0 << x = 0, (signed/unsigned) 0 >> x = 0
      case BinaryOp::Div: case BinaryOp::UDiv:
      case BinaryOp::Mod: case BinaryOp::UMod:
      case BinaryOp::Shl: case BinaryOp::AShr: case BinaryOp::LShr: {
        if (!last_num_) MakeAssignZero(dest);
        break;
      }
      // (signed) S_MAX < x = 0, (unsigned) U_MAX < x = 0
      case BinaryOp::Less: case BinaryOp::ULess: {
        auto val_max = op == BinaryOp::Less ? 0x7fffffff : 0xffffffff;
        if (last_num_ == val_max) MakeAssignZero(dest);
        break;
      }
      // (signed) S_MIN <= x = 1, (unsigned) 0 <= x = 1
      case BinaryOp::LessEq: case BinaryOp::ULessEq: {
        auto val_min = op == BinaryOp::LessEq ? 0x80000000 : 0;
        if (last_num_ == val_min) MakeAssignOne(dest);
        break;
      }
      // (signed) S_MIN > x = 0, (unsigned) 0 > x = 0
      case BinaryOp::Great: case BinaryOp::UGreat: {
        auto val_min = op == BinaryOp::Great ? 0x80000000 : 0;
        if (last_num_ == val_min) MakeAssignZero(dest);
        break;
      }
      // (signed) S_MAX >= x = 1, (unsigned) U_MAX >= x = 1
      case BinaryOp::GreatEq: case BinaryOp::UGreatEq: {
        auto val_max = op == BinaryOp::GreatEq ? 0x7fffffff : 0xffffffff;
        if (last_num_ == val_max) MakeAssignOne(dest);
        break;
      }
      default:;
    }
  }

  // simplify when lhs == rhs
  void SimplifyEq(BinaryOp op, const TACPtr &lhs, const TACPtr &dest) {
    switch (op) {
      // x - x = 0, x % x = 0, x != x = 0
      // (signed/unsigned) x < x = 0, x > x = 0
      // x ^ x = 0
      case BinaryOp::Sub: case BinaryOp::Mod: case BinaryOp::UMod:
      case BinaryOp::NotEqual: case BinaryOp::Less: case BinaryOp::ULess:
      case BinaryOp::Great: case BinaryOp::UGreat: case BinaryOp::Xor: {
        MakeAssignZero(dest);
        break;
      }
      // x / x = 1, x == x = 1
      // (signed/unsigned) x <= x = 1, x >= x = 1
      case BinaryOp::Div: case BinaryOp::UDiv: case BinaryOp::Equal:
      case BinaryOp::LessEq: case BinaryOp::ULessEq:
      case BinaryOp::GreatEq: case BinaryOp::UGreatEq: {
        MakeAssignOne(dest);
        break;
      }
      // x && x = x, x || x = x, x & x = x, x | x = x
      case BinaryOp::LogicAnd: case BinaryOp::LogicOr:
      case BinaryOp::And: case BinaryOp::Or: {
        MakeAssign(lhs, dest);
        break;
      }
      default:;
    }
  }

  void MakeAssign(const TACPtr &value, const TACPtr &dest) {
    replace_ = std::make_shared<AssignTAC>(value, dest);
  }

  void MakeAssignZero(const TACPtr &dest) {
    auto zero = std::make_shared<NumberTAC>(0);
    replace_ = std::make_shared<AssignTAC>(std::move(zero), dest);
  }

  void MakeAssignOne(const TACPtr &dest) {
    auto one = std::make_shared<NumberTAC>(1);
    replace_ = std::make_shared<AssignTAC>(std::move(one), dest);
  }

  TACPtr replace_;
  unsigned int last_num_;
};

}  // namespace

// register current pass
static RegisterPass<AlgebraicSimplificationPass> alge_simp("alge_simp", 1);
