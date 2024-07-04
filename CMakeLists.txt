cmake_minimum_required(VERSION 3.10)
project(snake)
# Enable compile commands for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 14)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)

# Manually specify the include directories for SDL2_image if find_package fails
if(NOT SDL2_IMAGE_FOUND)
    message(WARNING "SDL2_image not found! Manually specifying paths.")
    set(SDL2_IMAGE_INCLUDE_DIRS /usr/include/SDL2)
    set(SDL2_IMAGE_LIBRARIES /usr/lib/x86_64-linux-gnu/libSDL2_image.so)
endif()

#Specify the include directories for your project headers
include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/include/Apple)
include_directories(${CMAKE_SOURCE_DIR}/include/Snake)
include_directories(${SDL2_INCLUDE_DIRS})
include_directories(${SDL2_IMAGE_INCLUDE_DIRS})

# Add source files
file(GLOB_RECURSE SOURCES "src/*.cpp")

# Add the executable target
add_executable(snake ${SOURCES})

target_link_libraries(snake PUBLIC ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES})

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

# Link Google Test libraries
target_link_libraries(runUnitTests GTest::gtest GTest::gtest_main pthread ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES})
target_include_directories(runUnitTests PRIVATE ${SDL2_INCLUDE_DIRS} ${SDL2_IMAGE_INCLUDE_DIRS})
