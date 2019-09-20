#include "front/parser.h"

#include <iostream>
#include <utility>
#include <stack>
#include <cassert>

#include "util/style.h"

using namespace tinylang::front;
using namespace tinylang::define;

namespace {

// table of operator's precedence
// -1 if it's not a binary/assign operator
const int op_prec_table[] = {
  90, 90, 100, 100, 100,
  60, 60, 70, 70, 70, 70,
  20, 10, -1,
  50, 30, -1, 40, 80, 80,
  0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0,
};

template <typename T, typename ...Args>
inline ASTPtr MakeAST(unsigned int line_pos, Args &&...args) {
  auto ast = std::make_unique<T>(std::forward<Args>(args)...);
  ast->set_line_pos(line_pos);
  return ast;
}

inline int GetOpPrec(Operator op) {
  return op_prec_table[static_cast<int>(op)];
}

}

ASTPtr Parser::LogError(const char *message) {
  using namespace util;
  // print error message
  std::cerr << style("B") << "parser";
  std::cerr << " (line " << lexer_.line_pos();
  std::cerr << "): " << style("Br") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return nullptr;
}

ASTPtr Parser::ParseStatement() {
  if (cur_token_ == Token::Keyword) {
    // switch by keyword
    switch (lexer_.key_val()) {
      case Keyword::Var: return ParseVarDef();
      case Keyword::Let: return ParseLetDef();
      case Keyword::Def: return ParseFunDef();
      case Keyword::If: return ParseIf();
      case Keyword::While: return ParseWhile();
      case Keyword::Break: case Keyword::Continue:
      case Keyword::Return: return ParseControl();
      default: return LogError("invalid statement");
    }
  }
  else {
    return ParseExpression();
  }
}

ASTPtr Parser::ParseVarDef() {
  auto line_pos = lexer_.line_pos();
  // get definition list
  if (NextToken() != Token::Id) return LogError("expected identifier");
  ASTPtrList defs;
  for (;;) {
    auto elem = ParseVarElem();
    if (!elem) return nullptr;
    defs.push_back(std::move(elem));
    // eat ','
    if (!IsTokenChar(',')) break;
    NextToken();
  }
  return MakeAST<VarDefAST>(line_pos, std::move(defs));
}

ASTPtr Parser::ParseLetDef() {
  auto line_pos = lexer_.line_pos();
  // get definition list
  if (NextToken() != Token::Id) return LogError("expected identifier");
  ASTPtrList defs;
  for (;;) {
    auto elem = ParseLetElem();
    if (!elem) return nullptr;
    defs.push_back(std::move(elem));
    // eat ','
    if (!IsTokenChar(',')) break;
    NextToken();
  }
  return MakeAST<LetDefAST>(line_pos, std::move(defs));
}

ASTPtr Parser::ParseFunDef() {
  auto line_pos = lexer_.line_pos();
  // get identifier
  if (NextToken() != Token::Id) return LogError("expected identifier");
  auto id = lexer_.id_val();
  NextToken();
  // get argument list
  if (!CheckChar('(')) return nullptr;
  ASTPtrList args;
  if (!IsTokenChar(')')) {
    // parse all argument definitions
    for (;;) {
      auto arg = ParseArgElem();
      if (!arg) return nullptr;
      args.push_back(std::move(arg));
      // eat ','
      if (!IsTokenChar(',')) break;
      NextToken();
    }
  }
  if (!CheckChar(')')) return nullptr;
  // check & get return type
  ASTPtr type;
  if (IsTokenChar(':')) {
    NextToken();
    type = ParseType();
    if (!type) return nullptr;
  }
  // get function body
  ASTPtr body;
  if (IsTokenChar('{')) {
    body = ParseBlock();
    if (!body) return nullptr;
  }
  return MakeAST<FunDefAST>(line_pos, id, std::move(args), std::move(type),
                            std::move(body));
}

ASTPtr Parser::ParseIf() {
  auto line_pos = lexer_.line_pos();
  NextToken();
  // get condition expression
  auto cond = ParseExpression();
  if (!cond) return nullptr;
  // get then body
  auto then = ParseBlock();
  if (!then) return nullptr;
  // get else then body
  ASTPtr else_then;
  if (IsTokenKeyword(Keyword::Else)) {
    NextToken();
    else_then = IsTokenKeyword(Keyword::If) ? ParseIf() : ParseBlock();
    if (!else_then) return nullptr;
  }
  return MakeAST<IfAST>(line_pos, std::move(cond), std::move(then),
                        std::move(else_then));
}

ASTPtr Parser::ParseWhile() {
  auto line_pos = lexer_.line_pos();
  NextToken();
  // get condition expression
  auto cond = ParseExpression();
  if (!cond) return nullptr;
  // get body
  auto body = ParseBlock();
  if (!body) return nullptr;
  return MakeAST<WhileAST>(line_pos, std::move(cond), std::move(body));
}

ASTPtr Parser::ParseControl() {
  auto line_pos = lexer_.line_pos();
  // get keyword type
  auto type = lexer_.key_val();
  NextToken();
  // check return expression
  ASTPtr expr;
  // TODO: tricky operation
  if (type == Keyword::Return && lexer_.line_pos() == line_pos) {
    expr = ParseExpression();
    if (!expr) return nullptr;
  }
  return MakeAST<ControlAST>(line_pos, type, std::move(expr));
}

ASTPtr Parser::ParseVarElem() {
  auto line_pos = lexer_.line_pos();
  // get identifier
  if (cur_token_ != Token::Id) return LogError("expected identifier");
  auto id = lexer_.id_val();
  NextToken();
  // get type
  ASTPtr type;
  if (IsTokenChar(':')) {
    NextToken();
    type = ParseType();
    if (!type) return nullptr;
  }
  // get initialization expression
  ASTPtr init;
  if (IsTokenOperator(Operator::Assign)) {
    NextToken();
    init = ParseExpression();
    if (!init) return nullptr;
  }
  // check type & init
  if (!type && !init) return LogError("initializer required");
  return MakeAST<VarElemAST>(line_pos, id, std::move(type),
                             std::move(init));
}

ASTPtr Parser::ParseLetElem() {
  auto line_pos = lexer_.line_pos();
  // get identifier
  if (cur_token_ != Token::Id) return LogError("expected identifier");
  auto id = lexer_.id_val();
  NextToken();
  // get type
  ASTPtr type;
  if (IsTokenChar(':')) {
    NextToken();
    type = ParseType();
    if (!type) return nullptr;
  }
  // get initialization expression
  ASTPtr init;
  if (!IsTokenOperator(Operator::Assign)) {
    return LogError("expected initialization expression");
  }
  NextToken();
  init = ParseExpression();
  if (!init) return nullptr;
  return MakeAST<LetElemAST>(line_pos, id, std::move(type),
                             std::move(init));
}

ASTPtr Parser::ParseType() {
  auto line_pos = lexer_.line_pos();
  // check if is type
  if (cur_token_ != Token::Keyword) return LogError("expected type");
  switch (lexer_.key_val()) {
    case Keyword::Int32: case Keyword::Int8:
    case Keyword::UInt32: case Keyword::UInt8: break;
    default: return LogError("expected type");
  }
  // get type
  auto type = lexer_.key_val();
  NextToken();
  // get pointer count
  unsigned int ptr = 0;
  while (IsTokenOperator(Operator::Mul)) {
    NextToken();
    ++ptr;
  }
  return MakeAST<TypeAST>(line_pos, type, ptr);
}

ASTPtr Parser::ParseArgElem() {
  auto line_pos = lexer_.line_pos();
  // get identifier
  if (cur_token_ != Token::Id) return LogError("expected identifier");
  auto id = lexer_.id_val();
  NextToken();
  // check ':'
  if (!CheckChar(':')) return nullptr;
  // get type
  auto type = ParseType();
  if (!type) return nullptr;
  return MakeAST<ArgElemAST>(line_pos, id, std::move(type));
}

ASTPtr Parser::ParseBlock() {
  auto line_pos = lexer_.line_pos();
  if (!CheckChar('{')) return nullptr;
  // get statement list
  ASTPtrList stmts;
  while (!IsTokenChar('}')) {
    auto stmt = ParseStatement();
    if (!stmt) return nullptr;
    stmts.push_back(std::move(stmt));
  }
  // eat '}'
  NextToken();
  return MakeAST<BlockAST>(line_pos, std::move(stmts));
}

ASTPtr Parser::ParseExpression() {
  auto line_pos = lexer_.line_pos();
  std::stack<ASTPtr> oprs;
  std::stack<Operator> ops;
  // get the first expression
  auto expr = ParseCast();
  if (!expr) return nullptr;
  oprs.push(std::move(expr));
  // convert to postfix expression
  while (cur_token_ == Token::Operator) {
    // get operator
    auto op = lexer_.op_val();
    if (GetOpPrec(op) < 0) break;
    NextToken();
    // handle operator
    while (!ops.empty() && GetOpPrec(ops.top()) >= GetOpPrec(op)) {
      // create a new binary AST
      auto cur_op = ops.top();
      ops.pop();
      auto rhs = std::move(oprs.top());
      oprs.pop();
      auto lhs = std::move(oprs.top());
      oprs.pop();
      oprs.push(MakeAST<BinaryAST>(line_pos, cur_op,
                                   std::move(lhs), std::move(rhs)));
    }
    ops.push(op);
    // get next expression
    expr = ParseExpression();
    if (!expr) return nullptr;
    oprs.push(std::move(expr));
  }
  // clear stacks
  while (!ops.empty()) {
    // create a new binary AST
    auto cur_op = ops.top();
    ops.pop();
    auto rhs = std::move(oprs.top());
    oprs.pop();
    auto lhs = std::move(oprs.top());
    oprs.pop();
    oprs.push(MakeAST<BinaryAST>(line_pos, cur_op,
                                 std::move(lhs), std::move(rhs)));
  }
  return std::move(oprs.top());
}

ASTPtr Parser::ParseCast() {
  auto line_pos = lexer_.line_pos();
  // get unary expression
  auto expr = ParseUnary();
  if (!expr) return nullptr;
  // check if need to cast
  if (IsTokenKeyword(Keyword::As)) {
    NextToken();
    auto type = ParseType();
    if (!type) return nullptr;
    // create a new cast AST
    expr = MakeAST<CastAST>(line_pos, std::move(expr), std::move(type));
  }
  return expr;
}

ASTPtr Parser::ParseUnary() {
  auto line_pos = lexer_.line_pos();
  // check if need to get operator
  if (cur_token_ == Token::Operator) {
    // get & check unary operator
    auto op = lexer_.op_val();
    switch (op) {
      case Operator::Add: case Operator::Sub: case Operator::LogicNot:
      case Operator::Not: case Operator::Mul: case Operator::And: break;
      default: return LogError("invalid unary operator");
    }
    NextToken();
    // get factor
    auto expr = ParseFactor();
    if (!expr) return nullptr;
    return MakeAST<UnaryAST>(line_pos, op, std::move(expr));
  }
  else {
    return ParseFactor();
  }
}

ASTPtr Parser::ParseFactor() {
  if (cur_token_ == Token::Id) {
    // look ahead
    NextToken();
    if (cur_token_ == Token::Id) {
      return LogError("invalid factor expression");
    }
    else if (IsTokenChar('(')) {
      return ParseFunCall();
    }
    else if (IsTokenChar('[')) {
      return ParseIndex();
    }
    else {
      return ParseId();
    }
  }
  else if (IsTokenChar('(')) {
    // bracket expression
    NextToken();
    auto expr = ParseExpression();
    if (!expr || !CheckChar(')')) return nullptr;
    return expr;
  }
  else {
    // other values
    return ParseValue();
  }
}

ASTPtr Parser::ParseFunCall() {
  auto line_pos = lexer_.line_pos();
  auto id = lexer_.id_val();
  // eat '('
  NextToken();
  // get expression list
  ASTPtrList args;
  if (!IsTokenChar(')')) {
    for (;;) {
      auto expr = ParseExpression();
      if (!expr) return nullptr;
      args.push_back(std::move(expr));
      // eat ','
      if (!IsTokenChar(',')) break;
      NextToken();
    }
  }
  if (!CheckChar(')')) return nullptr;
  return MakeAST<FunCallAST>(line_pos, id, std::move(args));
}

ASTPtr Parser::ParseIndex() {
  auto line_pos = lexer_.line_pos();
  auto id = lexer_.id_val();
  // eat '['
  NextToken();
  // get expression
  auto expr = ParseExpression();
  if (!expr || !CheckChar(']')) return nullptr;
  return MakeAST<IndexAST>(line_pos, id, std::move(expr));
}

ASTPtr Parser::ParseValue() {
  switch (cur_token_) {
    case Token::Num: return ParseNum();
    case Token::Char: return ParseChar();
    case Token::String: return ParseString();
    default: {
      if (IsTokenChar('{')) {
        return ParseArray();
      }
      else {
        return LogError("invalid value");
      }
    }
  }
}

ASTPtr Parser::ParseId() {
  auto line_pos = lexer_.line_pos();
  auto id = lexer_.id_val();
  // parser has already looked ahead
  // so there is no 'NextToken()'
  return MakeAST<IdAST>(line_pos, id);
}

ASTPtr Parser::ParseNum() {
  auto line_pos = lexer_.line_pos();
  auto num = lexer_.num_val();
  NextToken();
  return MakeAST<NumAST>(line_pos, num);
}

ASTPtr Parser::ParseString() {
  auto line_pos = lexer_.line_pos();
  auto str = lexer_.str_val();
  NextToken();
  return MakeAST<StringAST>(line_pos, str);
}

ASTPtr Parser::ParseChar() {
  auto line_pos = lexer_.line_pos();
  auto c = lexer_.char_val();
  NextToken();
  return MakeAST<CharAST>(line_pos, c);
}

ASTPtr Parser::ParseArray() {
  auto line_pos = lexer_.line_pos();
  // eat '{'
  NextToken();
  // get elements
  ASTPtrList elems;
  while (!IsTokenChar('}')) {
    // get next expression
    auto elem = ParseExpression();
    if (!elem) return nullptr;
    elems.push_back(std::move(elem));
    // check comma
    if (!IsTokenChar(',')) break;
    NextToken();
  }
  // check '}'
  if (!CheckChar('}')) return nullptr;
  // check if array is empty
  if (elems.empty()) return LogError("array cannot be empty");
  return MakeAST<ArrayAST>(line_pos, std::move(elems));
}

bool Parser::CheckChar(char c) {
  if (!IsTokenChar(c)) {
    std::string msg = "expected '";
    msg = msg + c + "'";
    LogError(msg.c_str());
    return false;
  }
  NextToken();
  return true;
}
