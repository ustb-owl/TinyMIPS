#ifndef TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_
#define TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_

#include <variant>
#include <optional>
#include <map>
#include <unordered_map>
#include <vector>
#include <unordered_set>
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

  VarAllocationPass() { set_cur_var_id(nullptr); }

  bool Run(FuncInfo &func) override;

  void RunOn(BinaryTAC &tac) override;
  void RunOn(UnaryTAC &tac) override;
  void RunOn(LoadTAC &tac) override;
  void RunOn(StoreTAC &tac) override;
  void RunOn(JumpTAC &tac) override;
  void RunOn(BranchTAC &tac) override;
  void RunOn(CallTAC &tac) override;
  void RunOn(ReturnTAC &tac) override;
  void RunOn(AssignTAC &tac) override;
  void RunOn(VarRefTAC &tac) override;
  void RunOn(DataTAC &tac) override;
  void RunOn(LabelTAC &tac) override;
  void RunOn(ArgGetTAC &tac) override;
  void RunOn(NumberTAC &tac) override;

  // add available register to allocator
  void AddAvailableRegister(TinyMIPSReg reg) { avail_reg_.insert(reg); }

  // get allocated position of local variables
  const std::optional<VarPos> GetPosition(const TACPtr &var) const {
    auto it = var_pos_.find(var);
    if (it != var_pos_.end()) {
      return it->second;
    }
    else {
      return {};
    }
  }

  // get position of function arguments (temporary variable)
  const std::optional<std::size_t> GetArgPosition(const TACPtr &var) const {
    auto it = arg_pos_.find(var);
    if (it != arg_pos_.end()) {
      return it->second;
    }
    else {
      return {};
    }
  }

  // size of local area in stack frame
  std::size_t local_area_size() const { return local_area_size_; }
  // size of argument area in stack frame
  std::size_t max_arg_count() const { return max_arg_count_; }

 private:
  struct LiveInterval {
    std::size_t start_pos;
    std::size_t end_pos;
    bool can_alloc_reg;
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

  void Reset();
  void LinearScanAlloc();
  void ExpireOldIntervals(IntervalEndMap &active, const LiveInterval *i);
  void SpillAtInterval(IntervalEndMap &active, const LiveInterval *i,
                       const TACPtr &var);
  std::size_t GetNewSlot();

  // live interval of variables
  std::unordered_map<TACPtr, LiveInterval> live_intervals_;
  // argument info of variables
  std::unordered_map<TACPtr, std::size_t> arg_pos_;
  // allocated position of all variables
  std::unordered_map<TACPtr, VarPos> var_pos_;
  // all free registers
  std::vector<TinyMIPSReg> free_reg_;
  // all available registers
  std::unordered_set<TinyMIPSReg> avail_reg_;
  // occupied slot in spill area
  std::unordered_set<std::size_t> occup_slot_;
  // current position (used for live interval)
  std::size_t cur_pos_;
  // local area size
  std::size_t local_area_size_;
  // max argument count
  std::size_t max_arg_count_;
};

}  // namespace tinylang::back::tac

#endif  // TINYMIPS_BACK_TAC_CODEGEN_VARALLOC_H_
