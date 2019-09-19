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

  // return true if is void type
  virtual bool IsVoid() const = 0;
  // return true if is integer type
  virtual bool IsInteger() const = 0;
  // return true if is constant type
  virtual bool IsConst() const = 0;
  // return true if is pointer type
  virtual bool IsPointer() const = 0;
  // return true if is function type
  virtual bool IsFunction() const = 0;
  // return true if left value which is current type
  // can accept the right value which is specific type
  virtual bool CanAccept(const TypePtr &type) const = 0;
  // return true if current type can be casted to specific type
  virtual bool CanCastTo(const TypePtr &type) const = 0;
  // return the return type of a function call
  virtual TypePtr GetReturnType(const TypePtrList &args) const = 0;
  // return the dereferenced type of current type
  virtual TypePtr GetDerefedType() const = 0;
  // return the deconsted type of current type
  virtual TypePtr GetDeconstedType() const = 0;
};

class PlainType : public BaseType {
 public:
  enum class Type {
    Void, Int32, Int8, UInt32, UInt8,
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

class PointerType : public BaseType {
 public:
  PointerType(TypePtr type, unsigned int ptr)
      : type_(std::move(type)), ptr_(ptr) {}

  //

 private:
  TypePtr type_;
  unsigned int ptr_;
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
    case Keyword::Int8: return std::make_shared<PlainType>(Type::Int8);
    case Keyword::UInt32: return std::make_shared<PlainType>(Type::UInt32);
    case Keyword::UInt8: return std::make_shared<PlainType>(Type::UInt8);
    default: assert(false); return nullptr;
  }
}

// create a new void type
inline TypePtr MakeVoidType() {
  return std::make_shared<PlainType>(PlainType::Type::Void);
}

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_TYPE_H_
