#include "define/ast.h"

using namespace tinylang::front;
using namespace tinylang::define;
using namespace tinylang::back;

IRPtr VarDefAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  for (const auto &i : defs_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr LetDefAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  for (const auto &i : defs_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr FunDefAST::GenerateIR(IRBuilder &irb) {
  auto guard_type = irb.SetType(type());
  if (body_) {
    // function definition
    auto guard_func = irb.EnterFunction(id_);
    for (const auto &i : args_) i->GenerateIR(irb);
    body_->GenerateIR(irb);
  }
  else {
    // function declaration
    irb.GenerateFunDecl(id_);
  }
  return nullptr;
}

IRPtr FunCallAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  IRPtrList args;
  for (const auto &i : args_) args.push_back(i->GenerateIR(irb));
  return irb.GenerateFunCall(id_, std::move(args));
}

IRPtr IfAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  irb.GenerateIfCond(cond_->GenerateIR(irb));
  {
    auto guard = irb.EnterIfTrueBody();
    then_->GenerateIR(irb);
  }
  {
    auto guard = irb.EnterIfFalseBody();
    if (else_then_) else_then_->GenerateIR(irb);
  }
  return nullptr;
}

IRPtr WhileAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  {
    auto guard = irb.EnterWhileCond();
    irb.GenerateWhileCond(cond_->GenerateIR(irb));
  }
  {
    auto guard = irb.EnterWhileBody();
    body_->GenerateIR(irb);
  }
  return nullptr;
}

IRPtr ControlAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateControl(type_,
                             expr_ ? expr_->GenerateIR(irb) : nullptr);
}

IRPtr VarElemAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateVarElem(id_, init_ ? init_->GenerateIR(irb) : nullptr);
}

IRPtr LetElemAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateLetElem(id_, init_->GenerateIR(irb));
}

IRPtr TypeAST::GenerateIR(IRBuilder &irb) {
  return nullptr;
}

IRPtr ArgElemAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateArgElem(id_);
}

IRPtr BlockAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  for (const auto &i : stmts_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr BinaryAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateBinary(op_, lhs_->GenerateIR(irb),
                            rhs_->GenerateIR(irb));
}

IRPtr CastAST::GenerateIR(IRBuilder &irb) {
  return expr_->GenerateIR(irb);
}

IRPtr UnaryAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateUnary(op_, opr_->GenerateIR(irb));
}

IRPtr IdAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateId(id_);
}

IRPtr NumAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateNum(num_);
}

IRPtr StringAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateString(str_);
}

IRPtr CharAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateChar(c_);
}

IRPtr ArrayAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  IRPtrList elems;
  for (const auto &i : elems_) elems.push_back(i->GenerateIR(irb));
  return irb.GenerateArray(std::move(elems));
}

IRPtr IndexAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetType(type());
  return irb.GenerateIndex(id_, index_->GenerateIR(irb));
}
