#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# OEM Info
BOARD_VENDOR := xiaomi

# Define hardware platform
PRODUCT_PLATFORM := atoll

# Release name
PRODUCT_RELEASE_NAME := miatoll

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := miatoll
PRODUCT_NAME := omni_miatoll
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := xiaomi

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)