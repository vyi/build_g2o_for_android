LOCAL_PATH := $(call my-dir)

# first target: the hello-jni example
# it shows how to build multiple targets
# {{ you may comment it out
#include $(CLEAR_VARS)

#LOCAL_MODULE    := g2o
#LOCAL_SRC_FILES := hello-arg.c
#LOCAL_LDLIBS := -llog -L$(LOCAL_PATH)/lib -lmystuff # link to libmystuff.so

#include $(BUILD_SHARED_LIBRARY)
#}} you may comment it out


# second target
include $(CLEAR_VARS)

LOCAL_MODULE := hello-arg
LOCAL_SRC_FILES := hello-arg.c
#LOCAL_CFLAGS := -fPIE -pie 
include $(BUILD_EXECUTABLE)    # <-- Use this to build an executable.
