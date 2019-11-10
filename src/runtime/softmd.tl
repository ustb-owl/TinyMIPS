# software multiplication and division algorithm for TinyLang
#
# NOTE:
#   1. all arguments must be stored in $a0 ~ $a3
#   2. avoid using $t0 ~ $t9
#   3. omit all prologues and epilogues


def std_mul(lhs: u32, rhs: u32): u32 {
  var ans = 0
  while rhs {
    if rhs & 1 {
      ans += lhs
    }
    lhs <<= 1
    rhs >>= 1
  }
  return ans
}

def std_div(lhs: i32, rhs: i32, quo: i32*, rem: i32*) {
  if !rhs {
    return
  }
  (*quo) = 0
  (*rem) = 0
  # normalize lhs & rhs
  var is_lhs_neg = lhs < 0, is_rhs_neg = rhs < 0
  if is_lhs_neg { lhs = -lhs }
  if is_rhs_neg { rhs = -rhs }
  # calculate
  var i = 31
  while i >= 0 {
    (*rem) <<= 1
    (*rem) |= (lhs & (1 << i)) >> i
    if *rem >= rhs {
      (*rem) -= (rhs)
      (*quo) |= 1 << i
    }
    i -= 1
  }
  # get result
  if is_lhs_neg ^ is_rhs_neg { (*quo) = -*quo }
  if is_lhs_neg ^ (*rem < 0) { (*rem) = -*rem }
}

def std_divu(lhs: u32, rhs: u32, quo: u32*, rem: u32*) {
  if !rhs {
    return
  }
  (*quo) = 0
  (*rem) = 0
  # calculate
  var i = 31
  while i >= 0 {
    (*rem) <<= 1
    (*rem) |= (lhs & (1 << i)) >> i
    if *rem >= rhs {
      (*rem) -= (rhs)
      (*quo) |= 1 << i
    }
    i -= 1
  }
}
