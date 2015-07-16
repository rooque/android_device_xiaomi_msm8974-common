BOARD_VENDOR := xiaomi

COMMON_PATH := device/xiaomi/msm8974-common

TARGET_BOARD_KERNEL_HEADERS := $(COMMON_PATH)/kernel-headers

# inherit from the proprietary version
-include vendor/xiaomi/cancro/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE  := true

QCOM_BOARD_PLATFORMS  := msm8974
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOOTLOADER_BOARD_NAME := MSM8974

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait


# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Flags
#COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 vmalloc=340M androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_CUSTOM_BOOTIMG_MK := $(COMMON_PATH)/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT :=  true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DNO_SECURE_DISCARD -DQCOM_BSP
COMMON_GLOBAL_CPPFLAGS += -DQCOM_HARDWARE -DNO_SECURE_DISCARD -DQCOM_BSP

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Power
TARGET_PROVIDES_POWERHAL := true

# Light
TARGET_PROVIDES_LIBLIGHT := true

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_MULTIPLE_TUNNEL := true
AUDIO_FEATURE_PCM_IOCTL_ENABLED := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_USBAUDIO := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
BOARD_FORTEMEDIA_QDSP_ENABLED := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_SMD_TTY := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth

# FM
BOARD_HAVE_QCOM_FM := true
QCOM_FM_ENABLED := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_cancro


# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
USE_CAMERA_STUB := true


# Blob compatibility
BOARD_USES_LEGACY_MMAP := true
#TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS


# Audio/media
TARGET_QCOM_AUDIO_VARIANT := caf-bfam
TARGET_QCOM_MEDIA_VARIANT := caf-bfam
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := caf-bfam
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE:= false
TARGET_USES_POST_PROCESSING := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000


# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# No old RPC for prop
TARGET_NO_RPC := true

# Consumer IR
TARGET_PROVIDES_CONSUMERIR_HAL := true

# GPS
TARGET_GPS_HAL_PATH := device/xiaomi/msm8974-common/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Use HW crypto for ODE
#TARGET_HW_DISK_ENCRYPTION := true
TARGET_HW_DISK_ENCRYPTION := false

# Enable CNE
#BOARD_USES_QCNE := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"
#BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Filesystem
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 16384000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16384000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1306003000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13291503000
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59914792960
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
BOARD_CACHEIMAGE_PARTITION_SIZE := 393216000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 16384000
BOARD_FLASH_BLOCK_SIZE := 131072

# Misc
BOARD_HAS_NO_SELECT_BUTTON := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Compatibility with pre-kitkat Qualcomm sensor HALs
#SENSORS_NEED_SETRATE_ON_ENABLE := true

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# Selinux
-include device/qcom/sepolicy/sepolicy.mk


BOARD_SEPOLICY_DIRS += \
        $(COMMON_PATH)/sepolicy


BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    wpa.te \
    mpdecision.te \
    qseecomd.te \
    rmt_storage.te \
    sensors.te \
    system_app.te \
    system_server.te \
    thermal-engine.te \
    vold.te \
    gsiff_daemon.te
    
    
# TWRP specific build flags
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/root/recovery_fstab.qcom
RECOVERY_FSTAB_VERSION := 2
DEVICE_RESOLUTION := 1080x1920
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := false
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_L_CRYPTO := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
