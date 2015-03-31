#
# Copyright 2014 The Android Open Source Project
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
#

LOCAL_PATH := device/xiaomi/msm8974-common

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml


# Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/chargeonlymode:root/sbin/chargeonlymode

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/root/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/root/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.qcom.rc:root/ueventd.qcom.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/rootdir/system/etc/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_3_1.xml:system/etc/mixer_paths_3_1.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_3_1_forte.xml:system/etc/mixer_paths_3_1_forte.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_3_2.xml:system/etc/mixer_paths_3_2.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_3_2_forte.xml:system/etc/mixer_paths_3_2_forte.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_4_x.xml:system/etc/mixer_paths_4_x.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_4_x_forte.xml:system/etc/mixer_paths_4_x_forte.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_5_x.xml:system/etc/mixer_paths_5_x.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_5_x_forte.xml:system/etc/mixer_paths_5_x_forte.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_auxpcm_3_1.xml:system/etc/mixer_paths_auxpcm_3_1.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_auxpcm_3_2.xml:system/etc/mixer_paths_auxpcm_3_2.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_auxpcm_4_x.xml:system/etc/mixer_paths_auxpcm_4_x.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mixer_paths_auxpcm_5_x.xml:system/etc/mixer_paths_auxpcm_5_x.xml \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_General_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_General_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Global_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Handset_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Headset_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X3/MTP_X3_Speaker_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Speaker_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_General_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_General_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Global_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Handset_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Headset_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X4/MTP_X4_Speaker_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Speaker_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_General_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_General_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Global_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Handset_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Headset_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/system/etc/acdbdata/MTP/X5/MTP_X5_Speaker_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Speaker_cal.acdb

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_qcom_wlan_nv_x4.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x4.bin \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_qcom_wlan_nv_x4lte.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x4lte.bin \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/WCNSS_qcom_wlan_nv_x5.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x5.bin \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    wcnss_service

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/cyttsp_button.kl:system/usr/keylayout/cyttsp_button.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/fts.kl:system/usr/keylayout/fts.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl:system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

#skip boot jars check if QCPATH not available
ifeq ($(strip $(QCPATH)),)
SKIP_BOOT_JARS_CHECK := true
endif

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-8974.conf:system/etc/thermald-8974.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    $(LOCAL_PATH)/configs/thermal-engine-perf.conf:system/etc/thermal-engine-perf.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/android_model_facea.dat:system/etc/android_model_facea.dat \
    $(LOCAL_PATH)/rootdir/system/etc/android_model_faceg.dat:system/etc/android_model_faceg.dat \
    $(LOCAL_PATH)/rootdir/system/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/rootdir/system/etc/qca6234-service.sh:system/etc/qca6234-service.sh \
    $(LOCAL_PATH)/rootdir/system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin:system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin \
    $(LOCAL_PATH)/rootdir/system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin.pca:system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin.pca \
    $(LOCAL_PATH)/rootdir/system/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    $(LOCAL_PATH)/rootdir/system/etc/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/rootdir/system/etc/modem/Diag.cfg:system/etc/modem/Diag.cfg



PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Dirac Audio Effect
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/diracmobile.config:system/vendor/etc/diracmobile.config
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/diracmobile_4.config:system/vendor/etc/diracmobile_4.config
PRODUCT_PACKAGES += libdirac

#ffmpeg omxcodec
PRODUCT_PACKAGES += \
    libffmpeg_utils \
    libstagefright_soft_ffmpegadec \
    libFFmpegExtractor

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    mkntfs \
    dumpe2fs \
    resize2fs \
    e2fsck_static \
    mke2fs_static \
    resize2fs_static

PRODUCT_PACKAGES += \
    libxml2

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay \
    libemoji

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer

# Keystore
PRODUCT_PACKAGES += \
    keystore.qcom

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Misc dependency packages
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    curl \
    libnl_2 \
    libbson

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    ANTRadioService \
    antradio_app

# fmradio support
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

PRODUCT_BOOT_JARS += qcom.fmradio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false

# App
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

# CodeAurora
PRODUCT_PACKAGES += \
    org.codeaurora.Performance \
    BluetoothExt \
    javax.btobex \
    libattrib_static \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    services-ext \
    liballjoyn \
    libtinyxml \
    libtinyxml2 \
    tcmiface

PRODUCT_BOOT_JARS += \
    org.codeaurora.Performance \
    tcmiface

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

#Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bt.dev_power_class=1 \
    bluetooth.hfp.client=1 \
    ro.bluetooth.alwaysbleon=true

PRODUCT_CHARACTERISTICS := nosdcard

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# set USB OTG enabled to add support for USB storage type
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x5

# PowerModel
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.aries.power_profile=middle

# Quick charging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.usb.hvdcp.detect=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.speaker.prot.enable=true \
    qcom.hw.aac.encoder=false \
    tunnel.audio.encode = false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.init_volume_index=1

# Audio offload
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    av.offload.enable=true \
    audio.offload.gapless.enabled=false \
    audio.offload.disable=1 \
    use.voice.path.for.pcm.voip=true

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

# Voice Call
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

# HDMI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.demo.hdmirotationlock=false \
    ro.hdmi.enable=true

# aDSP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.sensors.gestures=true

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    ro.sf.lcd_density=480 \
    dev.pm.dyn_samplingrate=1

# OpenGL ES 3.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
    wlan.driver.ath=0

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=RUIM \
    persist.omh.enabled=true \
    persist.sys.ssr.restart_level=3

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.use-awesome=true \
    debug.mdpcomp.4k2kSplit=1

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# This is the aries-specific audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)
