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

# Inherit from vivo 2026 device
$(call inherit-product, device/vivo/2026/device.mk)

# Inherit some common ArrowOS stuff.
TARGET_BOOT_ANIMATION_RES := 720
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 2026
PRODUCT_NAME := arrow_2026
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2026
PRODUCT_MANUFACTURER := vivo

# Build info
BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-vivo
