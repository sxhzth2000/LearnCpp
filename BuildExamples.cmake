function(buildExample EXAMPLE_PATH)
    get_filename_component(EXAMPLE_NAME ${EXAMPLE_PATH} NAME)
    set(EXAMPLE_FOLDER ${CMAKE_CURRENT_SOURCE_DIR}/${EXAMPLE_PATH})
    message(STATUS "Building example: ${EXAMPLE_NAME} in ${EXAMPLE_FOLDER}")

    file(GLOB SOURCE ${EXAMPLE_FOLDER}/*.cpp)
    if(SOURCE STREQUAL "")
        message(FATAL_ERROR "No source files found in ${EXAMPLE_FOLDER}")
    endif()

    add_executable(${EXAMPLE_NAME} ${SOURCE})
endfunction()


function(buildExamples)
    foreach(example ${EXAMPLES}) # 每个example 取${}实参，
        buildExample(${example})       #传递参数
    endforeach()
endfunction()