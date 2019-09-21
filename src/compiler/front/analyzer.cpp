#include "front/analyzer.h"

#include <iostream>
#include <cassert>

#include "util/style.h"

using namespace tinylang::front;
using namespace tinylang::define;

namespace {

inline Operator GetDeAssignedOp(Operator op) {
  switch (op) {
    case Operator::AssAdd: return Operator::Add;
    case Operator::AssSub: return Operator::Sub;
    case Operator::AssMul: return Operator::Mul;
    case Operator::AssDiv: return Operator::Div;
    case Operator::AssMod: return Operator::Mod;
    case Operator::AssAnd: return Operator::And;
    case Operator::AssOr: return Operator::Or;
    case Operator::AssXor: return Operator::Xor;
    case Operator::AssShl: return Operator::Shl;
    case Operator::AssShr: return Operator::Shr;
    default: assert(false); return Operator::Assign;
  }
}

}  // namespace

TypePtr Analyzer::LogError(const char *message) {
  using namespace util;
  // print error message
  std::cerr << style("B") << "analyzer";
  std::cerr << " (line " << line_pos_.top();
  std::cerr << "): " << style("Br") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return nullptr;
}

TypePtr Analyzer::LogError(const char *message, const std::string &id) {
  using namespace util;
  // print error message
  std::cerr << style("B") << "analyzer";
  std::cerr << " (line " << line_pos_.top();
  std::cerr << ", id: " << id;
  std::cerr << "): " << style("Br") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return nullptr;
}

TypePtr Analyzer::AnalyzeFunDef(const std::string &id, TypePtrList args,
                                TypePtr ret) {
  // NOTE: current env is argument env
  const auto &func_env = env_->outer();
  // check if is in root env
  if (!func_env->is_root()) {
    return LogError("nested function is not allowed", id);
  }
  // check if is existed
  if (func_env->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id);
  }
  // create return type
  auto const_ret = std::move(ret);
  if (!const_ret->IsConst()) {
    const_ret = std::make_shared<ConstType>(std::move(const_ret));
  }
  // create function symbol
  auto type = std::make_shared<FuncType>(std::move(args),
                                         std::move(const_ret));
  func_env->AddSymbol(id, std::move(type));
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeFunCall(const std::string &id,
                                 const TypePtrList &args) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) return LogError("identifier has not been defined", id);
  // check return type
  auto ret = type->GetReturnType(args);
  if (!ret) return LogError("invalid function call", id);
  return ret;
}

TypePtr Analyzer::AnalyzeControl(Keyword type, const TypePtr &expr) {
  switch (type) {
    case Keyword::Break: case Keyword::Continue: {
      // check if is in a while loop
      if (!while_count_) {
        return LogError("using break/continue outside the loop");
      }
      break;
    }
    case Keyword::Return: {
      // check if is in a function
      if (!cur_ret_) {
        return LogError("using 'return' outside the function");
      }
      else {
        auto type = expr;
        if (!type) type = MakeVoidType();
        // check if is compatible
        if (!cur_ret_->CanAccept(type)) {
          return LogError("type mismatch when returning");
        }
      }
      break;
    }
    default: assert(false);
  }
  return MakeVoidType();
}

TypePtr Analyzer::AnalyzeVarElem(const std::string &id, TypePtr type,
                                 const TypePtr &init) {
  // check if is defined
  if (env_->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id);
  }
  if (type) {
    // check if is compatible
    if (init && !type->CanAccept(init)) {
      return LogError("type mismatch when initializing", id);
    }
    // add symbol info
    env_->AddSymbol(id, std::move(type));
  }
  else {
    assert(init != nullptr);
    // check if can be deduced
    if (init->IsVoid() || init->IsFunction()) {
      return LogError("initializing a vairable with invalid type", id);
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

TypePtr Analyzer::AnalyzeLetElem(const std::string &id, TypePtr type,
                                 const TypePtr &init) {
  assert(init != nullptr);
  TypePtr const_type;
  // check if is defined
  if (env_->GetInfo(id, false)) {
    return LogError("identifier has already beed defined", id);
  }
  if (type) {
    // check if is compatible
    if (!type->CanAccept(init)) {
      return LogError("type mismatch when initializing", id);
    }
    const_type = std::move(type);
  }
  else {
    // check if can be deduced
    if (init->IsVoid() || init->IsFunction()) {
      return LogError("initializing a vairable with 'void' type", id);
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

TypePtr Analyzer::AnalyzeType(Keyword type, unsigned int ptr) {
  auto ret = MakePlainType(type);
  if (ptr) {
    ret = std::make_shared<PointerType>(std::move(ret), ptr);
  }
  return ret;
}

TypePtr Analyzer::AnalyzeArgElem(const std::string &id, TypePtr type) {
  if (env_->GetInfo(id, false)) {
    return LogError("duplicated argument name", id);
  }
  env_->AddSymbol(id, type);
  return type;
}

TypePtr Analyzer::AnalyzeBinary(Operator op, const TypePtr &lhs,
                                const TypePtr &rhs) {
  // preprocess some types
  if (lhs->IsVoid() || rhs->IsVoid() || lhs->IsFunction() ||
      rhs->IsFunction()) {
    return LogError("invalid operation");
  }
  switch (op) {
    // integer operations #1
    case Operator::Add: case Operator::Sub: {
      TypePtr ret;
      if (lhs->IsPointer() || rhs->IsPointer()) {
        if (lhs->IsPointer() && rhs->IsPointer()) {
          return LogError("invalid pointer operation");
        }
        ret = lhs->IsPointer() ? lhs : rhs;
      }
      else if (lhs->GetSize() != rhs->GetSize()) {
        ret = lhs->GetSize() > rhs->GetSize() ? lhs : rhs;
      }
      else if (lhs->IsUnsigned() || rhs->IsUnsigned()) {
        ret = lhs->IsUnsigned() ? lhs : rhs;
      }
      else {
        ret = lhs;
      }
      return ret;
    }
    // integer operations #2
    case Operator::Mul: case Operator::Div: case Operator::Mod:
    case Operator::And: case Operator::Or: case Operator::Xor:
    case Operator::Shl: case Operator::Shr: {
      TypePtr ret;
      if (lhs->IsPointer() || rhs->IsPointer()) {
        return LogError("operation cannot be done with pointers");
      }
      else if (lhs->GetSize() != rhs->GetSize()) {
        ret = lhs->GetSize() > rhs->GetSize() ? lhs : rhs;
      }
      else if (lhs->IsUnsigned() || rhs->IsUnsigned()) {
        ret = lhs->IsUnsigned() ? lhs : rhs;
      }
      else {
        ret = lhs;
      }
      return ret;
    }
    // relational operations
    case Operator::LogicAnd: case Operator::LogicOr: case Operator::Less:
    case Operator::LessEqual: case Operator::Great:
    case Operator::GreatEqual: case Operator::Equal:
    case Operator::NotEqual: {
      if (lhs->IsPointer() ^ rhs->IsPointer()) {
        return LogError("lhs and rhs must be both pointer/non-pointer");
      }
      else if (lhs->IsUnsigned() ^ rhs->IsUnsigned()) {
        return LogError("lhs and rhs must be both signed/unsigned");
      }
      return MakePlainType(Keyword::UInt32);
    }
    // assign operations
    case Operator::Assign: case Operator::AssAdd: case Operator::AssSub:
    case Operator::AssMul: case Operator::AssDiv: case Operator::AssMod:
    case Operator::AssAnd: case Operator::AssOr: case Operator::AssXor:
    case Operator::AssShl: case Operator::AssShr: {
      // check if is compatible
      if (!lhs->CanAccept(rhs)) {
        return LogError("type mismatch when assigning");
      }
      // check if is compound assign operator
      if (op != Operator::Assign) {
        auto de_ass = GetDeAssignedOp(op);
        if (!AnalyzeBinary(de_ass, lhs, rhs)) return nullptr;
      }
      return MakeVoidType();
    }
    default: assert(false); return nullptr;
  }
}

TypePtr Analyzer::AnalyzeCast(const TypePtr &expr, const TypePtr &type) {
  if (!expr->CanCastTo(type)) return LogError("invalid type casting");
  return type;
}

TypePtr Analyzer::AnalyzeUnary(Operator op, const TypePtr &opr) {
  switch (op) {
    // integer operations
    case Operator::Add: case Operator::Sub:
    case Operator::Not: {
      if (!opr->IsInteger()) return LogError("expected integer types");
      return opr;
    }
    // logic operations
    case Operator::LogicNot: {
      if (!opr->IsInteger() || !opr->IsPointer()) {
        return LogError("expected integer/pointer types");
      }
      return std::make_shared<ConstType>(MakePlainType(Keyword::UInt32));
    }
    // pointer operations
    case Operator::Mul: {
      if (!opr->IsPointer()) return LogError("expected pointer types");
      return opr->GetDerefedType();
    }
    // get address operations
    case Operator::And: {
      if (opr->IsVoid() || opr->IsFunction() || opr->IsConst()) {
        return LogError("invalid 'address-of' operation");
      }
      return std::make_shared<PointerType>(opr, 1);
    }
    // other
    default: assert(false); return nullptr;
  }
}

TypePtr Analyzer::AnalyzeId(const std::string &id) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) return LogError("identifier has not been defined", id);
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

TypePtr Analyzer::AnalyzeArray(const TypePtrList &elems) {
  TypePtr deduced;
  for (const auto &i : elems) {
    // check if is invalid type
    if (i->IsVoid() || i->IsFunction()) {
      return LogError("invalid type of array element");
    }
    // deduce type of array
    if (!deduced) {
      deduced = i->IsConst() ? i->GetDeconstedType() : i;
    }
    else if (i->IsPointer()) {
      if (!deduced->IsPointer() || !IsPointerCompatible(*deduced, *i)) {
        return LogError("type mismatch in array elements");
      }
    }
    else if (deduced->GetSize() != i->GetSize()) {
      deduced = deduced->GetSize() > i->GetSize() ? deduced : i;
    }
    else if (deduced->IsUnsigned() || i->IsUnsigned()) {
      deduced = deduced->IsUnsigned() ? deduced : i;
    }
  }
  // create new type
  assert(deduced != nullptr);
  auto arr_type = std::make_shared<PointerType>(std::move(deduced), 1);
  return std::make_shared<ConstType>(std::move(arr_type));
}

TypePtr Analyzer::AnalyzeIndex(const std::string &id,
                               const TypePtr &index) {
  // get type of id
  auto type = env_->GetInfo(id);
  if (!type) return LogError("identifier has not been defined", id);
  // check if is a pointer
  if (!type->IsPointer()) return LogError("invalid pointer", id);
  // check index type
  if (!index->IsInteger()) return LogError("invalid index", id);
  // get dereferenced type
  auto deref = type->GetDerefedType();
  assert(deref != nullptr);
  return deref;
}
