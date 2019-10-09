#include <fstream>
#include <iostream>
#include <cstdlib>

#include "front/lexer.h"
#include "front/parser.h"
#include "back/tac/builder.h"
#include "back/tac/optimizer.h"
#include "back/tac/codegen.h"

using namespace std;
using namespace tinylang::front;
using namespace tinylang::back::tac;

int main(int argc, const char *argv[]) {
  // read file
  if (argc < 2) return 1;
  std::ifstream ifs(argv[1]);
  // initialize objects
  Lexer lexer(ifs);
  Parser parser(lexer);
  Analyzer ana;
  TACBuilder irb;
  // generate IR
  while (auto ast = parser.ParseNext()) {
    if (!ast->SemaAnalyze(ana)) {
      return lexer.error_num() + parser.error_num() + ana.error_num();
    }
    ast->GenerateIR(irb);
  }
  // optimize
  Optimizer opt;
  opt.set_opt_level(argc >= 3 ? atoi(argv[2]) : 1);
  opt.ShowInfo(cerr);
  irb.RunOptimization(opt);
  // generate code
  irb.Dump(cout);
  // CodeGenerator gen;
  // irb.RunCodeGeneration(gen);
  // gen.Dump(cout);
  return 0;
}
