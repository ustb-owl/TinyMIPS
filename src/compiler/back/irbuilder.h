#ifndef TINYLANG_BACK_IRBUILDER_H_
#define TINYLANG_BACK_IRBUILDER_H_

#include "back/ir.h"

namespace tinylang::back {

// interface of all IR builders
class IRBuilderInterface {
 public:
  virtual ~IRBuilderInterface() = default;

  //
};

using IRBuilder = IRBuilderInterface;

}  // namespace tinylang::back

#endif  // TINYLANG_BACK_IRBUILDER_H_
