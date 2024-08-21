#
# Copyright (C) 2023 The TWRP Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from hot10s device
$(call inherit-product, device/infinix/X689/device.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X689
PRODUCT_NAME := twrp_X689
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Hot 10S
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x689_h696-user 11 RP1A.200720.011 255364 release-keys"

BUILD_FINGERPRINT := Infinix/X689-GL/Infinix-X689:11/RP1A.200720.011/230224V538:user/release-keys
