PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common device
#$(call inherit-product, device/Unihertz/Atom_LXL/deviceCommon.mk)

# Another common config inclusion
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
#$(call inherit-product, vendor/twrp/config/gsm.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/Unihertz/Atom_L_TEE/Atom_L_TEE-vendor.mk)

# Files under $(LOCAL_PATH)/recovery/root/ get automatically copied into recovery
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/Unihertz/Atom_LXL/recovery/root,recovery/root)

PRODUCT_NAME := twrp_Atom_L_TEE
PRODUCT_DEVICE := Atom_L_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Atom_L
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_BOARD := g63v71c2k_dfl_tee

# Add fingerprint from Stock ROM build.prop
BUILD_FINGERPRINT := "Unihertz/Atom_L/Atom_L:10/QP1A.190711.020/root.20200925.171920:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Atom_L_TEE \
    PRODUCT_NAME=Atom_L \
    PRIVATE_BUILD_DESC="Atom_L-user 10 QP1A.190711.020 root.20200925.171920 release-keys"