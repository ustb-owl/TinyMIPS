# Project TinyMIPS

The Project TinyMIPS is dedicated to enabling undergraduates to build a complete computer system from scratch, which including:

* TinyMIPS, a streamlined 22-instruction MIPS ISA processor.
* TinyLang, a C like programming language and its compiler.
* TinyOS, a tiny embedded operating system kernel.

## How to Build?

You may want to configure your cross compile toolchain first. If so, you should modify the file `toolchain.mk`.

To build entire project, just run:

```
make
```

Or build with release mode:

```
make DEBUG=0
```

## To-Do List

- [x] TinyMIPS processor
- [x] TinyMIPS SoC (TinySoC)
- [x] TinyLang compiler (backend based on TAC IR)
- [ ] TinyLang compiler (backend based on SSA IR)
- [ ] TinyLang standard library
- [ ] TinyOS

## Copyright and License

Copyright (C) 2019 USTB NSCSCC Team. License GPLv3.
