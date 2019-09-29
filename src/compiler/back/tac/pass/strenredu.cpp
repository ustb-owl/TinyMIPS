#include <bitset>
#include <cmath>

#include "back/tac/optimizer.h"

using namespace tinylang::back::tac;

namespace {

// strength reduction
class StrengthReductionPass : public PassBase {
 public:
  StrengthReductionPass() {}

  bool Run(FuncInfo &func) override {
    bool changed = false;
    for (auto it = func.irs.begin(); it != func.irs.end(); ++it) {
      replace_.clear();
      (*it)->RunPass(*this);
      if (!replace_.empty()) {
        // replace current TAC
        for (std::size_t i = 0; i < replace_.size(); ++i) {
          if (!i) {
            *it = std::move(replace_[i]);
          }
          else {
            ++it;
            it = func.irs.insert(it, std::move(replace_[i]));
          }
        }
        if (!changed) changed = true;
      }
    }
    return changed;
  }

  void RunOn(BinaryTAC &tac) override {
    if (tac.lhs()->IsConst() && tac.rhs()->IsConst()) return;
    if (tac.lhs()->IsConst()) {
      tac.lhs()->RunPass(*this);
      ReduceRHS(tac.op(), tac.rhs(), tac.dest());
    }
    else if (tac.rhs()->IsConst()) {
      tac.rhs()->RunPass(*this);
      ReduceLHS(tac.op(), tac.lhs(), tac.dest());
    }
  }

  void RunOn(NumberTAC &tac) override {
    last_num_ = tac.num();
  }

 private:
  // do reduction when rhs is constant
  void ReduceLHS(BinaryOp op, const TACPtr &lhs, const TACPtr &dest) {
    switch (op) {
      case BinaryOp::Mul: case BinaryOp::UMul: {
        // TODO： dynamic programming
        break;
      }
      case BinaryOp::Div: {
        int num = std::abs(static_cast<int>(last_num_));
        if (num == 2) {
          auto var = NewTempVar();
          AddBinaryTAC(BinaryOp::LShr, lhs, 31, var);
          AddBinaryTAC(BinaryOp::Add, var, lhs, var);
          AddBinaryTAC(BinaryOp::AShr, var, 1, dest);
          if (last_num_ & 0x80000000) {
            AddUnaryTAC(UnaryOp::Negate, dest, dest);
          }
        }
        else if (last_num_ == 0x80000000) {
          AddBinaryTAC(BinaryOp::LShr, lhs, 31, dest);
        }
        else if (num > 1 && (num & (num - 1)) == 0) {
          auto var = NewTempVar();
          auto count = GetPopCount(num - 1);
          AddBinaryTAC(BinaryOp::AShr, lhs, 31, var);
          AddBinaryTAC(BinaryOp::LShr, var, 32 - count, var);
          AddBinaryTAC(BinaryOp::Add, var, lhs, var);
          AddBinaryTAC(BinaryOp::AShr, var, count, dest);
          if (last_num_ & 0x80000000) {
            AddUnaryTAC(UnaryOp::Negate, dest, dest);
          }
        }
        break;
      }
      // (unsigned) x / (2 ^ n) = x >> n
      case BinaryOp::UDiv: {
        if (last_num_ > 1 && (last_num_ & (last_num_ - 1)) == 0) {
          auto shift = GetPopCount(last_num_ - 1);
          AddBinaryTAC(BinaryOp::LShr, lhs, shift, dest);
        }
        break;
      }
      case BinaryOp::Mod: {
        auto num = std::abs(static_cast<int>(last_num_));
        if (num == 2) {
          auto var = NewTempVar();
          AddBinaryTAC(BinaryOp::LShr, lhs, 31, var);
          AddBinaryTAC(BinaryOp::Add, var, lhs, var);
          AddBinaryTAC(BinaryOp::And, var, -2, var);
          AddBinaryTAC(BinaryOp::Sub, lhs, var, dest);
        }
        else if (last_num_ == 0x80000000) {
          AddBinaryTAC(BinaryOp::And, lhs, last_num_ - 1, dest);
        }
        else if (num > 1 && (num & (num - 1)) == 0) {
          auto var = NewTempVar();
          auto count = GetPopCount(num - 1);
          AddBinaryTAC(BinaryOp::AShr, lhs, 31, var);
          AddBinaryTAC(BinaryOp::LShr, var, 32 - count, var);
          AddBinaryTAC(BinaryOp::Add, var, lhs, var);
          AddBinaryTAC(BinaryOp::And, var, -num, var);
          AddBinaryTAC(BinaryOp::Sub, lhs, var, dest);
        }
        break;
      }
      // x % (2 ^ n) = x & (2 ^ n - 1)
      case BinaryOp::UMod: {
        if (last_num_ > 1 && (last_num_ & (last_num_ - 1)) == 0) {
          AddBinaryTAC(BinaryOp::And, lhs, last_num_ - 1, dest);
        }
      }
      default:;
    }
  }

  // do reduction when lhs is constant
  void ReduceRHS(BinaryOp op, const TACPtr &rhs, const TACPtr &dest) {
    switch (op) {
      case BinaryOp::Mul: case BinaryOp::UMul: {
        ReduceLHS(op, rhs, dest);
        break;
      }
      default:;
    }
  }

  // get population count (count of set bits in 'num')
  std::size_t GetPopCount(unsigned int num) {
    std::bitset<32> bit(num);
    return bit.count();
  }

  void AddBinaryTAC(BinaryOp op, const TACPtr &opr, unsigned int num,
                    const TACPtr &dest) {
    auto num_tac = std::make_shared<NumberTAC>(num);
    AddBinaryTAC(op, opr, std::move(num_tac), dest);
  }

  void AddBinaryTAC(BinaryOp op, const TACPtr &lhs, const TACPtr &rhs,
                    const TACPtr &dest) {
    auto tac = std::make_shared<BinaryTAC>(op, lhs, rhs, dest);
    replace_.push_back(std::move(tac));
  }

  void AddUnaryTAC(UnaryOp op, const TACPtr &opr, const TACPtr &dest) {
    auto tac = std::make_shared<UnaryTAC>(op, opr, dest);
    replace_.push_back(std::move(tac));
  }

  TACPtrList replace_;
  unsigned int last_num_;
};

}  // namespace

// register current pass
static RegisterPass<StrengthReductionPass> stren_redu("stren_reduce", 2);
