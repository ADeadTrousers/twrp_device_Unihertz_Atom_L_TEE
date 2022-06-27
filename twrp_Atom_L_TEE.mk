# Inherit from common device
$(call inherit-product, device/Unihertz/Atom_LXL/deviceCommon.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/Unihertz/Atom_L_TEE/Atom_L_TEE-vendor.mk)

PRODUCT_NAME := twrp_Atom_L_TEE
PRODUCT_DEVICE := Atom_L_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Atom_L
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_BOARD := g63v71c2k_dfl_tee

# Add fingerprint from Stock ROM build.prop
BUILD_FINGERPRINT := "Unihertz/Atom_L/Atom_L:11/RP1A.200720.011/root.20210707.124306:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Atom_L_TEE \
    PRODUCT_NAME=Atom_L \
    PRIVATE_BUILD_DESC="Atom_L-user 11 RP1A.200720.011 root.20210707.124306 release-keys"
