# directories
ELFINFO_SRC_DIR := $(SRC_DIR)/utility/elfinfo
ELFINFO_OBJ_DIR := $(OBJ_DIR)/utility/elfinfo

# files
ELFINFO_SRCS := $(call rwildcard, $(ELFINFO_SRC_DIR), *.cpp)
ELFINFO_OBJS := $(patsubst $(ELFINFO_SRC_DIR)/%.cpp, $(ELFINFO_OBJ_DIR)/%.o, $(ELFINFO_SRCS))
ELFINFO_TARGET := $(TARGET_DIR)/elfinfo

# C++ flags
PRIVATE_CXXFLAGS := -I$(ELFINFO_SRC_DIR)


.PHONY: all elfinfo clean

all: elfinfo

elfinfo: $(ELFINFO_OBJ_DIR) $(ELFINFO_TARGET)

clean:
	-rm -rf $(ELFINFO_OBJ_DIR)
	-rm -f $(ELFINFO_TARGET)

$(ELFINFO_OBJ_DIR):
	mkdir -p $@

$(ELFINFO_TARGET): $(ELFINFO_OBJS)
	$(LD) -o $@ $^

$(ELFINFO_OBJ_DIR)/%.o: $(ELFINFO_SRC_DIR)/%.cpp
	-mkdir -p $(dir $@)
	$(CXX) $(PRIVATE_CXXFLAGS) -o $@ $^
