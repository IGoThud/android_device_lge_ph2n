#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/lge/ph2n
CM_PATH := vendor/cm/config/board

# Platform
TARGET_BOARD_PLATFORM := msm8937

# Inherit common board fragments
include $(CM_PATH)/common/bluetooth.mk
include $(CM_PATH)/common/bootloader.mk
include $(CM_PATH)/common/camera.mk
include $(CM_PATH)/common/clang.mk
include $(CM_PATH)/common/cpusets.mk
include $(CM_PATH)/common/dexopt.mk
include $(CM_PATH)/common/dlmalloc.mk
include $(CM_PATH)/common/filesystem.mk
include $(CM_PATH)/common/gps.mk
include $(CM_PATH)/common/sepolicy.mk

# Inherit QCOM board fragments
include $(CM_PATH)/qcom/bluetooth.mk
include $(CM_PATH)/qcom/bootloader.mk
include $(CM_PATH)/qcom/camera.mk
include $(CM_PATH)/qcom/cne.mk
include $(CM_PATH)/qcom/display.mk
include $(CM_PATH)/qcom/encryption.mk
include $(CM_PATH)/qcom/fm.mk
include $(CM_PATH)/qcom/gps.mk
include $(CM_PATH)/qcom/per-mgr.mk
include $(CM_PATH)/qcom/platform.mk
include $(CM_PATH)/qcom/power.mk
include $(CM_PATH)/qcom/recovery.mk
include $(CM_PATH)/qcom/ril.mk
include $(CM_PATH)/qcom/sepolicy.mk
include $(CM_PATH)/qcom/time.mk

# Inherit Cyanogen board fragments
include $(CM_PATH)/cyanogen/hardware.mk

# Inherit the proprietary files
-include vendor/lge/ph2n/BoardConfigVendor.mk

# kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := lineageos_ph2n_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/msm8937

# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE    := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26301931008
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_F2FS := true

# Audio
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Init
TARGET_INIT_VENDOR_LIB := libinit_ph2n
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_ph2n

# Keystore
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Recovery
TARGET_RECOVERY_UI_LIB := librecovery_ui_msm
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_msm
TARGET_RELEASETOOLS_EXTENSIONS := device/qcom/common

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Sensors
USE_SENSOR_MULTI_HAL := true