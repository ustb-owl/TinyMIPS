cmake_minimum_required(VERSION 3.0)
project(TinyMIPS)


# # set compiler path
# set(CMAKE_C_COMPILER "/usr/local/opt/gcc/bin/gcc-9")
# set(CMAKE_CXX_COMPILER "/usr/local/opt/gcc/bin/g++-9")

# C++17 standard support
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# enable all warnings and treat them as errors
if(MSVC)
  add_compile_options(/W3 /WX)
else()
  add_compile_options(-Wall -Werror)
endif()

# try to find cross compilers
find_program(MIPSEL_GNU_AS mipsel-linux-gnu-as)
if (NOT MIPSEL_GNU_AS)
  find_package(LLVM REQUIRED CONFIG)
  set(AS "${LLVM_TOOLS_BINARY_DIR}/clang -target mipsel -c")
  set(LD "${LLVM_TOOLS_BINARY_DIR}/ld.lld")
else()
  set(AS "mipsel-linux-gnu-as")
  set(LD "mipsel-linux-gnu-ld")
endif()

# set output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)


# TinyLang compiler & utilities
add_subdirectory(src/compiler)
add_subdirectory(src/utility/elfinfo)

# examples of TinyLang
add_subdirectory(example/serial)
