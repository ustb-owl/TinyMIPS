#ifndef TINYLANG_BACK_TAC_BUILDER_H_
#define TINYLANG_BACK_TAC_BUILDER_H_

#include <stack>
#include <unordered_map>
#include <string>
#include <stack>
#include <vector>
#include <cstddef>

#include "back/irbuilder.h"

namespace tinylang::back::tac {

class TACBuilder : public IRBuilderInterface {
 public:
  TACBuilder() : cur_var_id_(0) { NewFuncInfo("_start"); }

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

  Guard SetType(const define::TypePtr &type) override {
    types_.push(type);
    return Guard([this] { types_.pop(); });
  }
  Guard EnterFunction(const std::string &id) override;
  Guard EnterIfTrueBody() override;
  Guard EnterIfFalseBody() override;
  Guard EnterWhileCond() override;
  Guard EnterWhileBody() override;

 private:
  using VarTable = std::unordered_map<std::string, IRPtr>;

  // function info
  struct FuncInfo {
    // label of current function
    IRPtr label;
    // list of variables in function
    IRPtrList vars;
    // list of instructions in function
    IRPtrList irs;
  };

  // label info
  struct LabelInfo {
    // in which function, 'nullptr' if is unfilled label
    FuncInfo *func;
    // before which instruction
    std::size_t pos;
  };

  // data info
  struct DataInfo {
    // content of data
    IRPtrList content;
  };

  // create a new function info
  void NewFuncInfo(const std::string &id);

  // stack of types
  std::stack<define::TypePtr> types_;
  // hash map of function info
  std::unordered_map<std::string, FuncInfo> funcs_;
  // current function
  FuncInfo *cur_func_;
  // label list
  std::vector<LabelInfo> labels_;
  // stack of variables
  std::stack<VarTable> vars_;
  // current variable id
  std::size_t cur_var_id_;
  // data list
  std::vector<DataInfo> datas_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_BUILDER_H_
