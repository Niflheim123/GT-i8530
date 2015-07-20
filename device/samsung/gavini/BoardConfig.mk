-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_OTA_ASSERT_DEVICE := gavini,i8530,GT-I8530

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_CONFIG := cyanogenmod_i8530_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gavini/bluetooth

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/gavini/vibrator/vibrator.c

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/gavini/rootdir/fstab.samsunggavini

# Hardware tunables (device parts replacement)
BOARD_HARDWARE_CLASS := device/samsung/gavini/cmhw

# Disable legacy sensors using because gavini has gyro
BOARD_USE_LEGACY_SENSORS_FUSION := false
