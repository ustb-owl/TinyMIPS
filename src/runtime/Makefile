# TODO!!

# directories
TLRT_SRC_DIR := $(SRC_DIR)/runtime
TLRT_OBJ_DIR := $(OBJ_DIR)/runtime

# files
TLRT_SRCS := $(call rwildcard, $(TLRT_SRC_DIR), *.asm)
TLRT_OBJS := $(patsubst $(TLRT_SRC_DIR)/%.asm, $(TLRT_OBJ_DIR)/%.o, $(TLRT_SRCS))
TLRT_TARGET := $(TARGET_DIR)/libtlrt.a


.PHONY: all tlrt clean

all: tlrt

tlrt: $(TLRT_OBJ_DIR) $(TLRT_TARGET)

clean:
	-rm -rf $(TLRT_OBJ_DIR)
	-rm -f $(TLRT_TARGET)

$(TLRT_OBJ_DIR):
	mkdir -p $@

$(TLRT_TARGET): $(TLRT_OBJS)
	$(CROSS_AR) $@ $^
	$(CROSS_RANLIB) $@

$(TLRT_OBJ_DIR)/%.o: $(TLRT_SRC_DIR)/%.asm
	$(CROSS_CC) -o $@ $^
