# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cam.hw.version=m7

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# Performance
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.baseband.arch=mdm

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2015-08-05

# DEBUG
PRODUCT_PROPERTY_OVERRIDES += \
	persist.service.adb.enable=1  \
	persist.service.debuggable=1  \
	persist.sys.usb.config=mtp,adb