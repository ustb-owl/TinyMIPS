#ifndef TINYLANG_FRONT_ANALYZER_H_
#define TINYLANG_FRONT_ANALYZER_H_

#include <string>
#include <stack>

#include "define/symbol.h"
#include "front/lexer.h"
#include "util/guard.h"

namespace tinylang::front {

class Analyzer {
 public:
  Analyzer()
      : env_(std::make_shared<define::Environment>()),
        error_num_(0), while_count_(0) {}

  define::TypePtr AnalyzeFunDef(const std::string &id,
                                define::TypePtrList args,
                                define::TypePtr ret);
  define::TypePtr AnalyzeFunCall(const std::string &id,
                                 const define::TypePtrList &args);
  define::TypePtr AnalyzeControl(Keyword type, const define::TypePtr &expr);
  define::TypePtr AnalyzeVarElem(const std::string &id,
                                 define::TypePtr type,
                                 const define::TypePtr &init);
  define::TypePtr AnalyzeLetElem(const std::string &id,
                                 define::TypePtr type,
                                 const define::TypePtr &init);
  define::TypePtr AnalyzeType(Keyword type, unsigned int ptr);
  define::TypePtr AnalyzeArgElem(const std::string &id,
                                 define::TypePtr type);
  define::TypePtr AnalyzeBinary(Operator op, const define::TypePtr &lhs,
                                const define::TypePtr &rhs);
  define::TypePtr AnalyzeCast(const define::TypePtr &expr,
                              const define::TypePtr &type);
  define::TypePtr AnalyzeUnary(Operator op, const define::TypePtr &opr);
  define::TypePtr AnalyzeId(const std::string &id);
  define::TypePtr AnalyzeNum();
  define::TypePtr AnalyzeString();
  define::TypePtr AnalyzeChar();
  define::TypePtr AnalyzeArray(const define::TypePtrList &elems);
  define::TypePtr AnalyzeIndex(const std::string &id,
                               const define::TypePtr &index);

  // create a new environment
  Guard NewEnvironment() {
    env_ = std::make_shared<define::Environment>(env_);
    return Guard([this] { env_ = env_->outer(); });
  }
  // enter a while loop
  Guard EnterWhile() {
    ++while_count_;
    return Guard([this] { --while_count_; });
  }
  // enter a function
  Guard EnterFunction(const define::TypePtr &ret) {
    cur_ret_ = ret;
    return Guard([this] { cur_ret_ = nullptr; });
  }
  // set line position
  Guard SetLinePos(unsigned int line_pos) {
    line_pos_.push(line_pos);
    return Guard([this] { line_pos_.pop(); });
  }

  unsigned int error_num() const { return error_num_; }
  const define::EnvPtr &env() const { return env_; }

 private:
  define::TypePtr LogError(const char *message);
  define::TypePtr LogError(const char *message, const std::string &id);

  unsigned int error_num_, while_count_;
  std::stack<unsigned int> line_pos_;
  define::EnvPtr env_;
  define::TypePtr cur_ret_;
};

}  // namespace tinylang::front

#endif  // TINYLANG_FRONT_ANALYZER_H_
