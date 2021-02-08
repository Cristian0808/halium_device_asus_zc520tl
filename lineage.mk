# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from gtexswifi device
$(call inherit-product, device/asus/zc520tl/zenfone3max.mk)

PRODUCT_DEVICE :=  zc520tl
PRODUCT_NAME := lineage_zc520tl
PRODUCT_BRAND := zenfone3max
PRODUCT_MODEL := ZC520TL
PRODUCT_MANUFACTURER := asus
