#
# Copyright (C) 2016 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ph2n device
$(call inherit-product, device/lge/ph2n/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ph2n
PRODUCT_NAME := lineage_ph2n
PRODUCT_BRAND := lge
PRODUCT_MODEL := ph2n
PRODUCT_MANUFACTURER := lge
