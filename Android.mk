LOCAL_PATH := $(call my-dir)

ifneq ($(filter Atom_L_TEE ,$(TARGET_DEVICE)),)
subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
$(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif
