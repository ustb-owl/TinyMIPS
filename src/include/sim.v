`ifndef TINYMIPS_SIM_V_
`define TINYMIPS_SIM_V_

`define DATA_MEM_ADDR_WIDTH   6
`define DATA_MEM_SIZE         2 ** `DATA_MEM_ADDR_WIDTH
`define DATA_MEM_BUS          `DATA_MEM_SIZE - 1:0

`define INST_MEM_ADDR_WIDTH   10
`define INST_MEM_SIZE         2 ** `INST_MEM_ADDR_WIDTH
`define INST_MEM_BUS          `INST_MEM_SIZE - 1:0

`endif  // TINYMIPS_SIM_V_
