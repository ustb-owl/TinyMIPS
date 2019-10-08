#ifndef TINYLANG_BACK_TAC_CODEGEN_H_
#define TINYLANG_BACK_TAC_CODEGEN_H_

#include <ostream>
#include <sstream>
#include <string>
#include <unordered_map>
#include <cstddef>

#include "back/tac/ir/tac.h"
#include "back/tac/define.h"
#include "back/tac/codegen/tmgen.h"
#include "back/tac/codegen/varalloc.h"

namespace tinylang::back::tac {

class CodeGenerator {
 public:
  CodeGenerator();

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
  // generate a specific function
  void GenerateFunc(const std::string &name, const FuncInfo &info);
  // generate prologue
  void GeneratePrologue(const FuncInfo &info);
  // generate epilogue
  void GenerateEpilogue();

  // put variable name to stream
  std::string GetVarName(std::size_t id);
  // put data name to stream
  std::string GetDataName(std::size_t id);
  // put label name to stream
  std::string GetLabelName(std::size_t id);

  // get TAC's value
  TinyMIPSReg GetValue(const TACPtr &tac);
  // set register's value to TAC
  void SetValue(const TACPtr &tac, TinyMIPSReg value);

  // function info of entry function
  FuncInfo *entry_;
  // function info map in TAC builder
  FuncInfoMap *funcs_;
  // data info in TAC builder
  DataInfoList *datas_;
  // string stream of generated code
  std::ostringstream code_;
  // info of all funtion declarations
  std::unordered_map<TACPtr, std::string> decls_;
  // assembly code generator of function body
  TinyMIPSAsmGen asm_gen_;
  // variable allocator
  VarAllocationPass var_alloc_;
  // last TACs
  VarRefTAC *last_var_;
  DataTAC *last_data_;
  LabelTAC *last_label_;
  ArgGetTAC *last_arg_get_;
  NumberTAC *last_num_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_H_
