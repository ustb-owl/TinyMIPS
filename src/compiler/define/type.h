#ifndef TINYLANG_DEFINE_TYPE_H_
#define TINYLANG_DEFINE_TYPE_H_

#include <memory>
#include <vector>
#include <cassert>

#include "front/lexer.h"

namespace tinylang::define {

// definition of base class of all types
class BaseType;
using TypePtr = std::shared_ptr<BaseType>;
using TypePtrList = std::vector<TypePtr>;

class BaseType {
 public:
  virtual ~BaseType() = default;

  virtual bool IsConst() const = 0;
  virtual bool CanCastTo(const TypePtr &type) const = 0;
  virtual TypePtr GetReturnType(const TypePtrList &args) const = 0;
  virtual TypePtr GetDerefedType() const = 0;
};

class PlainType : public BaseType {
 public:
  enum class Type {
    Void,
    Int32, Int8, Int32Ptr, Int8Ptr,
    UInt32, UInt8, UInt32Ptr, UInt8Ptr,
  };

  PlainType(Type type) : type_(type) {}

  //

 private:
  Type type_;
};

class ConstType : public BaseType {
 public:
  ConstType(TypePtr type) : type_(std::move(type)) {}

  //

 private:
  TypePtr type_;
};

class FuncType : public BaseType {
 public:
  FuncType(TypePtrList args, TypePtr ret)
      : args_(std::move(args)), ret_(std::move(ret)) {}

  //

 private:
  TypePtrList args_;
  TypePtr ret_;
};

// create a new plain type by type keyword
inline TypePtr MakePlainType(front::Keyword key) {
  using namespace front;
  using Type = PlainType::Type;
  switch (key) {
    case Keyword::Int32: return std::make_shared<PlainType>(Type::Int32);
    // TODO
    default: assert(false); return nullptr;
  }
}

// create a new void type
inline TypePtr MakeVoidType() {
  return std::make_shared<PlainType>(PlainType::Type::Void);
}

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_TYPE_H_
