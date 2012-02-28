## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := MT11i

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/haida/device_haida.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := haida
PRODUCT_NAME := cm_haida
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia Neo V

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT15i BUILD_ID=ITL41F BUILD_DISPLAY_ID=ITL41F BUILD_FINGERPRINT="google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys"
