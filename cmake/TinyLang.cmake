function(compile_tinylang output)
  set(result)
  foreach(in_file ${ARGN})
    file(RELATIVE_PATH out_file ${CMAKE_CURRENT_SOURCE_DIR} ${in_file})
    set(out_file "${CMAKE_CURRENT_BINARY_DIR}/${out_file}")
    add_custom_command(OUTPUT ${out_file}
                       COMMAND "echo ${in_file} ${out_file}"
                       DEPENDS ${in_file}
                       WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                       COMMENT "Creating preprocessed foo file ${out_file}"
                       VERBATIM)
    list(APPEND result ${out_file})
  endforeach()
  set(${output} "${result}" PARENT_SCOPE)
endfunction()
