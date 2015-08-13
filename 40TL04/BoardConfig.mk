#
# Product-specific compile-time definitions.
#

include device/fsl/imx5x/BoardConfigCommon.mk

#こ↑こ↓わからない
TARGET_BOOTLOADER_BOARD_NAME := 40TL04

BOARD_SOC_CLASS := IMX5X
BOARD_SOC_TYPE := IMX53

PRODUCT_MODEL := 40TL04

# Wifi(ﾀﾞﾚｶﾅｵｼﾃｰ)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_6_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mrvl8787
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mrvl8787
#BOARD_WLAN_DEVICE := mrvl8787
BOARD_WLAN_VENDOR := MRVL
WIFI_DRIVER_MODULE_PATH := "/system/wifi/sd8787.ko"
WIFI_DRIVER_MODULE_NAME	:= "sd8787"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/sd8787_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=sd8787_uapsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/sd8787_uapsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/sd8787_uapsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/sd8787_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/wifi/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
MRVL_WIRELESS_DAEMON_API := true"


BOARD_HAVE_VPU := true
HAVE_FSL_IMX_GPU2D := true
HAVE_FSL_IMX_GPU3D := true
HAVE_FSL_IMX_IPU := true

BOARD_HAVE_HARDWARE_GPS := false
USE_ATHR_GPS_HARDWARE := false
USE_QEMU_GPS_HARDWARE := false

#for accelerator sensor, need to define sensor type here
BOARD_HAS_SENSOR := true
SENSOR_MMA8451 := true

# for recovery service
TARGET_SELECT_KEY := 158
TARGET_USERIMAGES_USE_EXT4 := true

# atheros 3k BT
BOARD_USE_AR3K_BLUETOOTH := false
USE_OPENGL_RENDERER := true

BOARD_KERNEL_CMDLINE := console=ttymxc0,115200 init=/init androidboot.console=ttymxc0 video=mxcdi1fb:RGB24,WSVGA ldb=di1 di1_primary pmem=32M,64M fbmem=5M gpu_memory=64M\0

BOARD_KERNEL_BASE := 0x70800000

#別にビルドしなくてもよさげ？
#TARGET_BOOTLOADER_CONFIG := mx53_smd_android_ics_config

