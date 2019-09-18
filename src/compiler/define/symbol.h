#ifndef TINYLANG_DEFINE_SYMBOL_H_
#define TINYLANG_DEFINE_SYMBOL_H_

#include <unordered_map>
#include <string>
#include <memory>

#include "define/type.h"

namespace tinylang::define {

// scope environment (symbol table)
class Environment;
using EnvPtr = std::shared_ptr<Environment>;

class Environment {
 public:
  Environment() : outer_(nullptr) {}
  Environment(const EnvPtr &outer) : outer_(outer) {}

  // add a new symbol info to current environment
  void AddSymbol(const std::string &id, TypePtr type) {
    symbols_.insert({id, std::move(type)});
  }
  // get symbol info (type info)
  TypeRef GetInfo(const std::string &id, bool recursive);
  // get symbol info recursively
  TypeRef GetInfo(const std::string &id) { return GetInfo(id, true); }

  // outer environment
  const EnvPtr &outer() const { return outer_; }
  // check if current is root environment
  bool is_root() const { return outer_ == nullptr; }

 private:
  EnvPtr outer_;
  std::unordered_map<std::string, TypePtr> symbols_;
};

}  // namespace tinylang::define

#endif  // TINYLANG_DEFINE_SYMBOL_H_
