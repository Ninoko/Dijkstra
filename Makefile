# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Neyo/Documents/MIM/WDI/Z1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Neyo/Documents/MIM/WDI/Z1

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/Applications/CMake.app/Contents/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CMake.app/Contents/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/Neyo/Documents/MIM/WDI/Z1/CMakeFiles /Users/Neyo/Documents/MIM/WDI/Z1/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/Neyo/Documents/MIM/WDI/Z1/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Sem

# Build rule for target.
Sem: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Sem
.PHONY : Sem

# fast build rule for target.
Sem/fast:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/build
.PHONY : Sem/fast

Sem.o: Sem.c.o

.PHONY : Sem.o

# target to build an object file
Sem.c.o:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/Sem.c.o
.PHONY : Sem.c.o

Sem.i: Sem.c.i

.PHONY : Sem.i

# target to preprocess a source file
Sem.c.i:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/Sem.c.i
.PHONY : Sem.c.i

Sem.s: Sem.c.s

.PHONY : Sem.s

# target to generate assembly for a file
Sem.c.s:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/Sem.c.s
.PHONY : Sem.c.s

graph.o: graph.c.o

.PHONY : graph.o

# target to build an object file
graph.c.o:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/graph.c.o
.PHONY : graph.c.o

graph.i: graph.c.i

.PHONY : graph.i

# target to preprocess a source file
graph.c.i:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/graph.c.i
.PHONY : graph.c.i

graph.s: graph.c.s

.PHONY : graph.s

# target to generate assembly for a file
graph.c.s:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/graph.c.s
.PHONY : graph.c.s

queue.o: queue.c.o

.PHONY : queue.o

# target to build an object file
queue.c.o:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/queue.c.o
.PHONY : queue.c.o

queue.i: queue.c.i

.PHONY : queue.i

# target to preprocess a source file
queue.c.i:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/queue.c.i
.PHONY : queue.c.i

queue.s: queue.c.s

.PHONY : queue.s

# target to generate assembly for a file
queue.c.s:
	$(MAKE) -f CMakeFiles/Sem.dir/build.make CMakeFiles/Sem.dir/queue.c.s
.PHONY : queue.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... Sem"
	@echo "... Sem.o"
	@echo "... Sem.i"
	@echo "... Sem.s"
	@echo "... graph.o"
	@echo "... graph.i"
	@echo "... graph.s"
	@echo "... queue.o"
	@echo "... queue.i"
	@echo "... queue.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
