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
$(call inherit-product, device/qualcomm/moonstone/device.mk)

PRODUCT_DEVICE := moonstone
PRODUCT_NAME := lineage_moonstone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22111317PI
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moonstone-user 11 SKQ1.220303.001 V13.0.4.0.SMPIDXM release-keys"

BUILD_FINGERPRINT := POCO/moonstone/moonstone:11/SKQ1.220303.001/V13.0.4.0.SMPIDXM:user/release-keys
