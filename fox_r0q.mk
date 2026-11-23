#
# Copyright (C) 2023 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := r0q

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# OrangeFox / TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

$(call inherit-product, device/samsung/r0q/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/r0q/recovery/root,recovery/root)

PRODUCT_DEVICE := r0q
PRODUCT_NAME := twrp_r0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S901E
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
