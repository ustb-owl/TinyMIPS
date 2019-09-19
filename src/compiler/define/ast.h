#ifndef TINYLANG_DEFINE_AST_H_
#define TINYLANG_DEFINE_AST_H_

#include <memory>
#include <vector>
#include <string>
#include <utility>
#include <ostream>

#include "front/lexer.h"
#include "front/analyzer.h"
#include "define/symbol.h"

namespace tinylang::define {

// definition of base class of all ASTs
class BaseAST {
 public:
  virtual ~BaseAST() = default;

  virtual void Dump(std::ostream &os) = 0;
  virtual TypePtr SemaAnalyze(front::Analyzer &ana) = 0;

  void set_line_pos(unsigned int line_pos) { line_pos_ = line_pos; }
  void set_env(const EnvPtr &env) { env_ = env; }

  unsigned int line_pos() const { return line_pos_; }
  EnvPtr env() const { return env_; }

 private:
  unsigned int line_pos_;
  EnvPtr env_;
};

using ASTPtr = std::unique_ptr<BaseAST>;
using ASTPtrList = std::vector<ASTPtr>;

// variable definition
class VarDefAST : public BaseAST {
 public:
  VarDefAST(ASTPtrList defs) : defs_(std::move(defs)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtrList defs_;
};

// constant definition
class LetDefAST : public BaseAST {
 public:
  LetDefAST(ASTPtrList defs) : defs_(std::move(defs)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

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

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

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

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

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

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtr cond_, then_, else_then_;
};

// while statement
class WhileAST : public BaseAST {
 public:
  WhileAST(ASTPtr cond, ASTPtr body)
      : cond_(std::move(cond)), body_(std::move(body)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtr cond_, body_;
};

// control statements (break, continue, return)
class ControlAST : public BaseAST {
 public:
  ControlAST(front::Keyword type, ASTPtr expr)
      : type_(type), expr_(std::move(expr)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  front::Keyword type_;
  ASTPtr expr_;
};

// variable definition element
class VarElemAST : public BaseAST {
 public:
  VarElemAST(const std::string &id, ASTPtr type, ASTPtr init)
      : id_(id), type_(std::move(type)), init_(std::move(init)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string id_;
  ASTPtr type_, init_;
};

// constant definition element
class LetElemAST : public BaseAST {
 public:
  LetElemAST(const std::string &id, ASTPtr type, ASTPtr init)
      : id_(id), type_(std::move(type)), init_(std::move(init)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string id_;
  ASTPtr type_, init_;
};

// type declaration
class TypeAST : public BaseAST {
 public:
  TypeAST(front::Keyword type, unsigned int ptr) : type_(type), ptr_(ptr) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  front::Keyword type_;
  unsigned int ptr_;
};

// argument definition
class ArgElemAST : public BaseAST {
 public:
  ArgElemAST(const std::string &id, ASTPtr type)
      : id_(id), type_(std::move(type)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string id_;
  ASTPtr type_;
};

// statement block
class BlockAST : public BaseAST {
 public:
  BlockAST(ASTPtrList stmts) : stmts_(std::move(stmts)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtrList stmts_;
};

// binary expression
class BinaryAST : public BaseAST {
 public:
  BinaryAST(front::Operator op, ASTPtr lhs, ASTPtr rhs)
      : op_(op), lhs_(std::move(lhs)), rhs_(std::move(rhs)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  front::Operator op_;
  ASTPtr lhs_, rhs_;
};

// type casting expression
class CastAST : public BaseAST {
 public:
  CastAST(ASTPtr expr, ASTPtr type)
      : expr_(std::move(expr)), type_(std::move(type)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtr expr_, type_;
};

// unary expression
class UnaryAST : public BaseAST {
 public:
  UnaryAST(front::Operator op, ASTPtr opr)
      : op_(op), opr_(std::move(opr)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  front::Operator op_;
  ASTPtr opr_;
};

// identifier value
class IdAST : public BaseAST {
 public:
  IdAST(const std::string &id) : id_(id) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string id_;
};

// number value
class NumAST : public BaseAST {
 public:
  NumAST(unsigned int num) : num_(num) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  unsigned int num_;
};

// string value
class StringAST : public BaseAST {
 public:
  StringAST(const std::string &str) : str_(str) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string str_;
};

// character value
class CharAST : public BaseAST {
 public:
  CharAST(char c) : c_(c) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  char c_;
};

// array value
class ArrayAST : public BaseAST {
 public:
  ArrayAST(ASTPtrList elems) : elems_(std::move(elems)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  ASTPtrList elems_;
};

// indexing
class IndexAST : public BaseAST {
 public:
  IndexAST(const std::string &id, ASTPtr index)
      : id_(id), index_(std::move(index)) {}

  void Dump(std::ostream &os) override;
  TypePtr SemaAnalyze(front::Analyzer &ana) override;

 private:
  std::string id_;
  ASTPtr index_;
};

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_AST_H_
