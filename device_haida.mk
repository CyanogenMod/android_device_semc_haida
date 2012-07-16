$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# common msm7x30 configs
$(call inherit-product, device/semc/msm7x30-common/msm7x30.mk)

# common mogami configs
$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/haida/haida-vendor.mk)

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/haida/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/semc/haida/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/haida/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/haida/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/haida/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle \
    device/semc/haida/recovery.fstab:root/recovery.fstab

#device specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
