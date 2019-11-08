  .set    noreorder
  .text

  .globl  _init
_init:
  lui     $sp, %hi(stack_top)
  addiu   $sp, $sp, %lo(stack_top)
  lui     $t0, %hi(__start)
  addiu   $t0, $t0, %lo(__start)
  jalr    $t0
  nop
