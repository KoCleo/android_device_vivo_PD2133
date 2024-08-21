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

# Inherit from PD2133 device
$(call inherit-product, device/vivo/PD2133/device.mk)

PRODUCT_DEVICE := PD2133
PRODUCT_NAME := omni_PD2133
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2135A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6893v1_64-user 11 RP1A.200720.012 eng.compil.20211223.222810 release-keys"

BUILD_FINGERPRINT := vivo/PD2133/PD2133:11/RP1A.200720.012/compiler1223222346:user/release-keys
