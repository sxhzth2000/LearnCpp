cmake_minimum_required(VERSION 3.10)
project(LearnCpp)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_COMPILER clang++ )

# Include the module
include(${CMAKE_SOURCE_DIR}/BuildExamples.cmake)

# Define your examples
set(EXAMPLES
          thread
        template
)



# Build them
buildExamples()

