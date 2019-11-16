# TODO: decouple (tlc, tlrt)

# C++ compiler
CXXFLAGS := $(DEBUG_ARG) $(OPT_ARG)
CXXFLAGS += -c -Wall -Werror -std=c++17
export CXX := clang++ $(CXXFLAGS)

# C++ linker
LDFLAGS :=
export LD := clang++ $(LDFLAGS)

# TinyLang compiler
TLFLAGS := -O 2
export TLC := $(TARGET_DIR)/tlc $(TLFLAGS)

# cross C compiler (MIPSel)
CROSS_CFLAGS := -c -target mipsel
export CROSS_CC := /usr/local/opt/llvm/bin/clang $(CROSS_CFLAGS)

# cross linker
CROSS_LDFLAGS := -L$(TARGET_DIR) -ltlrt
export CROSS_LD := /usr/local/opt/llvm/bin/ld.lld $(CROSS_LDFLAGS)

# cross archiver
CROSS_ARFLAGS := ru
export CROSS_AR := ar $(CROSS_ARFLAGS)

# cross ranlib
CROSS_RANLIBFLAGS :=
export CROSS_RANLIB := ranlib $(CROSS_RANLIBFLAGS)
