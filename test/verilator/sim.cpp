#include <iostream>
#include <cstring>
using namespace std;

// some magic
#define  XSTR(x)        #x
#define  STR(x)         XSTR(x)
#define  IDENT(x)       x
#define  INC(x)         STR(IDENT(MODULE_NAME).h)

#include "verilated.h"
#include INC(MODULE_NAME)

namespace {

bool is_interactive = false;

void ParseCmdArgs(int argc, const char *argv[]) {
  for (int i = 0; i < argc; ++i) {
    if (!strcmp(argv[i], "-i") || !strcmp(argv[i], "--interactive")) {
      is_interactive = true;
    }
  }
}

}  // namesapce

int main(int argc, const char *argv[]) {
  // parse command line arguments
  ParseCmdArgs(argc, argv);
  // parse verilator command line arguments
  Verilated::commandArgs(argc, argv);
  // create new instance of module
  MODULE_NAME* top = new MODULE_NAME;
  int reset = 0;
  // start evaluate
  while (!Verilated::gotFinish()) {
    // check if is interactive mode
    if (is_interactive) cin.get();
    // set reset signal
    top->rst = reset;
    if (!reset) reset = 1;
    // evaluate
    top->clk = 0;
    top->eval();
    top->clk = 1;
    top->eval();
    top->clk = 0;
    top->eval();
  }
  // delete module instance
  delete top;
  return 0;
}
