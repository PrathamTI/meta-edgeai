FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:j721e = " \
    file://0001-Optimal-QoS-Settings.patch \
    file://0001-arch-arm-dts-k3-j721e-Update-memory-map-for-PSDK-RTO.patch \
"

SRC_URI:append:j721s2 = " \
    file://0001-arch-arm-dts-k3-j721s2-k3-am68-Update-memory-map-for.patch \
"

SRC_URI:append:j784s4 = " \
    file://0001-arch-arm-dts-k3-j784s4-k3-am69-Update-memory-map-for.patch \
"

SRC_URI:append:j742s2 = " \
    file://0001-arch-arm-dts-k3-j742s2-Update-memory-map-for-PSDK-RT.patch \
"

SRC_URI:append:j722s = " \
    file://0001-arch-arm-dts-k3-j722s-Update-memory-map-for-PSDK-RTO.patch \
"

PACKAGECONFIG[dm-edgeai] = "DM=${STAGING_DIR_HOST}${nonarch_base_libdir}/firmware/vision_apps_eaik/vx_app_rtos_linux_mcu1_0.out,,ti-edgeai-firmware"

PACKAGECONFIG:remove:am62axx:edgeai = " dm"
PACKAGECONFIG:append:am62axx:edgeai = " dm-edgeai"

PR:append = "_edgeai_5"
