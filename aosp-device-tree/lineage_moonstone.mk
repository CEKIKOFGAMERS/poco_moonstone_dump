#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from moonstone device
$(call inherit-product, device/xiaomi/moonstone/device.mk)

PRODUCT_DEVICE := moonstone
PRODUCT_NAME := lineage_moonstone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22111317PI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moonstone-user 11 TKQ1.221114.001 V14.0.6.0.TMPMIXM release-keys"

BUILD_FINGERPRINT := POCO/moonstone/moonstone:11/TKQ1.221114.001/V14.0.6.0.TMPMIXM:user/release-keys
