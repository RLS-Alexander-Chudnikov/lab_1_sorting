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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64

# Include any dependencies generated for this target.
include src/sorting/model/CMakeFiles/model.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/sorting/model/CMakeFiles/model.dir/compiler_depend.make

# Include the progress variables for this target.
include src/sorting/model/CMakeFiles/model.dir/progress.make

# Include the compile flags for this target's objects.
include src/sorting/model/CMakeFiles/model.dir/flags.make

src/sorting/model/CMakeFiles/model.dir/model.cpp.o: src/sorting/model/CMakeFiles/model.dir/flags.make
src/sorting/model/CMakeFiles/model.dir/model.cpp.o: /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/src/model/model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/sorting/model/CMakeFiles/model.dir/model.cpp.o"
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model.dir/model.cpp.o -c /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/src/model/model.cpp

src/sorting/model/CMakeFiles/model.dir/model.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/model.dir/model.cpp.i"
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/src/model/model.cpp > CMakeFiles/model.dir/model.cpp.i

src/sorting/model/CMakeFiles/model.dir/model.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/model.dir/model.cpp.s"
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/src/model/model.cpp -o CMakeFiles/model.dir/model.cpp.s

# Object files for target model
model_OBJECTS = \
"CMakeFiles/model.dir/model.cpp.o"

# External object files for target model
model_EXTERNAL_OBJECTS =

src/sorting/model/libmodel.a: src/sorting/model/CMakeFiles/model.dir/model.cpp.o
src/sorting/model/libmodel.a: src/sorting/model/CMakeFiles/model.dir/build.make
src/sorting/model/libmodel.a: src/sorting/model/CMakeFiles/model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmodel.a"
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && $(CMAKE_COMMAND) -P CMakeFiles/model.dir/cmake_clean_target.cmake
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sorting/model/CMakeFiles/model.dir/build: src/sorting/model/libmodel.a
.PHONY : src/sorting/model/CMakeFiles/model.dir/build

src/sorting/model/CMakeFiles/model.dir/clean:
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model && $(CMAKE_COMMAND) -P CMakeFiles/model.dir/cmake_clean.cmake
.PHONY : src/sorting/model/CMakeFiles/model.dir/clean

src/sorting/model/CMakeFiles/model.dir/depend:
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/src/model /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64 /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/src/sorting/model/CMakeFiles/model.dir/DependInfo.cmake
.PHONY : src/sorting/model/CMakeFiles/model.dir/depend
