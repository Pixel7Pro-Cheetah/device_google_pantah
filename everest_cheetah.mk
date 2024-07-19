#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common ProjectEverest stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := everest_cheetah

# Everest
WITH_GAPPS := true
EVEREST_BUILD_TYPE := UNOFFICIAL
EVEREST_MAINTAINER := Kenway241
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
