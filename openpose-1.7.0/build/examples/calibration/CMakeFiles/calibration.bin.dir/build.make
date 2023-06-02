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
include examples/calibration/CMakeFiles/calibration.bin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/calibration/CMakeFiles/calibration.bin.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/calibration/CMakeFiles/calibration.bin.dir/progress.make

# Include the compile flags for this target's objects.
include examples/calibration/CMakeFiles/calibration.bin.dir/flags.make

examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o: examples/calibration/CMakeFiles/calibration.bin.dir/flags.make
examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o: /home/mingy/bbcs/openpose-1.7.0/examples/calibration/calibration.cpp
examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o: examples/calibration/CMakeFiles/calibration.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o -MF CMakeFiles/calibration.bin.dir/calibration.cpp.o.d -o CMakeFiles/calibration.bin.dir/calibration.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/examples/calibration/calibration.cpp

examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calibration.bin.dir/calibration.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/examples/calibration/calibration.cpp > CMakeFiles/calibration.bin.dir/calibration.cpp.i

examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calibration.bin.dir/calibration.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/examples/calibration/calibration.cpp -o CMakeFiles/calibration.bin.dir/calibration.cpp.s

# Object files for target calibration.bin
calibration_bin_OBJECTS = \
"CMakeFiles/calibration.bin.dir/calibration.cpp.o"

# External object files for target calibration.bin
calibration_bin_EXTERNAL_OBJECTS =

examples/calibration/calibration.bin: examples/calibration/CMakeFiles/calibration.bin.dir/calibration.cpp.o
examples/calibration/calibration.bin: examples/calibration/CMakeFiles/calibration.bin.dir/build.make
examples/calibration/calibration.bin: src/openpose/libopenpose.so.1.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_gapi.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_stitching.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_alphamat.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_aruco.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_barcode.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_bgsegm.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_bioinspired.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_ccalib.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_cvv.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_dnn_objdetect.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_dnn_superres.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_dpm.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_face.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_freetype.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_fuzzy.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_hdf.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_hfs.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_img_hash.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_intensity_transform.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_line_descriptor.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_mcc.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_quality.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_rapid.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_reg.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_rgbd.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_saliency.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_stereo.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_structured_light.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_superres.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_surface_matching.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_tracking.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_videostab.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_viz.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_wechat_qrcode.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_xfeatures2d.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_xobjdetect.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_xphoto.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libglog.so
examples/calibration/calibration.bin: /usr/lib/libgflags.so
examples/calibration/calibration.bin: /usr/lib/libopencv_phase_unwrapping.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_optflow.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_highgui.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_datasets.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_plot.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_text.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_videoio.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_ml.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_shape.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_ximgproc.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_video.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_imgcodecs.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_objdetect.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_calib3d.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_dnn.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_features2d.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_flann.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_photo.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_imgproc.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libopencv_core.so.4.7.0
examples/calibration/calibration.bin: /usr/lib/libcaffe.so
examples/calibration/calibration.bin: /usr/lib/libcaffe.so
examples/calibration/calibration.bin: examples/calibration/CMakeFiles/calibration.bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable calibration.bin"
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calibration.bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/calibration/CMakeFiles/calibration.bin.dir/build: examples/calibration/calibration.bin
.PHONY : examples/calibration/CMakeFiles/calibration.bin.dir/build

examples/calibration/CMakeFiles/calibration.bin.dir/clean:
	cd /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration && $(CMAKE_COMMAND) -P CMakeFiles/calibration.bin.dir/cmake_clean.cmake
.PHONY : examples/calibration/CMakeFiles/calibration.bin.dir/clean

examples/calibration/CMakeFiles/calibration.bin.dir/depend:
	cd /home/mingy/bbcs/openpose-1.7.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mingy/bbcs/openpose-1.7.0 /home/mingy/bbcs/openpose-1.7.0/examples/calibration /home/mingy/bbcs/openpose-1.7.0/build /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration /home/mingy/bbcs/openpose-1.7.0/build/examples/calibration/CMakeFiles/calibration.bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/calibration/CMakeFiles/calibration.bin.dir/depend

