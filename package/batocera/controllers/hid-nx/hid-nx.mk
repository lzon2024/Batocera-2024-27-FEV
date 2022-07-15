################################################################################
#
# hid-nx
#
################################################################################
HID_NX_VERSION = 20e330a33aba1f1fc00287278ad31ca98ede383a
HID_NX_SITE = $(call github,emilyst,hid-nx-dkms,$(HID_NX_VERSION))
HID_NX_DEPENDENCIES = host-libcurl host-cabextract libusb

define HID_NX_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/etc/udev/rules.d
	cp -v $(@D)/99-joycond-ignore.rules $(TARGET_DIR)/etc/udev/rules.d/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
