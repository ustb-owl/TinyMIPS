# directories
SERIAL_SRC_DIR := $(EXAMPLE_DIR)/serial
SERIAL_OBJ_DIR := $(OBJ_DIR)/example/serial
SERIAL_TARGET_DIR := $(TARGET_DIR)/example

# files
SERIAL_SRCS := $(call rwildcard, $(SERIAL_SRC_DIR), *.tl)
SERIAL_ASMS := $(call rwildcard, $(SERIAL_SRC_DIR), *.asm)
SERIAL_OBJS := $(patsubst $(SERIAL_SRC_DIR)/%.tl, $(SERIAL_OBJ_DIR)/%.o, $(SERIAL_SRCS))
SERIAL_OBJS += $(patsubst $(SERIAL_SRC_DIR)/%.asm, $(SERIAL_OBJ_DIR)/%.o, $(SERIAL_ASMS))
SERIAL_TARGET := $(SERIAL_TARGET_DIR)/serial


.PHONY: all serial clean

all: serial

serial: $(SERIAL_OBJ_DIR) $(SERIAL_TARGET_DIR) $(SERIAL_TARGET)

clean:
	-rm -rf $(SERIAL_OBJ_DIR)
	-rm -f $(SERIAL_TARGET)

$(SERIAL_OBJ_DIR):
	mkdir -p $@

$(SERIAL_TARGET_DIR):
	-mkdir -p $@

$(SERIAL_TARGET): $(SERIAL_OBJS)
	$(CROSS_LD) -T$(SERIAL_SRC_DIR)/linker.ld -o $@ $^

$(SERIAL_OBJ_DIR)/%.o: $(SERIAL_OBJ_DIR)/%.asm
	$(CROSS_CC) -o $@ $^

$(SERIAL_OBJ_DIR)/%.asm: $(SERIAL_SRC_DIR)/%.tl
	-mkdir -p $(dir $@)
	$(TLC) -o $@ $^

$(SERIAL_OBJ_DIR)/%.o: $(SERIAL_SRC_DIR)/%.asm
	$(CROSS_CC) -o $@ $^
