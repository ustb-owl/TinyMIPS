#ifndef TINYLANG_DEFINE_TYPE_H_
#define TINYLANG_DEFINE_TYPE_H_

#include <memory>
#include <vector>

namespace tinylang::define {

// definition of base class of all types
class BaseType;
using TypePtr = std::unique_ptr<BaseType>;
using TypeRef = const BaseType *;
using TypePtrList = std::vector<TypePtr>;
using TypeRefList = std::vector<TypeRef>;

class BaseType {
 public:
  virtual ~BaseType() = default;

  virtual bool IsPlain() const = 0;
  virtual bool IsEqual(TypeRef type) const = 0;
};

class PlainType : public BaseType {
 public:
  enum class Type {
    Void,
    Int32, Int8, Int32Ptr, Int8Ptr,
    UInt32, UInt8, UInt32Ptr, UInt8Ptr,
  };

  PlainType(Type type) : type_(type) {}

  bool IsPlain() const override { return true; }
  bool IsEqual(TypeRef type) const override;

 private:
  Type type_;
};

class FuncType : public BaseType {
 public:
  FuncType(TypePtrList args, TypePtr ret)
      : args_(std::move(args)), ret_(std::move(ret)) {}

  bool IsPlain() const override { return false; }
  bool IsEqual(TypeRef type) const override;

 private:
  TypePtrList args_;
  TypePtr ret_;
};

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_TYPE_H_
