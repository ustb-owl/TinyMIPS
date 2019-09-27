#include "back/tac/builder.h"

#include <cassert>
#include <cstdint>

using namespace tinylang::front;
using namespace tinylang::define;
using namespace tinylang::back;
using namespace tinylang::back::tac;
using namespace tinylang::util;

namespace {

inline BinaryOp BinaryOperatorCast(Operator op, bool is_unsigned) {
  switch (op) {
    case Operator::Add: return BinaryOp::Add;
    case Operator::Sub: return BinaryOp::Sub;
    case Operator::Mul: {
      return is_unsigned ? BinaryOp::UMul : BinaryOp::Mul;
    }
    case Operator::Div: {
      return is_unsigned ? BinaryOp::UDiv : BinaryOp::Div;
    }
    case Operator::Mod: {
      return is_unsigned ? BinaryOp::UMod : BinaryOp::Mod;
    }
    case Operator::Equal: return BinaryOp::Equal;
    case Operator::NotEqual: return BinaryOp::NotEqual;
    case Operator::Less: {
      return is_unsigned ? BinaryOp::ULess : BinaryOp::Less;
    }
    case Operator::LessEqual: {
      return is_unsigned ? BinaryOp::ULessEq : BinaryOp::LessEq;
    }
    case Operator::Great: {
      return is_unsigned ? BinaryOp::UGreat : BinaryOp::Great;
    }
    case Operator::GreatEqual: {
      return is_unsigned ? BinaryOp::UGreatEq : BinaryOp::GreatEq;
    }
    case Operator::LogicAnd: return BinaryOp::LogicAnd;
    case Operator::LogicOr: return BinaryOp::LogicOr;
    case Operator::And: return BinaryOp::And;
    case Operator::Or: return BinaryOp::Or;
    case Operator::Xor: return BinaryOp::Xor;
    case Operator::Shl: return BinaryOp::Shl;
    case Operator::Shr: {
      return is_unsigned ? BinaryOp::LShr : BinaryOp::AShr;
    }
    default: assert(false); return BinaryOp::Add;
  }
}

inline UnaryOp UnaryOperatorCast(Operator op) {
  switch (op) {
    case Operator::Sub: return UnaryOp::Negate;
    case Operator::LogicNot: return UnaryOp::LogicNot;
    case Operator::Not: return UnaryOp::Not;
    case Operator::And: return UnaryOp::AddressOf;
    default: assert(false); return UnaryOp::Negate;
  }
}

}  // namespace

// definition of in-class constant
const char *TACBuilder::kEntryFuncId = "_start";

void TACBuilder::NewFuncInfo(const std::string &id) {
  // insert function info
  const auto &type = opr_types_.top().lhs;
  auto result = funcs_.insert({id, {NewLabel(), type, {}, {}}});
  assert(result.second);
  // update current function info
  cur_func_ = &result.first->second;
}

TACPtr TACBuilder::NewUnfilledLabel(LabelTag type) {
  auto label = NewLabel();
  unfilled_.top()[type] = label;
  return label;
}

const TACPtr &TACBuilder::GetUnfilledLabel(LabelTag type) {
  auto it = unfilled_.top().find(type);
  assert(it != unfilled_.top().end());
  return it->second;
}

void TACBuilder::FillLabel(LabelTag type) {
  AddInst(unfilled_.top()[type]);
}

void TACBuilder::AddJump(LabelTag type) {
  AddInst(std::make_shared<JumpTAC>(GetUnfilledLabel(type)));
}

TACPtr TACBuilder::NewPtrOffset(const TACPtr &offset,
                                const TypePtr &offset_type,
                                const TypePtr &ptr_type) {
  auto size = ptr_type->GetDerefedType()->GetSize();
  return NewPtrOffset(offset, offset_type, size);
}

TACPtr TACBuilder::NewPtrOffset(const TACPtr &offset,
                                const TypePtr &offset_type,
                                std::size_t size) {
  auto var = NewTempVar();
  auto tac = NewDataCast(offset, offset_type, kTypeSizeWordLength);
  AddInst(std::make_shared<BinaryTAC>(
      BinaryOp::Mul, tac, std::make_shared<NumberTAC>(size), var));
  return var;
}

TACPtr TACBuilder::NewDataCast(const TACPtr &data, const TypePtr &src,
                               const TypePtr &dest) {
  return NewDataCast(data, src, dest->GetSize());
}

TACPtr TACBuilder::NewDataCast(const TACPtr &data, const TypePtr &src,
                               std::size_t dest) {
  auto s_size = src->GetSize();
  if (s_size == dest) {
    return data;
  }
  else if (s_size > dest) {
    auto var = NewTempVar();
    AddInst(std::make_shared<UnaryTAC>(UnaryOp::Trunc, data, var));
    return var;
  }
  else {
    auto var = NewTempVar();
    auto op = src->IsUnsigned() ? UnaryOp::ZExt : UnaryOp::SExt;
    AddInst(std::make_shared<UnaryTAC>(op, data, var));
    return var;
  }
}

IRPtr TACBuilder::GenerateFunDecl(const std::string &id) {
  // insert function info
  const auto &type = opr_types_.top().lhs;
  auto result = funcs_.insert({id, {NewLabel(), type, {}, {}}});
  assert(result.second);
  return nullptr;
}

IRPtr TACBuilder::GenerateFunCall(const std::string &id, IRPtrList args) {
  // get type of arguments
  auto args_type = funcs_[id].type->GetArgsType();
  auto types = opr_types_.top().lhs->GetArgsType();
  assert(args_type && types);
  // get argument list
  TACPtrList tac_args;
  for (std::size_t i = 0; i < args.size(); ++i) {
    auto tac = NewDataCast(TACCast(args[i]), (*types)[i], (*args_type)[i]);
    tac_args.push_back(std::move(tac));
  }
  // create function call
  auto dest = NewTempVar();
  AddInst(std::make_shared<CallTAC>(funcs_[id].label, std::move(tac_args),
                                    dest));
  return MakeTAC(dest);
}

IRPtr TACBuilder::GenerateIfCond(const IRPtr &cond) {
  // create unfilled labels
  unfilled_.push({});
  auto true_branch = NewUnfilledLabel(LabelTag::LabelTrue);
  auto false_branch = NewUnfilledLabel(LabelTag::LabelFalse);
  NewUnfilledLabel(LabelTag::LabelEndIf);
  // generate jump
  AddInst(std::make_shared<BranchTAC>(TACCast(cond), true_branch));
  AddInst(std::make_shared<JumpTAC>(false_branch));
  return nullptr;
}

IRPtr TACBuilder::GenerateWhileCond(const IRPtr &cond) {
  // generate jump
  const auto &body = GetUnfilledLabel(LabelTag::LabelBody);
  AddInst(std::make_shared<BranchTAC>(TACCast(cond), body));
  AddJump(LabelTag::LabelEndWhile);
  return nullptr;
}

IRPtr TACBuilder::GenerateControl(Keyword type, const IRPtr &expr) {
  switch (type) {
    case Keyword::Break: {
      AddJump(LabelTag::LabelEndWhile);
      break;
    }
    case Keyword::Continue: {
      AddJump(LabelTag::LabelCond);
      break;
    }
    case Keyword::Return: {
      TACPtr ret_val;
      if (expr) {
        auto func_arg = cur_func_->type->GetArgsType();
        auto func_ret = cur_func_->type->GetReturnType(*func_arg);
        const auto &expr_type = opr_types_.top().lhs;
        ret_val = NewDataCast(TACCast(expr), expr_type, func_ret);
      }
      AddInst(std::make_shared<ReturnTAC>(std::move(ret_val)));
      break;
    }
    default: assert(false); break;
  }
  return nullptr;
}

IRPtr TACBuilder::GenerateVarElem(const std::string &id,
                                  const IRPtr &init) {
  auto var = NewTempVar();
  // add variable info
  vars_->AddItem(id, var);
  cur_func_->vars.push_back(var);
  // generate initializer
  if (init) {
    const auto &cur = opr_types_.top();
    auto tac = NewDataCast(TACCast(init), cur.rhs, cur.lhs);
    AddInst(std::make_shared<AssignTAC>(std::move(tac), var));
  }
  return nullptr;
}

IRPtr TACBuilder::GenerateLetElem(const std::string &id,
                                  const IRPtr &init) {
  auto var = NewTempVar();
  // add variable info
  vars_->AddItem(id, var);
  cur_func_->vars.push_back(var);
  // generate initializer
  assert(init != nullptr);
  const auto &cur = opr_types_.top();
  auto tac = NewDataCast(TACCast(init), cur.rhs, cur.lhs);
  AddInst(std::make_shared<AssignTAC>(std::move(tac), var));
  return nullptr;
}

IRPtr TACBuilder::GenerateArgElem(const std::string &id) {
  auto var = NewTempVar();
  // add variable info
  vars_->AddItem(id, var);
  cur_func_->args.push_back(var);
  // generate initializer
  auto arg_get = std::make_shared<ArgGetTAC>(cur_func_->args.size() - 1);
  AddInst(std::make_shared<AssignTAC>(std::move(arg_get), var));
  return nullptr;
}

IRPtr TACBuilder::GenerateBinary(Operator op, const IRPtr &lhs,
                                 const IRPtr &rhs) {
  // get operand type
  const auto &lhs_type = opr_types_.top().lhs;
  const auto &rhs_type = opr_types_.top().rhs;
  if (op == Operator::Assign) {
    // generate assign
    auto tac = NewDataCast(TACCast(rhs), rhs_type, lhs_type);
    AddInst(std::make_shared<AssignTAC>(std::move(tac), TACCast(lhs)));
    return nullptr;
  }
  else if (IsOperatorAssign(op)) {
    // generate assign with binary operation
    auto var = TACCast(GenerateBinary(GetDeAssignedOp(op), lhs, rhs));
    if (lhs_type->GetSize() < rhs_type->GetSize()) {
      // case: i8 += i32 -> i8 = i8 + i32 -> i8 = trunc i32
      var = NewDataCast(var, rhs_type, lhs_type);
    }
    AddInst(std::make_shared<AssignTAC>(std::move(var), TACCast(lhs)));
    return nullptr;
  }
  else {
    // create lhs, rhs TAC
    auto lhs_tac = TACCast(lhs), rhs_tac = TACCast(rhs);
    // get unsigned flag
    bool is_unsigned;
    switch (op) {
      case Operator::Add: case Operator::Sub: {
        // check if pointer operation
        if (lhs_type->IsPointer() || rhs_type->IsPointer()) {
          is_unsigned = true;
          // make new operand (times derefed type's size)
          if (lhs_type->IsPointer()) {
            rhs_tac = NewPtrOffset(rhs_tac, rhs_type, lhs_type);
          }
          else if (rhs_type->IsPointer()) {
            lhs_tac = NewPtrOffset(lhs_tac, lhs_type, rhs_type);
          }
          break;
        }
        // fall through
      }
      case Operator::Mul: case Operator::Div: case Operator::Mod:
      case Operator::And: case Operator::Or: case Operator::Xor:
      case Operator::Shl: case Operator::Less: case Operator::LessEqual:
      case Operator::Great: case Operator::GreatEqual: case Operator::Equal:
      case Operator::NotEqual: {
        lhs_tac = NewDataCast(lhs_tac, lhs_type, kTypeSizeWordLength);
        rhs_tac = NewDataCast(rhs_tac, rhs_type, kTypeSizeWordLength);
        if (lhs_type->GetSize() > rhs_type->GetSize()) {
          is_unsigned = lhs_type->IsUnsigned();
        }
        else if (lhs_type->GetSize() < rhs_type->GetSize()) {
          is_unsigned = rhs_type->IsUnsigned();
        }
        else {
          is_unsigned = lhs_type->IsUnsigned() || rhs_type->IsUnsigned();
        }
        break;
      }
      case Operator::Shr: {
        lhs_tac = NewDataCast(lhs_tac, lhs_type, kTypeSizeWordLength);
        rhs_tac = NewDataCast(rhs_tac, rhs_type, kTypeSizeWordLength);
        is_unsigned = lhs_type->IsUnsigned();
        break;
      }
      default: assert(false); return nullptr;
    }
    // generate binary operation
    auto var = NewTempVar();
    auto bin_op = BinaryOperatorCast(op, is_unsigned);
    AddInst(std::make_shared<BinaryTAC>(bin_op, std::move(lhs_tac),
                                        std::move(rhs_tac), var));
    return MakeTAC(var);
  }
}

IRPtr TACBuilder::GenerateLogicLHS(Operator op, const IRPtr &lhs) {
  unfilled_.push({});
  auto lhs_tac = TACCast(lhs);
  // create return value variable
  auto ret = NewTempVar();
  logics_.push(ret);
  // check operator
  if (op == Operator::LogicAnd) {
    // generate unfilled label
    auto second = NewUnfilledLabel(LabelTag::LabelSecond);
    auto end = NewUnfilledLabel(LabelTag::LabelEndLogic);
    // generate initializer
    auto init = std::make_shared<NumberTAC>(0);
    AddInst(std::make_shared<AssignTAC>(std::move(init), ret));
    // generate branch & jump
    AddInst(std::make_shared<BranchTAC>(lhs_tac, std::move(second)));
    AddJump(LabelTag::LabelEndLogic);
  }
  else {  // LogicOr
    // generate unfilled label
    auto label = NewUnfilledLabel(LabelTag::LabelEndLogic);
    // generate initializer
    auto init = std::make_shared<NumberTAC>(1);
    AddInst(std::make_shared<AssignTAC>(std::move(init), ret));
    // generate branch
    AddInst(std::make_shared<BranchTAC>(lhs_tac, std::move(label)));
  }
  return nullptr;
}

IRPtr TACBuilder::GenerateLogicRHS(const IRPtr &rhs) {
  // get return value variable
  auto ret = logics_.top();
  logics_.pop();
  // generate assign
  AddInst(std::make_shared<AssignTAC>(TACCast(rhs), ret));
  return MakeTAC(ret);
}

IRPtr TACBuilder::GenerateUnary(Operator op, const IRPtr &opr) {
  // get operand and type
  auto tac = TACCast(opr);
  const auto &type = opr_types_.top().lhs;
  // pre-handle some case
  switch (op) {
    // skip positive operator
    case Operator::Add: return opr;
    // memory accessing
    case Operator::Mul: {
      auto deref = type->GetDerefedType();
      auto size = deref->GetSize();
      if (store_) {
        // handle store
        AddInst(std::make_shared<StoreTAC>(store_, tac, size));
        return nullptr;
      }
      else {
        // just load
        auto dest = NewTempVar();
        auto is_unsigned = deref->IsUnsigned();
        AddInst(std::make_shared<LoadTAC>(tac, dest, is_unsigned, size));
        return MakeTAC(dest);
      }
    }
    default:;
  }
  // generate unary operation
  auto var = NewTempVar();
  auto una_op = UnaryOperatorCast(op);
  AddInst(std::make_shared<UnaryTAC>(una_op, tac, var));
  return MakeTAC(var);
}

IRPtr TACBuilder::GenerateId(const std::string &id) {
  return MakeTAC(vars_->GetItem(id));
}

IRPtr TACBuilder::GenerateNum(unsigned int num) {
  return MakeTAC(std::make_shared<NumberTAC>(num));
}

IRPtr TACBuilder::GenerateString(const std::string &str) {
  // create string
  TACPtrList elems;
  for (const auto &c : str) {
    std::uint8_t unsigned_c = c;
    elems.push_back(std::make_shared<NumberTAC>(unsigned_c));
  }
  elems.push_back(std::make_shared<NumberTAC>(0));
  // add data info
  datas_.push_back({std::move(elems), 1});
  return MakeTAC(std::make_shared<DataTAC>(datas_.size() - 1));
}

IRPtr TACBuilder::GenerateChar(char c) {
  std::uint8_t unsigned_c = c;
  return MakeTAC(std::make_shared<NumberTAC>(unsigned_c));
}

IRPtr TACBuilder::GenerateArray(IRPtrList elems) {
  // create array
  TACPtrList arr;
  std::unordered_map<std::size_t, TACPtr> inits;
  for (std::size_t i = 0; i < elems.size(); ++i) {
    auto tac = TACCast(elems[i]);
    if (tac->IsConst()) {
      arr.push_back(std::move(tac));
    }
    else {
      arr.push_back(std::make_shared<NumberTAC>(0));
      inits.insert({i, std::move(tac)});
    }
  }
  // add data info
  auto size = opr_types_.top().lhs->GetSize();
  datas_.push_back({arr, size});
  auto data = std::make_shared<DataTAC>(datas_.size() - 1);
  // array initialize
  if (!inits.empty()) {
    // create base address variable
    auto base = NewTempVar();
    AddInst(std::make_shared<AssignTAC>(data, base));
    // create initializers
    std::size_t i = 0;
    for (const auto &it : inits) {
      // create address variable
      auto offset = std::make_shared<NumberTAC>(it.first * size);
      auto addr = NewTempVar();
      AddInst(std::make_shared<BinaryTAC>(BinaryOp::Add, base,
                                          std::move(offset), addr));
      // create initialization data
      const auto &types = opr_types_.top().rhs->GetArgsType();
      assert(types);
      auto tac = NewDataCast(it.second, (*types)[i++], size);
      // create store
      AddInst(std::make_shared<StoreTAC>(std::move(tac), std::move(addr),
                                         size));
    }
  }
  return MakeTAC(data);
}

IRPtr TACBuilder::GenerateIndex(const std::string &id, const IRPtr &index) {
  // generate offset
  auto base = vars_->GetItem(id);
  auto size = opr_types_.top().lhs->GetSize();
  auto offset = NewPtrOffset(TACCast(index), opr_types_.top().rhs, size);
  // generate address
  auto addr = NewTempVar();
  AddInst(std::make_shared<BinaryTAC>(BinaryOp::Add, base, offset, addr));
  if (store_) {
    // handle store
    AddInst(std::make_shared<StoreTAC>(store_, addr, size));
    return nullptr;
  }
  else {
    // just load
    auto dest = NewTempVar();
    auto is_unsigned = opr_types_.top().lhs->IsUnsigned();
    AddInst(std::make_shared<LoadTAC>(addr, dest, is_unsigned, size));
    return MakeTAC(dest);
  }
}

Guard TACBuilder::EnterFunction(const std::string &id) {
  NewFuncInfo(id);
  NewVarMap();
  return Guard([this]{
    AddInst(std::make_shared<ReturnTAC>(nullptr));
    RestoreFuncInfo();
    RestoreVarMap();
  });
}

Guard TACBuilder::EnterIfTrueBody() {
  FillLabel(LabelTag::LabelTrue);
  NewVarMap();
  return util::Guard([this] {
    AddJump(LabelTag::LabelEndIf);
    RestoreVarMap();
  });
}

Guard TACBuilder::EnterIfFalseBody() {
  FillLabel(LabelTag::LabelFalse);
  NewVarMap();
  return util::Guard([this] {
    // fill label
    FillLabel(LabelTag::LabelEndIf);
    // remove stack frame
    unfilled_.pop();
    RestoreVarMap();
  });
}

Guard TACBuilder::EnterWhileCond() {
  // create unfilled labels
  unfilled_.push({});
  NewUnfilledLabel(LabelTag::LabelCond);
  NewUnfilledLabel(LabelTag::LabelBody);
  NewUnfilledLabel(LabelTag::LabelEndWhile);
  // fill label
  FillLabel(LabelTag::LabelCond);
  return Guard(nullptr);
}

Guard TACBuilder::EnterWhileBody() {
  FillLabel(LabelTag::LabelBody);
  NewVarMap();
  return Guard([this] {
    // generate jump
    AddJump(LabelTag::LabelCond);
    FillLabel(LabelTag::LabelEndWhile);
    // remove stack frame
    unfilled_.pop();
    RestoreVarMap();
  });
}

Guard TACBuilder::EnterLogicRHS(Operator op) {
  if (op == Operator::LogicAnd) FillLabel(LabelTag::LabelSecond);
  return Guard([this] {
    FillLabel(LabelTag::LabelEndLogic);
    unfilled_.pop();
  });
}

Guard TACBuilder::MarkStore(const IRPtr &value) {
  store_ = TACCast(value);
  return Guard([this] { store_ = nullptr; });
}

void TACBuilder::EndGeneration() {
  AddInst(std::make_shared<ReturnTAC>(nullptr));
}

void TACBuilder::Dump(std::ostream &os) {
  // print global data
  if (!datas_.empty()) {
    os << "data:" << std::endl;
    for (std::size_t i = 0; i < datas_.size(); ++i) {
      const auto &info = datas_[i];
      os << "  " << i << '(' << (info.elem_size * 8) << "): ";
      os << std::endl << "    ";
      for (std::size_t j = 0; j < info.content.size(); ++j) {
        if (j) os << ", ";
        info.content[j]->Dump(os);
        if (j == info.content.size() - 1) os << std::endl;
      }
    }
    os << std::endl;
  }
  // print functions
  for (const auto &f : funcs_) {
    const auto &id = f.first;
    const auto &info = f.second;
    // print function label
    os << id << ", ";
    info.label->Dump(os);
    // print IRs
    if (info.irs.empty()) {
      os << "  # function declaration" << std::endl;
    }
    else {
      for (const auto &ir : info.irs) ir->Dump(os);
    }
    os << std::endl;
  }
}

void TACBuilder::RunOptimization(Optimizer &opt) {
  opt.set_funcs(&funcs_);
  opt.Run();
}
