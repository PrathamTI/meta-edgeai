FILESEXTRAPATHS:prepend := "${THISDIR}/linux-ti-staging/:"

SRC_URI:append:j721e = " \
    file://0001-arm64-dts-ti-Add-DTB-overlays-for-vision-apps-and-ed.patch \
"

SRC_URI:append:j721s2 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
    file://0002-arm64-dts-ti-k3-j721s2-Add-overlay-for-edge-ai.patch \
"

SRC_URI:append:j784s4 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
    file://0002-arm64-dts-ti-k3-j784s4-Add-overlay-for-edge-ai.patch \
"

SRC_URI:append:j742s2 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
"

SRC_URI:append:j722s = " \
    file://0001-arm64-dts-ti-j722s-Add-DTB-overlay-for-RTOS-memory-m.patch \
    file://tiL6.12-v1-1-2-PENDING-arm64-dts-ti-k3-j722s-evm-Remove-Improper-Interrupt-from-main_pmx0.patch \
    file://tiL6.12-v1-2-2-PENDING-arm64-dts-ti-k3-j722s-main-Add-E5010-JEPG-Encoder.patch \
"

PR:append = "_edgeai_8"
