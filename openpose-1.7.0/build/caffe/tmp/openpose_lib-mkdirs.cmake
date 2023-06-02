# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/mingy/openpose-1.7.0/3rdparty/caffe"
  "/home/mingy/openpose-1.7.0/build/caffe/src/openpose_lib-build"
  "/home/mingy/openpose-1.7.0/build/caffe"
  "/home/mingy/openpose-1.7.0/build/caffe/tmp"
  "/home/mingy/openpose-1.7.0/build/caffe/src/openpose_lib-stamp"
  "/home/mingy/openpose-1.7.0/build/caffe/src"
  "/home/mingy/openpose-1.7.0/build/caffe/src/openpose_lib-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/mingy/openpose-1.7.0/build/caffe/src/openpose_lib-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/mingy/openpose-1.7.0/build/caffe/src/openpose_lib-stamp${cfgdir}") # cfgdir has leading slash
endif()
