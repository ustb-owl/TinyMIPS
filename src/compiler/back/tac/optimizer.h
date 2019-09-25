#ifndef TINYLANG_BACK_TAC_OPTIMIZER_H_
#define TINYLANG_BACK_TAC_OPTIMIZER_H_

#include <memory>
#include <utility>
#include <string_view>
#include <list>
#include <ostream>

#include "back/tac/define.h"

namespace tinylang::back::tac {

// interface of function pass
class PassInterface {
 public:
  virtual ~PassInterface() = default;

  // run on function, return true if function is modified
  virtual bool Run(FuncInfo &func) = 0;
};

using PassPtr = std::unique_ptr<PassInterface>;

// pass info
class PassInfo {
 public:
  PassInfo(std::string_view name, PassPtr pass, unsigned int min_opt_level)
      : name_(name), pass_(std::move(pass)),
        min_opt_level_(min_opt_level) {}

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

  // set optimization level (0-1)
  void set_opt_level(unsigned int opt_level) { opt_level_ = opt_level; }
  // set function info map
  void set_funcs(FuncInfoMap *funcs) { funcs_ = funcs; }

  // get optimization level
  unsigned int opt_level() const { return opt_level_; }

 private:
  static std::list<PassInfo *> passes_;
  FuncInfoMap *funcs_;
  unsigned int opt_level_;
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
