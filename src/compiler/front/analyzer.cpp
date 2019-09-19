#include "front/analyzer.h"

#include <iostream>
#include <cassert>

#include "util/style.h"

using namespace tinylang::front;
using namespace tinylang::define;

TypePtr Analyzer::LogError(const char *message, unsigned int line_pos) {
  using namespace util;
  // print error message
  std::cerr << style("B") << "analyzer";
  std::cerr << " (line " << line_pos;
  std::cerr << "): " << style("Br") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return nullptr;
}

TypePtr Analyzer::LogError(const char *message, const std::string &id,
                           unsigned int line_pos) {
  using namespace util;
  // print error message
  std::cerr << style("B") << "analyzer";
  std::cerr << " (line " << line_pos;
  std::cerr << ", id: " << id;
  std::cerr << "): " << style("Br") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return nullptr;
}

TypePtr Analyzer::AnalyzeFunDef(unsigned int line_pos,
                                const std::string &id, TypePtrList args,
                                TypePtr ret) {
  // NOTE: current env is argument env
  const auto &func_env = env_->outer();
  // check if is in root env
  if (!func_env->is_root()) {
    return LogError("nested function is not allowed", id, line_pos);
  }
  // check if is existed
  if (func_env->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id, line_pos);
  }
  // create function symbol
  auto type = std::make_shared<FuncType>(std::move(args), std::move(ret));
  func_env->AddSymbol(id, std::move(type));
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeFunCall(unsigned int line_pos,
                                 const std::string &id,
                                 const TypePtrList &args) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) {
    return LogError("identifier has not been defined", id, line_pos);
  }
  // check return type
  auto ret = type->GetReturnType(args);
  if (!ret) return LogError("invalid function call", id, line_pos);
  return ret;
}

TypePtr Analyzer::AnalyzeControl(unsigned int line_pos, Keyword type,
                                 const TypePtr &expr) {
  switch (type) {
    case Keyword::Break: case Keyword::Continue: {
      // check if is in a while loop
      if (!while_count_) {
        return LogError("using break/continue outside the loop", line_pos);
      }
      break;
    }
    case Keyword::Return: {
      // check if is in a function
      if (!cur_ret_) {
        return LogError("using 'return' outside the function", line_pos);
      }
      else {
        auto type = expr;
        if (!type) type = MakeVoidType();
        // check if is compatible
        if (!cur_ret_->CanAccept(type)) {
          return LogError("type mismatch when returning", line_pos);
        }
      }
      break;
    }
    default: assert(false);
  }
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeVarElem(unsigned int line_pos,
                                 const std::string &id, TypePtr type,
                                 const TypePtr &init) {
  // check if is defined
  if (env_->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id, line_pos);
  }
  if (type) {
    // check if is compatible
    if (init && !type->CanAccept(init)) {
      return LogError("type mismatch when initializing", id, line_pos);
    }
    // add symbol info
    env_->AddSymbol(id, std::move(type));
  }
  else {
    assert(init != nullptr);
    // check if can be deduced
    if (init->IsVoid() || init->IsFunction()) {
      return LogError("initializing a vairable with invalid type", id,
                      line_pos);
    }
    // add symbol info
    auto deconst_type = init;
    if (deconst_type->IsConst()) {
      deconst_type = deconst_type->GetDeconstedType();
    }
    env_->AddSymbol(id, std::move(deconst_type));
  }
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeLetElem(unsigned int line_pos,
                                 const std::string &id, TypePtr type,
                                 const TypePtr &init) {
  assert(init != nullptr);
  TypePtr const_type;
  // check if is defined
  if (env_->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id, line_pos);
  }
  if (type) {
    // check if is compatible
    if (!type->CanAccept(init)) {
      return LogError("type mismatch when initializing", id, line_pos);
    }
    const_type = std::move(type);
  }
  else {
    // check if can be deduced
    if (init->IsVoid() || init->IsFunction()) {
      return LogError("initializing a vairable with 'void' type", id,
                      line_pos);
    }
    const_type = init;
  }
  // add symbol info
  if (!const_type->IsConst()) {
    const_type = std::make_shared<ConstType>(std::move(const_type));
  }
  env_->AddSymbol(id, std::move(const_type));
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeType(unsigned int line_pos, Keyword type,
                              unsigned int ptr) {
  auto ret = MakePlainType(type);
  if (ptr) {
    ret = std::make_shared<PointerType>(std::move(ret), ptr);
  }
  return ret;
}

TypePtr Analyzer::AnalyzeArgElem(unsigned int line_pos,
                                 const std::string &id, TypePtr type) {
  if (env_->GetInfo(id, false)) {
    return LogError("duplicated argument name", id, line_pos);
  }
  env_->AddSymbol(id, std::move(type));
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeBinary(unsigned int line_pos, Operator op,
                                const TypePtr &lhs, const TypePtr &rhs) {
  switch (op) {
    // TODO
  }
}

TypePtr Analyzer::AnalyzeCast(unsigned int line_pos, const TypePtr &expr,
                              const TypePtr &type) {
  if (!expr->CanCastTo(type)) {
    return LogError("invalid type casting", line_pos);
  }
  return type;
}

TypePtr Analyzer::AnalyzeUnary(unsigned int line_pos, Operator op,
                               const TypePtr &opr) {
  // check if is illegal
  switch (op) {
    // integer operations
    case Operator::Add: case Operator::Sub:
    case Operator::Not: {
      if (!opr->IsInteger()) {
        return LogError("expected integer types", line_pos);
      }
      return opr;
    }
    // logic operations
    case Operator::LogicNot: {
      if (!opr->IsInteger() || !opr->IsPointer()) {
        return LogError("expected integer/pointer types", line_pos);
      }
      return std::make_shared<ConstType>(MakePlainType(Keyword::UInt32));
    }
    // pointer operations
    case Operator::Mul: {
      if (!opr->IsPointer()) {
        return LogError("expected pointer types", line_pos);
      }
      return opr->GetDerefedType();
    }
    // get address operations
    case Operator::And: {
      if (opr->IsVoid() || opr->IsFunction()) {
        return LogError("invalid 'address-of' operation", line_pos);
      }
      return std::make_shared<PointerType>(opr, 1);
    }
    // other
    default: assert(false); return nullptr;
  }
}

TypePtr Analyzer::AnalyzeId(unsigned int line_pos, const std::string &id) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) {
    return LogError("identifier has not been defined", id, line_pos);
  }
  return type;
}

TypePtr Analyzer::AnalyzeNum() {
  return std::make_shared<ConstType>(MakePlainType(Keyword::Int32));
}

TypePtr Analyzer::AnalyzeString() {
  auto char_type = MakePlainType(Keyword::Int8);
  auto str_type = std::make_shared<PointerType>(std::move(char_type), 1);
  return std::make_shared<ConstType>(std::move(str_type));
}

TypePtr Analyzer::AnalyzeChar() {
  return std::make_shared<ConstType>(MakePlainType(Keyword::Int8));
}

TypePtr Analyzer::AnalyzeArray(unsigned int line_pos,
                               const TypePtrList &elems) {
  TypePtr deduced;
  for (const auto &i : elems) {
    // check if is invalid type
    if (i->IsVoid() || i->IsFunction()) {
      return LogError("invalid type of array element", line_pos);
    }
    // deduce type of array
    if (!deduced) {
      deduced = i->IsConst() ? i->GetDeconstedType() : i;
    }
    else if (!deduced->CanAccept(i)) {
      return LogError("type mismatch in array elements", line_pos);
    }
  }
  // create new type
  assert(deduced != nullptr);
  auto arr_type = std::make_shared<PointerType>(std::move(deduced), 1);
  return std::make_shared<ConstType>(std::move(arr_type));
}

TypePtr Analyzer::AnalyzeIndex(unsigned int line_pos, const std::string &id,
                               const TypePtr &index) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) {
    return LogError("identifier has not been defined", id, line_pos);
  }
  // check if is a pointer
  if (!type->IsPointer()) return LogError("invalid pointer", id, line_pos);
  // check index type
  if (!index->IsInteger()) return LogError("invalid index", id, line_pos);
  // get dereferenced type
  auto deref = type->GetDerefedType();
  assert(deref != nullptr);
  return deref;
}
