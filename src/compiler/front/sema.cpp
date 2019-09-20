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

  auto guard_pos = ana.SetLinePos(line_pos());
  set_env(ana.env());
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
  return ret;
}

TypePtr FunCallAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  TypePtrList args;
  for (const auto &i : args_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    args.push_back(type);
  }
  return ana.AnalyzeFunCall(id_, args);
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
  auto guard = ana.EnterWhile();
  if (!body_->SemaAnalyze(ana)) return nullptr;
  return MakeVoidType();
}

TypePtr ControlAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  TypePtr expr;
  if (expr_) {
    expr = expr_->SemaAnalyze(ana);
    if (!expr) return nullptr;
  }
  return ana.AnalyzeControl(type_, expr);
}

TypePtr VarElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
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
  return ana.AnalyzeVarElem(id_, std::move(type), init);
}

TypePtr LetElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  TypePtr type;
  if (type_) {
    type = type_->SemaAnalyze(ana);
    if (!type) return nullptr;
  }
  auto init = init_->SemaAnalyze(ana);
  if (!init) return nullptr;
  return ana.AnalyzeLetElem(id_, std::move(type), init);
}

TypePtr TypeAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  return ana.AnalyzeType(type_, ptr_);
}

TypePtr ArgElemAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return ana.AnalyzeArgElem(id_, std::move(type));
}

TypePtr BlockAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  auto guard = ana.NewEnvironment();
  for (const auto &i : stmts_) {
    if (!i->SemaAnalyze(ana)) return nullptr;
  }
  return MakeVoidType();
}

TypePtr BinaryAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  auto lhs = lhs_->SemaAnalyze(ana);
  if (!lhs) return nullptr;
  auto rhs = rhs_->SemaAnalyze(ana);
  if (!rhs) return nullptr;
  return ana.AnalyzeBinary(op_, lhs, rhs);
}

TypePtr CastAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  auto expr = expr_->SemaAnalyze(ana);
  if (!expr) return nullptr;
  auto type = type_->SemaAnalyze(ana);
  if (!type) return nullptr;
  return ana.AnalyzeCast(expr, type);
}

TypePtr UnaryAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  auto opr = opr_->SemaAnalyze(ana);
  if (!opr) return nullptr;
  return ana.AnalyzeUnary(op_, opr);
}

TypePtr IdAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  return ana.AnalyzeId(id_);
}

TypePtr NumAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  return ana.AnalyzeNum();
}

TypePtr StringAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  return ana.AnalyzeString();
}

TypePtr CharAST::SemaAnalyze(Analyzer &ana) {
  set_env(ana.env());
  return ana.AnalyzeChar();
}

TypePtr ArrayAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  TypePtrList elems;
  for (const auto &i : elems_) {
    auto type = i->SemaAnalyze(ana);
    if (!type) return nullptr;
    elems.push_back(type);
  }
  return ana.AnalyzeArray(elems);
}

TypePtr IndexAST::SemaAnalyze(Analyzer &ana) {
  auto guard = ana.SetLinePos(line_pos());
  set_env(ana.env());
  auto index = index_->SemaAnalyze(ana);
  if (!index) return nullptr;
  return ana.AnalyzeIndex(id_, index);
}
