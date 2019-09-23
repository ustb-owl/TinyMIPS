#ifndef TINYLANG_BACK_TAC_BUILDER_H_
#define TINYLANG_BACK_TAC_BUILDER_H_

#include <memory>
#include <stack>
#include <unordered_map>
#include <string>
#include <vector>
#include <cstddef>

#include "back/irbuilder.h"
#include "back/tac/ir.h"
#include "util/nested.h"

namespace tinylang::back::tac {

class TACBuilder : public IRBuilderInterface {
 public:
  TACBuilder() : cur_label_id_(0), cur_var_id_(0) {
    // create entry function
    NewFuncInfo(kEntryFuncId);
    entry_func_ = cur_func_;
  }

  IRPtr GenerateFunDecl(const std::string &id) override;
  IRPtr GenerateFunCall(const std::string &id, IRPtrList args) override;
  IRPtr GenerateIfCond(const IRPtr &cond) override;
  IRPtr GenerateWhileCond(const IRPtr &cond) override;
  IRPtr GenerateControl(front::Keyword type, const IRPtr &expr) override;
  IRPtr GenerateVarElem(const std::string &id, const IRPtr &init) override;
  IRPtr GenerateLetElem(const std::string &id, const IRPtr &init) override;
  IRPtr GenerateArgElem(const std::string &id) override;
  IRPtr GenerateBinary(front::Operator op, const IRPtr &lhs,
                       const IRPtr &rhs) override;
  IRPtr GenerateUnary(front::Operator op, const IRPtr &opr) override;
  IRPtr GenerateId(const std::string &id) override;
  IRPtr GenerateNum(unsigned int num) override;
  IRPtr GenerateString(const std::string &str) override;
  IRPtr GenerateChar(char c) override;
  IRPtr GenerateArray(IRPtrList elems) override;
  IRPtr GenerateIndex(const std::string &id, const IRPtr &index) override;

  util::Guard SetType(const define::TypePtr &type) override {
    types_.push(type);
    return util::Guard([this] { types_.pop(); });
  }
  util::Guard EnterFunction(const std::string &id) override;
  util::Guard EnterIfTrueBody() override;
  util::Guard EnterIfFalseBody() override;
  util::Guard EnterWhileCond() override;
  util::Guard EnterWhileBody() override;

 private:
  // id of entry function
  static const char *kEntryFuncId;
  // label id of true branch of if-statement
  static const std::size_t kLabelTrue = 0;
  // label id of false branch of if-statement
  static const std::size_t kLabelFalse = 1;
  // label id of end of if-statement
  static const std::size_t kLabelEndIf = 2;
  // label id of condition block of while-statement
  static const std::size_t kLabelCond = 3;
  // label id of body block of while-statement
  static const std::size_t kLabelBody = 4;
  // label id of end of while-statement
  static const std::size_t kLabelEndWhile = 5;

  // function info
  struct FuncInfo {
    // label of current function
    TACPtr label;
    // list of arguments of function
    TACPtrList args;
    // list of variables in function
    TACPtrList vars;
    // list of instructions in function
    // empty if is just a declaration
    TACPtrList irs;
  };

  // data info
  struct DataInfo {
    // content of data
    TACPtrList content;
  };

  // create a new function info
  void NewFuncInfo(const std::string &id);
  // restore current function info to entry function
  void RestoreFuncInfo() { cur_func_ = entry_func_; }
  // create a new variable info map
  void NewVarMap() {
    vars_ = util::MakeNestedMap<std::string, TACPtr>(vars_);
  }
  // restore variable info map
  void RestoreVarMap() { vars_ = vars_->outer(); }
  // create a new temporary variable
  TACPtr NewTempVar() {
    return std::make_shared<VarRefTAC>(cur_var_id_++);
  }
  // add new TAC IR to current function
  void AddInst(TACPtr tac) { cur_func_->irs.push_back(std::move(tac)); }
  // create a new label
  TACPtr NewLabel() { return std::make_shared<LabelTAC>(cur_label_id_++); }
  // create a new unfilled label
  TACPtr NewUnfilledLabel(std::size_t type);
  // get an unfilled label
  TACPtr GetUnfilledLabel(std::size_t type);
  // fill label and insert it to current position
  void FillLabel(std::size_t type);

  // stack of types
  std::stack<define::TypePtr> types_;
  // hash map of function info
  std::unordered_map<std::string, FuncInfo> funcs_;
  // current function & entry function
  FuncInfo *cur_func_, *entry_func_;
  // unfilled labels in current scope
  std::stack<std::unordered_map<std::size_t, TACPtr>> unfilled_;
  // current label id
  std::size_t cur_label_id_;
  // table of variables
  util::NestedMapPtr<std::string, TACPtr> vars_;
  // current variable id
  std::size_t cur_var_id_;
  // data list
  std::vector<DataInfo> datas_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_BUILDER_H_
