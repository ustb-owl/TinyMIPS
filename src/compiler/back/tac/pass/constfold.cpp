#include <cassert>
#include <cstdint>

#include "back/tac/optimizer.h"

using namespace tinylang::back::tac;

namespace {

inline unsigned int DoCalc(BinaryOp op, unsigned int lhs,
                           unsigned int rhs) {
  int s_lhs = lhs, s_rhs = rhs;
  switch (op) {
    case BinaryOp::Add: return lhs + rhs;
    case BinaryOp::Sub: return lhs - rhs;
    case BinaryOp::Mul: return s_lhs * s_rhs;
    case BinaryOp::UMul: return lhs * rhs;
    case BinaryOp::Div: return s_lhs / s_rhs;
    case BinaryOp::UDiv: return lhs / rhs;
    case BinaryOp::Mod: return s_lhs % s_rhs;
    case BinaryOp::UMod: return lhs % rhs;
    case BinaryOp::Equal: return lhs == rhs;
    case BinaryOp::NotEqual: return lhs != rhs;
    case BinaryOp::Less: return s_lhs < s_rhs;
    case BinaryOp::ULess: return lhs < rhs;
    case BinaryOp::LessEq: return s_lhs <= s_rhs;
    case BinaryOp::ULessEq: return lhs <= rhs;
    case BinaryOp::Great: return s_lhs > s_rhs;
    case BinaryOp::UGreat: return lhs > rhs;
    case BinaryOp::GreatEq: return s_lhs >= s_rhs;
    case BinaryOp::UGreatEq: return lhs >= rhs;
    case BinaryOp::LogicAnd: return lhs && rhs;
    case BinaryOp::LogicOr: return lhs || rhs;
    case BinaryOp::And: return lhs & rhs;
    case BinaryOp::Or: return lhs | rhs;
    case BinaryOp::Xor: return lhs ^ rhs;
    case BinaryOp::Shl: return lhs << rhs;
    case BinaryOp::AShr: return s_lhs >> s_rhs;
    case BinaryOp::LShr: return lhs >> rhs;
    default: assert(false); return 0;
  }
}

inline unsigned int DoCalc(UnaryOp op, unsigned int opr) {
  switch (op) {
    case UnaryOp::Negate: return -opr;
    case UnaryOp::LogicNot: return !opr;
    case UnaryOp::Not: return ~opr;
    case UnaryOp::SExt: return static_cast<std::int8_t>(opr);
    case UnaryOp::ZExt: return opr;
    case UnaryOp::Trunc: return opr & 0xff;
    default: assert(false); return 0;
  }
}

// constant folding on TAC IR
class ConstFoldPass : public PassInterface {
 public:
  ConstFoldPass() {}

  bool Run(FuncInfo &func) override {
    bool changed = false;
    for (auto &&tac : func.irs) {
      auto new_tac = DoFolding(tac);
      if (new_tac) {
        tac = std::move(new_tac);
        if (!changed) changed = true;
      }
    }
    return changed;
  }

 private:
  TACPtr DoFolding(const TACPtr &tac) {
    if (tac->IsConst()) {
      auto bin = tac->GetBinaryOp();
      auto una = tac->GetUnaryOp();
      if (bin) {
        // get lhs & rhs
        auto lhs = tac->GetOperand1()->GetValue();
        auto rhs = tac->GetOperand2()->GetValue();
        assert(lhs && rhs);
        // do calculation
        auto ans = DoCalc(*bin, *lhs, *rhs);
        // create new TAC
        auto dest = tac->GetDest();
        auto val = std::make_shared<NumberTAC>(ans);
        return std::make_shared<AssignTAC>(std::move(val), std::move(dest));
      }
      else if (una) {
        // get operand
        auto opr = tac->GetOperand1()->GetValue();
        assert(opr);
        // do calculation
        auto ans = DoCalc(*una, *opr);
        // create new TAC
        auto dest = tac->GetDest();
        auto val = std::make_shared<NumberTAC>(ans);
        return std::make_shared<AssignTAC>(std::move(val), std::move(dest));
      }
    }
    return nullptr;
  }
};

}  // namespace

// register current pass
static RegisterPass<ConstFoldPass> const_fold("const_fold", 1);
