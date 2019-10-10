#include "util/argparse.h"

#include <iostream>
#include <iomanip>
#include <sstream>
#include <cctype>
#include <cassert>

using namespace tinylang::util;

// all supported types
#define ARGPARSE_SUPPORTED_TYPES(f)                               \
  f(short) f(unsigned short) f(int) f(unsigned int) f(long)       \
  f(unsigned long) f(long long) f(unsigned long long) f(bool)     \
  f(float) f(double) f(long double) f(std::string)
// expand to type check
#define ARGPARSE_EXPAND_EQL(t)                                    \
  type == typeid(t) ||
// expand to value read
#define ARGPARSE_EXPAND_READ(t)                                   \
  if (value.type() == typeid(t)) return ReadValue<t>(arg, value);

namespace {

template <typename T>
inline bool ReadValue(const char *str, std::any &value) {
  std::istringstream iss(str);
  T v;
  iss >> v;
  value = v;
  return !iss.fail();
}

}  // namespace

void ArgParser::CheckArgName(const std::string &name) {
  // regular expression: ([A-Za-z0-9]|_|-)+
  assert(!name.empty());
  for (const auto &i : name) {
    assert(std::isalnum(i) || i == '_' || i == '-');
    static_cast<void>(i);
  }
}

void ArgParser::CheckArgType(const std::type_info &type) {
  assert(ARGPARSE_SUPPORTED_TYPES(ARGPARSE_EXPAND_EQL) 0);
}

bool ArgParser::ReadArgValue(const char *arg, std::any &value) {
  ARGPARSE_SUPPORTED_TYPES(ARGPARSE_EXPAND_READ);
  assert(false);
  return false;
}

bool ArgParser::Parse(int argc, const char *argv[]) {
  // update program name
  set_program_name(argv[0]);
  std::size_t arg_ofs = 0;
  // parse argument list
  for (int i = 1; i < argc; ++i) {
    if (argv[i][0] == '-') {
      // find option info
      auto it = opt_map_.find(argv[i]);
      if (it == opt_map_.end()) return false;
      const auto &info = opts_[it->second];
      auto &val = vals_[info.name];
      // fill value
      if (val.type() == typeid(bool)) {
        val = true;
      }
      else {
        // read argument of option
        ++i;
        if (i >= argc) return false;
        if (argv[i][0] == '-' || !ReadArgValue(argv[i], val)) return false;
      }
    }
    else {
      // parse an argument
      if (arg_ofs >= args_.size()) return false;
      if (!ReadArgValue(argv[i], vals_[args_[arg_ofs].name])) return false;
      ++arg_ofs;
    }
  }
  return arg_ofs == args_.size();
}

void ArgParser::PrintHelp() {
  using namespace std;
  // print usage
  cout << "Usage: " << program_name_ << " ";
  for (const auto &i : args_) {
    cout << "<";
    for (const auto &c : i.name) {
      cout << static_cast<char>(std::toupper(c));
    }
    cout << "> ";
  }
  if (!opts_.empty()) cout << "[OPTIONS...]" << endl;
  // print arguments
  if (!args_.empty()) {
    cout << endl;
    cout << "Arguments:" << endl;
    for (const auto &i : args_) {
      cout << left << setw(padding_) << ("  " + i.name);
      cout << i.help_msg << endl;
    }
  }
  // print options
  if (!opts_.empty()) {
    cout << endl;
    cout << "Options:" << endl;
    for (const auto &i : opts_) {
      // generate option title
      auto title = "  -" + i.short_name + ", --" + i.name;
      if (vals_[i.name].type() != typeid(bool)) title += " <ARG>";
      // print info
      cout << left << setw(padding_) << title;
      cout << i.help_msg << endl;
    }
  }
}
