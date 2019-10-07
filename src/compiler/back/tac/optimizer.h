#ifndef TINYLANG_BACK_TAC_OPTIMIZER_H_
#define TINYLANG_BACK_TAC_OPTIMIZER_H_

#include <memory>
#include <utility>
#include <string_view>
#include <list>
#include <ostream>
#include <cstddef>

#include "back/tac/define.h"
#include "back/tac/ir/tac.h"

namespace tinylang::back::tac {

// interface of function pass
class PassBase {
 public:
  virtual ~PassBase() = default;

  // run on function, return true if function is modified
  virtual bool Run(FuncInfo &func) = 0;

  // visitor methods for running on TAC IRs
  virtual void RunOn(BinaryTAC &tac) {}
  virtual void RunOn(UnaryTAC &tac) {}
  virtual void RunOn(LoadTAC &tac) {}
  virtual void RunOn(StoreTAC &tac) {}
  virtual void RunOn(JumpTAC &tac) {}
  virtual void RunOn(BranchTAC &tac) {}
  virtual void RunOn(CallTAC &tac) {}
  virtual void RunOn(ReturnTAC &tac) {}
  virtual void RunOn(AssignTAC &tac) {}
  virtual void RunOn(VarRefTAC &tac) {}
  virtual void RunOn(DataTAC &tac) {}
  virtual void RunOn(LabelTAC &tac) {}
  virtual void RunOn(ArgGetTAC &tac) {}
  virtual void RunOn(NumberTAC &tac) {}

  void set_cur_var_id(std::size_t *cur_var_id) { cur_var_id_ = cur_var_id; }
  void set_entry_func(const FuncInfo *entry) { entry_ = entry; }

 protected:
  // create a new temporary variable
  TACPtr NewTempVar() {
    return std::make_shared<VarRefTAC>((*cur_var_id_)++);
  }

  // check if variable is a global variable
  bool IsGlobalVar(const TACPtr &var) {
    return entry_->vars.find(var) != entry_->vars.end();
  }

 private:
  std::size_t *cur_var_id_;
  const FuncInfo *entry_;
};

using PassPtr = std::unique_ptr<PassBase>;

// pass info
class PassInfo {
 public:
  PassInfo(std::string_view name, PassPtr pass, unsigned int min_opt_level)
      : name_(name), pass_(std::move(pass)),
        min_opt_level_(min_opt_level) {}
  virtual ~PassInfo() = default;

  const std::string_view name() const { return name_; }
  const PassPtr &pass() const { return pass_; }
  unsigned int min_opt_level() const { return min_opt_level_; }

 private:
  std::string_view name_;
  PassPtr pass_;
  unsigned int min_opt_level_;
};

// TAC IR optimizer
class Optimizer {
 public:
  Optimizer() : funcs_(nullptr), opt_level_(0) {}

  // register a new function pass
  static void RegisterPass(PassInfo *info) { passes_.push_back(info); }

  // run function passes on function info map
  void Run();
  // show info of optimization
  void ShowInfo(std::ostream &os);

  // set optimization level (0-2)
  void set_opt_level(unsigned int opt_level) { opt_level_ = opt_level; }
  // set function info map
  void set_funcs(FuncInfoMap *funcs) { funcs_ = funcs; }
  // set pointer of current variable ID
  void set_cur_var_id(std::size_t *cur_var_id);
  // set pointer of entry function's info
  void set_entry_func(const FuncInfo *entry);

  // get optimization level
  unsigned int opt_level() const { return opt_level_; }

 private:
  static std::list<PassInfo *> passes_;
  unsigned int opt_level_;
  FuncInfoMap *funcs_;
};

// helper class for registering a pass
template <typename T>
class RegisterPass : public PassInfo {
 public:
  RegisterPass(std::string_view name, unsigned int min_opt_level)
      : PassInfo(name, std::make_unique<T>(), min_opt_level) {
    Optimizer::RegisterPass(this);
  }
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_OPTIMIZER_H_
