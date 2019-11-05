#include "back/tac/codegen/varalloc.h"

using namespace tinylang::back::tac;

namespace {

using VarPos = VarAllocationPass::VarPos;
using Reg = TinyMIPSReg;

}  // namespace

void VarAllocationPass::Reset() {
  live_intervals_.clear();
  var_pos_.clear();
  cur_pos_ = 0;
  last_call_pos_ = 0;
  saved_reg_.clear();
  saved_reg_.insert(Reg::RA);
  saved_reg_.insert(Reg::FP);
  local_slot_count_ = 0;
  max_arg_count_ = 0;
}

void VarAllocationPass::InitFreeReg(bool is_preserved) {
  free_reg_.clear();
  // set range of registers
  Reg begin, end;
  if (is_preserved) {
    begin = Reg::S7;
    end = Reg::S0;
  }
  else {
    free_reg_.push_back(Reg::T9);
    free_reg_.push_back(Reg::T8);
    begin = Reg::T7;
    end = Reg::T0;
  }
  // push to 'free_reg_'
  for (auto r = static_cast<int>(begin); r >= static_cast<int>(end); --r) {
    free_reg_.push_back(static_cast<Reg>(r));
  }
}

void VarAllocationPass::LogLiveInterval(const TACPtr &var) {
  // do not try to allocate register for all global variables
  if (IsGlobalVar(var)) return;
  // get live interval info
  auto it = live_intervals_.find(var);
  if (it != live_intervals_.end()) {
    auto &info = it->second;
    // update end position
    info.end_pos = cur_pos_;
    // check if there are function calls in current interval
    if (last_call_pos_ > info.start_pos && last_call_pos_ < cur_pos_) {
      info.must_preserve = true;
    }
  }
  else {
    // add new live interval info
    live_intervals_.insert({var, {cur_pos_, cur_pos_, true, false}});
  }
}

void VarAllocationPass::RunVarAlloc() {
  IntervalStartMap start_map;
  // build map for all normal variables
  for (const auto &i : live_intervals_) {
    if (!i.second.can_alloc_reg) {
      // allocate a new slot now
      var_pos_.insert({i.first, GetNewSlot()});
    }
    else if (!i.second.must_preserve) {
      // insert to start map
      start_map.insert({&i.second, i.first});
    }
  }
  // run first allocation
  InitFreeReg(false);
  LinearScanAlloc(start_map, false);
  // build map for all preserved variables
  start_map.clear();
  for (const auto &i : live_intervals_) {
    if (i.second.must_preserve) {
      // insert to start map
      start_map.insert({&i.second, i.first});
    }
  }
  // run second allocation
  InitFreeReg(true);
  LinearScanAlloc(start_map, true);
}

void VarAllocationPass::LinearScanAlloc(const IntervalStartMap &start_map,
                                        bool save) {
  IntervalEndMap active;
  for (const auto &i : start_map) {
    ExpireOldIntervals(active, i.first);
    if (free_reg_.empty()) {
      // need to spill
      SpillAtInterval(active, i.first, i.second);
    }
    else {
      // allocate to a free register
      auto reg = free_reg_.back();
      free_reg_.pop_back();
      var_pos_[i.second] = reg;
      // add to saved registers
      if (save) saved_reg_.insert(reg);
      // add to active
      active.insert({i.first, i.second});
    }
  }
}

void VarAllocationPass::ExpireOldIntervals(IntervalEndMap &active,
                                           const LiveInterval *i) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->first->end_pos >= i->start_pos) return;
    // free current element's register
    const auto &pos = var_pos_[it->second];
    if (auto reg = std::get_if<TinyMIPSReg>(&pos)) {
      free_reg_.push_back(*reg);
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
  return local_slot_count_++;
}

bool VarAllocationPass::Run(FuncInfo &func) {
  Reset();
  // get live intervals & argument info
  for (const auto &i : func.irs) {
    i->RunPass(*this);
    ++cur_pos_;
  }
  // run allocation
  RunVarAlloc();
  return false;
}

void VarAllocationPass::RunOn(BinaryTAC &tac) {
  LogLiveInterval(tac.dest());
  LogLiveInterval(tac.lhs());
  LogLiveInterval(tac.rhs());
}

void VarAllocationPass::RunOn(UnaryTAC &tac) {
  LogLiveInterval(tac.dest());
  if (tac.op() == UnaryOp::AddressOf) {
    live_intervals_[tac.opr()].can_alloc_reg = false;
  }
  else {
    LogLiveInterval(tac.opr());
  }
}

void VarAllocationPass::RunOn(LoadTAC &tac) {
  LogLiveInterval(tac.addr());
  LogLiveInterval(tac.dest());
}

void VarAllocationPass::RunOn(StoreTAC &tac) {
  LogLiveInterval(tac.value());
  LogLiveInterval(tac.addr());
}

void VarAllocationPass::RunOn(ArgSetTAC &tac) {
  LogLiveInterval(tac.value());
  // get argument position info
  auto count = tac.pos() + 1;
  if (count > max_arg_count_) max_arg_count_ = count;
}

void VarAllocationPass::RunOn(BranchTAC &tac) {
  LogLiveInterval(tac.cond());
}

void VarAllocationPass::RunOn(CallTAC &tac) {
  // log a function call
  last_call_pos_ = cur_pos_;
  LogLiveInterval(tac.dest());
}

void VarAllocationPass::RunOn(ReturnTAC &tac) {
  LogLiveInterval(tac.value());
}

void VarAllocationPass::RunOn(AssignTAC &tac) {
  LogLiveInterval(tac.value());
  LogLiveInterval(tac.var());
}
