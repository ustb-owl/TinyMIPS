#include <unordered_map>
#include <cstddef>

#include "back/tac/optimizer.h"

using namespace tinylang::back::tac;

#define ADD_DEST(tac, field, must_remove)                       \
  do {                                                          \
    auto it = vars_.find(tac.field());                          \
    if (it == vars_.end()) {                                    \
      auto ret = vars_.insert({tac.field(), 0});                \
      insts_.insert({&tac, {&ret.first->second, must_remove}}); \
    }                                                           \
    else {                                                      \
      insts_.insert({&tac, {&it->second, must_remove}});        \
    }                                                           \
  } while (0)

#define CHECK_REF_COUNT(tac, field)      \
  do {                                   \
    auto it = vars_.find(tac.field());   \
    if (it != vars_.end()) ++it->second; \
  } while (0)

namespace {

// dead code elimination
class DeadCodeEliminationPass : public PassBase {
 public:
  DeadCodeEliminationPass() {}

  bool Run(FuncInfo &func) override {
    vars_.clear();
    insts_.clear();
    // find and mark all eligible TACs
    for (auto &&i : func.irs) i->RunPass(*this);
    // check & remove IRs
    bool changed = false;
    for (auto it = func.irs.begin(); it != func.irs.end();) {
      // find in info map
      auto inst_it = insts_.find(it->get());
      if (inst_it != insts_.end()) {
        const auto &info = inst_it->second;
        // check if can be removed
        if (!*info.ref_count || info.must_remove) {
          // remove
          it = func.irs.erase(it);
          if (!changed) changed = true;
          continue;
        }
      }
      ++it;
    }
    // check & remove local variables
    for (auto it = func.vars.begin(); it != func.vars.end();) {
      // find in vars
      auto var_it = vars_.find(*it);
      if (var_it != vars_.end() && !var_it->second) {
        // remove
        it = func.vars.erase(it);
        if (!changed) changed = true;
        continue;
      }
      ++it;
    }
    return changed;
  }

  void RunOn(BinaryTAC &tac) override {
    ADD_DEST(tac, dest, false);
    CHECK_REF_COUNT(tac, lhs);
    CHECK_REF_COUNT(tac, rhs);
  }

  void RunOn(UnaryTAC &tac) override {
    ADD_DEST(tac, dest, false);
    CHECK_REF_COUNT(tac, opr);
  }

  void RunOn(LoadTAC &tac) override {
    CHECK_REF_COUNT(tac, addr);
  }

  void RunOn(StoreTAC &tac) override {
    CHECK_REF_COUNT(tac, value);
    CHECK_REF_COUNT(tac, addr);
  }

  void RunOn(BranchTAC &tac) override {
    CHECK_REF_COUNT(tac, cond);
  }

  void RunOn(CallTAC &tac) override {
    for (const auto &i : tac.args()) {
      auto it = vars_.find(i);
      if (it != vars_.end()) ++it->second;
    }
  }

  void RunOn(ReturnTAC &tac) override {
    CHECK_REF_COUNT(tac, value);
  }

  void RunOn(AssignTAC &tac) override {
    auto must_remove = tac.var() == tac.value();
    ADD_DEST(tac, var, must_remove);
    CHECK_REF_COUNT(tac, value);
  }

 private:
  struct InstInfo {
    std::size_t *ref_count;
    bool must_remove;
  };

  std::unordered_map<TACPtr, std::size_t> vars_;
  std::unordered_map<TACBase *, InstInfo> insts_;
};

}  // namespace

// register current pass
static RegisterPass<DeadCodeEliminationPass> dce("dead_code_elim", 1);
