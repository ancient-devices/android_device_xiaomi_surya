#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    vendor.audio.feature.a2dp_offload.enable=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.library_name=libbluetooth.so

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    persist.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true
    
# Recorder
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.audiorec=true

# Smart fps switching
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.smart_dfps.enable=false

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log
    
# Wireless display
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0
