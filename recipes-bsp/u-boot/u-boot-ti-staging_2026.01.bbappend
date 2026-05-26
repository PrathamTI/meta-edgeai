FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:j721e = " \
    file://0001-Optimal-QoS-Settings.patch \
"

SRC_URI:append:j722s = " \
    file://0002-j722s-Change-cpsw3g-power-domain-to-shared.patch \
"

PR:append = "_edgeai_6"
