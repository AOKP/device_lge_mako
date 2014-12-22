# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Mako Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := aokp_mako
PRODUCT_BRAND := Google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:5.0.1/LRX22C/1602158:user/release-keys" PRIVATE_BUILD_DESC="occam-user 5.0.1 LRX22C 1602158 release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_768.zip:system/media/bootanimation.zip
