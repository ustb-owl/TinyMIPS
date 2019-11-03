# TinySoC

TinySoC is a simple system-on-chip based on TinyMIPS CPU. This design can be synthesised and implemented on development board with Xilinx 7 Series FPGA.

## Requirement

* Xilinx Vivado 2018.3.
* Xilinx FPGA.

## Address Space Mapping of Peripherals

| Peripheral            | Start       | End         | Length  | Type      |
| -                     | -           | -           | -       | -         |
| On-chip ROM           | 0x1FC00000  | 0x1FC7FFFF  | 32KB    | Memory    |
| DDR3 Controller       | 0x00000000  | 0x07FFFFFF  | 128MB   | Memory    |
| CFG Flash Controller  | 0x1A000000  | 0x1AFFFFFF  | 16MB    | Memory    |
| SPI Flash Controller  | 0x1C000000  | 0x1C000FFF  | 4KB     | Register  |
| VGA Controller        | 0x1C010000  | 0x1C01FFFF  | 64KB    | Register  |
| UART Controller       | 0x1C020000  | 0x1C021FFF  | 8KB     | Register  |
| LCD Controller        | 0x1C030000  | 0x1C030FFF  | 4KB     | Register  |
| GPIO Controller       | 0x1C040000  | 0x1C04FFFF  | 64KB    | Register  |
