The respective directories and their contents are explained below:



libeigen
--------
A template library for Linear Algebra. Will be used by g2o (below). It is obtained from [this location](https://gitlab.com/libeigen/eigen).   
branch : master



CSparse
-------
This lib is part of the [SuiteSparse Library by DrT.Davis](https://github.com/DrTimothyAldenDavis/SuiteSparse). 

Inside **Lib/** folder are the following config files (created by me):
 - Android.mk 
 - Application.mk
 
To compile the library navigate inside the **Lib/** directory in shell and use following two commands  

`$ export NDK_PROJECT_PATH=.`  
`$ /<path-to-ndk>/<version>/ndk-build NDK_APPLICATION_MK=./Application.mk`

The above will create following directories with Library files


g2o
----
A super popular library for graph optimization (solving certain type of optimization problems in **SLAM and Robot Navigation**).
It is written by Rainer Kuemmerle and hosted [here](https://github.com/RainerKuemmerle/g2o). 

This library uses a CMake based build system. To build this library we will use the `ndk` provided `android.toolchain.cmake`.
Open shell, create a **build** dir, `cd` into build dir and use the following command to generate Makefiles

```
$ <Android Sdk path>cmake/3.10.2.4988404/bin/cmake \
-DCMAKE_TOOLCHAIN_FILE=<ndk-path>/<version>/build/cmake/android.toolchain.cmake \
-DEIGEN3_INCLUDE_DIR=<path-to-libeigen> -DEIGEN3_VERSION_OK=ON \
-DCSPARSE_INCLUDE_DIR=../2020_bkp/CSparse/Include \
-DCSPARSE_LIBRARY=<path-to-CSparse-lib>/armeabi-v7a/libcsparse.a \
-DANDROID_ABI=armeabi-v7a \
-DANDROID_PLATFORM=android-26 \
-Dg2o_LIBRARY_OUTPUT_DIRECTORY=./Library \
-Dg2o_RUNTIME_OUTPUT_DIRECTORY=./Runtime  \
-DCMAKE_VERBOSE_MAKEFILE=ON
 <path-to-g2o-dir>
 ```
 
Run `make -j${nproc}` to start building. The library will be found inside `./Library`


