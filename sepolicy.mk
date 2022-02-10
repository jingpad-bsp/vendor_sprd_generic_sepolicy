
ifneq (aosp,$(findstring aosp, $(TARGET_PRODUCT)))
SEPOLICY_GENERIC_DIRS += vendor/sprd/generic/sepolicy/selinux

BOARD_SEPOLICY_DIRS += $(SEPOLICY_GENERIC_DIRS)/vendor \
                       $(SEPOLICY_GENERIC_DIRS)/vendor/base
$(warning BOARD_SEPOLICY_DIRS:$(BOARD_SEPOLICY_DIRS))
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(SEPOLICY_GENERIC_DIRS)/system/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(SEPOLICY_GENERIC_DIRS)/system/public

BOARD_SEPOLICY_M4DEFS += USE_PROJECT_SEC=$(USE_PROJECT_SEC)
$(warning BOARD_PLAT_PRIVATE_SEPOLICY_DIR=$(BOARD_PLAT_PRIVATE_SEPOLICY_DIR) BOARD_PLAT_PUBLIC_SEPOLICY_DIR=$(BOARD_PLAT_PUBLIC_SEPOLICY_DIR))
endif
