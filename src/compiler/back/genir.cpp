#include "define/ast.h"

using namespace tinylang::front;
using namespace tinylang::define;
using namespace tinylang::back;

IRPtr VarDefAST::GenerateIR(IRBuilder &irb) {
  for (const auto &i : defs_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr LetDefAST::GenerateIR(IRBuilder &irb) {
  for (const auto &i : defs_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr FunDefAST::GenerateIR(IRBuilder &irb) {
  // NOTE: lhs type is type of current function
  auto guard_opr = irb.SetOprType(type(), nullptr);
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
  IRPtrList args;
  TypePtrList types;
  for (const auto &i : args_) {
    args.push_back(i->GenerateIR(irb));
    types.push_back(i->type());
  }
  // create a pseudo function type to represent 'types'
  auto pseudo_func = std::make_shared<FuncType>(std::move(types), nullptr);
  // NOTE: lhs type is type of arguments
  auto guard_opr = irb.SetOprType(pseudo_func, nullptr);
  return irb.GenerateFunCall(id_, std::move(args));
}

IRPtr IfAST::GenerateIR(IRBuilder &irb) {
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
  auto guard = irb.SetOprType(expr_ ? expr_->type() : nullptr, nullptr);
  return irb.GenerateControl(type_,
                             expr_ ? expr_->GenerateIR(irb) : nullptr);
}

IRPtr VarElemAST::GenerateIR(IRBuilder &irb) {
  // NOTE: lhs type is variable's type, rhs type is initializer's type
  auto guard = irb.SetOprType(type(), init_ ? init_->type() : nullptr);
  return irb.GenerateVarElem(id_, init_ ? init_->GenerateIR(irb) : nullptr);
}

IRPtr LetElemAST::GenerateIR(IRBuilder &irb) {
  // NOTE: lhs type is variable's type, rhs type is initializer's type
  auto guard = irb.SetOprType(type(), init_->type());
  return irb.GenerateLetElem(id_, init_->GenerateIR(irb));
}

IRPtr TypeAST::GenerateIR(IRBuilder &irb) {
  return nullptr;
}

IRPtr ArgElemAST::GenerateIR(IRBuilder &irb) {
  return irb.GenerateArgElem(id_);
}

IRPtr BlockAST::GenerateIR(IRBuilder &irb) {
  for (const auto &i : stmts_) i->GenerateIR(irb);
  return nullptr;
}

IRPtr BinaryAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetOprType(lhs_->type(), rhs_->type());
  if (IsOperatorAssign(op_) && lhs_->IsMemAccess()) {
    // generate rhs first
    auto value = rhs_->GenerateIR(irb);
    if (op_ != Operator::Assign) {
      auto lhs_ir = lhs_->GenerateIR(irb);
      value = irb.GenerateBinary(GetDeAssignedOp(op_), lhs_ir, value);
    }
    // generate memory store
    auto guard_store = irb.MarkStore(value);
    return lhs_->GenerateIR(irb);
  }
  else if (op_ == Operator::LogicAnd || op_ == Operator::LogicOr) {
    // generate logical operation
    irb.GenerateLogicLHS(op_, lhs_->GenerateIR(irb));
    auto guard_logic = irb.EnterLogicRHS(op_);
    return irb.GenerateLogicRHS(rhs_->GenerateIR(irb));
  }
  else {
    // just binary operation
    return irb.GenerateBinary(op_, lhs_->GenerateIR(irb),
                              rhs_->GenerateIR(irb));
  }
}

IRPtr CastAST::GenerateIR(IRBuilder &irb) {
  return expr_->GenerateIR(irb);
}

IRPtr UnaryAST::GenerateIR(IRBuilder &irb) {
  auto guard = irb.SetOprType(opr_->type(), nullptr);
  return irb.GenerateUnary(op_, opr_->GenerateIR(irb));
}

IRPtr IdAST::GenerateIR(IRBuilder &irb) {
  return irb.GenerateId(id_);
}

IRPtr NumAST::GenerateIR(IRBuilder &irb) {
  return irb.GenerateNum(num_);
}

IRPtr StringAST::GenerateIR(IRBuilder &irb) {
  return irb.GenerateString(str_);
}

IRPtr CharAST::GenerateIR(IRBuilder &irb) {
  return irb.GenerateChar(c_);
}

IRPtr ArrayAST::GenerateIR(IRBuilder &irb) {
  IRPtrList elems;
  TypePtrList types;
  for (const auto &i : elems_) {
    elems.push_back(i->GenerateIR(irb));
    types.push_back(i->type());
  }
  // NOTE: lhs type is array's derefed type, rhs type is elements' type
  // TODO: a little tricky
  auto pseudo_func = std::make_shared<FuncType>(std::move(types), nullptr);
  auto guard = irb.SetOprType(type()->GetDerefedType(),
                              std::move(pseudo_func));
  return irb.GenerateArray(std::move(elems));
}

IRPtr IndexAST::GenerateIR(IRBuilder &irb) {
  // NOTE: lhs type is type of current expression, rhs type is type of index
  auto guard = irb.SetOprType(type(), index_->type());
  return irb.GenerateIndex(id_, index_->GenerateIR(irb));
}
