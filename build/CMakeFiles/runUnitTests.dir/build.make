# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tom/snake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/snake/build

# Include any dependencies generated for this target.
include CMakeFiles/runUnitTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/runUnitTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/runUnitTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runUnitTests.dir/flags.make

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o: /home/tom/snake/tests/Apple/Test_AppleCreator.cpp
CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o -c /home/tom/snake/tests/Apple/Test_AppleCreator.cpp

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Apple/Test_AppleCreator.cpp > CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.i

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Apple/Test_AppleCreator.cpp -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.s

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o: /home/tom/snake/tests/Apple/Test_AppleGo.cpp
CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o -c /home/tom/snake/tests/Apple/Test_AppleGo.cpp

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Apple/Test_AppleGo.cpp > CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.i

CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Apple/Test_AppleGo.cpp -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.s

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o: /home/tom/snake/tests/Apple/Test_Mover.cpp
CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o -c /home/tom/snake/tests/Apple/Test_Mover.cpp

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Apple/Test_Mover.cpp > CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.i

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Apple/Test_Mover.cpp -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.s

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o: /home/tom/snake/tests/Apple/Test_Rander.cpp
CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o -c /home/tom/snake/tests/Apple/Test_Rander.cpp

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Apple/Test_Rander.cpp > CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.i

CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Apple/Test_Rander.cpp -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.s

CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o: /home/tom/snake/tests/Apple/Test_SnakeDetector.cpp
CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o -c /home/tom/snake/tests/Apple/Test_SnakeDetector.cpp

CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Apple/Test_SnakeDetector.cpp > CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.i

CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Apple/Test_SnakeDetector.cpp -o CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.s

CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o: /home/tom/snake/tests/MockNotifyable.cpp
CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o -c /home/tom/snake/tests/MockNotifyable.cpp

CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/MockNotifyable.cpp > CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.i

CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/MockNotifyable.cpp -o CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.s

CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o: /home/tom/snake/tests/Test_PositionManager.cpp
CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o -c /home/tom/snake/tests/Test_PositionManager.cpp

CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/Test_PositionManager.cpp > CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.i

CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/Test_PositionManager.cpp -o CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.s

CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o: /home/tom/snake/tests/mainTest.cpp
CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o -MF CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o.d -o CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o -c /home/tom/snake/tests/mainTest.cpp

CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/tests/mainTest.cpp > CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.i

CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/tests/mainTest.cpp -o CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: /home/tom/snake/src/Apple.cpp
CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple.cpp.o -c /home/tom/snake/src/Apple.cpp

CMakeFiles/runUnitTests.dir/src/Apple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple.cpp > CMakeFiles/runUnitTests.dir/src/Apple.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple.cpp -o CMakeFiles/runUnitTests.dir/src/Apple.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o: /home/tom/snake/src/Apple/AppleCreator.cpp
CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o -c /home/tom/snake/src/Apple/AppleCreator.cpp

CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/AppleCreator.cpp > CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/AppleCreator.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o: /home/tom/snake/src/Apple/AppleDrawer.cpp
CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o -c /home/tom/snake/src/Apple/AppleDrawer.cpp

CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/AppleDrawer.cpp > CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/AppleDrawer.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o: /home/tom/snake/src/Apple/AppleGO.cpp
CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o -c /home/tom/snake/src/Apple/AppleGO.cpp

CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/AppleGO.cpp > CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/AppleGO.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o: /home/tom/snake/src/Apple/Mover.cpp
CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o -c /home/tom/snake/src/Apple/Mover.cpp

CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/Mover.cpp > CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/Mover.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o: /home/tom/snake/src/Apple/Rander.cpp
CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o -c /home/tom/snake/src/Apple/Rander.cpp

CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/Rander.cpp > CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/Rander.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.s

CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o: /home/tom/snake/src/Apple/SnakeDetector.cpp
CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o -c /home/tom/snake/src/Apple/SnakeDetector.cpp

CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Apple/SnakeDetector.cpp > CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Apple/SnakeDetector.cpp -o CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.s

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: /home/tom/snake/src/AppleEatEvent.cpp
CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o -MF CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o -c /home/tom/snake/src/AppleEatEvent.cpp

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/AppleEatEvent.cpp > CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/AppleEatEvent.cpp -o CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: /home/tom/snake/src/EventPoller.cpp
CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o -MF CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o -c /home/tom/snake/src/EventPoller.cpp

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/EventPoller.cpp > CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/EventPoller.cpp -o CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s

CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o: /home/tom/snake/src/PositionManager.cpp
CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o -MF CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o -c /home/tom/snake/src/PositionManager.cpp

CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/PositionManager.cpp > CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.i

CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/PositionManager.cpp -o CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.s

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: /home/tom/snake/src/Quitter.cpp
CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o -c /home/tom/snake/src/Quitter.cpp

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/Quitter.cpp > CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/Quitter.cpp -o CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: /home/tom/snake/src/SDLInit.cpp
CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o -MF CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o -c /home/tom/snake/src/SDLInit.cpp

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/SDLInit.cpp > CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/SDLInit.cpp -o CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: /home/tom/snake/src/SnakeMotion.cpp
CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o -MF CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o -c /home/tom/snake/src/SnakeMotion.cpp

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/snake/src/SnakeMotion.cpp > CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/snake/src/SnakeMotion.cpp -o CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s

# Object files for target runUnitTests
runUnitTests_OBJECTS = \
"CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o" \
"CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o"

# External object files for target runUnitTests
runUnitTests_EXTERNAL_OBJECTS =

runUnitTests: CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleCreator.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/Apple/Test_AppleGo.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/Apple/Test_Mover.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/Apple/Test_Rander.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/Apple/Test_SnakeDetector.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/MockNotifyable.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/Test_PositionManager.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/tests/mainTest.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/AppleCreator.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/AppleDrawer.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/AppleGO.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/Mover.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/Rander.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple/SnakeDetector.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/PositionManager.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/build.make
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest.a
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
runUnitTests: /usr/lib/x86_64-linux-gnu/libSDL2.so
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest.a
runUnitTests: CMakeFiles/runUnitTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/tom/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Linking CXX executable runUnitTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runUnitTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runUnitTests.dir/build: runUnitTests
.PHONY : CMakeFiles/runUnitTests.dir/build

CMakeFiles/runUnitTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runUnitTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runUnitTests.dir/clean

CMakeFiles/runUnitTests.dir/depend:
	cd /home/tom/snake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/snake /home/tom/snake /home/tom/snake/build /home/tom/snake/build /home/tom/snake/build/CMakeFiles/runUnitTests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/runUnitTests.dir/depend

