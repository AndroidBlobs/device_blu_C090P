# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from C090P device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blu
PRODUCT_DEVICE := C090P
PRODUCT_MANUFACTURER := blu
PRODUCT_NAME := lineage_C090P
PRODUCT_MODEL := C6x

PRODUCT_GMS_CLIENTID_BASE := android-blu
TARGET_VENDOR := blu
TARGET_VENDOR_PRODUCT_NAME := C090P
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="C6x-user 8.1.0 O11019 1565333506 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := BLU/C6x/C090P:8.1.0/O11019/1565333506:user/release-keys
