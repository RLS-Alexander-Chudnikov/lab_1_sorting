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
include CMakeFiles/lab_1_sorting.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab_1_sorting.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab_1_sorting.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab_1_sorting.dir/flags.make

CMakeFiles/lab_1_sorting.dir/main.cpp.o: CMakeFiles/lab_1_sorting.dir/flags.make
CMakeFiles/lab_1_sorting.dir/main.cpp.o: /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab_1_sorting.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab_1_sorting.dir/main.cpp.o -c /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/main.cpp

CMakeFiles/lab_1_sorting.dir/main.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/lab_1_sorting.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/main.cpp > CMakeFiles/lab_1_sorting.dir/main.cpp.i

CMakeFiles/lab_1_sorting.dir/main.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/lab_1_sorting.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/main.cpp -o CMakeFiles/lab_1_sorting.dir/main.cpp.s

# Object files for target lab_1_sorting
lab_1_sorting_OBJECTS = \
"CMakeFiles/lab_1_sorting.dir/main.cpp.o"

# External object files for target lab_1_sorting
lab_1_sorting_EXTERNAL_OBJECTS =

lab_1_sorting: CMakeFiles/lab_1_sorting.dir/main.cpp.o
lab_1_sorting: CMakeFiles/lab_1_sorting.dir/build.make
lab_1_sorting: /usr/local/lib/libboost_program_options-mt.a
lab_1_sorting: src/sorting/libsorting.a
lab_1_sorting: src/generator/libgenerator.a
lab_1_sorting: src/sorting/model/libmodel.a
lab_1_sorting: CMakeFiles/lab_1_sorting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab_1_sorting"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab_1_sorting.dir/link.txt --verbose=$(VERBOSE)
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/lab_1_sorting && upx -9 /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/lab_1_sorting

# Rule to build all files generated by this target.
CMakeFiles/lab_1_sorting.dir/build: lab_1_sorting
.PHONY : CMakeFiles/lab_1_sorting.dir/build

CMakeFiles/lab_1_sorting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab_1_sorting.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab_1_sorting.dir/clean

CMakeFiles/lab_1_sorting.dir/depend:
	cd /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64 /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64 /Users/the_choodick/Desktop/cpp/prog_methods/lab_1_sorting/build/x64/CMakeFiles/lab_1_sorting.dir/DependInfo.cmake
.PHONY : CMakeFiles/lab_1_sorting.dir/depend

