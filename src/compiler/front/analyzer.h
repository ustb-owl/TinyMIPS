#ifndef TINYLANG_FRONT_ANALYZER_H_
#define TINYLANG_FRONT_ANALYZER_H_

#include "define/symbol.h"
#include "front/lexer.h"

namespace tinylang::front {

class Analyzer {
 public:
  Analyzer()
      : env_(std::make_shared<define::Environment>()), error_num_(0) {}

  define::TypeRef AnalyzeAssign(unsigned int line_pos,
                                const std::string &id,
                                const define::TypeRef &expr);
  define::TypeRef AnalyzeVarDef(unsigned int line_pos,
                                const define::TypeRefList &defs);
  define::TypeRef AnalyzeLetDef(unsigned int line_pos,
                                const define::TypeRefList &defs);
  define::TypeRef AnalyzeFunDef(unsigned int line_pos,
                                const std::string &id,
                                const define::TypeRefList &args,
                                const define::TypeRef &type,
                                const define::TypeRef &body);
  define::TypeRef AnalyzeFunCall(unsigned int line_pos,
                                 const std::string &id,
                                 const define::TypeRefList &args);
  define::TypeRef AnalyzeIf(unsigned int line_pos,
                            const define::TypeRef &cond,
                            const define::TypeRef &then,
                            const define::TypeRef &else_then);
  define::TypeRef AnalyzeWhile(unsigned int line_pos,
                               const define::TypeRef &cond,
                               const define::TypeRef &body);
  define::TypeRef AnalyzeControl(unsigned int line_pos, Keyword type,
                                 const define::TypeRef &expr);
  define::TypeRef AnalyzeVarElem(unsigned int line_pos,
                                 const std::string &id,
                                 const define::TypeRef &type,
                                 const define::TypeRef &init);
  define::TypeRef AnalyzeLetElem(unsigned int line_pos,
                                 const std::string &id,
                                 const define::TypeRef &type,
                                 const define::TypeRef &init);
  define::TypeRef AnalyzeType(unsigned int line_pos, Keyword type);
  define::TypeRef AnalyzeArgElem(unsigned int line_pos,
                                 const std::string &id,
                                 const define::TypeRef &type);
  define::TypeRef AnalyzeBlock(unsigned int line_pos,
                               const define::TypeRefList &stmts);
  define::TypeRef AnalyzeBinary(unsigned int line_pos, Operator op,
                                const define::TypeRef &lhs,
                                const define::TypeRef &rhs);
  define::TypeRef AnalyzeCast(unsigned int line_pos,
                              const define::TypeRef &expr,
                              const define::TypeRef &type);
  define::TypeRef AnalyzeUnary(unsigned int line_pos, Operator op,
                               const define::TypeRef &opr);
  define::TypeRef AnalyzeId(unsigned int line_pos, const std::string &id);
  define::TypeRef AnalyzeNum();
  define::TypeRef AnalyzeString();
  define::TypeRef AnalyzeChar();
  define::TypeRef AnalyzeArray(unsigned int line_pos,
                               const define::TypeRefList &elems);
  define::TypeRef AnalyzeIndex(unsigned int line_pos, const std::string &id,
                               const define::TypeRef &index);

  // create a new environment
  void NewEnvironment() {
    env_ = std::make_shared<define::Environment>(env_);
  }
  // restore current environment to outer environment
  void RestoreEnvironment() { env_ = env_->outer(); }

  unsigned int error_num() const { return error_num_; }
  const define::EnvPtr &env() const { return env_; }

 private:
  define::TypeRef LogError(const char *message, unsigned int line_pos);
  define::TypeRef LogError(const char *message, const char *id,
                           unsigned int line_pos);

  unsigned int error_num_;
  define::EnvPtr env_;
};

}  // namespace tinylang::front

#endif  // TINYLANG_FRONT_ANALYZER_H_
