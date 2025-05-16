require ti-edgeai-firmware.bb

SUMMARY = "TI RTOS prebuilt binary firmware images for ADAS"

FW_DIR = "${PLAT_SFX}/vision_apps_evm"
INSTALL_FW_DIR = "${nonarch_base_libdir}/firmware/vision_apps_evm/"
