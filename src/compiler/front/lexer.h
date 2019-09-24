#ifndef TINYLANG_FRONT_LEXER_H_
#define TINYLANG_FRONT_LEXER_H_

#include <istream>
#include <string>

namespace tinylang::front {

enum class Token {
  Error, End,
  Id, Num, String, Char,
  Keyword, Operator,
  Other,
};

enum class Keyword {
  // var, let, def, as
  Var, Let, Def, As,
  // i32, i8, ui32, ui8
  Int32, Int8, UInt32, UInt8,
  // if, else, while
  If, Else, While,
  // break, continue, return
  Break, Continue, Return,
};

enum class Operator {
  // +, -, *, /, %
  Add, Sub, Mul, Div, Mod,
  // ==, !=, <, <=, >, >=
  Equal, NotEqual, Less, LessEqual, Great, GreatEqual,
  // &&, ||, !
  LogicAnd, LogicOr, LogicNot,
  // &, |, ~, ^, <<, >>
  And, Or, Not, Xor, Shl, Shr,
  // =, +=, -=, *=, /=, %=
  Assign, AssAdd, AssSub, AssMul, AssDiv, AssMod,
  // &=, |=, ^=, <<=, >>=
  AssAnd, AssOr, AssXor, AssShl, AssShr,
};

class Lexer {
 public:
  Lexer(std::istream &in) : in_(in) { Reset(); }

  // reset status of lexer
  void Reset() {
    line_pos_ = 1;
    error_num_ = 0;
    last_char_ = ' ';
    in_ >> std::noskipws;
  }

  // get next token from input stream
  Token NextToken();

  // current line position
  unsigned int line_pos() const { return line_pos_; }
  // current error count
  unsigned int error_num() const { return error_num_; }
  // identifiers
  const std::string &id_val() const { return id_val_; }
  // integer values
  unsigned long long num_val() const { return num_val_; }
  // string literals
  const std::string &str_val() const { return str_val_; }
  // keywords
  Keyword key_val() const { return key_val_; }
  // operators
  Operator op_val() const { return op_val_; }
  // character literals
  char char_val() const { return char_val_; }
  // other characters
  char other_val() const { return other_val_; }

 private:
  void NextChar() { in_ >> last_char_; }
  bool IsEOL() {
    return in_.eof() || last_char_ == '\n' || last_char_ == '\r';
  }

  // print error message and return Token::Error
  Token PrintError(const char *message);

  // read escape character from stream
  int ReadEscape();

  Token HandleId();
  Token HandleNum();
  Token HandleString();
  Token HandleChar();
  Token HandleOperator();
  Token HandleComment();
  Token HandleEOL();

  std::istream &in_;
  unsigned int line_pos_, error_num_;
  char last_char_;
  // value of token
  std::string id_val_, str_val_;
  unsigned int num_val_;
  Keyword key_val_;
  Operator op_val_;
  char char_val_, other_val_;
};

// check if operator is assign ('=', '+=', '-=', ...)
inline bool IsOperatorAssign(Operator op) {
  return static_cast<int>(op) >= static_cast<int>(Operator::Assign);
}

// get de-assigned operator ('+=' -> '+', '-=' -> '-', ...)
inline Operator GetDeAssignedOp(Operator op) {
  switch (op) {
    case Operator::AssAdd: return Operator::Add;
    case Operator::AssSub: return Operator::Sub;
    case Operator::AssMul: return Operator::Mul;
    case Operator::AssDiv: return Operator::Div;
    case Operator::AssMod: return Operator::Mod;
    case Operator::AssAnd: return Operator::And;
    case Operator::AssOr: return Operator::Or;
    case Operator::AssXor: return Operator::Xor;
    case Operator::AssShl: return Operator::Shl;
    case Operator::AssShr: return Operator::Shr;
    default: assert(false); return Operator::Assign;
  }
}

}  // namespace tinylang::front

#endif  // TINYLANG_FRONT_LEXER_H_
