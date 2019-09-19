#include "define/ast.h"

#include <iomanip>
#include <cassert>

using namespace tinylang::define;

namespace {

const char *operators[] = {
  "+", "-", "*", "/", "%",
  "==", "!=", "<", "<=", ">", ">=",
  "&&", "||", "!",
  "&", "|", "~", "^", "<<", ">>",
  "=", "+=", "-=", "*=", "/=", "%=",
  "&=", "|=", "^=", "<<=", ">>=",
};

int indent_count = 0, in_expr = 0;
const auto indent = [](std::ostream &os) {
  if (indent_count) {
    os << std::setw(indent_count * 2) << std::setfill(' ') << ' ';
  }
};

std::ostream &operator<<(std::ostream &os, decltype(indent) func) {
  func(os);
  return os;
}

}  // namespace

void VarDefAST::Dump(std::ostream &os) {
  for (const auto &i : defs_) i->Dump(os);
}

void LetDefAST::Dump(std::ostream &os) {
  for (const auto &i : defs_) i->Dump(os);
}

void FunDefAST::Dump(std::ostream &os) {
  os << indent;
  if (type_) {
    type_->Dump(os);
  }
  else {
    os << "void";
  }
  os << ' ' << id_ << '(';
  for (int i = 0; i < args_.size(); ++i) {
    if (i) os << ", ";
    args_[i]->Dump(os);
  }
  os << ") ";
  body_->Dump(os);
}

void FunCallAST::Dump(std::ostream &os) {
  if (!in_expr) os << indent;
  os << id_ << '(';
  for (const auto &i : args_) i->Dump(os);
  os << ')';
  if (!in_expr) os << ';' << std::endl;
}

void IfAST::Dump(std::ostream &os) {
  os << indent << "if (";
  ++in_expr;
  cond_->Dump(os);
  --in_expr;
  os << ") ";
  then_->Dump(os);
  if (else_then_) {
    os << indent << "else ";
    else_then_->Dump(os);
  }
}

void WhileAST::Dump(std::ostream &os) {
  os << indent << "while (";
  ++in_expr;
  cond_->Dump(os);
  --in_expr;
  os << ") ";
  body_->Dump(os);
}

void ControlAST::Dump(std::ostream &os) {
  os << indent;
  switch (type_) {
    case front::Keyword::Break: os << "break"; break;
    case front::Keyword::Continue: os << "continue"; break;
    case front::Keyword::Return: os << "return"; break;
    default: assert(false);
  }
  if (expr_) {
    os << ' ';
    ++in_expr;
    expr_->Dump(os);
    --in_expr;
  }
  os << ';' << std::endl;
}

void VarElemAST::Dump(std::ostream &os) {
  ++in_expr;
  os << indent;
  if (type_) {
    type_->Dump(os);
  }
  else {
    os << "auto";
  }
  os << ' ' << id_;
  if (init_) {
    os << " = ";
    init_->Dump(os);
  }
  os << ';' << std::endl;
  --in_expr;
}

void LetElemAST::Dump(std::ostream &os) {
  ++in_expr;
  os << indent << "const ";
  if (type_) {
    type_->Dump(os);
  }
  else {
    os << "auto";
  }
  os << ' ' << id_;
  if (init_) {
    os << " = ";
    init_->Dump(os);
  }
  os << ';' << std::endl;
  --in_expr;
}

void TypeAST::Dump(std::ostream &os) {
  switch (type_) {
    case front::Keyword::Int32: os << "int32_t"; break;
    case front::Keyword::Int8: os << "int8_t"; break;
    case front::Keyword::UInt32: os << "uint32_t"; break;
    case front::Keyword::UInt8: os << "uint8_t"; break;
    default: assert(false);
  }
  if (ptr_) os << std::setw(ptr_) << std::setfill('*') << '*';
}

void ArgElemAST::Dump(std::ostream &os) {
  type_->Dump(os);
  os << ' ' << id_;
}

void BlockAST::Dump(std::ostream &os) {
  os << '{' << std::endl;
  ++indent_count;
  for (const auto &i : stmts_) i->Dump(os);
  --indent_count;
  os << indent << '}' << std::endl;
}

void BinaryAST::Dump(std::ostream &os) {
  if (!in_expr) {
    os << indent;
  }
  else {
    os << '(';
  }
  ++in_expr;
  lhs_->Dump(os);
  os << ' ' << operators[static_cast<int>(op_)] << ' ';
  rhs_->Dump(os);
  --in_expr;
  if (!in_expr) {
    os << ';' << std::endl;
  }
  else {
    os << ')';
  }
}

void CastAST::Dump(std::ostream &os) {
  ++in_expr;
  os << '(';
  type_->Dump(os);
  os << ") ";
  expr_->Dump(os);
  --in_expr;
}

void UnaryAST::Dump(std::ostream &os) {
  ++in_expr;
  os << operators[static_cast<int>(op_)];
  opr_->Dump(os);
  --in_expr;
}

void IdAST::Dump(std::ostream &os) {
  os << id_;
}

void NumAST::Dump(std::ostream &os) {
  os << num_;
}

void StringAST::Dump(std::ostream &os) {
  os << '"' << str_ << '"';
}

void CharAST::Dump(std::ostream &os) {
  os << "'";
  switch (c_) {
    case '\r': os << "\\r"; break;
    case '\n': os << "\\n"; break;
    default: os << c_; break;
  }
  os << "'";
}

void ArrayAST::Dump(std::ostream &os) {
  ++in_expr;
  os << "{ ";
  for (const auto &i : elems_) {
    i->Dump(os);
    os << ", ";
  }
  os << '}';
  --in_expr;
}

void IndexAST::Dump(std::ostream &os) {
  ++in_expr;
  os << id_;
  os << '[';
  index_->Dump(os);
  os << ']';
  --in_expr;
}
