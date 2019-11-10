# software multiplication and division algorithm for TinyLang
# author: MaxXing, 2019-11


  .set    noreorder
  .abicalls
  .text


# standard software multiplication algorithm
  .align  2
  .globl  _std_mul
  .ent    _std_mul
  .type   _std_mul, @function
_std_mul:
  addiu   $v0, $0, 0                    # ans = 0
$_std_mul_while_cond:
  beq     $a1, $0, $_std_mul_while_end  # while rhs {
  addiu   $v1, $0, 1                    #   temp = rhs & 1
  and     $v1, $a1, $v1
  beq     $v1, $0, $_std_mul_if_end     #   if temp {
  nop
  addu    $v0, $v0, $a0                 #     ans += lhs
$_std_mul_if_end:                       #   }
  addiu   $v1, $0, 1
  sllv    $a0, $a0, $v1                 #   lhs <<= 1
  beq     $0, $0, $_std_mul_while_cond
  srlv    $a1, $a1, $v1                 #   rhs >>= 1
$_std_mul_while_end:                    # }
  jalr    $0, $ra                       # return ans
  nop
  .end    _std_mul


# standard software signed division algorithm
# quotient and remainder will be saved in $v0 and $v1
  .align  2
  .globl  _std_div
  .ent    _std_div
  .type   _std_div, @function
_std_div:
  .frame  $sp, 0, $ra
  .mask   0x00030000, -4
  addiu   $sp, $sp, -8
  sw      $s0, 4($sp)
  sw      $s1, 0($sp)
  # initialize
  beq     $a1, $0, $_std_div_return     # if !rhs { return }
  addiu   $v0, $0, 0                    # quo = 0
  addiu   $v1, $0, 0                    # rem = 0
  # normalize lhs & rhs
  addiu   $a2, $0, 31                   # i = 31
  srlv    $s0, $a0, $a2                 # is_lhs_neg = lhs < 0
  beq     $s0, $0, $_std_div_if0_end    # if is_lhs_neg {
  srlv    $s1, $a1, $a2                 # is_rhs_neg = rhs < 0 (delayed)
  subu    $a0, $0, $a0                  #   lhs = -lhs
$_std_div_if0_end:                      # }
  beq     $s1, $0, $_std_div_if1_end    # if is_rhs_neg {
  nop
  subu    $a1, $0, $a1                  #   rhs = -rhs
$_std_div_if1_end:                      # }
  # calculate
$_std_div_while:                        # while i >= 0 {
  sll     $v1, $v1, 1                   #   rem <<= 1
  addiu   $a3, $0, 1
  sllv    $a3, $a3, $a2                 #   temp = 1 << i
  and     $a3, $a0, $a3                 #   temp = lhs & temp
  srlv    $a3, $a3, $a2                 #   temp >>= i
  or      $v1, $v1, $a3                 #   rem |= temp
  sltu    $a3, $v1, $a1
  bne     $a3, $0, $_std_div_if2_end    #   if rem >= rhs {
  nop
  subu    $v1, $v1, $a1                 #     rem -= rhs
  addiu   $a3, $0, 1
  sllv    $a3, $a3, $a2                 #     temp = 1 << i
  or      $v0, $v0, $a3                 #     quo |= temp
$_std_div_if2_end:                      #   }
  bne     $a2, $0, $_std_div_while
  subu    $a2, $a2, 1                   #   i -= 1
  # get result                          # }
  xor     $a0, $s0, $s1                 # t0 = is_lhs_neg ^ is_rhs_neg
  slt     $a1, $v1, $0                  # t1 = rem < 0
  beq     $a0, $0, $_std_div_if3_end    # if t0 {
  xor     $a1, $s0, $a1                 # t1 = is_lhs_neg ^ t1 (delayed)
  subu    $v0, $0, $v0                  #   quo = -quo
$_std_div_if3_end:                      # }
  beq     $a1, $0, $_std_div_if4_end    # if t1 {
  nop
  subu    $v1, $0, $v1                  #   rem = -rem
$_std_div_if4_end:                      # }
$_std_div_return:
  lw      $s0, 4($sp)
  lw      $s1, 0($sp)
  jalr    $0, $ra                       # return quo, rem
  addiu   $sp, $sp, 8
  .end    _std_div


# standard software unsigned division algorithm
# quotient and remainder will be saved in $v0 and $v1
  .align  2
  .globl  _std_divu
  .ent    _std_divu
  .type   _std_divu, @function
_std_divu:
  # initialize
  beq     $a1, $0, $_std_divu_return    # if !rhs { return }
  addiu   $v0, $0, 0                    # quo = 0
  addiu   $v1, $0, 0                    # rem = 0
  # calculate
  addiu   $a2, $0, 31                   # i = 31
$_std_divu_while:                       # while i >= 0 {
  sll     $v1, $v1, 1                   #   rem <<= 1
  addiu   $a3, $0, 1
  sllv    $a3, $a3, $a2                 #   temp = 1 << i
  and     $a3, $a0, $a3                 #   temp = lhs & temp
  srlv    $a3, $a3, $a2                 #   temp >>= i
  or      $v1, $v1, $a3                 #   rem |= temp
  sltu    $a3, $v1, $a1
  bne     $a3, $0, $_std_divu_if_end    #   if rem >= rhs {
  nop
  subu    $v1, $v1, $a1                 #     rem -= rhs
  addiu   $a3, $0, 1
  sllv    $a3, $a3, $a2                 #     temp = 1 << i
  or      $v0, $v0, $a3                 #     quo |= temp
$_std_divu_if_end:                      #   }
  bne     $a2, $0, $_std_divu_while
  subu    $a2, $a2, 1                   #   i -= 1
$_std_divu_return:                      # }
  jalr    $0, $ra                       # return quo, rem
  nop
  .end    _std_divu
