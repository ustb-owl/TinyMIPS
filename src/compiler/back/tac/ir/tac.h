#ifndef TINYLANG_BACK_TAC_IR_TAC_H_
#define TINYLANG_BACK_TAC_IR_TAC_H_

#include <memory>
#include <vector>
#include <ostream>
#include <cstddef>

namespace tinylang::back::tac {

// forward declaration
class TACBase;
using TACPtr = std::shared_ptr<TACBase>;
using TACPtrList = std::vector<TACPtr>;

// forward declaration of pass & code generator
class PassBase;
class CodeGenerator;

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
  // run optimization on current TAC
  virtual void RunPass(PassBase &pass) = 0;
  // run code generation on current TAC
  virtual void GenerateCode(CodeGenerator &gen) = 0;

  // return true if current TAC is constant
  virtual bool IsConst() const = 0;
};

// binary operations
class BinaryTAC : public TACBase {
 public:
  BinaryTAC(BinaryOp op, const TACPtr &lhs, const TACPtr &rhs,
            const TACPtr &dest)
      : op_(op), lhs_(lhs), rhs_(rhs), dest_(dest) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override {
    return lhs_->IsConst() && rhs_->IsConst();
  }

  void set_lhs(const TACPtr &lhs) { lhs_ = lhs; }
  void set_rhs(const TACPtr &rhs) { rhs_ = rhs; }
  void set_dest(const TACPtr &dest) { dest_ = dest; }

  BinaryOp op() const { return op_; }
  const TACPtr &lhs() const { return lhs_; }
  const TACPtr &rhs() const { return rhs_; }
  const TACPtr &dest() const { return dest_; }

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
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return opr_->IsConst(); }

  void set_opr(const TACPtr &opr) { opr_ = opr; }
  void set_dest(const TACPtr &dest) { dest_ = dest; }

  UnaryOp op() const { return op_; }
  const TACPtr &opr() const { return opr_; }
  const TACPtr &dest() const { return dest_; }

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
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  void set_addr(const TACPtr &addr) { addr_ = addr; }
  void set_dest(const TACPtr &dest) { dest_ = dest; }

  const TACPtr &addr() const { return addr_; }
  const TACPtr &dest() const { return dest_; }
  bool is_unsigned() const { return is_unsigned_; }
  std::size_t size() const { return size_; }

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
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  void set_value(const TACPtr &value) { value_ = value; }
  void set_addr(const TACPtr &addr) { addr_ = addr; }

  const TACPtr &value() const { return value_; }
  const TACPtr &addr() const { return addr_; }
  std::size_t size() const { return size_; }

 private:
  TACPtr value_, addr_;
  std::size_t size_;
};

// argument setter
class ArgSetTAC : public TACBase {
 public:
  ArgSetTAC(std::size_t pos, const TACPtr &value)
      : pos_(pos), value_(value) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  void set_value(const TACPtr &value) { value_ = value; }

  std::size_t pos() const { return pos_; }
  const TACPtr &value() const { return value_; }

 private:
  std::size_t pos_;
  TACPtr value_;
};

// jump to label
class JumpTAC : public TACBase {
 public:
  JumpTAC(const TACPtr &dest) : dest_(dest) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  const TACPtr &dest() const { return dest_; }

 private:
  TACPtr dest_;
};

// branch to labels
class BranchTAC : public TACBase {
 public:
  BranchTAC(const TACPtr &cond, const TACPtr &dest)
      : cond_(cond), dest_(dest) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return cond_->IsConst(); }

  void set_cond(const TACPtr &cond) { cond_ = cond; }

  const TACPtr &cond() const { return cond_; }
  const TACPtr &dest() const { return dest_; }

 private:
  TACPtr cond_, dest_;
};

// function call
class CallTAC : public TACBase {
 public:
  CallTAC(const TACPtr &func, const TACPtr &dest)
      : func_(func), dest_(dest) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  void set_dest(const TACPtr &dest) { dest_ = dest; }

  const TACPtr &func() const { return func_; }
  const TACPtr &dest() const { return dest_; }

 private:
  TACPtr func_, dest_;
};

// return from function
class ReturnTAC : public TACBase {
 public:
  ReturnTAC(const TACPtr &value) : value_(value) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  void set_value(const TACPtr &value) { value_ = value; }

  const TACPtr &value() const { return value_; }

 private:
  TACPtr value_;
};

// variable assign
class AssignTAC : public TACBase {
 public:
  AssignTAC(const TACPtr &value, const TACPtr &var)
      : value_(value), var_(var) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return value_->IsConst(); }

  void set_value(const TACPtr &value) { value_ = value; }

  const TACPtr &value() const { return value_; }
  const TACPtr &var() const { return var_; }

 private:
  TACPtr value_, var_;
};

// variable reference
class VarRefTAC : public TACBase {
 public:
  VarRefTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  std::size_t id() const { return id_; }

 private:
  std::size_t id_;
};

// data reference (from data segment)
class DataTAC : public TACBase {
 public:
  DataTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return true; }

  std::size_t id() const { return id_; }

 private:
  std::size_t id_;
};

// label
class LabelTAC : public TACBase {
 public:
  LabelTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  std::size_t id() const { return id_; }

 private:
  std::size_t id_;
};

// argument getter
class ArgGetTAC : public TACBase {
 public:
  ArgGetTAC(std::size_t pos) : pos_(pos) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return false; }

  std::size_t pos() const { return pos_; }

 private:
  std::size_t pos_;
};

// number constant
class NumberTAC : public TACBase {
 public:
  NumberTAC(unsigned int num) : num_(num) {}

  void Dump(std::ostream &os) override;
  void RunPass(PassBase &pass) override;
  void GenerateCode(CodeGenerator &gen) override;

  bool IsConst() const override { return true; }

  unsigned int num() const { return num_; }

 private:
  unsigned int num_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_TAC_H_
