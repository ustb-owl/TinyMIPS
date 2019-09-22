#include "back/tac/builder.h"

using namespace tinylang::front;
using namespace tinylang::define;
using namespace tinylang::back;
using namespace tinylang::back::tac;

IRPtr TACBuilder::GenerateFunCall(const std::string &id, IRPtrList args) {
  //
}

IRPtr TACBuilder::GenerateIfCond(const IRPtr &cond) {
  //
}

IRPtr TACBuilder::GenerateWhileCond(const IRPtr &cond) {
  //
}

IRPtr TACBuilder::GenerateControl(Keyword type, const IRPtr &expr) {
  //
}

IRPtr TACBuilder::GenerateVarElem(const std::string &id,
                                  const IRPtr &init) {
  //
}

IRPtr TACBuilder::GenerateLetElem(const std::string &id,
                                  const IRPtr &init) {
  //
}

IRPtr TACBuilder::GenerateArgElem(const std::string &id) {
  //
}

IRPtr TACBuilder::GenerateBinary(Operator op, const IRPtr &lhs,
                                 const IRPtr &rhs) {
  //
}

IRPtr TACBuilder::GenerateUnary(Operator op, const IRPtr &opr) {
  //
}

IRPtr TACBuilder::GenerateId(const std::string &id) {
  //
}

IRPtr TACBuilder::GenerateNum(unsigned int num) {
  //
}

IRPtr TACBuilder::GenerateString(const std::string &str) {
  //
}

IRPtr TACBuilder::GenerateChar(char c) {
  //
}

IRPtr TACBuilder::GenerateArray(IRPtrList elems) {
  //
}

IRPtr TACBuilder::GenerateIndex(const std::string &id, const IRPtr &index) {
  //
}
