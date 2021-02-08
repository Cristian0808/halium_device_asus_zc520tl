LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),zenfone3max)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
