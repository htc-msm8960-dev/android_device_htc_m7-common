LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.qcom
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/fstab.qcom
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.target.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.target.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.usb.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.power.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.power.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.qcom.rc
LOCAL_MODULE_STEM       := ueventd.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/ueventd.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := loggy.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := etc/loggy.sh
LOCAL_VENDOR_MODULE    := true
include $(BUILD_PREBUILT)
