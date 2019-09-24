#include "back/tac/ir/tac.h"

using namespace tinylang::back::tac;

namespace {

const char *kIndent = "  ";

const char *bin_ops[] = {
  "add", "sub", "mul", "div", "mod",
  "eql", "neq", "lt", "le", "gt", "ge",
  "land", "lor",
  "and", "or", "xor", "shl", "shr",
};

const char *una_ops[] = {
  "neg", "lnot", "not", "addr",
};

bool in_expr = false;

inline void PrintTypeInfo(std::ostream &os, bool is_unsigned,
                          std::size_t size) {
  os << '(' << (is_unsigned ? 'u' : 'i') << (size * 8) << ')';
}

}  // namespace

void BinaryTAC::Dump(std::ostream &os) {
  os << kIndent;
  dest_->Dump(os);
  os << " = " << bin_ops[static_cast<int>(op_)];
  PrintTypeInfo(os, is_unsigned_, size_);
  os << ' ';
  lhs_->Dump(os);
  os << ", ";
  rhs_->Dump(os);
  os << std::endl;
}

void UnaryTAC::Dump(std::ostream &os) {
  os << kIndent;
  dest_->Dump(os);
  os << " = " << una_ops[static_cast<int>(op_)];
  PrintTypeInfo(os, is_unsigned_, size_);
  os << ' ';
  opr_->Dump(os);
  os << std::endl;
}

void LoadTAC::Dump(std::ostream &os) {
  os << kIndent;
  dest_->Dump(os);
  os << " = load";
  PrintTypeInfo(os, is_unsigned_, size_);
  os << ' ';
  addr_->Dump(os);
  os << std::endl;
}

void StoreTAC::Dump(std::ostream &os) {
  os << kIndent;
  os << "store";
  PrintTypeInfo(os, true, size_);
  os << ' ';
  addr_->Dump(os);
  os << ", ";
  value_->Dump(os);
  os << std::endl;
}

void JumpTAC::Dump(std::ostream &os) {
  in_expr = true;
  os << kIndent;
  os << "jump ";
  dest_->Dump(os);
  os << std::endl;
  in_expr = false;
}

void BranchTAC::Dump(std::ostream &os) {
  in_expr = true;
  os << kIndent;
  os << "branch ";
  cond_->Dump(os);
  os << ", ";
  dest_->Dump(os);
  os << std::endl;
  in_expr = false;
}

void CallTAC::Dump(std::ostream &os) {
  in_expr = true;
  os << kIndent;
  dest_->Dump(os);
  os << " = call ";
  func_->Dump(os);
  for (const auto &i : args_) {
    os << ", ";
    i->Dump(os);
  }
  os << std::endl;
  in_expr = false;
}

void ReturnTAC::Dump(std::ostream &os) {
  os << kIndent;
  os << "ret ";
  value_->Dump(os);
  os << std::endl;
}

void AssignTAC::Dump(std::ostream &os) {
  os << kIndent;
  var_->Dump(os);
  os << " = ";
  value_->Dump(os);
  os << std::endl;
}

void VarRefTAC::Dump(std::ostream &os) {
  os << '$' << id_;
}

void DataTAC::Dump(std::ostream &os) {
  os << "data " << id_;
}

void LabelTAC::Dump(std::ostream &os) {
  if (!in_expr) {
    os << "label_" << id_ << ':' << std::endl;
  }
  else {
    os << "label_" << id_;
  }
}

void ArgGetTAC::Dump(std::ostream &os) {
  os << "get " << pos_;
}

void NumberTAC::Dump(std::ostream &os) {
  os << num_;
}
