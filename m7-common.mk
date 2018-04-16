# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bcm4335_prepatch.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4335_prepatch.hcd

# Camera HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.msm8960 \
    libcamera_shim \
    Snap

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0-java

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# SDCard
PRODUCT_CHARACTERISTICS := nosdcard

# Shims
PRODUCT_PACKAGES += \
    libshim_atomic \
    libqc-opt_shim \
    libshim_wvm \
    liblog_shim \
    libshim_ril

# System properties & permissions
-include $(LOCAL_PATH)/system_prop.mk
-include $(LOCAL_PATH)/permissions.mk

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/calibration:system/etc/calibration \
    $(LOCAL_PATH)/configs/calibration_EMEA:system/etc/calibration_EMEA \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Include non-opensource parts
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4335/device-bcm.mk)
$(call inherit-product-if-exists, vendor/htc/m7-common/m7-common-vendor.mk)
