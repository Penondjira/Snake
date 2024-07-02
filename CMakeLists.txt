cmake_minimum_required(VERSION 3.10)
project(snake)
# Enable compile commands for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 14)

find_package(SDL2 REQUIRED)

#Specify the include directories for your project headers
include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/include/Apple)
include_directories(${CMAKE_SOURCE_DIR}/include/Snake)

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

# Automatically find all source files in src, excluding main.cpp
file(GLOB_RECURSE NON_MAIN_SOURCES "src/*.cpp")
list(REMOVE_ITEM NON_MAIN_SOURCES "${CMAKE_SOURCE_DIR}/src/main.cpp")
#set(NON_MAIN_SOURCES
#	src/Apple/SnakeDetector.cpp
#	src/PositionManager.cpp
#)

# Add a test executable
file(GLOB_RECURSE TEST_SOURCES "tests/*.cpp")
add_executable(runUnitTests ${TEST_SOURCES} ${NON_MAIN_SOURCES})
message("Source files: ${NON_MAIN_SOURCES}")

# Link Google Test libraries
target_link_libraries(runUnitTests GTest::gtest GTest::gtest_main pthread ${SDL2_LIBRARIES})
target_include_directories(runUnitTests PRIVATE ${SDL2_INCLUDE_DIRS})
