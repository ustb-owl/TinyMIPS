`ifndef TINYMIPS_DEBUG_V_
`define TINYMIPS_DEBUG_V_

`define DEBUG_EN

`ifdef DEBUG_EN
  `define DEBUG (* mark_debug = "true" *)
`else
  `define DEBUG
`endif

`endif  // TINYMIPS_DEBUG_V_
