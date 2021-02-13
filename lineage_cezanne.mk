#
# Copyright (C) 2019 Potato Open Sauce Project
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

# Dynamic
PRODUCT_RELEASE_NAME := cezanne
PRODUCT_USE_DYNAMIC_PARTITIONS := true
DEVICE_PATH := device/xiaomi/cezanne
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
# Inherit from begonia device
$(call inherit-product, device/xiaomi/cezanne/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cezanne
PRODUCT_NAME := lineage_cezanne
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Ultra
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/cezanne/cezanne:11/RP1A.200720.011/21.2.5:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cezanne-user 11 RP1A.200720.011 21.2.5 release-keys" \
    PRODUCT_NAME="cezanne" \
    TARGET_DEVICE="cezanne"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
