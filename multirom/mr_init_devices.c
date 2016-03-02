#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
		"/sys/class/graphics/fb0",

		"/sys/block/mmcblk0",
		"/sys/devices/msm_sdcc.1",
		"/sys/devices/msm_sdcc.1*",
		"/sys/bus/mmc",
		"/sys/bus/mmc/drivers/mmcblk",
		"/sys/bus/sdio/drivers/bcmsdh_sdmmc",
		"/sys/module/mmcblk",

		// SDCard
		"/sys/devices/msm_sdcc.3",
		"/sys/devices/msm_sdcc.3*",

		// USB drive
		"/sys/bus/platform/drivers/xhci-hcd*",

		"/sys/devices/gpio_keys.83/input*",
		"/sys/devices/virtual/input*",
		"/sys/devices/virtual/misc/uinput",

		// for adb
		"/sys/devices/virtual/tty/ptmx",
		"/sys/devices/virtual/misc/android_adb",
		"/sys/devices/virtual/android_usb/android0/f_adb",
		"/sys/bus/usb",

		// for qualcomm overlay - /dev/ion
		"/sys/devices/virtual/misc/ion",

		NULL
};

