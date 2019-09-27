#ifndef TINYLANG_BACK_TAC_BUILDER_H_
#define TINYLANG_BACK_TAC_BUILDER_H_

#include <memory>
#include <stack>
#include <unordered_map>
#include <string>
#include <vector>
#include <cstddef>

#include "back/irbuilder.h"
#include "back/tac/define.h"
#include "back/tac/ir.h"
#include "back/tac/optimizer.h"
#include "util/nested.h"

namespace tinylang::back::tac {

class TACBuilder : public IRBuilderInterface {
 public:
  TACBuilder() : cur_label_id_(0), cur_var_id_(0) {
    // create entry function
    auto guard = SetOprType(nullptr, nullptr);
    NewFuncInfo(kEntryFuncId);
    entry_func_ = cur_func_;
    // create variable info map
    NewVarMap();
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
  IRPtr GenerateLogicLHS(front::Operator op, const IRPtr &lhs) override;
  IRPtr GenerateLogicRHS(const IRPtr &rhs) override;
  IRPtr GenerateUnary(front::Operator op, const IRPtr &opr) override;
  IRPtr GenerateId(const std::string &id) override;
  IRPtr GenerateNum(unsigned int num) override;
  IRPtr GenerateString(const std::string &str) override;
  IRPtr GenerateChar(char c) override;
  IRPtr GenerateArray(IRPtrList elems) override;
  IRPtr GenerateIndex(const std::string &id, const IRPtr &index) override;

  util::Guard SetOprType(const define::TypePtr &lhs,
                         const define::TypePtr &rhs) override {
    opr_types_.push({lhs, rhs});
    return util::Guard([this] { opr_types_.pop(); });
  }
  util::Guard EnterFunction(const std::string &id) override;
  util::Guard EnterIfTrueBody() override;
  util::Guard EnterIfFalseBody() override;
  util::Guard EnterWhileCond() override;
  util::Guard EnterWhileBody() override;
  util::Guard EnterLogicRHS(front::Operator op) override;
  util::Guard MarkStore(const IRPtr &value) override;

  void EndGeneration() override;
  void Dump(std::ostream &os) override;

  // run TAC optimization
  void RunOptimization(Optimizer &opt);

 private:
  // id of entry function
  static const char *kEntryFuncId;

  // label tags
  enum class LabelTag {
    // if-statement
    LabelTrue, LabelFalse, LabelEndIf,
    // while-statement
    LabelCond, LabelBody, LabelEndWhile,
    // logical expression
    LabelSecond, LabelEndLogic,
  };

  // type info of operands
  struct OprTypeInfo {
    define::TypePtr lhs;
    define::TypePtr rhs;
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
  TACPtr NewUnfilledLabel(LabelTag type);
  // get an unfilled label
  const TACPtr &GetUnfilledLabel(LabelTag type);
  // fill label and insert it to current position
  void FillLabel(LabelTag type);
  // add jump TAC to current function
  void AddJump(LabelTag type);
  // new pointer offset calculation
  TACPtr NewPtrOffset(const TACPtr &offset,
                      const define::TypePtr &offset_type,
                      const define::TypePtr &ptr_type);
  // new pointer offset calculation (with specific size)
  TACPtr NewPtrOffset(const TACPtr &offset,
                      const define::TypePtr &offset_type,
                      std::size_t ptr_size);
  // new data casting
  TACPtr NewDataCast(const TACPtr &data, const define::TypePtr &src,
                     const define::TypePtr &dest);
  // new data casting (with specific size)
  TACPtr NewDataCast(const TACPtr &data, const define::TypePtr &src,
                     std::size_t dest);

  // stack of type of operands
  std::stack<OprTypeInfo> opr_types_;
  // hash map of function info
  FuncInfoMap funcs_;
  // current function & entry function
  FuncInfo *cur_func_, *entry_func_;
  // unfilled labels in current scope
  std::stack<std::unordered_map<LabelTag, TACPtr>> unfilled_;
  // current label id
  std::size_t cur_label_id_;
  // table of variables
  util::NestedMapPtr<std::string, TACPtr> vars_;
  // current variable id
  std::size_t cur_var_id_;
  // stack of return value in logical expression
  std::stack<TACPtr> logics_;
  // data list
  std::vector<DataInfo> datas_;
  // store value (for memory accessing)
  TACPtr store_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_BUILDER_H_
