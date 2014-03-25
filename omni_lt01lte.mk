#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2014 OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specific configurations
$(call inherit-product, device/samsung/lt01lte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := SM-T315
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_lt01lte
PRODUCT_DEVICE := lt01lte
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lt01ltexx \
    TARGET_DEVICE=lt01lte \
    PRIVATE_BUILD_DESC="lt01ltexx-user 4.2.2 JDQ39 T315XWUAMK1 release-keys" \
    BUILD_FINGERPRINT="samsung/lt01ltexx/lt01lte:4.2.2/JDQ39/T315XWUAMK1:user/release-keys"
