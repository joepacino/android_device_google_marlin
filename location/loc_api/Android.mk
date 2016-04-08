ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)

LOCAL_PATH := $(call my-dir)

#add QMI libraries for QMI targets
QMI_BOARD_PLATFORM_LIST := msm8960
QMI_BOARD_PLATFORM_LIST += msm8974
QMI_BOARD_PLATFORM_LIST += msm8226
QMI_BOARD_PLATFORM_LIST += msm8610
QMI_BOARD_PLATFORM_LIST += apq8084
QMI_BOARD_PLATFORM_LIST += msm8916
QMI_BOARD_PLATFORM_LIST += msm8994
QMI_BOARD_PLATFORM_LIST += msm8909
QMI_BOARD_PLATFORM_LIST += msm8952
QMI_BOARD_PLATFORM_LIST += msm8992
QMI_BOARD_PLATFORM_LIST += msm8996
QMI_BOARD_PLATFORM_LIST += titanium
QMI_BOARD_PLATFORM_LIST += msm8937

ifneq (,$(filter $(QMI_BOARD_PLATFORM_LIST),$(TARGET_BOARD_PLATFORM)))
include $(call all-subdir-makefiles)
endif #is-board-platform-in-list

endif#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE
