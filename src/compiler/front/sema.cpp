#include "define/ast.h"

using namespace tinylang::front;
using namespace tinylang::define;

TypePtr VarDefAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtrList defs;
  for (const auto &i : defs_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    defs.push_back(type);
  }
  return MakeVoidType();
}

TypePtr LetDefAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtrList defs;
  for (const auto &i : defs_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    defs.push_back(type);
  }
  return MakeVoidType();
}

TypePtr FunDefAST::SemaAnalyze(Analyzer &ana) {
  /*
   * env structure:
   *    root
   *    |
   *    +-- arguments
   *        |
   *        +-- body
   */

  set_env(ana.env());
  // create argument env
  ana.NewEnvironment();
  // analyze arguments
  TypePtrList args;
  for (const auto &i : args_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    args.push_back(type);
  }
  // analyze function definition
  auto type = MakeVoidType();
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  // register return type of function
  ana.EnterFunction(type);
  // analyze function declaration
  auto ret = ana.AnalyzeFunDef(line_pos(), id_,
                               std::move(args), std::move(type));
  // analyze body
  auto body = body_->SemaAnalyze(ana);
  if (!body) return nullptr;
  // leave function & restore env
  ana.LeaveFunction();
  ana.RestoreEnvironment();
  return ret;
}

TypePtr FunCallAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtrList args;
  for (const auto &i : args_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    args.push_back(type);
  }
  return ana.AnalyzeFunCall(line_pos(), id_, args);
}

TypePtr IfAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  auto cond = cond_->SemaAnalyze(ana);
  if (!cond || cond->IsVoid()) return nullptr;
  if (!then_->SemaAnalyze(ana)) return nullptr;
  if (else_then_ && !else_then_->SemaAnalyze(ana)) return nullptr;
  return MakeVoidType();
}

TypePtr WhileAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  auto cond = cond_->SemaAnalyze(ana);
  if (!cond || cond->IsVoid()) return nullptr;
  ana.EnterWhile();
  if (!body_->SemaAnalyze(ana)) return nullptr;
  ana.LeaveWhile();
  return MakeVoidType();
}

TypePtr ControlAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtr expr;
  if (expr_) {
    expr = expr_->SemaAnalyze(ana);
    if (!expr) return nullptr;
  }
  return ana.AnalyzeControl(line_pos(), type_, expr);
}

TypePtr VarElemAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtr type, init;
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  if (init_) {
    init = init_->SemaAnalyze(ana);
    if (!init) return nullptr;
  }
  return ana.AnalyzeVarElem(line_pos(), id_, std::move(type), init);
}

TypePtr LetElemAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  TypePtr type;
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  auto init = init_->SemaAnalyze(ana);
  if (!init) return nullptr;
  return ana.AnalyzeLetElem(line_pos(), id_, std::move(type), init);
}

TypePtr TypeAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  return ana.AnalyzeType(line_pos(), type_, ptr_);
}

TypePtr ArgElemAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return ana.AnalyzeArgElem(line_pos(), id_, std::move(type));
}

TypePtr BlockAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  ana.NewEnvironment();
  for (const auto &i : stmts_) {
    if (!i->SemaAnalyze(ana)) return nullptr;
  }
  ana.RestoreEnvironment();
  return MakeVoidType();
}

TypePtr BinaryAST::SemaAnalyze(Analyzer &ana) {
  auto lhs = lhs_->SemaAnalyze(ana);
  if (!lhs) return nullptr;
  auto rhs = rhs_->SemaAnalyze(ana);
  if (!rhs) return nullptr;
  return ana.AnalyzeBinary(line_pos(), op_, lhs, rhs);
}

TypePtr CastAST::SemaAnalyze(Analyzer &ana) {
  auto expr = expr_->SemaAnalyze(ana);
  if (!expr) return nullptr;
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return ana.AnalyzeCast(line_pos(), expr, type);
}

TypePtr UnaryAST::SemaAnalyze(Analyzer &ana) {
  auto opr = opr_->SemaAnalyze(ana);
  if (!opr) return nullptr;
  return ana.AnalyzeUnary(line_pos(), op_, opr);
}

TypePtr IdAST::SemaAnalyze(Analyzer &ana) {
  return ana.AnalyzeId(line_pos(), id_);
}

TypePtr NumAST::SemaAnalyze(Analyzer &ana) {
  return ana.AnalyzeNum();
}

TypePtr StringAST::SemaAnalyze(Analyzer &ana) {
  return ana.AnalyzeString();
}

TypePtr CharAST::SemaAnalyze(Analyzer &ana) {
  return ana.AnalyzeChar();
}

TypePtr ArrayAST::SemaAnalyze(Analyzer &ana) {
  TypePtrList elems;
  for (const auto &i : elems_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    elems.push_back(type);
  }
  return ana.AnalyzeArray(line_pos(), elems);
}

TypePtr IndexAST::SemaAnalyze(Analyzer &ana) {
  auto index = index_->SemaAnalyze(ana);
  if (!index) return nullptr;
  return ana.AnalyzeIndex(line_pos(), id_, index);
}
