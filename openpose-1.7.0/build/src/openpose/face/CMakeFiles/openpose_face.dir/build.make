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
include src/openpose/face/CMakeFiles/openpose_face.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.make

# Include the progress variables for this target.
include src/openpose/face/CMakeFiles/openpose_face.dir/progress.make

# Include the compile flags for this target's objects.
include src/openpose/face/CMakeFiles/openpose_face.dir/flags.make

src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/defineTemplates.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o -MF CMakeFiles/openpose_face.dir/defineTemplates.cpp.o.d -o CMakeFiles/openpose_face.dir/defineTemplates.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/defineTemplates.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/defineTemplates.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/defineTemplates.cpp > CMakeFiles/openpose_face.dir/defineTemplates.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/defineTemplates.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/defineTemplates.cpp -o CMakeFiles/openpose_face.dir/defineTemplates.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetector.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o -MF CMakeFiles/openpose_face.dir/faceDetector.cpp.o.d -o CMakeFiles/openpose_face.dir/faceDetector.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetector.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceDetector.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetector.cpp > CMakeFiles/openpose_face.dir/faceDetector.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceDetector.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetector.cpp -o CMakeFiles/openpose_face.dir/faceDetector.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetectorOpenCV.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o -MF CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o.d -o CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetectorOpenCV.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetectorOpenCV.cpp > CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceDetectorOpenCV.cpp -o CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorCaffe.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o -MF CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o.d -o CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorCaffe.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorCaffe.cpp > CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorCaffe.cpp -o CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorNet.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o -MF CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o.d -o CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorNet.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorNet.cpp > CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceExtractorNet.cpp -o CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceCpuRenderer.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o -MF CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o.d -o CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceCpuRenderer.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceCpuRenderer.cpp > CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceCpuRenderer.cpp -o CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceGpuRenderer.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o -MF CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o.d -o CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceGpuRenderer.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceGpuRenderer.cpp > CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceGpuRenderer.cpp -o CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceRenderer.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o -MF CMakeFiles/openpose_face.dir/faceRenderer.cpp.o.d -o CMakeFiles/openpose_face.dir/faceRenderer.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceRenderer.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/faceRenderer.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceRenderer.cpp > CMakeFiles/openpose_face.dir/faceRenderer.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/faceRenderer.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/faceRenderer.cpp -o CMakeFiles/openpose_face.dir/faceRenderer.cpp.s

src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/flags.make
src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o: /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/renderFace.cpp
src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o: src/openpose/face/CMakeFiles/openpose_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o -MF CMakeFiles/openpose_face.dir/renderFace.cpp.o.d -o CMakeFiles/openpose_face.dir/renderFace.cpp.o -c /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/renderFace.cpp

src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_face.dir/renderFace.cpp.i"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/renderFace.cpp > CMakeFiles/openpose_face.dir/renderFace.cpp.i

src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_face.dir/renderFace.cpp.s"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mingy/bbcs/openpose-1.7.0/src/openpose/face/renderFace.cpp -o CMakeFiles/openpose_face.dir/renderFace.cpp.s

# Object files for target openpose_face
openpose_face_OBJECTS = \
"CMakeFiles/openpose_face.dir/defineTemplates.cpp.o" \
"CMakeFiles/openpose_face.dir/faceDetector.cpp.o" \
"CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o" \
"CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o" \
"CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o" \
"CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o" \
"CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o" \
"CMakeFiles/openpose_face.dir/faceRenderer.cpp.o" \
"CMakeFiles/openpose_face.dir/renderFace.cpp.o"

# External object files for target openpose_face
openpose_face_EXTERNAL_OBJECTS =

src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/defineTemplates.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceDetector.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceDetectorOpenCV.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorCaffe.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceExtractorNet.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceCpuRenderer.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceGpuRenderer.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/faceRenderer.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/renderFace.cpp.o
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/build.make
src/openpose/face/libopenpose_face.so: src/openpose/core/libopenpose_core.so
src/openpose/face/libopenpose_face.so: src/openpose/face/CMakeFiles/openpose_face.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mingy/bbcs/openpose-1.7.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX shared library libopenpose_face.so"
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openpose_face.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/openpose/face/CMakeFiles/openpose_face.dir/build: src/openpose/face/libopenpose_face.so
.PHONY : src/openpose/face/CMakeFiles/openpose_face.dir/build

src/openpose/face/CMakeFiles/openpose_face.dir/clean:
	cd /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face && $(CMAKE_COMMAND) -P CMakeFiles/openpose_face.dir/cmake_clean.cmake
.PHONY : src/openpose/face/CMakeFiles/openpose_face.dir/clean

src/openpose/face/CMakeFiles/openpose_face.dir/depend:
	cd /home/mingy/bbcs/openpose-1.7.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mingy/bbcs/openpose-1.7.0 /home/mingy/bbcs/openpose-1.7.0/src/openpose/face /home/mingy/bbcs/openpose-1.7.0/build /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face /home/mingy/bbcs/openpose-1.7.0/build/src/openpose/face/CMakeFiles/openpose_face.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/openpose/face/CMakeFiles/openpose_face.dir/depend

