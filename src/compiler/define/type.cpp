#include "define/type.h"

using namespace tinylang::define;

bool PlainType::CanAccept(const TypePtr &type) const {
  if ((type->IsVoid() ^ (type_ == Type::Void)) || type->IsFunction() ||
      type->IsPointer()) {
    return false;
  }
  return type->GetSize() <= GetSize();
}

bool PlainType::CanCastTo(const TypePtr &type) const {
  return !type->IsVoid() && !type->IsConst() && !type->IsFunction();
}

TypePtr PlainType::GetReturnType(const TypePtrList &args) const {
  return nullptr;
}

bool ConstType::CanAccept(const TypePtr &type) const {
  return false;
}

bool ConstType::CanCastTo(const TypePtr &type) const {
  return !type->IsVoid() && type->IsConst() && !type->IsFunction();
}

TypePtr ConstType::GetReturnType(const TypePtrList &args) const {
  return type_->GetReturnType(args);
}

bool PointerType::CanAccept(const TypePtr &type) const {
  if (type->IsVoid() || type->IsFunction()) return false;
  if (type->IsPointer()) return IsPointerCompatible(*this, *type);
  return type->GetSize() <= GetSize();
}

bool PointerType::CanCastTo(const TypePtr &type) const {
  return type->GetSize() >= GetSize();
}

TypePtr PointerType::GetReturnType(const TypePtrList &args) const {
  return nullptr;
}

bool FuncType::CanAccept(const TypePtr &type) const {
  return false;
}

bool FuncType::CanCastTo(const TypePtr &type) const {
  return false;
}

TypePtr FuncType::GetReturnType(const TypePtrList &args) const {
  if (args.size() != args_.size()) return nullptr;
  for (std::size_t i = 0; i < args.size(); ++i) {
    if (!args_[i]->CanAccept(args[i])) return nullptr;
  }
  return ret_;
}
