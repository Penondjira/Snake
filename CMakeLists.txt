cmake_minimum_required(VERSION 3.10)
project(snake)

set(CMAKE_CXX_STANDARD 14)

find_package(SDL2 REQUIRED)

#Specify the include directories for your project headers
include_directories(${CMAKE_SOURCE_DIR}/include)

# Add source files
file(GLOB_RECURSE SOURCES "src/*.cpp")
message("Source files: ${SOURCES}")

# Add the executable target
add_executable(snake ${SOURCES})

target_include_directories(snake PRIVATE ${SDL2_INCLUDE_DIRS})
target_link_libraries(snake PRIVATE ${SDL2_LIBRARIES})

# Google Test
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Add a test executable
file(GLOB_RECURSE TEST_SOURCES "tests/*.cpp")
add_executable(runUnitTests ${TEST_SOURCES} ${SOURCES})

# Link Google Test libraries
target_link_libraries(runUnitTests GTest::gtest GTest::gtest_main pthread ${SDL2_LIBRARIES})
target_include_directories(runUnitTests PRIVATE ${SDL2_INCLUDE_DIRS})

# Enable compile commands for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
