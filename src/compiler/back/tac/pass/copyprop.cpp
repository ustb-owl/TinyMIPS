#include <unordered_map>
#include <cstddef>

#include "back/tac/optimizer.h"

using namespace tinylang::back::tac;

#define ADD_NEW_INFO(tac, field)                                \
  do {                                                          \
    auto it = vars_.find(tac.field());                          \
    if (it == vars_.end()) {                                    \
      vars_.insert({tac.field(), {0, &tac, nullptr, nullptr}}); \
    }                                                           \
  } while (0)

#define CHECK_REF_COUNT(tac, field)    \
  do {                                 \
    auto it = vars_.find(tac.field()); \
    if (it != vars_.end()) {           \
      ++it->second.ref_count;          \
    }                                  \
  } while (0)

namespace {

/*
  copy propagation on TAC IR, handle with TACs like:
    $0 = add $1, $2
    $3 = $0
  which variable '$0' has only been used once
*/
class CopyPropPass : public PassBase {
 public:
  CopyPropPass() {}

  bool Run(FuncInfo &func) override {
    vars_.clear();
    cur_info_ = nullptr;
    // find and mark all eligible TACs
    for (auto &&i : func.irs) i->RunPass(*this);
    // modify TACs
    bool changed = false;
    for (const auto &i : vars_) {
      const auto &info = i.second;
      if (info.ref_count == 1 && info.assign_tac) {
        cur_info_ = &info;
        info.expr_tac->RunPass(*this);
        info.assign_tac->RunPass(*this);
        if (!changed) changed = true;
      }
    }
    return changed;
  }

  void RunOn(BinaryTAC &tac) override {
    if (cur_info_) {
      tac.set_dest(cur_info_->var_ref);
    }
    else {
      ADD_NEW_INFO(tac, dest);
      CHECK_REF_COUNT(tac, lhs);
      CHECK_REF_COUNT(tac, rhs);
    }
  }

  void RunOn(UnaryTAC &tac) override {
    if (cur_info_) {
      tac.set_dest(cur_info_->var_ref);
    }
    else {
      ADD_NEW_INFO(tac, dest);
      CHECK_REF_COUNT(tac, opr);
    }
  }

  void RunOn(LoadTAC &tac) override {
    if (cur_info_) {
      tac.set_dest(cur_info_->var_ref);
    }
    else {
      ADD_NEW_INFO(tac, dest);
      CHECK_REF_COUNT(tac, addr);
    }
  }

  void RunOn(StoreTAC &tac) override {
    CHECK_REF_COUNT(tac, value);
    CHECK_REF_COUNT(tac, addr);
  }

  void RunOn(BranchTAC &tac) override {
    CHECK_REF_COUNT(tac, cond);
  }

  void RunOn(CallTAC &tac) override {
    if (cur_info_) {
      tac.set_dest(cur_info_->var_ref);
    }
    else {
      ADD_NEW_INFO(tac, dest);
      for (const auto &i : tac.args()) {
        auto it = vars_.find(i);
        if (it != vars_.end()) ++it->second.ref_count;
      }
    }
  }

  void RunOn(ReturnTAC &tac) override {
    CHECK_REF_COUNT(tac, value);
  }

  void RunOn(AssignTAC &tac) override {
    if (cur_info_) {
      tac.set_value(cur_info_->var_ref);
    }
    else {
      auto it = vars_.find(tac.value());
      if (it != vars_.end()) {
        ++it->second.ref_count;
        it->second.assign_tac = &tac;
        it->second.var_ref = tac.var();
      }
    }
  }

 private:
  struct ExprInfo {
    std::size_t ref_count;
    TACBase *expr_tac;
    TACBase *assign_tac;
    TACPtr var_ref;
  };

  std::unordered_map<TACPtr, ExprInfo> vars_;
  const ExprInfo *cur_info_;
};

}  // namespace

// register current pass
static RegisterPass<CopyPropPass> copy_prop("copy_prop", 1);
