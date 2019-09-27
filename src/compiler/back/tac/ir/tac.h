#ifndef TINYLANG_BACK_TAC_IR_TAC_H_
#define TINYLANG_BACK_TAC_IR_TAC_H_

#include <memory>
#include <vector>
#include <ostream>
#include <optional>
#include <cstddef>

namespace tinylang::back::tac {

// forward declaration
class TACBase;
using TACPtr = std::shared_ptr<TACBase>;
using TACPtrList = std::vector<TACPtr>;

// binary operators
enum class BinaryOp {
  Add, Sub, Mul, UMul, Div, UDiv, Mod, UMod,
  Equal, NotEqual,
  Less, ULess, LessEq, ULessEq, Great, UGreat, GreatEq, UGreatEq,
  LogicAnd, LogicOr,
  And, Or, Xor, Shl, AShr, LShr,
};

// unary operators
enum class UnaryOp {
  Negate, LogicNot, Not, AddressOf,
  SExt, ZExt, Trunc,
};

// base class for all tree-address code
class TACBase {
 public:
  virtual ~TACBase() = default;

  // dump the content of TAC to output stream
  virtual void Dump(std::ostream &os) = 0;

  // return true if current TAC is constant
  virtual bool IsConst() const = 0;
  // return constant value in current TAC
  virtual std::optional<unsigned int> GetValue() const = 0;
  // return true if current TAC is data ref
  virtual bool IsDataRef() const = 0;
  // return operand1 of current TAC
  virtual TACPtr GetOperand1() const = 0;
  // return operand2 of current TAC
  virtual TACPtr GetOperand2() const = 0;
  // return dest of current TAC
  virtual TACPtr GetDest() const = 0;
  // return binary operator of current TAC
  virtual std::optional<BinaryOp> GetBinaryOp() const = 0;
  // return unary operator of current TAC
  virtual std::optional<UnaryOp> GetUnaryOp() const = 0;
};

// binary operations
class BinaryTAC : public TACBase {
 public:
  BinaryTAC(BinaryOp op, const TACPtr &lhs, const TACPtr &rhs,
            const TACPtr &dest)
      : op_(op), lhs_(lhs), rhs_(rhs), dest_(dest) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override {
    return lhs_->IsConst() && rhs_->IsConst();
  }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return lhs_; }
  TACPtr GetOperand2() const override { return rhs_; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return op_; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  BinaryOp op_;
  TACPtr lhs_, rhs_, dest_;
};

// unary operations
class UnaryTAC : public TACBase {
 public:
  UnaryTAC(UnaryOp op, const TACPtr &opr, const TACPtr &dest)
      : op_(op), opr_(opr), dest_(dest) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return opr_->IsConst(); }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return opr_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return op_; }

 private:
  UnaryOp op_;
  TACPtr opr_, dest_;
};

// load from memory
class LoadTAC : public TACBase {
 public:
  LoadTAC(const TACPtr &addr, const TACPtr &dest, bool is_unsigned,
          std::size_t size)
      : addr_(addr), dest_(dest), is_unsigned_(is_unsigned), size_(size) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return addr_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr addr_, dest_;
  bool is_unsigned_;
  std::size_t size_;
};

// store to memory
class StoreTAC : public TACBase {
 public:
  StoreTAC(const TACPtr &value, const TACPtr &addr, std::size_t size)
      : value_(value), addr_(addr), size_(size) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return value_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return addr_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr value_, addr_;
  std::size_t size_;
};

// jump to label
class JumpTAC : public TACBase {
 public:
  JumpTAC(const TACPtr &dest) : dest_(dest) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr dest_;
};

// branch to labels
class BranchTAC : public TACBase {
 public:
  BranchTAC(const TACPtr &cond, const TACPtr &dest)
      : cond_(cond), dest_(dest) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return cond_->IsConst(); }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return cond_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr cond_, dest_;
};

// function call
class CallTAC : public TACBase {
 public:
  CallTAC(const TACPtr &func, TACPtrList args, const TACPtr &dest)
      : func_(func), args_(std::move(args)), dest_(dest) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return func_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return dest_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr func_, dest_;
  TACPtrList args_;
};

// return from function
class ReturnTAC : public TACBase {
 public:
  ReturnTAC(const TACPtr &value) : value_(value) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return value_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr value_;
};

// variable assign
class AssignTAC : public TACBase {
 public:
  AssignTAC(const TACPtr &value, const TACPtr &var)
      : value_(value), var_(var) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return value_->IsConst(); }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return value_; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return var_; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  TACPtr value_, var_;
};

// variable reference
class VarRefTAC : public TACBase {
 public:
  VarRefTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  std::size_t id_;
};

// data reference (from data segment)
class DataTAC : public TACBase {
 public:
  DataTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return true; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  std::size_t id_;
};

// label
class LabelTAC : public TACBase {
 public:
  LabelTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  std::size_t id_;
};

// argument getter
class ArgGetTAC : public TACBase {
 public:
  ArgGetTAC(std::size_t pos) : pos_(pos) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return false; }
  std::optional<unsigned int> GetValue() const override { return {}; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  std::size_t pos_;
};

// number constant
class NumberTAC : public TACBase {
 public:
  NumberTAC(unsigned int num) : num_(num) {}

  void Dump(std::ostream &os) override;

  bool IsConst() const override { return true; }
  std::optional<unsigned int> GetValue() const override { return num_; }
  bool IsDataRef() const override { return false; }
  TACPtr GetOperand1() const override { return nullptr; }
  TACPtr GetOperand2() const override { return nullptr; }
  TACPtr GetDest() const override { return nullptr; }
  std::optional<BinaryOp> GetBinaryOp() const override { return {}; }
  std::optional<UnaryOp> GetUnaryOp() const override { return {}; }

 private:
  unsigned int num_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_TAC_H_
