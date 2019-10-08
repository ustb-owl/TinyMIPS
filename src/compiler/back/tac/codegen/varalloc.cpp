#include "back/tac/codegen/varalloc.h"

using namespace tinylang::back::tac;

#define CHECK_FIELD(tac, field)                                          \
  do {                                                                   \
    if (IsGlobalVar(tac.field())) break;                                 \
    auto it = live_intervals_.find(tac.field());                         \
    if (it != live_intervals_.end()) {                                   \
      it->second.end_pos = cur_pos_;                                     \
    }                                                                    \
    else {                                                               \
      live_intervals_.insert({tac.field(), {cur_pos_, cur_pos_, true}}); \
    }                                                                    \
  } while (0)

namespace {

using VarPos = VarAllocationPass::VarPos;

}  // namespace

void VarAllocationPass::Reset() {
  live_intervals_.clear();
  arg_pos_.clear();
  var_pos_.clear();
  free_reg_.clear();
  for (const auto &i : avail_reg_) free_reg_.push_back(i);
  occup_slot_.clear();
  cur_pos_ = 0;
  local_slot_count_ = 0;
  max_arg_count_ = 0;
}

void VarAllocationPass::LinearScanAlloc() {
  IntervalStartMap start_map;
  // check variables that cannot be allocated to registers & build map
  for (const auto &i : live_intervals_) {
    if (!i.second.can_alloc_reg) {
      // allocate a new slot and remove
      var_pos_.insert({i.first, GetNewSlot()});
    }
    else {
      // build start map
      start_map.insert({&i.second, i.first});
    }
  }
  // do allocation
  IntervalEndMap active;
  for (const auto &i : start_map) {
    ExpireOldIntervals(active, i.first);
    if (active.size() == avail_reg_.size()) {
      // need to spill
      SpillAtInterval(active, i.first, i.second);
    }
    else {
      // allocate to a free register
      var_pos_[i.second] = free_reg_.back();
      free_reg_.pop_back();
      // add to active
      active.insert({i.first, i.second});
    }
  }
}

void VarAllocationPass::ExpireOldIntervals(IntervalEndMap &active,
                                           const LiveInterval *i) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->first->end_pos >= i->start_pos) return;
    // free current element's register/slot
    const auto &pos = var_pos_[it->second];
    if (auto reg = std::get_if<TinyMIPSReg>(&pos)) {
      free_reg_.push_back(*reg);
    }
    else {
      auto slot = std::get_if<std::size_t>(&pos);
      occup_slot_.erase(*slot);
    }
    // remove current element from active
    it = active.erase(it);
  }
}

void VarAllocationPass::SpillAtInterval(IntervalEndMap &active,
                                        const LiveInterval *i,
                                        const TACPtr &var) {
  // get last element of active
  auto spill = active.end();
  --spill;
  // check if can allocate register to var
  if (spill->first->end_pos > i->end_pos) {
    // allocate register of spilled variable to i
    assert(std::holds_alternative<TinyMIPSReg>(var_pos_[spill->second]));
    var_pos_[var] = var_pos_[spill->second];
    // allocate a slot to spilled variable
    var_pos_[spill->second] = GetNewSlot();
    // remove spill from active
    active.erase(spill);
    // add i to active
    active.insert({i, var});
  }
  else {
    // just allocate a new slot
    var_pos_[var] = GetNewSlot();
  }
}

std::size_t VarAllocationPass::GetNewSlot() {
  for (std::size_t slot_id = 0;; ++slot_id) {
    if (occup_slot_.find(slot_id) == occup_slot_.end()) {
      occup_slot_.insert(slot_id);
      if (slot_id + 1 > local_slot_count_) local_slot_count_ = slot_id + 1;
      return slot_id;
    }
  }
}

bool VarAllocationPass::Run(FuncInfo &func) {
  Reset();
  // get live intervals & argument info
  for (const auto &i : func.irs) {
    i->RunPass(*this);
    ++cur_pos_;
  }
  // do register allocation
  LinearScanAlloc();
  return false;
}

void VarAllocationPass::RunOn(BinaryTAC &tac) {
  CHECK_FIELD(tac, dest);
  CHECK_FIELD(tac, lhs);
  CHECK_FIELD(tac, rhs);
}

void VarAllocationPass::RunOn(UnaryTAC &tac) {
  CHECK_FIELD(tac, dest);
  if (tac.op() == UnaryOp::AddressOf) {
    live_intervals_[tac.opr()].can_alloc_reg = false;
  }
  else {
    CHECK_FIELD(tac, opr);
  }
}

void VarAllocationPass::RunOn(LoadTAC &tac) {
  CHECK_FIELD(tac, addr);
  CHECK_FIELD(tac, dest);
}

void VarAllocationPass::RunOn(StoreTAC &tac) {
  CHECK_FIELD(tac, value);
  CHECK_FIELD(tac, addr);
}

void VarAllocationPass::RunOn(BranchTAC &tac) {
  CHECK_FIELD(tac, cond);
}

void VarAllocationPass::RunOn(CallTAC &tac) {
  CHECK_FIELD(tac, dest);
  // get argument position info
  std::size_t pos = 0;
  for (const auto &i : tac.args()) {
    live_intervals_.erase(i);
    arg_pos_.insert({i, pos++});
  }
  if (pos > max_arg_count_) max_arg_count_ = pos;
}

void VarAllocationPass::RunOn(ReturnTAC &tac) {
  CHECK_FIELD(tac, value);
}

void VarAllocationPass::RunOn(AssignTAC &tac) {
  CHECK_FIELD(tac, value);
  CHECK_FIELD(tac, var);
}
