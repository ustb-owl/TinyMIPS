#ifndef TINYLANG_BACK_TAC_IR_OP_H_
#define TINYLANG_BACK_TAC_IR_OP_H_

// definitions of operators in TAC IR

namespace tinylang::back::tac {

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

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_IR_OP_H_
