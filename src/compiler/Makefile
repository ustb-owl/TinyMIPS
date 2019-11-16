# constant about current target
APP_NAME := \"TinyLang\"
APP_VERSION := \"0.0.2\"
APP_VERSION_MAJOR := 0
APP_VERSION_MINOR := 0
APP_VERSION_PATCH := 2

# directories
TLC_SRC_DIR := $(SRC_DIR)/compiler
TLC_OBJ_DIR := $(OBJ_DIR)/compiler

# files
TLC_ALL_SRCS := $(call rwildcard, $(TLC_SRC_DIR), *.cpp)
TLC_SKIPPED_SRCS := $(call rwildcard, $(TLC_SRC_DIR)/back/ssa, *.cpp)
TLC_SRCS := $(filter-out $(TLC_SKIPPED_SRCS), $(TLC_ALL_SRCS))
TLC_OBJS := $(patsubst $(TLC_SRC_DIR)/%.cpp, $(TLC_OBJ_DIR)/%.o, $(TLC_SRCS))
TLC_TARGET := $(word 1, $(TLC))

# C++ flags
PRIVATE_CXXFLAGS := -I$(TLC_SRC_DIR)
PRIVATE_CXXFLAGS += -DAPP_NAME=$(APP_NAME)
PRIVATE_CXXFLAGS += -DAPP_VERSION=$(APP_VERSION)
PRIVATE_CXXFLAGS += -DAPP_VERSION_MAJOR=$(APP_VERSION_MAJOR)
PRIVATE_CXXFLAGS += -DAPP_VERSION_MINOR=$(APP_VERSION_MINOR)
PRIVATE_CXXFLAGS += -DAPP_VERSION_PATCH=$(APP_VERSION_PATCH)


.PHONY: all tlc clean

all: tlc

tlc: $(TLC_OBJ_DIR) $(TLC_TARGET)

clean:
	-rm -rf $(TLC_OBJ_DIR)
	-rm -f $(TLC_TARGET)

$(TLC_OBJ_DIR):
	mkdir -p $@

$(TLC_TARGET): $(TLC_OBJS)
	$(LD) -o $@ $^

$(TLC_OBJ_DIR)/%.o: $(TLC_SRC_DIR)/%.cpp
	-mkdir -p $(dir $@)
	$(CXX) $(PRIVATE_CXXFLAGS) -o $@ $^
