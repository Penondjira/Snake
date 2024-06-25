# Makefile

# Compiler
CXX = g++

# Compiler flag
CXXFLAGS = -Wall -std=c++23 $(shell pkg-config --cflags sdl2)

# Library flag?
LDFLAGS = $(shell pkg-config --libs sdl2)

# Target executable
TARGET = snake

# Source files
SRCS = main.cpp SDLInit.cpp EventPoller.cpp Quitter.cpp SnakeMotion.cpp

# Object files, just getting the file names ready, not actually compiling yet
OBJS = $(SRCS:.cpp=.o)

# Default target (because first target)
all: $(TARGET)

# Link object files to create the executable
# $@ is target
# $< is first dependency
# $^ is all dependencies
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# Compile source files to object files, %.o means any file ending in .o. In this case target refers to %.o, not TARGET. The syntax for makefiles is TARGET : Pattern ->\nl Recipe
# The benefit of bothering to compile the object files manually is that it will check which ones are up to date, and thus don't need to be recompiled. 
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)

# Lets the makefile know these are special commands, not file names. Otherwise, if there was a file named "clean", and it had a timestamp newer than myProgram, 
# the makefile would consider everything up to date and stop executing
.PHONY: all clean
