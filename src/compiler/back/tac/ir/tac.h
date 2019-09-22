#ifndef TINYLANG_BACK_TAC_IR_TAC_H_
#define TINYLANG_BACK_TAC_IR_TAC_H_

#include <memory>
#include <vector>
#include <ostream>
#include <cstddef>

namespace tinylang::back::tac {

class TACBase;
using TACPtr = std::shared_ptr<TACBase>;
using TACPtrList = std::vector<TACPtr>;

// base class for all tree-address code
class TACBase {
 public:
  virtual ~TACBase() = default;

  // dump the content of TAC to output stream
  virtual void Dump(std::ostream &os) = 0;
};

// binary operations
class BinaryTAC : public TACBase {
 public:
  enum class Operator {
    Add, Sub, Mul, Div, Mod,
    Equal, NotEqual, Less, LessEqual, Great, GreatEqual,
    LogicAnd, LogicOr,
    And, Or, Xor, Shl, Shr,
  };

  BinaryTAC(Operator op, const TACPtr &lhs, const TACPtr &rhs,
            const TACPtr &dest)
      : op_(op), lhs_(lhs), rhs_(rhs), dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  Operator op_;
  TACPtr lhs_, rhs_, dest_;
};

// unary operations
class UnaryTAC : public TACBase {
 public:
  enum class Operator {
    Negate, LogicNot, Not, AddressOf,
  };

  UnaryTAC(Operator op, const TACPtr &opr, const TACPtr &dest)
      : op_(op), opr_(opr), dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  Operator op_;
  TACPtr opr_, dest_;
};

// load from memory
class LoadTAC : public TACBase {
 public:
  LoadTAC(const TACPtr &base, const TACPtr &offset, const TACPtr &dest)
      : base_(base), offset_(offset), dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr base_, offset_, dest_;
};

// store to memory
class StoreTAC : public TACBase {
 public:
  StoreTAC(const TACPtr &value, const TACPtr &base, const TACPtr &offset)
      : value_(value), base_(base), offset_(offset) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr value_, base_, offset_;
};

// jump to label
class JumpTAC : public TACBase {
 public:
  JumpTAC(const TACPtr &dest) : dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr dest_;
};

// branch to labels
class BranchTAC : public TACBase {
 public:
  BranchTAC(const TACPtr &cond, const TACPtr &dest)
      : cond_(cond), dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr cond_, dest_;
};

// function call
class CallTAC : public TACBase {
 public:
  CallTAC(const TACPtr &func, TACPtrList args, const TACPtr &dest)
      : func_(func), args_(std::move(args)), dest_(dest) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr func_, dest_;
  TACPtrList args_;
};

// return from function
class ReturnTAC : public TACBase {
 public:
  ReturnTAC(const TACPtr &value) : value_(value) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr value_;
};

// variable initialize
class VarInitTAC : public TACBase {
 public:
  VarInitTAC(const TACPtr &value, const TACPtr &var)
      : value_(value), var_(var) {}

  void Dump(std::ostream &os) override;

 private:
  TACPtr value_, var_;
};

// variable reference
class VarRefTAC : public TACBase {
 public:
  VarRefTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

 private:
  std::size_t id_;
};

// data reference (from data segment)
class DataTAC : public TACBase {
 public:
  DataTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

 private:
  std::size_t id_;
};

// label
class LabelTAC : public TACBase {
 public:
  LabelTAC(std::size_t id) : id_(id) {}

  void Dump(std::ostream &os) override;

 private:
  std::size_t id_;
};

// argument getter
class ArgGetTAC : public TACBase {
 public:
  ArgGetTAC(std::size_t pos) : pos_(pos) {}

  void Dump(std::ostream &os) override;

 private:
  std::size_t pos_;
};

// number constant
class NumberTAC : public TACBase {
 public:
  NumberTAC(unsigned int num) : num_(num) {}

  void Dump(std::ostream &os) override;

 private:
  unsigned int num_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_TAC_H_
