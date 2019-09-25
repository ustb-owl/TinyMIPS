#include "back/tac/optimizer.h"

#include <iomanip>

using namespace tinylang::back::tac;

// definition of static member in optimizer
std::list<PassInfo *> Optimizer::passes_;

void Optimizer::Run() {
  if (!funcs_) return;
  for (auto &&f : *funcs_) {
    for (const auto &p : passes_) {
      if (opt_level_ >= p->min_opt_level()) p->pass()->Run(f.second);
    }
  }
}

void Optimizer::ShowInfo(std::ostream &os) {
  // display optimization
  os << "current optimization level: " << opt_level_ << std::endl;
  // show registed info
  os << "registed function passes:" << std::endl;
  for (const auto &i : passes_) {
    os << "  " << std::setw(16) << std::left << i->name();
    os << "min_opt_level = " << i->min_opt_level() << std::endl;
  }
  // show enabled passes
  int count = 0;
  os << "enabled function passes:" << std::endl;
  for (const auto &i : passes_) {
    if (opt_level_ >= i->min_opt_level()) {
      if (count % 5 == 0) os << "  ";
      os << std::setw(16) << std::left << i->name();
      if (count % 5 == 4) os << std::endl;
      ++count;
    }
  }
  if (!count) {
    os << "  <none>" << std::endl;
  }
  else if (count % 5 != 4) {
    os << std::endl;
  }
}