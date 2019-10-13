#include <fstream>
#include <iostream>
#include <string>
#include <cstdlib>

#include "version.h"
#include "front/lexer.h"
#include "front/parser.h"
#include "back/tac/builder.h"
#include "back/tac/optimizer.h"
#include "back/tac/codegen.h"
#include "util/argparse.h"

using namespace std;
using namespace tinylang::front;
using namespace tinylang::back::tac;
using namespace tinylang::util;

namespace {

// show version info
void PrintVersion() {
  cout << APP_NAME << " version " << APP_VERSION << endl;
  cout << "Compiler of the TinyLang programming language." << endl;
  cout << endl;
  cout << "Copyright (C) 2019 USTB NSCSCC team. License GPLv3.";
  cout << endl;
}

}  // namespace

int main(int argc, const char *argv[]) {
  // set up argument parser
  ArgParser argp;
  argp.AddArgument<string>("input", "input TinyLang source file");
  argp.AddOption<bool>("help", "h", "show this message", false);
  argp.AddOption<bool>("version", "v", "show version info", false);
  argp.AddOption<bool>("verbose", "V", "use verbose output", false);
  argp.AddOption<int>("opt-level", "O", "set optimization level (0-2)", 0);
  argp.AddOption<bool>("dump-ast", "da", "dump AST info to output", false);
  argp.AddOption<bool>("dump-ir", "di", "dump IR info to output", false);
  argp.AddOption<string>("output", "o", "set output (default to stdout)",
                         "");

  // parse argument
  auto ret = argp.Parse(argc, argv);

  // check if need to exit program
  if (argp.GetValue<bool>("help")) {
    argp.PrintHelp();
    return 0;
  }
  else if (argp.GetValue<bool>("version")) {
    PrintVersion();
    return 0;
  }
  else if (!ret) {
    cerr << "invalid input, run '";
    cerr << argp.program_name() << " -h' for help" << endl;
    return 1;
  }

  // get input & output
  auto input = argp.GetValue<string>("input");
  auto output = argp.GetValue<string>("output");
  // initialize input & output
  std::ifstream is(input);
  std::ofstream ofs(output);
  std::ostream *os = output.empty() ? &cout : &ofs;
  // initialize objects
  Lexer lexer(is);
  Parser parser(lexer);
  Analyzer ana;
  TACBuilder irb;

  // generate IR
  while (auto ast = parser.ParseNext()) {
    if (!ast->SemaAnalyze(ana)) break;
    ast->GenerateIR(irb);
    // dump AST
    if (argp.GetValue<bool>("dump-ast")) ast->Dump(*os);
  }

  // check if has error
  auto error_num = lexer.error_num() + parser.error_num() + ana.error_num();
  if (error_num) return error_num;
  // check if need to exit now
  if (argp.GetValue<bool>("dump-ast")) return 0;

  // run optimization
  Optimizer opt;
  opt.set_opt_level(argp.GetValue<int>("opt-level"));
  if (argp.GetValue<bool>("verbose")) opt.ShowInfo(cerr);
  irb.RunOptimization(opt);
  // dump IR
  if (argp.GetValue<bool>("dump-ir")) {
    irb.Dump(*os);
    return 0;
  }

  // run code generation
  CodeGenerator gen;
  irb.RunCodeGeneration(gen);
  gen.Dump(*os);
  return 0;
}
