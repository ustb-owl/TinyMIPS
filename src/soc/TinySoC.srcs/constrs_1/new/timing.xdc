# reference: https://github.com/trivialmips/nontrivial-mips

# CFG Flash
set_max_delay -datapath_only -from [get_pins -hier *SCK_O_reg_reg/C] -to [get_pins -hier *USRCCLKO] 1.500
set_min_delay -from [get_pins -hier *SCK_O_reg_reg/C] -to [get_pins -hier *USRCCLKO] 0.100

create_generated_clock -name clk_sck -source [get_pins -hierarchical *cfg_flash_controller/ext_spi_clk] -edges {3 5 7} -edge_shift {7.500 7.500 7.500} [get_pins -hierarchical *USRCCLKO]

set_input_delay -clock clk_sck -clock_fall -max 8.100 [get_ports CFG_*]
set_input_delay -clock clk_sck -clock_fall -min 2.450 [get_ports CFG_*]
set_multicycle_path -setup -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 2
set_multicycle_path -hold -end -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 1

set_output_delay -clock clk_sck -max 3.050 [get_ports CFG_*]
set_output_delay -clock clk_sck -min -2.950 [get_ports CFG_*]
set_multicycle_path -setup -start -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to clk_sck 2
set_multicycle_path -hold -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to clk_sck 1


# VGA
set_output_delay -clock clk_vga_TinySoC_clk_wiz_0_0 -min -add_delay -1.000 [get_ports VGA_*]
set_output_delay -clock clk_vga_TinySoC_clk_wiz_0_0 -max -add_delay 2.000 [get_ports VGA_*]


# GPIO

set_output_delay -clock clk_peripheral_TinySoC_clk_wiz_0_0 0.000 [get_ports {num_* led* UART_txd DDR_reset_n}]
set_false_path -to [get_ports {btn_key_col num_* led* UART_txd DDR_reset_n}]

set_input_delay -clock clk_peripheral_TinySoC_clk_wiz_0_0 0.000 [get_ports {btn_key_row btn_step switch* rst_n UART_rxd}]
set_false_path -from [get_ports {btn_key_row btn_step switch* rst_n UART_rxd}]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_1]
