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
include CMakeFiles/KMeanPoints.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/KMeanPoints.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/KMeanPoints.dir/flags.make

CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o: CMakeFiles/KMeanPoints.dir/flags.make
CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o: ../KMeanPoints.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o -c /home/xrf/CLionProjects/test00/KMeanPoints.cpp

CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xrf/CLionProjects/test00/KMeanPoints.cpp > CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.i

CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xrf/CLionProjects/test00/KMeanPoints.cpp -o CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.s

# Object files for target KMeanPoints
KMeanPoints_OBJECTS = \
"CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o"

# External object files for target KMeanPoints
KMeanPoints_EXTERNAL_OBJECTS =

KMeanPoints: CMakeFiles/KMeanPoints.dir/KMeanPoints.cpp.o
KMeanPoints: CMakeFiles/KMeanPoints.dir/build.make
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
KMeanPoints: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
KMeanPoints: CMakeFiles/KMeanPoints.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable KMeanPoints"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KMeanPoints.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/KMeanPoints.dir/build: KMeanPoints

.PHONY : CMakeFiles/KMeanPoints.dir/build

CMakeFiles/KMeanPoints.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/KMeanPoints.dir/cmake_clean.cmake
.PHONY : CMakeFiles/KMeanPoints.dir/clean

CMakeFiles/KMeanPoints.dir/depend:
	cd /home/xrf/CLionProjects/test00/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xrf/CLionProjects/test00 /home/xrf/CLionProjects/test00 /home/xrf/CLionProjects/test00/cmake-build-debug /home/xrf/CLionProjects/test00/cmake-build-debug /home/xrf/CLionProjects/test00/cmake-build-debug/CMakeFiles/KMeanPoints.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/KMeanPoints.dir/depend

