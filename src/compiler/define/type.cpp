#include "define/type.h"

using namespace tinylang::define;

bool PlainType::IsEqual(TypeRef type) const {
  // check whether is plain
  if (!type->IsPlain()) return false;
  auto plain = static_cast<const PlainType *>(type);
  // check plain type
  return type_ == plain->type_;
}

bool FuncType::IsEqual(TypeRef type) const {
  // check whether is func
  if (type->IsPlain()) return false;
  auto func = static_cast<const FuncType *>(type);
  // check argument list size
  if (args_.size() != func->args_.size()) return false;
  // check argument list
  for (int i = 0; i < args_.size(); ++i) {
    if (!args_[i]->IsEqual(func->args_[i].get())) return false;
  }
  // check return type
  return ret_->IsEqual(func->ret_.get());
}
