#ifndef TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_
#define TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_

#include <variant>
#include <functional>
#include <set>
#include <map>
#include <unordered_map>
#include <vector>
#include <cstddef>
#include <cassert>

#include "back/tac/optimizer.h"
#include "back/tac/codegen/tinymips.h"

namespace tinylang::back::tac {

// allocate variables to registers or slots on stack
// using linear scan register allocation
// reference: M. Poletto, V. Sarkar, Linear Scan Register Allocation
class VarAllocationPass : public PassBase {
 public:
  // offset relative to local variable area or register
  using VarPos = std::variant<std::size_t, TinyMIPSReg>;
  // set of all saved registers
  using SavedSet = std::set<TinyMIPSReg, std::greater<TinyMIPSReg>>;

  VarAllocationPass() { set_cur_var_id(nullptr); }

  bool Run(FuncInfo &func) override;

  void RunOn(BinaryTAC &tac) override;
  void RunOn(UnaryTAC &tac) override;
  void RunOn(LoadTAC &tac) override;
  void RunOn(StoreTAC &tac) override;
  void RunOn(ArgSetTAC &tac) override;
  void RunOn(BranchTAC &tac) override;
  void RunOn(CallTAC &tac) override;
  void RunOn(ReturnTAC &tac) override;
  void RunOn(AssignTAC &tac) override;

  // get allocated position of local variables
  const VarPos &GetPosition(const TACPtr &var) const {
    auto it = var_pos_.find(var);
    assert(it != var_pos_.end());
    return it->second;
  }

  // size of save area in stack frame
  std::size_t save_area_size() const { return saved_reg_.size() * 4; }
  // return the set of all saved registers
  const SavedSet &saved_reg() const { return saved_reg_; }
  // size of local area in stack frame
  std::size_t local_area_size() const { return local_slot_count_ * 4; }
  // size of argument area in stack frame
  std::size_t arg_area_size() const { return max_arg_count_ * 4; }

 private:
  struct LiveInterval {
    std::size_t start_pos;
    std::size_t end_pos;
    bool can_alloc_reg;
    bool must_preserve;
  };

  struct LiveIntervalStartCmp {
    bool operator()(const LiveInterval *lhs,
                    const LiveInterval *rhs) const {
      return lhs->start_pos < rhs->start_pos;
    }
  };

  struct LiveIntervalEndCmp {
    bool operator()(const LiveInterval *lhs,
                    const LiveInterval *rhs) const {
      return lhs->end_pos < rhs->end_pos;
    }
  };

  using IntervalStartMap =
      std::multimap<const LiveInterval *, TACPtr, LiveIntervalStartCmp>;
  using IntervalEndMap =
      std::multimap<const LiveInterval *, TACPtr, LiveIntervalEndCmp>;

  // reset internal state
  void Reset();
  // initialize free registers
  void InitFreeReg(bool is_preserved);
  // log live interval info of specific variable
  void LogLiveInterval(const TACPtr &var);
  // run variable allocation
  void RunVarAlloc();
  // run LSRA
  void LinearScanAlloc(const IntervalStartMap &start_map, bool save);
  // expire old allocated variables
  void ExpireOldIntervals(IntervalEndMap &active, const LiveInterval *i);
  // spill specific variable
  void SpillAtInterval(IntervalEndMap &active, const LiveInterval *i,
                       const TACPtr &var);
  // return a new slot index in local area
  std::size_t GetNewSlot();

  // live interval of variables
  std::unordered_map<TACPtr, LiveInterval> live_intervals_;
  // allocated position of all variables
  std::unordered_map<TACPtr, VarPos> var_pos_;
  // all free registers
  std::vector<TinyMIPSReg> free_reg_;
  // current position (used for live interval analysis)
  std::size_t cur_pos_;
  // position of last function call (used for live interval analysis)
  std::size_t last_call_pos_;
  // set of all saved registers
  SavedSet saved_reg_;
  // slot count in local area
  std::size_t local_slot_count_;
  // max argument count
  std::size_t max_arg_count_;
};

}  // namespace tinylang::back::tac

#endif  // TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_
