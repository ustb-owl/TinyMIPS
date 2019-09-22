#ifndef TINYLANG_BACK_IRBUILDER_H_
#define TINYLANG_BACK_IRBUILDER_H_

#include <string>

#include "back/ir.h"
#include "front/lexer.h"
#include "define/symbol.h"
#include "util/guard.h"

namespace tinylang::back {

// interface of all IR builders
class IRBuilderInterface {
 public:
  virtual ~IRBuilderInterface() = default;

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
  virtual IRPtr GenerateUnary(front::Operator op, const IRPtr &opr) = 0;
  virtual IRPtr GenerateId(const std::string &id) = 0;
  virtual IRPtr GenerateNum(unsigned int num) = 0;
  virtual IRPtr GenerateString(const std::string &str) = 0;
  virtual IRPtr GenerateChar(char c) = 0;
  virtual IRPtr GenerateArray(IRPtrList elems) = 0;
  virtual IRPtr GenerateIndex(const std::string &id,
                              const IRPtr &index) = 0;

  // set environment of current generating process
  virtual Guard SetEnvironment(const define::EnvPtr &env) = 0;
  // mark the entry of a function
  virtual Guard EnterFunction(const std::string &id) = 0;
  // mark the entry of a true branch of if statement
  virtual Guard EnterIfTrueBody() = 0;
  // mark the entry of a false branch of if statement
  virtual Guard EnterIfFalseBody() = 0;
  // mark the entry of a condition checking branch of while statement
  virtual Guard EnterWhileCond() = 0;
  // mark the entry of a body of while statement
  virtual Guard EnterWhileBody() = 0;
};

// alias for 'IRBuilderInterface'
using IRBuilder = IRBuilderInterface;

}  // namespace tinylang::back

#endif  // TINYLANG_BACK_IRBUILDER_H_
