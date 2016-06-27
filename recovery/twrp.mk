LOCAL_PATH := device/lge/d850/recovery

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.g3:recovery/root/fstab.g3 \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

# G3
PRODUCT_PACKAGES += \
    init.recovery.g3.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Touch To Wake
PRODUCT_PACKAGES += \
    init.recovery.touchtowake.rc

# Keymaster
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/firmware/keymaster)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib/hw)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/sbin)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    $(LOCAL_PATH)/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    $(LOCAL_PATH)/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    $(LOCAL_PATH)/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    $(LOCAL_PATH)/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    $(LOCAL_PATH)/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    $(LOCAL_PATH)/root/vendor/firmware/keymaste.b00:recovery/root/vendor/firmware/keymaster/keymaste.b00 \
    $(LOCAL_PATH)/root/vendor/firmware/keymaste.b01:recovery/root/vendor/firmware/keymaster/keymaste.b01 \
    $(LOCAL_PATH)/root/vendor/firmware/keymaste.b02:recovery/root/vendor/firmware/keymaster/keymaste.b02 \
    $(LOCAL_PATH)/root/vendor/firmware/keymaste.b03:recovery/root/vendor/firmware/keymaster/keymaste.b03 \
    $(LOCAL_PATH)/root/vendor/firmware/keymaste.mdt:recovery/root/vendor/firmware/keymaster/keymaste.mdt \
    $(LOCAL_PATH)/root/vendor/lib/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/root/vendor/lib/hw/keystore.msm8974.so:recovery/root/vendor/lib/hw/keystore.msm8974.so
