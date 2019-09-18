#ifndef TINYLANG_FRONT_ANALYZER_H_
#define TINYLANG_FRONT_ANALYZER_H_

#include "define/symbol.h"
#include "front/lexer.h"

namespace tinylang::front {

class Analyzer {
 public:
  Analyzer()
      : env_(std::make_shared<define::Environment>()), error_num_(0) {}

  define::TypePtr AnalyzeAssign(unsigned int line_pos,
                                const std::string &id,
                                const define::TypePtr &expr);
  define::TypePtr AnalyzeFunDef(unsigned int line_pos,
                                const std::string &id,
                                define::TypePtrList args,
                                define::TypePtr ret);
  define::TypePtr AnalyzeFunCall(unsigned int line_pos,
                                 const std::string &id,
                                 const define::TypePtrList &args);
  define::TypePtr AnalyzeControl(unsigned int line_pos, Keyword type,
                                 const define::TypePtr &expr);
  define::TypePtr AnalyzeVarElem(unsigned int line_pos,
                                 const std::string &id,
                                 define::TypePtr type,
                                 const define::TypePtr &init);
  define::TypePtr AnalyzeLetElem(unsigned int line_pos,
                                 const std::string &id,
                                 define::TypePtr type,
                                 const define::TypePtr &init);
  define::TypePtr AnalyzeType(unsigned int line_pos, Keyword type,
                              unsigned int ptr);
  define::TypePtr AnalyzeArgElem(unsigned int line_pos,
                                 const std::string &id,
                                 define::TypePtr type);
  define::TypePtr AnalyzeBinary(unsigned int line_pos, Operator op,
                                const define::TypePtr &lhs,
                                const define::TypePtr &rhs);
  define::TypePtr AnalyzeCast(unsigned int line_pos,
                              const define::TypePtr &expr,
                              const define::TypePtr &type);
  define::TypePtr AnalyzeUnary(unsigned int line_pos, Operator op,
                               const define::TypePtr &opr);
  define::TypePtr AnalyzeId(unsigned int line_pos, const std::string &id);
  define::TypePtr AnalyzeNum();
  define::TypePtr AnalyzeString();
  define::TypePtr AnalyzeChar();
  define::TypePtr AnalyzeArray(unsigned int line_pos,
                               const define::TypePtrList &elems);
  define::TypePtr AnalyzeIndex(unsigned int line_pos, const std::string &id,
                               const define::TypePtr &index);

  // create a new environment
  void NewEnvironment() {
    env_ = std::make_shared<define::Environment>(env_);
  }
  // restore current environment to outer environment
  void RestoreEnvironment() { env_ = env_->outer(); }

  unsigned int error_num() const { return error_num_; }
  const define::EnvPtr &env() const { return env_; }

 private:
  define::TypePtr LogError(const char *message, unsigned int line_pos);
  define::TypePtr LogError(const char *message, const char *id,
                           unsigned int line_pos);

  unsigned int error_num_;
  define::EnvPtr env_;
};

}  // namespace tinylang::front

#endif  // TINYLANG_FRONT_ANALYZER_H_
