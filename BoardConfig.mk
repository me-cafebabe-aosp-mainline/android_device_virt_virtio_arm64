#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot manager
TARGET_BOOT_MANAGER := rEFInd

# Inherit from common
include device/virt/virtio-common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO_ARM64 := true
DEVICE_PATH := device/virt/virtio_arm64

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_CMDLINE += \
    console=ttyAMA0

BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor
