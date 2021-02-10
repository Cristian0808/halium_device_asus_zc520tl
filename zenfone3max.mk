# Overlay
DEVICE_PACKAGE_OVERLAYS := device/asus/zc520tl/overlay

LOCAL_PATH := device/asus/zc520tl

$(call inherit-product, vendor/asus/zc520tl/zc520tl-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xhdpi 280dpi hdpi tvdpi mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc		 \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 		 \
    $(LOCAL_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc             \
    $(LOCAL_PATH)/rootdir/init.mt6735.modem.rc:root/init.mt6735.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.conn.rc:root/init.mt6735.conn.rc   \

PRODUCT_PACKAGES += \
       wpa_supplicant \
       hostapd \
