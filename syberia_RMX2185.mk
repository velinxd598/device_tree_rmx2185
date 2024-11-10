#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2185/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/kasumi/config/common_full_phone.mk)


#Kasumi Stuff
SYBERIA_BUILD_TYPE := COMMUNITY

# GApps
TARGET_GAPPS_ARCH := arm64

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := syberia_RMX2185
PRODUCT_DEVICE := RMX2185
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G35 Series
PRODUCT_MANUFACTURER := realme

TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2185-userdebug 11 RD2A.211001.002 3a37cd95e2 release-keys"

BUILD_FINGERPRINT := "realme/RMX2185/RMX2185:11/RD2A.211001.002/3a37cd95e2:userdebug/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2185" \
    TARGET_DEVICE="RMX2185"
