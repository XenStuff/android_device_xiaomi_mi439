#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit from mi439 device
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi439
PRODUCT_NAME := p404_mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="mi439" \
    PRODUCT_NAME="mi439"

# 404
ifeq ($(WITH_GAPPS),true)
P404_BUILDTYPE := SHINKA-GAPPS
else
P404_BUILDTYPE := SHINKA-VANILLA
endif 
