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
  if (indent_count) os << std::setw(indent_count * 2) << ' ';
};

std::ostream &operator<<(std::ostream &os, decltype(indent) func) {
  func(os);
  return os;
}

}  // namespace

void AssignAST::Dump(std::ostream &os) {
  os << indent << "AssignAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "expr:" << std::endl;
  ++indent_count;
  expr_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void VarDefAST::Dump(std::ostream &os) {
  os << indent << "VarDefAST {" << std::endl;
  ++indent_count;
  for (const auto &i : defs_) {
    i->Dump(os);
  }
  --indent_count;
  os << indent << "}" << std::endl;
}

void LetDefAST::Dump(std::ostream &os) {
  os << indent << "LetDefAST {" << std::endl;
  ++indent_count;
  for (const auto &i : defs_) {
    i->Dump(os);
  }
  --indent_count;
  os << indent << "}" << std::endl;
}

void FunDefAST::Dump(std::ostream &os) {
  os << indent << "FunDefAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "args: {" << std::endl;
  ++indent_count;
  for (const auto &i : args_) i->Dump(os);
  --indent_count;
  os << indent << "}" << std::endl;
  os << indent << "type:" << std::endl;
  ++indent_count;
  if (type_) {
    type_->Dump(os);
  }
  else {
    os << indent << "void" << std::endl;
  }
  --indent_count;
  os << indent << "body:" << std::endl;
  ++indent_count;
  body_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void FunCallAST::Dump(std::ostream &os) {
  os << indent << "FunCallAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "args: {" << std::endl;
  ++indent_count;
  for (const auto &i : args_) i->Dump(os);
  --indent_count;
  os << indent << "}" << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void IfAST::Dump(std::ostream &os) {
  os << indent << "IfAST {" << std::endl;
  ++indent_count;
  os << indent << "cond:" << std::endl;
  ++indent_count;
  cond_->Dump(os);
  --indent_count;
  os << indent << "then:" << std::endl;
  ++indent_count;
  then_->Dump(os);
  --indent_count;
  os << indent << "else_then:" << std::endl;
  ++indent_count;
  else_then_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void WhileAST::Dump(std::ostream &os) {
  os << indent << "WhileAST {" << std::endl;
  ++indent_count;
  os << indent << "cond:" << std::endl;
  ++indent_count;
  cond_->Dump(os);
  --indent_count;
  os << indent << "body:" << std::endl;
  ++indent_count;
  body_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void ControlAST::Dump(std::ostream &os) {
  os << indent << "ControlAST {" << std::endl;
  ++indent_count;
  os << indent << "type: ";
  switch (type_) {
    case front::Keyword::Break: os << "break"; break;
    case front::Keyword::Continue: os << "continue"; break;
    case front::Keyword::Return: os << "return"; break;
    default: assert(false);
  }
  os << std::endl;
  os << indent << "expr:" << std::endl;
  ++indent_count;
  if (expr_) {
    expr_->Dump(os);
  }
  else {
    os << indent << "none" << std::endl;
  }
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void VarElemAST::Dump(std::ostream &os) {
  os << indent << "VarElemAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "type:" << std::endl;
  ++indent_count;
  type_->Dump(os);
  --indent_count;
  os << indent << "init:" << std::endl;
  ++indent_count;
  if (init_) {
    init_->Dump(os);
  }
  else {
    os << indent << "none" << std::endl;
  }
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void TypeAST::Dump(std::ostream &os) {
  os << indent << "TypeAST {" << std::endl;
  ++indent_count;
  os << indent << "type: ";
  switch (type_) {
    case front::Keyword::Int32: os << "int32"; break;
    case front::Keyword::Int8: os << "int8"; break;
    case front::Keyword::Int32Ptr: os << "int32*"; break;
    case front::Keyword::Int8Ptr: os << "int8*"; break;
    case front::Keyword::UInt32: os << "uint32"; break;
    case front::Keyword::UInt8: os << "uint8"; break;
    case front::Keyword::UInt32Ptr: os << "uint32*"; break;
    case front::Keyword::UInt8Ptr: os << "uint8*"; break;
    default: assert(false);
  }
  os << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void ArgElemAST::Dump(std::ostream &os) {
  os << indent << "ArgElemAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "type:" << std::endl;
  ++indent_count;
  type_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void BlockAST::Dump(std::ostream &os) {
  os << indent << "BlockAST {" << std::endl;
  ++indent_count;
  for (const auto &i : stmts_) i->Dump(os);
  --indent_count;
  os << indent << "}" << std::endl;
}

void BinaryAST::Dump(std::ostream &os) {
  os << indent << "BinaryAST {" << std::endl;
  ++indent_count;
  os << indent << "op: " << operators[static_cast<int>(op_)] << std::endl;
  os << indent << "lhs:" << std::endl;
  ++indent_count;
  lhs_->Dump(os);
  --indent_count;
  os << indent << "rhs:" << std::endl;
  ++indent_count;
  rhs_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void CastAST::Dump(std::ostream &os) {
  os << indent << "CastAST {" << std::endl;
  ++indent_count;
  os << indent << "expr:" << std::endl;
  ++indent_count;
  expr_->Dump(os);
  --indent_count;
  os << indent << "type:" << std::endl;
  ++indent_count;
  type_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void UnaryAST::Dump(std::ostream &os) {
  os << indent << "UnaryAST {" << std::endl;
  ++indent_count;
  os << indent << "op: " << operators[static_cast<int>(op_)] << std::endl;
  os << indent << "opr:" << std::endl;
  ++indent_count;
  opr_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}

void IdAST::Dump(std::ostream &os) {
  os << indent << "IdAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void NumAST::Dump(std::ostream &os) {
  os << indent << "NumAST {" << std::endl;
  ++indent_count;
  os << indent << "num: " << num_ << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void StringAST::Dump(std::ostream &os) {
  os << indent << "StringAST {" << std::endl;
  ++indent_count;
  os << indent << "str: " << str_ << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void CharAST::Dump(std::ostream &os) {
  os << indent << "CharAST {" << std::endl;
  ++indent_count;
  os << indent << "c: " << c_ << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void ArrayAST::Dump(std::ostream &os) {
  os << indent << "ArrayAST {" << std::endl;
  ++indent_count;
  os << indent << "elems: {" << std::endl;
  ++indent_count;
  for (const auto &i : elems_) i->Dump(os);
  --indent_count;
  os << indent << "}" << std::endl;
  --indent_count;
  os << indent << "}" << std::endl;
}

void IndexAST::Dump(std::ostream &os) {
  os << indent << "IndexAST {" << std::endl;
  ++indent_count;
  os << indent << "id: " << id_ << std::endl;
  os << indent << "index:" << std::endl;
  ++indent_count;
  index_->Dump(os);
  indent_count -= 2;
  os << indent << "}" << std::endl;
}
