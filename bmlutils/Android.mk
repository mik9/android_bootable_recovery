LOCAL_MODULE_TAGS := optional
ifeq ($(BOARD_USES_BMLUTILS),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -DBOARD_BOOT_DEVICE=\"$(BOARD_BOOT_DEVICE)\"
LOCAL_SRC_FILES := bmlutils.c
LOCAL_MODULE := libbmlutils
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := redbend_ua
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
