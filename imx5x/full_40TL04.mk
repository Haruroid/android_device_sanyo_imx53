# This is a FSL Android Reference Design platform based on i.MX51 BBG board
# It will inherit from FSL core product which in turn inherit from Google generic

$(call inherit-product, device/fsl/imx5x/imx5x.mk)

# Overrides
PRODUCT_NAME := full_40TL04
PRODUCT_DEVICE := 40TL04

PRODUCT_COPY_FILES += \
	device/fsl/40TL04/init.rc:root/init.freescale.rc \
	device/fsl/40TL04/init.tsmode.rc:root/init.tsmode.rc \
        device/fsl/40TL04/vold.fstab:system/etc/vold.fstab \
        device/fsl/40TL04/vold.fstab.eMMC:system/etc/vold.fstab.eMMC \
        device/fsl/40TL04/vold.fstab.SDcard:system/etc/vold.fstab.SDcard \
	device/fsl/40TL04/wifi/mlan.ko:system/wifi/mlan.ko \
	device/fsl/40TL04/wifi/sd8787.ko:system/wifi/sd8787.ko \
	device/fsl/40TL04/wifi/sd8787_uapsta.bin:system/wifi/sd8787_uapsta.bin \
	device/fsl/40TL04/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/fsl/proprietary/pppoe/etc/init.pppoe-pppd:system/etc/init.pppoe-pppd

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_AAPT_CONFIG += sw600dp
PRODUCT_PREF_AAPT_CONFIG := sw600dp

DEVICE_PACKAGE_OVERLAYS := device/fsl/40TL04/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet
