`ifndef TINYMIPS_SIM_V_
`define TINYMIPS_SIM_V_

`define DATA_MEM_ADDR_WIDTH   6
`define DATA_MEM_SIZE         `DATA_MEM_ADDR_WIDTH ** 2
`define DATA_MEM_BUS          `DATA_MEM_SIZE - 1:0

`define INST_MEM_ADDR_WIDTH   6
`define INST_MEM_SIZE         `INST_MEM_ADDR_WIDTH ** 2
`define INST_MEM_BUS          `INST_MEM_SIZE - 1:0

`endif  // TINYMIPS_SIM_V_
