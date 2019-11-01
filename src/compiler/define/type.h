#ifndef TINYLANG_DEFINE_TYPE_H_
#define TINYLANG_DEFINE_TYPE_H_

#include <memory>
#include <vector>
#include <optional>
#include <cstddef>
#include <cassert>

#include "front/lexer.h"

namespace tinylang::define {

// size of machine word length
constexpr std::size_t kTypeSizeWordLength = 4;

// definition of base class of all types
class BaseType;
using TypePtr = std::shared_ptr<BaseType>;
using TypePtrList = std::vector<TypePtr>;

class BaseType {
 public:
  virtual ~BaseType() = default;

  // return true if is right value
  virtual bool IsRightValue() const = 0;
  // return true if is void type
  virtual bool IsVoid() const = 0;
  // return true if is integer type
  virtual bool IsInteger() const = 0;
  // return true if is unsigned type
  virtual bool IsUnsigned() const = 0;
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
  // return the size of current type
  virtual std::size_t GetSize() const = 0;
  // return the type of arguments of a function call
  virtual std::optional<TypePtrList> GetArgsType() const = 0;
  // return the return type of a function call
  virtual TypePtr GetReturnType(const TypePtrList &args) const = 0;
  // return the dereferenced type of current type
  virtual TypePtr GetDerefedType() const = 0;
  // return the deconsted type of current type
  virtual TypePtr GetDeconstedType() const = 0;
  // return a new type with specific value type (left/right)
  virtual TypePtr GetRightValue(bool is_right) = 0;
};

class PlainType : public BaseType {
 public:
  enum class Type {
    Void, Int32, Int8, UInt32, UInt8,
  };

  PlainType(Type type, bool is_right) : type_(type), is_right_(is_right) {}

  bool IsRightValue() const override { return is_right_; }
  bool IsVoid() const override { return type_ == Type::Void; }
  bool IsInteger() const override { return type_ != Type::Void; }
  bool IsUnsigned() const override {
    return type_ == Type::UInt32 || type_ == Type::UInt8;
  }
  bool IsConst() const override { return false; }
  bool IsPointer() const override { return false; }
  bool IsFunction() const override { return false; }
  std::size_t GetSize() const override {
    switch (type_) {
      case Type::Int32: case Type::UInt32: return 4;
      case Type::Int8: case Type::UInt8: return 1;
      default: return 0;
    }
  }
  std::optional<TypePtrList> GetArgsType() const override { return {}; }
  TypePtr GetDerefedType() const override { return nullptr; }
  TypePtr GetDeconstedType() const override { return nullptr; }
  TypePtr GetRightValue(bool is_right) override {
    return std::make_shared<PlainType>(type_, is_right);
  }

  bool CanAccept(const TypePtr &type) const override;
  bool CanCastTo(const TypePtr &type) const override;
  TypePtr GetReturnType(const TypePtrList &args) const override;

 private:
  Type type_;
  bool is_right_;
};

class ConstType : public BaseType {
 public:
  ConstType(TypePtr type) : type_(std::move(type)) {
    assert(!type_->IsConst());
  }

  bool IsRightValue() const override { return type_->IsRightValue(); }
  bool IsVoid() const override { return type_->IsVoid(); }
  bool IsInteger() const override { return type_->IsInteger(); }
  bool IsUnsigned() const override { return type_->IsUnsigned(); }
  bool IsConst() const override { return true; }
  bool IsPointer() const override { return type_->IsPointer(); }
  bool IsFunction() const override { return type_->IsFunction(); }
  std::size_t GetSize() const override { return type_->GetSize(); }
  std::optional<TypePtrList> GetArgsType() const override { return {}; }
  TypePtr GetDerefedType() const override {
    return type_->GetDerefedType();
  }
  TypePtr GetDeconstedType() const override { return type_; }
  TypePtr GetRightValue(bool is_right) override {
    return std::make_shared<ConstType>(type_->GetRightValue(is_right));
  }

  bool CanAccept(const TypePtr &type) const override;
  bool CanCastTo(const TypePtr &type) const override;
  TypePtr GetReturnType(const TypePtrList &args) const override;

 private:
  TypePtr type_;
};

class PointerType : public BaseType {
 public:
  PointerType(TypePtr type, unsigned int ptr)
      : type_(std::move(type)), ptr_(ptr) {
    assert(ptr > 0);
  }
  
  bool IsRightValue() const override { return type_->IsRightValue(); }
  bool IsVoid() const override { return false; }
  bool IsInteger() const override { return false; }
  bool IsUnsigned() const override { return true; }
  bool IsConst() const override { return false; }
  bool IsPointer() const override { return true; }
  bool IsFunction() const override { return false; }
  std::size_t GetSize() const override { return kTypeSizeWordLength; }
  std::optional<TypePtrList> GetArgsType() const override { return {}; }
  TypePtr GetDerefedType() const override {
    return ptr_ == 1 ? type_
                     : std::make_shared<PointerType>(type_, ptr_ - 1);
  }
  TypePtr GetDeconstedType() const override { return nullptr; }
  TypePtr GetRightValue(bool is_right) override {
    return std::make_shared<PointerType>(type_->GetRightValue(is_right),
                                         ptr_);
  }

  bool CanAccept(const TypePtr &type) const override;
  bool CanCastTo(const TypePtr &type) const override;
  TypePtr GetReturnType(const TypePtrList &args) const override;

 private:
  TypePtr type_;
  unsigned int ptr_;
};

class FuncType : public BaseType {
 public:
  FuncType(TypePtrList args, TypePtr ret)
      : args_(std::move(args)), ret_(std::move(ret)) {}

  bool IsRightValue() const override { return true; }
  bool IsVoid() const override { return false; }
  bool IsInteger() const override { return false; }
  bool IsUnsigned() const override { return false; }
  bool IsConst() const override { return false; }
  bool IsPointer() const override { return false; }
  bool IsFunction() const override { return true; }
  std::size_t GetSize() const override { return 0; }
  std::optional<TypePtrList> GetArgsType() const override { return args_; }
  TypePtr GetDerefedType() const override { return nullptr; }
  TypePtr GetDeconstedType() const override { return nullptr; }
  TypePtr GetRightValue(bool is_right) override { return nullptr; }

  bool CanAccept(const TypePtr &type) const override;
  bool CanCastTo(const TypePtr &type) const override;
  TypePtr GetReturnType(const TypePtrList &args) const override;

 private:
  TypePtrList args_;
  TypePtr ret_;
};

// create a new plain type by type keyword
inline TypePtr MakePlainType(front::Keyword key, bool is_right) {
  using namespace front;
  using Type = PlainType::Type;
  switch (key) {
    case Keyword::Int32: {
      return std::make_shared<PlainType>(Type::Int32, is_right);
    }
    case Keyword::Int8: {
      return std::make_shared<PlainType>(Type::Int8, is_right);
    }
    case Keyword::UInt32: {
      return std::make_shared<PlainType>(Type::UInt32, is_right);
    }
    case Keyword::UInt8: {
      return std::make_shared<PlainType>(Type::UInt8, is_right);
    }
    default: {
      assert(false);
      return nullptr;
    }
  }
}

// create a new void type
inline TypePtr MakeVoidType() {
  return std::make_shared<PlainType>(PlainType::Type::Void, false);
}

// check if 2 pointers are compatible
inline bool IsPointerCompatible(const BaseType &p1, const BaseType &p2) {
  if (p1.IsPointer() && p2.IsPointer()) {
    return IsPointerCompatible(*p1.GetDerefedType(), *p2.GetDerefedType());
  }
  else if (!p1.IsPointer() && !p2.IsPointer()) {
    return p1.IsInteger() && p2.IsInteger() &&
           !(p1.IsUnsigned() ^ p2.IsUnsigned()) &&
           p1.GetSize() == p2.GetSize();
  }
  else {
    return false;
  }
}

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_TYPE_H_
