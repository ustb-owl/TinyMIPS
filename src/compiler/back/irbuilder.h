#ifndef TINYLANG_BACK_IRBUILDER_H_
#define TINYLANG_BACK_IRBUILDER_H_

#include <string>
#include <ostream>

#include "back/ir.h"
#include "front/lexer.h"
#include "define/type.h"
#include "util/guard.h"

namespace tinylang::back {

// interface of all IR builders
class IRBuilderInterface {
 public:
  virtual ~IRBuilderInterface() = default;

  virtual IRPtr GenerateFunDecl(const std::string &id) = 0;
  virtual IRPtr GenerateFunCall(const std::string &id, IRPtrList args) = 0;
  virtual IRPtr GenerateIfCond(const IRPtr &cond) = 0;
  virtual IRPtr GenerateWhileCond(const IRPtr &cond) = 0;
  virtual IRPtr GenerateControl(front::Keyword type, const IRPtr &expr) = 0;
  virtual IRPtr GenerateVarElem(const std::string &id,
                                const IRPtr &init) = 0;
  virtual IRPtr GenerateLetElem(const std::string &id,
                                const IRPtr &init) = 0;
  virtual IRPtr GenerateArgElem(const std::string &id) = 0;
  virtual IRPtr GenerateBinary(front::Operator op, const IRPtr &lhs,
                               const IRPtr &rhs) = 0;
  virtual IRPtr GenerateLogicLHS(front::Operator op, const IRPtr &lhs) = 0;
  virtual IRPtr GenerateLogicRHS(const IRPtr &rhs) = 0;
  virtual IRPtr GenerateUnary(front::Operator op, const IRPtr &opr) = 0;
  virtual IRPtr GenerateId(const std::string &id) = 0;
  virtual IRPtr GenerateNum(unsigned int num) = 0;
  virtual IRPtr GenerateString(const std::string &str) = 0;
  virtual IRPtr GenerateChar(char c) = 0;
  virtual IRPtr GenerateArray(IRPtrList elems) = 0;
  virtual IRPtr GenerateIndex(const std::string &id,
                              const IRPtr &index) = 0;

  // set type of current operand
  virtual util::Guard SetOprType(const define::TypePtr &lhs,
                                 const define::TypePtr &rhs) = 0;
  // mark the entry of a function
  virtual util::Guard EnterFunction(const std::string &id) = 0;
  // mark the entry of a true branch of if statement
  virtual util::Guard EnterIfTrueBody() = 0;
  // mark the entry of a false branch of if statement
  virtual util::Guard EnterIfFalseBody() = 0;
  // mark the entry of a condition checking branch of while statement
  virtual util::Guard EnterWhileCond() = 0;
  // mark the entry of a body of while statement
  virtual util::Guard EnterWhileBody() = 0;
  // mark the entry of second part of logical expression
  virtual util::Guard EnterLogicRHS(front::Operator op) = 0;
  // mark next expression is a memory store
  virtual util::Guard MarkStore(const IRPtr &value) = 0;

  // dump IRs in current builder
  virtual void Dump(std::ostream &os) = 0;
};

// alias for 'IRBuilderInterface'
using IRBuilder = IRBuilderInterface;

}  // namespace tinylang::back

#endif  // TINYLANG_BACK_IRBUILDER_H_
