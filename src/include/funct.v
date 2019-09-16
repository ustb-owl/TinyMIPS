`ifndef TINYMIPS_FUNCT_V_
`define TINYMIPS_FUNCT_V_

// shift
`define FUNCT_SLL       6'b000000
`define FUNCT_SLLV      6'b000100
`define FUNCT_SRLV      6'b000110
`define FUNCT_SRAV      6'b000111

// jump
`define FUNCT_JALR      6'b001001

// arithmetic
`define FUNCT_ADDU      6'b100001
`define FUNCT_SUBU      6'b100011

// logic
`define FUNCT_AND       6'b100100
`define FUNCT_OR        6'b100101
`define FUNCT_XOR       6'b100110

// comparison
`define FUNCT_SLT       6'b101010
`define FUNCT_SLTU      6'b101011

// NOTE: improper usage
// it's NOP because '111111' is meaningless in current MIPS ISA
// but we can't make sure it won't be used in a future version
`define FUNCT_NOP       6'b111111

`endif  // TINYMIPS_FUNCT_V_
