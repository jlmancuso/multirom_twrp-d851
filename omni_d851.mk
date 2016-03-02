#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/lge/d851/kernel:kernel \
    device/lge/d851/dtb:dtb \
    device/lge/d851/img_info:img_info \
    device/lge/d851/init.recovery.g3.rc:root/init.recovery.g3.rc \
    device/lge/d851/multirom/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/lge/d851/multirom/sign:recovery/root/res/sign

PRODUCT_COPY_FILES += device/lge/d851/fstab.g3:recovery/root/fstab.g3
PRODUCT_COPY_FILES += device/lge/d851/multirom/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_NAME := omni_d851
PRODUCT_DEVICE := d851
PRODUCT_BRAND := LG
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := LG

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:5.0.1/LRX21Y/15227151285fc:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 5.0.1 LRX21Y 15227151285fc release-keys"

# Kernel inline build
#TARGET_KERNEL_CONFIG := d851_defconfig
#TARGET_VARIANT_CONFIG := d851_defconfig
#TARGET_SELINUX_CONFIG := d851_defconfig
