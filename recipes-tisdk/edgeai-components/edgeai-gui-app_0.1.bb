DESCRIPTION = "EdgeAI GUI Application"
HOMEPAGE = "https://git.ti.com/cgit/apps/edgeai-gui-app"
SECTION = "graphics"

LICENSE = "TI-TSPA"

LIC_FILES_CHKSUM = "file://LICENSE;md5=5c3a7f5f6886ba6f33ec3d214dc7ab4c"

DEPENDS = "\
    qtbase \
    qtquick3d \
    qtdeclarative \
    qtmultimedia \
    gstreamer1.0 \
    qtdeclarative-native \
    qt5compat \
"

RDEPENDS:${PN} = "\
    qtquick3d \
    qtmultimedia \
    qt5compat \
    pulseaudio-service \
    qtdeclarative-qmlplugins \
    qtdeclarative-tools \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-good-qml6 \
    edgeai-gst-plugins \
"

BRANCH = "master"
SRCREV = "b2220eaa3f335bc77b928a57e2325dd1881c5bc0"

PV = "1.0.0"
SRC_URI = "git://git.ti.com/git/apps/edgeai-gui-app.git;protocol=https;branch=${BRANCH}"

inherit cmake pkgconfig

EXTRA_OECMAKE += "-DQT_HOST_PATH=${RECIPE_SYSROOT_NATIVE}${prefix_native}"

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 edgeai-gui-app ${D}${bindir}/edgeai-gui-app

    rm -rf ${D}/opt
}

FILES:${PN} += "${bindir}/edgeai-gui-app"

PR:append = "_edgeai_1"
