FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://custom_limits.conf"

do_install:append(){
    install -m 0644 ${UNPACKDIR}/custom_limits.conf ${D}${sysconfdir}/security/limits.conf
}

PR:append = "_edgeai_1"
