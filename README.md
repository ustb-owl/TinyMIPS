# TinyMIPS

Implementation of TinyMIPS processor for USTB computer composition principle course design.

## TinyMIPS's ISA

| OpCode  | Description |
| ------- | ----------- |
| ADDU    | N/A         |
| ADDIU   | N/A         |
| SUBU    | N/A         |
| SLT     | N/A         |
| SLTU    | N/A         |
| AND     | N/A         |
| LUI     | N/A         |
| OR      | N/A         |
| XOR     | N/A         |
| SLLV    | N/A         |
| SRAV    | N/A         |
| SRA     | N/A         |
| SRLV    | N/A         |
| BEQ     | N/A         |
| BNE     | N/A         |
| JAL     | N/A         |
| JALR    | N/A         |
| LB      | N/A         |
| LBU     | N/A         |
| LW      | N/A         |
| SB      | N/A         |
| SW      | N/A         |

With no exceptions/interrupts supported.

## Recommended Implementation Order

1. Register file;
2. Basic pipeline and `ADDU` instruction;
3. `ADDIU` and `LUI` instruction;
4. Handle data dependencies;
5. Jump/Branch instructions;
6. Memory accessing instructions;
7. Handle data dependencies again (pipeline controller).

## Copyright and License

Copyright (C) 2019 USTB NSCSCC Team. License GPLv3.
