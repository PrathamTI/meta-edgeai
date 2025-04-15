DESCRIPTION = "EdgeAI GUI Application"
HOMEPAGE = "https://git.ti.com/cgit/apps/edgeai-gui-app"
SECTION = "graphics"

LICENSE = "TI-TSPA"

LIC_FILES_CHKSUM = "file://LICENSE;md5=5c3a7f5f6886ba6f33ec3d214dc7ab4c"

DEPENDS = "qtbase qtquick3d qtmultimedia qtdeclarative-native"
RDEPENDS:${PN} = "qtbase qtquick3d qtmultimedia"

BRANCH = "master"
SRCREV = "12cf3c4a9ae37313ab9062aefecfb2e72e92a60d"

PV = "1.0.0"
SRC_URI = "git://git.ti.com/git/apps/edgeai-gui-app.git;protocol=https;branch=${BRANCH}"

S = "${WORKDIR}/git"

inherit qt6-qmake

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 edgeai-gui-app ${D}${bindir}/edgeai-gui-app

    rm -rf ${D}/opt
}

FILES:${PN} += "${bindir}/edgeai-gui-app"

PR:append = "_edgeai_1"
