This is example of cli built with NDK.

This example can be built using CMake as well as the ndk-build tool.

Using ndk-build 
---------------
1. Check inside the **hello-arg/** directory 
2. Run following commands to build the executable   
    `$ export NDK_PROJECT_PATH=.`  
    `$ ndk-build NDK_APPLICATION_MK=./Application.mk`
3. Find your executable inside the ./obj/local/<arch>/hello-arg 


Using CMake
---------------
1. Create a **build/** dir  
2. Run CMake with ndk provided toolchain file  
```
cmake -DCMAKE_TOOLCHAIN_FILE=~/<ndk path>/<version>/build/cmake/android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-26 <path to hello-arg directory>
```


3. Build the project with make command  
```
make
```

4. The executable will be generated in the current dir (i.e. **build/**)


Running the Executable
-----------------------     
1. Copy the executable using adb to the device  
```
adb push <executable> /data/local/tmp
```  

2. Add **execute** permission to the <executable>  
```
adb shell chmod 555 /data/local/tmp/<executable>
```  

3. Run the file inside shell  
```
adb shell
blueline:/ $ /data/local/tmp/hello-arg
Hello World!
```
4. To exit the shell afterwards  
`blueline:/ $ exit`



