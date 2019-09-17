#ifndef TINYLANG_DEFINE_AST_H_
#define TINYLANG_DEFINE_AST_H_

#include <memory>
#include <vector>
#include <string>
#include <utility>

#include "front/lexer.h"

namespace tinylang::define {

// definition of base class of all ASTs
class BaseAST {
 public:
  virtual ~BaseAST() = default;

  void set_line_pos(unsigned int line_pos) { line_pos_ = line_pos; }
  unsigned int line_pos() const { return line_pos_; }

 private:
  unsigned int line_pos_;
};

using ASTPtr = std::unique_ptr<BaseAST>;
using ASTPtrList = std::vector<ASTPtr>;

// assign statement
class AssignAST : public BaseAST {
 public:
  AssignAST(const std::string &id, ASTPtr expr)
      : id_(id), expr_(std::move(expr)) {}

 private:
  std::string id_;
  ASTPtr expr_;
};

// variable definition
class VarDefAST : public BaseAST {
 public:
  VarDefAST(ASTPtrList defs) : defs_(std::move(defs)) {}

 private:
  ASTPtrList defs_;
};

// constant definition
class LetDefAST : public BaseAST {
 public:
  LetDefAST(ASTPtrList defs) : defs_(std::move(defs)) {}

 private:
  ASTPtrList defs_;
};

// function definition
class FunDefAST : public BaseAST {
 public:
  FunDefAST(const std::string &id, ASTPtrList args, ASTPtr type,
            ASTPtr body)
      : id_(id), args_(std::move(args)), type_(std::move(type)),
        body_(std::move(body)) {}

 private:
  std::string id_;
  ASTPtrList args_;
  ASTPtr type_, body_;
};

// function call
class FunCallAST : public BaseAST {
 public:
  FunCallAST(const std::string &id, ASTPtrList args)
      : id_(id), args_(std::move(args)) {}

 private:
  std::string id_;
  ASTPtrList args_;
};

// if-else statement
class IfAST : public BaseAST {
 public:
  IfAST(ASTPtr cond, ASTPtr then, ASTPtr else_then)
      : cond_(std::move(cond)), then_(std::move(then)),
        else_then_(std::move(else_then)) {}

 private:
  ASTPtr cond_, then_, else_then_;
};

// while statement
class WhileAST : public BaseAST {
 public:
  WhileAST(ASTPtr cond, ASTPtr body)
      : cond_(std::move(cond)), body_(std::move(body)) {}

 private:
  ASTPtr cond_, body_;
};

// control statements (break, continue, return)
class ControlAST : public BaseAST {
 public:
  ControlAST(front::Keyword type, ASTPtr expr)
      : type_(type), expr_(std::move(expr)) {}

 private:
  front::Keyword type_;
  ASTPtr expr_;
};

// variable definition element (used in 'var' and 'let')
class VarElemAST : public BaseAST {
 public:
  VarElemAST(const std::string &id, ASTPtr type, ASTPtr init)
      : id_(id), type_(std::move(type)), init_(std::move(init)) {}

 private:
  std::string id_;
  ASTPtr type_, init_;
};

// type declaration
class TypeAST : public BaseAST {
 public:
  TypeAST(front::Keyword type) : type_(type) {}

 private:
  front::Keyword type_;
};

// argument definition
class ArgDefAST : public BaseAST {
 public:
  ArgDefAST(const std::string &id, ASTPtr type)
      : id_(id), type_(std::move(type)) {}

 private:
  std::string id_;
  ASTPtr type_;
};

// statement block
class BlockAST : public BaseAST {
 public:
  BlockAST(ASTPtrList stmts) : stmts_(std::move(stmts)) {}

 private:
  ASTPtrList stmts_;
};

// binary expression
class BinaryAST : public BaseAST {
 public:
  BinaryAST(front::Operator op, ASTPtr lhs, ASTPtr rhs)
      : op_(op), lhs_(std::move(lhs)), rhs_(std::move(rhs)) {}

 private:
  front::Operator op_;
  ASTPtr lhs_, rhs_;
};

// type casting expression
class CastAST : public BaseAST {
 public:
  CastAST(ASTPtr expr, ASTPtr type)
      : expr_(std::move(expr)), type_(std::move(type)) {}

 private:
  ASTPtr expr_, type_;
};

// unary expression
class UnaryAST : public BaseAST {
 public:
  UnaryAST(front::Keyword op, ASTPtr opr) : op_(op), opr_(std::move(opr)) {}

 private:
  front::Keyword op_;
  ASTPtr opr_;
};

// identifier value
class IdAST : public BaseAST {
 public:
  IdAST(const std::string &id) : id_(id) {}

 private:
  std::string id_;
};

// number value
class NumAST : public BaseAST {
 public:
  NumAST(unsigned int num) : num_(num) {}

 private:
  unsigned int num_;
};

// string value
class StringAST : public BaseAST {
 public:
  StringAST(const std::string &str) : str_(str) {}

 private:
  std::string str_;
};

// character value
class CharAST : public BaseAST {
 public:
  CharAST(char c) : c_(c) {}

 private:
  char c_;
};

// array value
class ArrayAST : public BaseAST {
 public:
  ArrayAST(ASTPtrList elems) : elems_(std::move(elems)) {}

 private:
  ASTPtrList elems_;
};

// indexing
class IndexAST : public BaseAST {
 public:
  IndexAST(ASTPtr expr, ASTPtr index)
      : expr_(std::move(expr)), index_(std::move(index)) {}

 private:
  ASTPtr expr_, index_;
};

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_AST_H_
