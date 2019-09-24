#ifndef TINYLANG_FRONT_PARSER_H_
#define TINYLANG_FRONT_PARSER_H_

#include "front/lexer.h"
#include "define/ast.h"

namespace tinylang::front {

class Parser {
 public:
  Parser(Lexer &lexer) : lexer_(lexer) { Reset(); }

  // reset status of parser
  void Reset() {
    lexer_.Reset();
    error_num_ = 0;
    NextToken();
  }

  // get next AST from token stream
  define::ASTPtr ParseNext() {
    return cur_token_ == Token::End ? nullptr : ParseStatement();
  }

  // getters
  unsigned int error_num() const { return error_num_; }

 private:
  // get next token from lexer
  Token NextToken() { return cur_token_ = lexer_.NextToken(); }

  // check if current token is a character (token type 'Other')
  bool IsTokenChar(char c) const {
    return cur_token_ == Token::Other && lexer_.other_val() == c;
  }

  // check if current token is a keyword
  bool IsTokenKeyword(Keyword key) const {
    return cur_token_ == Token::Keyword && lexer_.key_val() == key;
  }

  // check if current token is an operator
  bool IsTokenOperator(Operator op) const {
    return cur_token_ == Token::Operator && lexer_.op_val() == op;
  }

  // check if current token is an assignment operator
  bool IsAssign() const {
    return cur_token_ == Token::Operator &&
           IsOperatorAssign(lexer_.op_val());
  }

  // log error and return null pointer
  define::ASTPtr LogError(const char *message);

  define::ASTPtr ParseStatement();
  define::ASTPtr ParseVarDef();
  define::ASTPtr ParseLetDef();
  define::ASTPtr ParseFunDef();
  define::ASTPtr ParseIf();
  define::ASTPtr ParseWhile();
  define::ASTPtr ParseControl();

  define::ASTPtr ParseVarElem();
  define::ASTPtr ParseLetElem();
  define::ASTPtr ParseType();
  define::ASTPtr ParseArgElem();
  define::ASTPtr ParseBlock();

  define::ASTPtr ParseExpression();
  define::ASTPtr ParseCast();
  define::ASTPtr ParseUnary();
  define::ASTPtr ParseFactor();
  define::ASTPtr ParseFunCall();
  define::ASTPtr ParseIndex();

  define::ASTPtr ParseValue();
  define::ASTPtr ParseId();
  define::ASTPtr ParseNum();
  define::ASTPtr ParseString();
  define::ASTPtr ParseChar();
  define::ASTPtr ParseArray();

  // make sure current token is specific character and goto next token
  bool CheckChar(char c);

  Lexer &lexer_;
  unsigned int error_num_;
  Token cur_token_;
};

}  // namespace tinylang::front

#endif  // TINYLANG_FRONT_PARSER_H_
