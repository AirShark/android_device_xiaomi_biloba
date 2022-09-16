#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from biloba device
$(call inherit-product, device/xiaomi/biloba/device.mk)

PRODUCT_DEVICE := biloba
PRODUCT_NAME := lineage_biloba
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := biloba
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="biloba-user 12 SP1A.210812.016 V13.0.4.0.SCUMIXM release-keys"

BUILD_FINGERPRINT := Redmi/biloba_global/biloba:12/SP1A.210812.016/V13.0.4.0.SCUMIXM:user/release-keys
