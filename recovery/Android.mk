LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

# G3
include $(CLEAR_VARS)
LOCAL_MODULE            := init.recovery.g3.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := RECOVERY_EXECUTABLES
LOCAL_SRC_FILES         := init.recovery.g3.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Touch to Wake
include $(CLEAR_VARS)
LOCAL_MODULE            := init.recovery.touchtowake.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := RECOVERY_EXECUTABLES
LOCAL_SRC_FILES         := init.recovery.touchtowake.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
