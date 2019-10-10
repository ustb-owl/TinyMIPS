#include <unordered_map>

#include "back/tac/optimizer.h"

using namespace tinylang::back::tac;

#define CHECK_FIELD(tac, field)        \
  do {                                 \
    auto it = vars_.find(tac.field()); \
    if (it != vars_.end()) {           \
      tac.set_##field(it->second);     \
      if (!changed_) changed_ = true;  \
    }                                  \
  } while (0)

namespace {

// value propagation (including constant propagation)
class ValuePropPass : public PassBase {
 public:
  ValuePropPass() {}

  bool Run(FuncInfo &func) override {
    changed_ = false;
    vars_.clear();
    for (auto &&i : func.irs) i->RunPass(*this);
    return changed_;
  }

  void RunOn(BinaryTAC &tac) override {
    CHECK_FIELD(tac, lhs);
    CHECK_FIELD(tac, rhs);
  }

  void RunOn(UnaryTAC &tac) override {
    CHECK_FIELD(tac, opr);
  }

  void RunOn(LoadTAC &tac) override {
    CHECK_FIELD(tac, addr);
  }

  void RunOn(StoreTAC &tac) override {
    CHECK_FIELD(tac, value);
    CHECK_FIELD(tac, addr);
  }

  void RunOn(ArgSetTAC &tac) override {
    CHECK_FIELD(tac, value);
  }

  void RunOn(BranchTAC &tac) override {
    CHECK_FIELD(tac, cond);
  }

  void RunOn(ReturnTAC &tac) override {
    CHECK_FIELD(tac, value);
  }

  void RunOn(AssignTAC &tac) override {
    CHECK_FIELD(tac, value);
    is_last_var_ref_ = is_last_num_ = false;
    tac.value()->RunPass(*this);
    if (is_last_var_ref_ || is_last_num_) {
      vars_[tac.var()] = tac.value();
    }
  }

  void RunOn(VarRefTAC &tac) override {
    is_last_var_ref_ = true;
  }

  void RunOn(LabelTAC &tac) override {
    vars_.clear();
  }

  void RunOn(NumberTAC &tac) override {
    is_last_num_ = true;
  }

 private:
  // table for variable's value
  std::unordered_map<TACPtr, TACPtr> vars_;
  // set to true if function info was changed
  bool changed_;
  bool is_last_var_ref_, is_last_num_;
};

}  // namespace

// register current pass
static RegisterPass<ValuePropPass> value_prop("value_prop", 1);
