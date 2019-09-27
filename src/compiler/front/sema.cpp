#include "define/ast.h"

using namespace tinylang::front;
using namespace tinylang::define;

TypePtr VarDefAST::SemaAnalyze(Analyzer &ana) {
  TypePtrList defs;
  for (const auto &i : defs_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    defs.push_back(type);
  }
  return set_type(MakeVoidType());
}

TypePtr LetDefAST::SemaAnalyze(Analyzer &ana) {
  TypePtrList defs;
  for (const auto &i : defs_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    defs.push_back(type);
  }
  return set_type(MakeVoidType());
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

  auto guard_pos = ana.SetLinePos(line_pos());
  // create argument env
  auto guard_env = ana.NewEnvironment();
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
  auto guard_func = ana.EnterFunction(type);
  // analyze function declaration
  auto ret = ana.AnalyzeFunDef(id_, std::move(args), std::move(type));
  // analyze body (if is not declaration)
  if (body_) {
    auto body = body_->SemaAnalyze(ana);
    if (!body) return nullptr;
  }
  // set type of function AST to function's type
  set_type(ana.env()->outer()->GetItem(id_));
  return ret;
}

TypePtr FunCallAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  TypePtrList args;
  for (const auto &i : args_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    args.push_back(type);
  }
  return set_type(ana.AnalyzeFunCall(id_, args));
}

TypePtr IfAST::SemaAnalyze(Analyzer &ana) {
  auto cond = cond_->SemaAnalyze(ana);
  if (!cond || cond->IsVoid()) return nullptr;
  if (!then_->SemaAnalyze(ana)) return nullptr;
  if (else_then_ && !else_then_->SemaAnalyze(ana)) return nullptr;
  return set_type(MakeVoidType());
}

TypePtr WhileAST::SemaAnalyze(Analyzer &ana) {
  auto cond = cond_->SemaAnalyze(ana);
  if (!cond || cond->IsVoid()) return nullptr;
  auto guard = ana.EnterWhile();
  if (!body_->SemaAnalyze(ana)) return nullptr;
  return set_type(MakeVoidType());
}

TypePtr ControlAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  TypePtr expr;
  if (expr_) {
    expr = expr_->SemaAnalyze(ana);
    if (!expr) return nullptr;
  }
  return set_type(ana.AnalyzeControl(type_, expr));
}

TypePtr VarElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  TypePtr type, init;
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  if (init_) {
    init = init_->SemaAnalyze(ana);
    if (!init) return nullptr;
  }
  auto ret = ana.AnalyzeVarElem(id_, std::move(type), init);
  // set type of var element AST to variable's type
  set_type(ana.env()->GetItem(id_));
  return ret;
}

TypePtr LetElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  TypePtr type;
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  auto init = init_->SemaAnalyze(ana);
  if (!init) return nullptr;
  auto ret = ana.AnalyzeLetElem(id_, std::move(type), init);
  // set type of let element AST to variable's type
  set_type(ana.env()->GetItem(id_));
  return ret;
}

TypePtr TypeAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  return set_type(ana.AnalyzeType(type_, ptr_));
}

TypePtr ArgElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return set_type(ana.AnalyzeArgElem(id_, std::move(type)));
}

TypePtr BlockAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.NewEnvironment();
  for (const auto &i : stmts_) {
    if (!i->SemaAnalyze(ana)) return nullptr;
  }
  return set_type(MakeVoidType());
}

TypePtr BinaryAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  auto lhs = lhs_->SemaAnalyze(ana);
  if (!lhs) return nullptr;
  auto rhs = rhs_->SemaAnalyze(ana);
  if (!rhs) return nullptr;
  return set_type(ana.AnalyzeBinary(op_, lhs, rhs));
}

TypePtr CastAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  auto expr = expr_->SemaAnalyze(ana);
  if (!expr) return nullptr;
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return set_type(ana.AnalyzeCast(expr, type));
}

TypePtr UnaryAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  auto opr = opr_->SemaAnalyze(ana);
  if (!opr) return nullptr;
  return set_type(ana.AnalyzeUnary(op_, opr));
}

TypePtr IdAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  return set_type(ana.AnalyzeId(id_));
}

TypePtr NumAST::SemaAnalyze(Analyzer &ana) {
  return set_type(ana.AnalyzeNum());
}

TypePtr StringAST::SemaAnalyze(Analyzer &ana) {
  return set_type(ana.AnalyzeString());
}

TypePtr CharAST::SemaAnalyze(Analyzer &ana) {
  return set_type(ana.AnalyzeChar());
}

TypePtr ArrayAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  TypePtrList elems;
  for (const auto &i : elems_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    elems.push_back(type);
  }
  return set_type(ana.AnalyzeArray(elems));
}

TypePtr IndexAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  auto index = index_->SemaAnalyze(ana);
  if (!index) return nullptr;
  return set_type(ana.AnalyzeIndex(id_, index));
}
