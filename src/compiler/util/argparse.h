#ifndef TINYLANG_UTIL_ARGPARSE_H_
#define TINYLANG_UTIL_ARGPARSE_H_

#include <string>
#include <vector>
#include <map>
#include <any>
#include <cstddef>

namespace tinylang::util {

// command line argument parser
class ArgParser {
 public:
  ArgParser() : program_name_("app"), padding_(kDefaultPadding) {}

  // add a new argument
  template <typename T>
  void AddArgument(const std::string &name, const std::string &help) {
    // check name
    CheckArgName(name);
    // check type
    CheckArgType(typeid(T));
    // update padding width
    auto txt_width = name.size() + kArgMinWidth;
    if (txt_width > padding_) padding_ = txt_width;
    // push into argument list
    args_.push_back({name, "", help});
    vals_.insert({name, T()});
  }

  // add a new option
  template <typename T>
  void AddOption(const std::string &name, const std::string &short_name,
                 const std::string &help, const T &default_val) {
    // check name
    CheckArgName(name);
    CheckArgName(short_name);
    // check type
    CheckArgType(typeid(T));
    // update padding width
    auto txt_width = name.size() + short_name.size() + kArgMinWidth;
    if (txt_width > padding_) padding_ = txt_width;
    // push into option list
    opts_.push_back({name, short_name, help});
    opt_map_.insert({"--" + name, opts_.size() - 1});
    opt_map_.insert({"-" + short_name, opts_.size() - 1});
    vals_.insert({name, default_val});
  }

  // get parsed value
  template <typename T>
  T GetValue(const std::string &name) {
    return std::any_cast<T>(vals_[name]);
  }

  // parse argument
  bool Parse(int argc, const char *argv[]);
  // print help message
  void PrintHelp();

  // setter
  void set_program_name(const char *program_name) {
    program_name_ = program_name;
    auto pos = program_name_.rfind('/');
    if (pos != std::string::npos) {
      program_name_ = program_name_.substr(pos + 1);
    }
  }

  // getter
  const std::string &program_name() const { return program_name_; }

 private:
  // default padding width of argument description info
  static const int kDefaultPadding = 10;
  // minimum width of argument display in help message
  static const int kArgMinWidth = sizeof("  -, -- <ARG>   ") - 1;

  struct ArgInfo {
    std::string name;
    std::string short_name;
    std::string help_msg;
  };

  // assert argument/option name is valid
  void CheckArgName(const std::string &name);
  // assert argument/option type is valid
  void CheckArgType(const std::type_info &type);
  // read argument value
  bool ReadArgValue(const char *arg, std::any &value);

  std::string program_name_;
  std::size_t padding_;
  std::vector<ArgInfo> args_, opts_;
  std::map<std::string, std::size_t> opt_map_;
  std::map<std::string, std::any> vals_;
};

}  // namespace tinylang::util

#endif  // TINYLANG_UTIL_ARGPARSE_H_
