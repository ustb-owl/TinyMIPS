#include <fstream>
#include <iostream>
#include <vector>
#include <string_view>

#include "elf.h"

using namespace std;

namespace {

inline void PrintHead(std::string_view head) {
  constexpr int mid_width = 30;
  int left_half = (mid_width - head.size()) / 2;
  int right_half = mid_width - left_half - head.size();
  cout << "  >>>>>>>>>>" << setw(left_half) << ' ';
  cout << head << setw(right_half) << ' ' << "<<<<<<<<<<" << endl;
}

inline void PrintTitle(std::string_view title) {
  cout << setw(30) << left << title;
}

inline void PrintHex32(std::uint32_t num) {
  cout << "0x" << hex << setw(8) << setfill('0');
  cout << num << dec << setfill(' ') << endl;
}

Elf32_Ehdr GetELFHeader(std::istream &is) {
  Elf32_Ehdr ehdr;
  is.seekg(0, ios::beg);
  is.read(reinterpret_cast<char *>(&ehdr), sizeof(ehdr));
  return ehdr;
}

bool PrintELFHeader(const Elf32_Ehdr &ehdr) {
  // check identification
  auto magic = reinterpret_cast<const char *>(ehdr.e_ident);
  if (strncmp(magic, elf32_ehdr_magic, EI_MAG3 + 1)) {
    cout << "invalid ELF file" << endl;
    return false;
  }
  // print identification info
  PrintTitle("file class:");
  cout << elf32_ehdr_class[ehdr.e_ident[EI_CLASS]] << endl;
  PrintTitle("data encoding:");
  cout << elf32_ehdr_data[ehdr.e_ident[EI_DATA]] << endl;
  PrintTitle("file version:");
  cout << elf32_ehdr_version[ehdr.e_ident[EI_VERSION]] << endl;
  cout << endl;
  // print other info
  PrintTitle("object file type:");
  cout << elf32_ehdr_type[ehdr.e_type] << endl;
  PrintTitle("required architecture:");
  cout << elf32_ehdr_machine[ehdr.e_machine] << endl;
  PrintTitle("is version match:");
  auto is_match = ehdr.e_version == ehdr.e_ident[EI_VERSION];
  cout << boolalpha << is_match << endl;
  cout << endl;
  // entry point & offset
  PrintTitle("entry point:");
  PrintHex32(ehdr.e_entry);
  PrintTitle("program ehdr table offset:");
  cout << ehdr.e_phoff << endl;
  PrintTitle("section ehdr offset:");
  cout << ehdr.e_shoff << endl;
  cout << endl;
  // flag info
  PrintTitle("processor-specific flags:");
  PrintHex32(ehdr.e_flags);
  PrintTitle("MIPS noreorder:");
  cout << boolalpha << !!(ehdr.e_flags & EF_MIPS_NOREORDER) << endl;
  PrintTitle("MIPS PIC:");
  cout << boolalpha << !!(ehdr.e_flags & EF_MIPS_PIC) << endl;
  PrintTitle("MIPS calling PIC:");
  cout << boolalpha << !!(ehdr.e_flags & EF_MIPS_CPIC) << endl;
  cout << endl;
  // size info
  PrintTitle("ELF ehdr size:");
  cout << ehdr.e_ehsize << endl;
  PrintTitle("program ehdr table size:");
  cout << ehdr.e_phentsize << " * " << ehdr.e_phnum;
  cout << " = " << ehdr.e_phentsize * ehdr.e_phnum << endl;
  PrintTitle("section ehdr size:");
  cout << ehdr.e_shentsize << " * " << ehdr.e_shnum;
  cout << " = " << ehdr.e_shentsize * ehdr.e_shnum << endl;
  PrintTitle("string table index:");
  cout << ehdr.e_shstrndx << endl;
  cout << endl;
  return is_match;
}

std::vector<Elf32_Shdr> GetSectionHeaders(std::istream &is,
                                          const Elf32_Ehdr &ehdr) {
  std::vector<Elf32_Shdr> shdrs;
  is.seekg(ehdr.e_shoff, ios::beg);
  for (Elf32_Half i = 0; i < ehdr.e_shnum; ++i) {
    Elf32_Shdr shdr;
    is.read(reinterpret_cast<char *>(&shdr), ehdr.e_shentsize);
    shdrs.push_back(shdr);
  }
  return shdrs;
}

std::vector<char> GetStringTable(std::istream &is, const Elf32_Ehdr &ehdr,
                                 const std::vector<Elf32_Shdr> &shdrs) {
  std::vector<char> str_table;
  // get string table section's header
  const auto &st_header = shdrs[ehdr.e_shstrndx];
  // read string table
  str_table.resize(st_header.sh_size);
  is.seekg(st_header.sh_offset, ios::beg);
  is.read(reinterpret_cast<char *>(str_table.data()), str_table.size());
  return str_table;
}

void PrintSectionHeader(const Elf32_Shdr &shdr,
                        const std::vector<char> &str_table) {
  PrintHead("Section Header");
  // print name and type
  PrintTitle("name:");
  cout << str_table.data() + shdr.sh_name << endl;;
  PrintTitle("type:");
  if (shdr.sh_type <= SHT_DYNSYM) {
    cout << elf32_shdr_type[shdr.sh_type] << endl;
  }
  else {
    switch (shdr.sh_type) {
      case SHT_MIPS_LIBLIST: cout << "SHT_MIPS_LIBLIST" << endl; break;
      case SHT_MIPS_CONFLICT: cout << "SHT_MIPS_CONFLICT" << endl; break;
      case SHT_MIPS_GPTAB: cout << "SHT_MIPS_GPTAB" << endl; break;
      case SHT_MIPS_UCODE: cout << "SHT_MIPS_UCODE" << endl; break;
      case SHT_MIPS_REGINFO: cout << "SHT_MIPS_REGINFO" << endl; break;
      case SHT_MIPS_ABIFLAGS: cout << "SHT_MIPS_ABIFLAGS" << endl; break;
      default: PrintHex32(shdr.sh_type); break;
    }
  }
  cout << endl;
  // print attribute flags
  PrintTitle("flags:");
  PrintHex32(shdr.sh_flags);
  PrintTitle("is writable:");
  cout << boolalpha << !!(shdr.sh_flags & SHF_WRITE) << endl;
  PrintTitle("must allocate:");
  cout << boolalpha << !!(shdr.sh_flags & SHF_ALLOC) << endl;
  PrintTitle("is executable:");
  cout << boolalpha << !!(shdr.sh_flags & SHF_EXECINSTR) << endl;
  cout << endl;
  // print section's address and position info
  PrintTitle("address:");
  PrintHex32(shdr.sh_addr);
  PrintTitle("offset:");
  cout << shdr.sh_offset << endl;
  PrintTitle("size:");
  cout << shdr.sh_size << endl;
  cout << endl;
  // print other info
  PrintTitle("link:");
  PrintHex32(shdr.sh_link);
  PrintTitle("info:");
  PrintHex32(shdr.sh_info);
  PrintTitle("address alignment:");
  cout << shdr.sh_addralign << endl;
  PrintTitle("fixed entry size:");
  cout << shdr.sh_entsize << endl;
  cout << endl;
}

std::vector<Elf32_Phdr> GetProgramHeaders(std::istream &is,
                                          const Elf32_Ehdr &ehdr) {
  std::vector<Elf32_Phdr> phdrs;
  is.seekg(ehdr.e_phoff, ios::beg);
  for (Elf32_Half i = 0; i < ehdr.e_phnum; ++i) {
    Elf32_Phdr phdr;
    is.read(reinterpret_cast<char *>(&phdr), ehdr.e_phentsize);
    phdrs.push_back(phdr);
  }
  return phdrs;
}

void PrintProgramHeader(const Elf32_Phdr &phdr) {
  PrintHead("Program Header");
  // print type info
  PrintTitle("type:");
  if (phdr.p_type <= PT_PHDR) {
    cout << elf32_phdr_type[phdr.p_type] << endl;
  }
  else {
    PrintHex32(phdr.p_type);
  }
  cout << endl;
  // print address and size info
  PrintTitle("offset:");
  cout << phdr.p_offset << endl;
  PrintTitle("virtual address:");
  PrintHex32(phdr.p_vaddr);
  PrintTitle("physical address:");
  PrintHex32(phdr.p_paddr);
  PrintTitle("file size:");
  cout << phdr.p_filesz << endl;
  PrintTitle("memory size:");
  cout << phdr.p_memsz << endl;
  cout << endl;
  // print other info
  PrintTitle("flags:");
  PrintHex32(phdr.p_flags);
  PrintTitle("is executable:");
  cout << boolalpha << !!(phdr.p_flags & PF_X) << endl;
  PrintTitle("is writable:");
  cout << boolalpha << !!(phdr.p_flags & PF_W) << endl;
  PrintTitle("is readable:");
  cout << boolalpha << !!(phdr.p_flags & PF_R) << endl;
  PrintTitle("alignment:");
  cout << phdr.p_align << endl;
  cout << endl;
}

}  // namespace

int main(int argc, const char *argv[]) {
  if (argc < 2) {
    cerr << "invalid argument" << endl;
    cerr << "usage: " << argv[0] << " <elf_file>" << endl;
    return 1;
  }
  // load input file
  std::ifstream ifs(argv[1], ios::binary);
  ifs >> noskipws;
  // print ELF header
  auto ehdr = GetELFHeader(ifs);
  if (!PrintELFHeader(ehdr)) return 1;
  // print program headers
  auto phdrs = GetProgramHeaders(ifs, ehdr);
  for (const auto &i : phdrs) {
    PrintProgramHeader(i);
  }
  // print section headers
  auto shdrs = GetSectionHeaders(ifs, ehdr);
  auto str_table = GetStringTable(ifs, ehdr, shdrs);
  for (const auto &i : shdrs) {
    PrintSectionHeader(i, str_table);
  }
  return 0;
}
