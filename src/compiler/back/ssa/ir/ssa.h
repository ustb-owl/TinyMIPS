#ifndef TINYLANG_BACK_SSA_IR_SSA_H_
#define TINYLANG_BACK_SSA_IR_SSA_H_

#include <list>
#include <cstddef>

#include "back/ssa/ir/usedef.h"

namespace tinylang::back::ssa {

// constant number/pointer value
class NumberSSA : public Value {
 public:
  NumberSSA(unsigned int num, std::size_t size) : num_(num), size_(size) {}

  //

 private:
  unsigned int num_;
  std::size_t size_;
};

// array (static)
class ArraySSA : public User {
 public:
  ArraySSA(std::size_t length) { reserve(length); }

  //

 private:
  //
};

// variable definition
class VariableSSA : public User {
 public:
  VariableSSA(const SSAPtr &value) {
    reserve(1);
    push_back(value);
  }

  //

 private:
  //
};

// phi node
class PhiSSA : public User {
 public:
  PhiSSA() {}

  // TODO

  //

 private:
  //
};

// argument getter
class ArgGetSSA : public Value {
 public:
  ArgGetSSA(std::size_t arg_pos) : arg_pos_(arg_pos) {}

  //

 private:
  std::size_t arg_pos_;
};

// argument setter
class ArgSetSSA : public User {
 public:
  ArgSetSSA(std::size_t arg_pos, const SSAPtr &value) : arg_pos_(arg_pos) {
    reserve(1);
    push_back(value);
  }

  //

 private:
  std::size_t arg_pos_;
};

// load from memory
class LoadSSA : public User {
 public:
  LoadSSA(const SSAPtr &base, const SSAPtr &offset, bool is_unsigned)
      : is_unsigned_(is_unsigned) {
    reserve(2);
    push_back(base);
    push_back(offset);
  }

  //

 private:
  bool is_unsigned_;
};

// store to memory
class StoreSSA : public User {
 public:
  StoreSSA(const SSAPtr &base, const SSAPtr &offset) {
    reserve(2);
    push_back(base);
    push_back(offset);
  }

  //

 private:
  //
};

// basic block
class BlockSSA : public User {
 public:
  BlockSSA() {}

  // TODO: add instructions

  //

 private:
  std::list<SSAPtr> insts_;
};

// function call
class CallSSA : public User {
 public:
  CallSSA(const SSAPtr &block) { push_back(block); }

  // TODO: add argument setters

  //

 private:
  //
};

// jump to another basic block
class JumpSSA : public User {
 public:
  JumpSSA(const SSAPtr &block) {
    reserve(1);
    push_back(block);
  }
  JumpSSA(const SSAPtr &cond, const SSAPtr &true_block,
          const SSAPtr &false_block) {
    reserve(3);
    push_back(cond);
    push_back(true_block);
    push_back(false_block);
  }

  //

 private:
  //
};

// return from function (basic block)
class ReturnSSA : public User {
 public:
  ReturnSSA() {}
  ReturnSSA(const SSAPtr &value) {
    reserve(1);
    push_back(value);
  }

  //

 private:
  //
};

// basic operations
class TriSSA : public User {
 public:
  enum class Operator {
    Add, Sub, Mul, Div, Mod,
    Equal, NotEqual, Less, LessEqual, Great, GreatEqual,
    LogicAnd, LogicOr, LogicNot,
    And, Or, Not, Xor, Shl, Shr,
  };

  TriSSA(Operator op, const SSAPtr &opr) : op_(op) {
    reserve(1);
    push_back(opr);
  }
  TriSSA(Operator op, const SSAPtr &lhs, const SSAPtr &rhs) : op_(op) {
    reserve(2);
    push_back(lhs);
    push_back(rhs);
  }

  //

 private:
  Operator op_;
};

}  // namespace tinylang::back::ssa

#endif  // TINYLANG_BACK_SSA_IR_SSA_H_
