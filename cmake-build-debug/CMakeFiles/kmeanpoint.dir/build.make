# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /opt/clion/clion-2020.3.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/clion-2020.3.1/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xrf/CLionProjects/test00

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xrf/CLionProjects/test00/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kmeanpoint.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kmeanpoint.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kmeanpoint.dir/flags.make

CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o: CMakeFiles/kmeanpoint.dir/flags.make
CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o: ../KMeanPoints.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o -c /home/xrf/CLionProjects/test00/KMeanPoints.cpp

CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xrf/CLionProjects/test00/KMeanPoints.cpp > CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.i

CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xrf/CLionProjects/test00/KMeanPoints.cpp -o CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.s

# Object files for target kmeanpoint
kmeanpoint_OBJECTS = \
"CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o"

# External object files for target kmeanpoint
kmeanpoint_EXTERNAL_OBJECTS =

kmeanpoint: CMakeFiles/kmeanpoint.dir/KMeanPoints.cpp.o
kmeanpoint: CMakeFiles/kmeanpoint.dir/build.make
kmeanpoint: CMakeFiles/kmeanpoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kmeanpoint"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kmeanpoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kmeanpoint.dir/build: kmeanpoint

.PHONY : CMakeFiles/kmeanpoint.dir/build

CMakeFiles/kmeanpoint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kmeanpoint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kmeanpoint.dir/clean

CMakeFiles/kmeanpoint.dir/depend:
	cd /home/xrf/CLionProjects/test00/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xrf/CLionProjects/test00 /home/xrf/CLionProjects/test00 /home/xrf/CLionProjects/test00/cmake-build-debug /home/xrf/CLionProjects/test00/cmake-build-debug /home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles/kmeanpoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kmeanpoint.dir/depend
