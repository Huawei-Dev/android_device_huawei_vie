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

LOCAL_PATH := device/huawei/vie

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := hi3650

ENABLE_CPUSETS := true

# Assert
TARGET_BOOTLOADER_BOARD_NAME := VIE,VIE-L09,VIE-L29,VIE-AL10,VIE-TL00,VIE-DL00,VIE-CL00

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
BOARD_USES_ALSA_AUDIO := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi3650
TARGET_NO_BOOTLOADER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Kernel
BOARD_KERNEL_BASE := 0x00478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmbkp),p18(modem_om),p21(modemnvm_update),p31(modem),p32(modem_dsp),p35(3rdmodem) loglevel=4 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07588000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64

TARGET_KERNEL_SOURCE := kernel/huawei/vie
TARGET_KERNEL_CONFIG := cm_hi3650_defconfig

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58204356608
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 2097152
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.hi3650

# inherit from the proprietary version
-include vendor/huawei/vie/BoardConfigVendor.mk
