cmake_minimum_required(VERSION 3.6) # set min version of cmake

project(hello-arg) # create project

SET( CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -fPIE -pie") # set PIE
add_executable(hello hello-arg.c) # create executable

