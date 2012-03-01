-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/haida/BoardConfigVendor.mk

BUILD_SEMC_SENSORS := true
SENSORS_COMPASS_AK897X := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS970X := true
SENSORS_PRESSURE_BMP180 := false

TARGET_OTA_ASSERT_DEVICE := MT11i,MT11a,haida

