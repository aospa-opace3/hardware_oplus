#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_BOARD_PLATFORM), kalama)
SEPOLICY_PLATFORM := sm8550
else ifeq ($(TARGET_BOARD_PLATFORM), waipio)
SEPOLICY_PLATFORM := sm8450
else 
SEPOLICY_PLATFORM := legacy-um
endif

BOARD_VENDOR_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/vendor \
    hardware/oplus/sepolicy/qti/vendor/$(SEPOLICY_PLATFORM)

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/private \
    hardware/oplus/sepolicy/qti/private/$(SEPOLICY_PLATFORM)

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/public \
    hardware/oplus/sepolicy/qti/public/$(SEPOLICY_PLATFORM)

ifneq ($(SEPOLICY_PLATFORM), legacy-um)
BOARD_VENDOR_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/vendor/common-um

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/private/common-um

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    hardware/oplus/sepolicy/qti/public/common-um
endif
