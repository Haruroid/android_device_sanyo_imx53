LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# files that live under /system/etc/...

copy_from := \
	etc/init.pppoe-pppd

copy_to := $(addprefix $(TARGET_OUT)/,$(copy_from))
copy_from := $(addprefix $(LOCAL_PATH)/,$(copy_from))

$(copy_to) : PRIVATE_MODULE := system_etcdir
$(copy_to) : $(TARGET_OUT)/% : $(LOCAL_PATH)/% | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(copy_to)
