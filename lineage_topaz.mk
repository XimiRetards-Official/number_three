#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_GMS := true
TARGET_CORE_GMS := true

# Rising Official
RISING_MAINTAINER=Joaquin
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 685" \
    RISING_MAINTAINER="John Reybel Pilon"

PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    PrebuiltDeskClockGoogle \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt
