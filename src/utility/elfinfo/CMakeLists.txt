project(ELFInfo VERSION "0.0.1")

# some definitions
add_compile_definitions(APP_NAME="${PROJECT_NAME}")
add_compile_definitions(APP_VERSION="${PROJECT_VERSION}")
add_compile_definitions(APP_VERSION_MAJOR=${PROJECT_VERSION_MAJOR})
add_compile_definitions(APP_VERSION_MINOR=${PROJECT_VERSION_MINOR})
add_compile_definitions(APP_VERSION_PATCH=${PROJECT_VERSION_PATCH})

# project include directories
include_directories(.)

# all of C++ source files
file(GLOB_RECURSE SOURCES "*.cpp")

# executable
add_executable(elfinfo ${SOURCES})
