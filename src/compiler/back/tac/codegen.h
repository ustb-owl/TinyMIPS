#ifndef TINYLANG_BACK_TAC_CODEGEN_H_
#define TINYLANG_BACK_TAC_CODEGEN_H_

#include <ostream>
#include <sstream>
#include <cstddef>

#include "back/tac/ir/tac.h"
#include "back/tac/define.h"

namespace tinylang::back::tac {

class CodeGenerator {
 public:
  CodeGenerator() : entry_(nullptr), funcs_(nullptr), datas_(nullptr) {}

  // visitor methods
  void GenerateOn(BinaryTAC &tac);
  void GenerateOn(UnaryTAC &tac);
  void GenerateOn(LoadTAC &tac);
  void GenerateOn(StoreTAC &tac);
  void GenerateOn(JumpTAC &tac);
  void GenerateOn(BranchTAC &tac);
  void GenerateOn(CallTAC &tac);
  void GenerateOn(ReturnTAC &tac);
  void GenerateOn(AssignTAC &tac);
  void GenerateOn(VarRefTAC &tac);
  void GenerateOn(DataTAC &tac);
  void GenerateOn(LabelTAC &tac);
  void GenerateOn(ArgGetTAC &tac);
  void GenerateOn(NumberTAC &tac);

  // run code generation
  void Generate();
  // dump generated assembly code
  void Dump(std::ostream &os);

  // set entry function's info
  void set_entry(FuncInfo *entry) { entry_ = entry; }
  // set function info map
  void set_funcs(FuncInfoMap *funcs) { funcs_ = funcs; }
  // set data info list
  void set_datas(DataInfoList *datas) { datas_ = datas; }

 private:
  // generate all global variables
  void GenerateGlobalVars();
  // generate all arrays
  void GenerateArrayData();
  // do register allocation
  void AllocateRegisters(FuncInfo &func);

  // put global variable name to stream
  void PutGlobalVarName();
  // put data name to stream
  void PutDataName(std::size_t id);
  // put label name to stream
  void PutLabelName(std::size_t id);

  // function info of entry function
  FuncInfo *entry_;
  // function info map in TAC builder
  FuncInfoMap *funcs_;
  // data info in TAC builder
  DataInfoList *datas_;
  // string stream of generated code
  std::ostringstream code_;
  // last variable id
  std::size_t last_var_id_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_H_
