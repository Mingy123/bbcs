# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /home/mingy/bbcs/openpose-1.7.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mingy/bbcs/openpose-1.7.0/build

# Include any dependencies generated for this target.
include examples/tests/CMakeFiles/handFromJsonTest.bin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/tests/CMakeFiles/handFromJsonTest.bin.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/tests/CMakeFiles/handFromJsonTest.bin.dir/progress.make

# Include the compile flags for this target's objects.
include examples/tests/CMakeFiles/handFromJsonTest.bin.dir/flags.make

examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o: examples/tests/CMakeFiles/handFromJsonTest.bin.dir/flags.make
examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o: /home/mingy/bbcs/openpose-1.7.0/examples/tests/handFromJsonTest.cpp
examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o: examples/tests/CMakeFiles/handFromJsonTest.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o -MF CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o.d -o CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/examples/tests/handFromJsonTest.cpp

examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/examples/tests/handFromJsonTest.cpp > CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.i

examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/examples/tests/handFromJsonTest.cpp -o CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.s

# Object files for target handFromJsonTest.bin
handFromJsonTest_bin_OBJECTS = \
"CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o"

# External object files for target handFromJsonTest.bin
handFromJsonTest_bin_EXTERNAL_OBJECTS =

examples/tests/handFromJsonTest.bin: examples/tests/CMakeFiles/handFromJsonTest.bin.dir/handFromJsonTest.cpp.o
examples/tests/handFromJsonTest.bin: examples/tests/CMakeFiles/handFromJsonTest.bin.dir/build.make
examples/tests/handFromJsonTest.bin: src/openpose/libopenpose.so.1.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_gapi.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_stitching.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_alphamat.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_aruco.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_barcode.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_bgsegm.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_bioinspired.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_ccalib.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_cvv.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_dnn_objdetect.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_dnn_superres.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_dpm.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_face.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_freetype.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_fuzzy.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_hdf.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_hfs.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_img_hash.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_intensity_transform.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_line_descriptor.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_mcc.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_quality.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_rapid.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_reg.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_rgbd.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_saliency.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_stereo.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_structured_light.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_superres.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_surface_matching.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_tracking.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_videostab.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_viz.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_wechat_qrcode.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_xfeatures2d.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_xobjdetect.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_xphoto.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libglog.so
examples/tests/handFromJsonTest.bin: /usr/lib/libgflags.so
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_phase_unwrapping.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_optflow.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_highgui.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_datasets.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_plot.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_text.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_videoio.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_ml.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_shape.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_ximgproc.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_video.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_imgcodecs.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_objdetect.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_calib3d.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_dnn.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_features2d.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_flann.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_photo.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_imgproc.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libopencv_core.so.4.7.0
examples/tests/handFromJsonTest.bin: /usr/lib/libcaffe.so
examples/tests/handFromJsonTest.bin: /usr/lib/libcaffe.so
examples/tests/handFromJsonTest.bin: examples/tests/CMakeFiles/handFromJsonTest.bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable handFromJsonTest.bin"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/handFromJsonTest.bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/tests/CMakeFiles/handFromJsonTest.bin.dir/build: examples/tests/handFromJsonTest.bin
.PHONY : examples/tests/CMakeFiles/handFromJsonTest.bin.dir/build

examples/tests/CMakeFiles/handFromJsonTest.bin.dir/clean:
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/tests && $(CMAKE_COMMAND) -P CMakeFiles/handFromJsonTest.bin.dir/cmake_clean.cmake
.PHONY : examples/tests/CMakeFiles/handFromJsonTest.bin.dir/clean

examples/tests/CMakeFiles/handFromJsonTest.bin.dir/depend:
	cd /home/mingy/bbcs/openpose-1.7.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mingy/bbcs/openpose-1.7.0 /home/mingy/bbcs/openpose-1.7.0/examples/tests /home/mingy/bbcs/openpose-1.7.0/build /home/mingy/bbcs/openpose-1.7.0/build/examples/tests /home/mingy/bbcs/openpose-1.7.0/build/examples/tests/CMakeFiles/handFromJsonTest.bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/tests/CMakeFiles/handFromJsonTest.bin.dir/depend

