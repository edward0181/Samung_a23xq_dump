#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

PRODUCT_DEVICE := a23xq
PRODUCT_NAME := omni_a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23xqnsxx-user 11 RP1A.200720.012 A236BXXS4DXA2 release-keys"

BUILD_FINGERPRINT := samsung/a23xqnsxx/a23xq:11/RP1A.200720.012/A236BXXS4DXA2:user/release-keys
