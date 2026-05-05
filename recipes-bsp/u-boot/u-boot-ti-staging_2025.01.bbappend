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
    file://0002-j722s-Change-cpsw3g-power-domain-to-shared.patch \
"

PR:append = "_edgeai_6"
