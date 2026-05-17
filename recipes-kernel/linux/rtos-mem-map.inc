FILESEXTRAPATHS:prepend := "${THISDIR}/linux-ti-staging/:"

SRC_URI:append:j721e = " \
    file://0001-arm64-dts-ti-Add-DTB-overlays-for-vision-apps-and-ed.patch \
"

SRC_URI:append:j721s2 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
"

SRC_URI:append:j784s4 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
"

SRC_URI:append:j742s2 = " \
    file://0001-arm64-dts-ti-Add-DTB-overlay-for-vision-apps.patch \
"

SRC_URI:append:j722s = " \
    file://0001-arm64-dts-ti-j722s-Add-DTB-overlay-for-RTOS-memory-m.patch \
    file://0001-kernel-j722s-Revert-arm64-dts-ti-k3-j722s-fix-pinctr.patch \
    file://0001-kernel-j722s-Revert-pinctrl-configuration-in-FPDLink.patch \
"

PR:append = "_edgeai_8"
