# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/tom/projects/snake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/projects/snake/build

# Include any dependencies generated for this target.
include CMakeFiles/runUnitTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/runUnitTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/runUnitTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runUnitTests.dir/flags.make

CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: /home/tom/projects/snake/src/Apple.cpp
CMakeFiles/runUnitTests.dir/src/Apple.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/runUnitTests.dir/src/Apple.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Apple.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Apple.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Apple.cpp.o -c /home/tom/projects/snake/src/Apple.cpp

CMakeFiles/runUnitTests.dir/src/Apple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Apple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/Apple.cpp > CMakeFiles/runUnitTests.dir/src/Apple.cpp.i

CMakeFiles/runUnitTests.dir/src/Apple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Apple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/Apple.cpp -o CMakeFiles/runUnitTests.dir/src/Apple.cpp.s

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: /home/tom/projects/snake/src/AppleEatEvent.cpp
CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o -MF CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o -c /home/tom/projects/snake/src/AppleEatEvent.cpp

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/AppleEatEvent.cpp > CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.i

CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/AppleEatEvent.cpp -o CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.s

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: /home/tom/projects/snake/src/EventPoller.cpp
CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o -MF CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o -c /home/tom/projects/snake/src/EventPoller.cpp

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/EventPoller.cpp > CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.i

CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/EventPoller.cpp -o CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.s

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: /home/tom/projects/snake/src/Quitter.cpp
CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o -MF CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o -c /home/tom/projects/snake/src/Quitter.cpp

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/Quitter.cpp > CMakeFiles/runUnitTests.dir/src/Quitter.cpp.i

CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/Quitter.cpp -o CMakeFiles/runUnitTests.dir/src/Quitter.cpp.s

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: /home/tom/projects/snake/src/SDLInit.cpp
CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o -MF CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o -c /home/tom/projects/snake/src/SDLInit.cpp

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/SDLInit.cpp > CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.i

CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/SDLInit.cpp -o CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.s

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: /home/tom/projects/snake/src/SnakeMotion.cpp
CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o -MF CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o -c /home/tom/projects/snake/src/SnakeMotion.cpp

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/SnakeMotion.cpp > CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.i

CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/SnakeMotion.cpp -o CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.s

CMakeFiles/runUnitTests.dir/src/main.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/main.cpp.o: /home/tom/projects/snake/src/main.cpp
CMakeFiles/runUnitTests.dir/src/main.cpp.o: CMakeFiles/runUnitTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/runUnitTests.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/runUnitTests.dir/src/main.cpp.o -MF CMakeFiles/runUnitTests.dir/src/main.cpp.o.d -o CMakeFiles/runUnitTests.dir/src/main.cpp.o -c /home/tom/projects/snake/src/main.cpp

CMakeFiles/runUnitTests.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tom/projects/snake/src/main.cpp > CMakeFiles/runUnitTests.dir/src/main.cpp.i

CMakeFiles/runUnitTests.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tom/projects/snake/src/main.cpp -o CMakeFiles/runUnitTests.dir/src/main.cpp.s

# Object files for target runUnitTests
runUnitTests_OBJECTS = \
"CMakeFiles/runUnitTests.dir/src/Apple.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/main.cpp.o"

# External object files for target runUnitTests
runUnitTests_EXTERNAL_OBJECTS =

runUnitTests: CMakeFiles/runUnitTests.dir/src/Apple.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/AppleEatEvent.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/EventPoller.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/Quitter.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/SDLInit.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/SnakeMotion.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/main.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/build.make
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest.a
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
runUnitTests: /usr/lib/x86_64-linux-gnu/libSDL2.so
runUnitTests: /usr/lib/x86_64-linux-gnu/libgtest.a
runUnitTests: CMakeFiles/runUnitTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tom/projects/snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable runUnitTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runUnitTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runUnitTests.dir/build: runUnitTests
.PHONY : CMakeFiles/runUnitTests.dir/build

CMakeFiles/runUnitTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runUnitTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runUnitTests.dir/clean

CMakeFiles/runUnitTests.dir/depend:
	cd /home/tom/projects/snake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/projects/snake /home/tom/projects/snake /home/tom/projects/snake/build /home/tom/projects/snake/build /home/tom/projects/snake/build/CMakeFiles/runUnitTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runUnitTests.dir/depend

