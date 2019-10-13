#ifndef ELFINFO_ELF_H_
#define ELFINFO_ELF_H_

#include <cstdint>

// type definitions in ELF
using Elf32_Half = std::uint16_t;
using Elf32_Word = std::uint32_t;
using Elf32_Sword = std::int32_t;
using Elf32_Addr = std::uint32_t;
using Elf32_Off = std::uint32_t;

// index of identification field in ELF header
enum Elf32_Ehdr_IdentIndex {
  EI_MAG0, EI_MAG1, EI_MAG2, EI_MAG3,
  EI_CLASS, EI_DATA, EI_VERSION, EI_PAD,
  EI_NIDENT = 16,
};

// class field in ELF header
enum Elf32_Ehdr_Class {
  ELFCLASSNONE,
  ELFCLASS32,
  ELFCLASS64,
};

// data field in ELF header
enum Elf32_Ehdr_Data {
  ELFDATANONE,
  ELFDATA2LSB,
  ELFDATA2MSB,
};

// type field in ELF header
enum Elf32_Ehdr_Type {
  ET_NONE,
  ET_REL, ET_EXEC, ET_DYN, ET_CORE,
  ET_LOPROC = 0xff00,
  ET_HIPROC = 0xffff,
};

// machine field in ELF header
enum Elf32_Ehdr_Machine {
  EM_NONE,
  EM_M32, EM_SPARC, EM_386, EM_68K, EM_88K,
  EM_860 = 7,
  EM_MIPS,
};

// version field in ELF header
enum Elf32_Ehdr_Version {
  EV_NONE, EV_CURRENT,
};

// flag field in ELF header
enum Elf32_Ehdr_Flags {
  EF_MIPS_NOREORDER = 0x00000001,
  EF_MIPS_PIC       = 0x00000002,
  EF_MIPS_CPIC      = 0x00000004,
  EF_MIPS_ARCH      = 0xf0000000,
  EF_MIPS_ARCH_2    = 0x10000000,
  EF_MIPS_ARCH_3    = 0x20000000,
};

// ELF magic number
const char elf32_ehdr_magic[] = {'\x7f', 'E', 'L', 'F'};

// file class
const char *elf32_ehdr_class[] = {
  "none", "32-bit", "64-bit",
};

// data encoding
const char *elf32_ehdr_data[] = {
  "none", "little endian", "big endian",
};

// object file type
const char *elf32_ehdr_type[] = {
  "none", "relocatable", "executable",
  "shared object", "core file",
};

// architectures
const char *elf32_ehdr_machine[] = {
  "none", "WE 32100", "SPARC", "80386", "68000", "88000",
  "", "80860", "MIPS",
};

// ELF version
const char *elf32_ehdr_version[] = {
  "none", "current",
};

// ELF header
#pragma pack(1)
struct Elf32_Ehdr {
  unsigned char e_ident[EI_NIDENT];
  Elf32_Half    e_type;
  Elf32_Half    e_machine;
  Elf32_Word    e_version;
  Elf32_Addr    e_entry;
  Elf32_Off     e_phoff;
  Elf32_Off     e_shoff;
  Elf32_Word    e_flags;
  Elf32_Half    e_ehsize;
  Elf32_Half    e_phentsize;
  Elf32_Half    e_phnum;
  Elf32_Half    e_shentsize;
  Elf32_Half    e_shnum;
  Elf32_Half    e_shstrndx;
};
#pragma pack()

// type field in section header
enum Elf32_Shdr_Type {
  SHT_NULL, SHT_PROGBITS, SHT_SYMTAB,
  SHT_STRTAB, SHT_RELA, SHT_HASH,
  SHT_DYNAMIC, SHT_NOTE, SHT_NOBITS,
  SHT_REL, SHT_SHLIB, SHT_DYNSYM,
  SHT_LOPROC        = 0x70000000,
  SHT_HIPROC        = 0x7fffffff,
  SHT_LOUSER        = 0x80000000,
  SHT_HIUSER        = 0xffffffff,
  SHT_MIPS_LIBLIST  = 0x70000000,
  SHT_MIPS_CONFLICT = 0x70000002,
  SHT_MIPS_GPTAB    = 0x70000003,
  SHT_MIPS_UCODE    = 0x70000004,
  SHT_MIPS_REGINFO  = 0x70000006,
  SHT_MIPS_ABIFLAGS = 0x7000002a,
};

// flags field in section header
enum Elf32_Shdr_Flags {
  SHF_WRITE         = 0x1,
  SHF_ALLOC         = 0x2,
  SHF_EXECINSTR     = 0x4,
  SHF_MASKPROC      = 0xf0000000,
};

// section header type
const char *elf32_shdr_type[] = {
  "SHT_NULL", "SHT_PROGBITS", "SHT_SYMTAB",
  "SHT_STRTAB", "SHT_RELA", "SHT_HASH",
  "SHT_DYNAMIC", "SHT_NOTE", "SHT_NOBITS",
  "SHT_REL", "SHT_SHLIB", "SHT_DYNSYM",
};

// section header
#pragma pack(1)
struct Elf32_Shdr {
  Elf32_Word    sh_name;
  Elf32_Word    sh_type;
  Elf32_Word    sh_flags;
  Elf32_Addr    sh_addr;
  Elf32_Off     sh_offset;
  Elf32_Word    sh_size;
  Elf32_Word    sh_link;
  Elf32_Word    sh_info;
  Elf32_Word    sh_addralign;
  Elf32_Word    sh_entsize;
};
#pragma pack()

// type field in program header
enum Elf32_Phdr_Type {
  PT_NULL,
  PT_LOAD, PT_DYNAMIC, PT_INTERP,
  PT_NOTE, PT_SHLIB, PT_PHDR,
  PT_LOPROC   = 0x70000000,
  PT_HIPROC   = 0x7fffffff,
};

// flags field in program header
enum Elf32_Phdr_Flags {
  PF_X        = 0x1,
  PF_W        = 0x2,
  PF_R        = 0x4,
  PF_MASKOS   = 0x0ff00000,
  PF_MASKPROC = 0xf0000000,
};

// segment type
const char *elf32_phdr_type[] = {
  "PT_NULL",
  "PT_LOAD", "PT_DYNAMIC", "PT_INTERP",
  "PT_NOTE", "PT_SHLIB", "PT_PHDR",
};

// program header
#pragma pack(1)
struct Elf32_Phdr {
  Elf32_Word    p_type;
  Elf32_Off     p_offset;
  Elf32_Addr    p_vaddr;
  Elf32_Addr    p_paddr;
  Elf32_Word    p_filesz;
  Elf32_Word    p_memsz;
  Elf32_Word    p_flags;
  Elf32_Word    p_align;
};
#pragma pack()

#endif  // ELFINFO_ELF_H_
