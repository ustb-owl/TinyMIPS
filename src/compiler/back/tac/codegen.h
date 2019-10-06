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
  CodeGenerator(FuncInfo &entry, FuncInfoMap &funcs, DataInfoList &datas)
      : entry_(entry), funcs_(funcs), datas_(datas) {}

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

  // run generate process
  void Generate();
  // dump generated assembly code
  void Dump(std::ostream &os);

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
  void PutDataName();
  // put label name to stream
  void PutLabelName();

  // function info of entry function
  FuncInfo &entry_;
  // function info map in TAC builder
  FuncInfoMap &funcs_;
  // data info in TAC builder
  DataInfoList &datas_;
  // string stream of generated code
  std::ostringstream code_;
  // last id
  std::size_t last_var_id_, last_data_id_, last_label_id_;
};

}  // namespace tinylang::back::tac

#endif  // TINYLANG_BACK_TAC_CODEGEN_H_
