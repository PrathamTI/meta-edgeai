SUMMARY = "EdgeAI GST plugins"
DESCRIPTION = "EdgeAI GST plugins implements custom elements to offload compute to HW accelerators and DSPs on TI devices"
HOMEPAGE = "https://github.com/TexasInstruments/edgeai-gst-plugins"

LICENSE = "TI-TFL"
LIC_FILES_CHKSUM = "file://LICENSE;md5=1f7721ee7d288457c5a70d0c8ff44b87"

PV = "1.0.0"
BRANCH = "main"
BRANCH:am62dxx = "horizon-dev"
SRC_URI = "git://github.com/TexasInstruments/edgeai-gst-plugins.git;branch=${BRANCH};protocol=https"
SRC_URI:am62dxx = "git://github.com/PrathamTI/edgeai-gst-plugins-pd.git;branch=${BRANCH};protocol=https"
SRCREV = "36251d8799f0ddf2fd2c35ad168faaea80ddcff1"
SRCREV:am62dxx = "${AUTOREV}"

PLAT_SOC = ""
PLAT_SOC:j721e = "j721e"
PLAT_SOC:j721s2 = "j721s2"
PLAT_SOC:j784s4 = "j784s4"
PLAT_SOC:j742s2 = "j742s2"
PLAT_SOC:j722s = "j722s"
PLAT_SOC:am62axx = "am62a"
PLAT_SOC:am62dxx = "am62d"

DEPENDS = "edgeai-tiovx-modules edgeai-apps-utils gstreamer1.0-plugins-base edgeai-dl-inferer ti-tidl-osrt"
DEPENDS:remove:adas = " edgeai-dl-inferer ti-tidl-osrt"
DEPENDS:am62dxx = "gstreamer1.0-plugins-base ti-tidl-osrt"

RDEPENDS:${PN}-source = "bash meson ninja"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j742s2|j722s|am62axx|am62dxx"

export SOC = "${PLAT_SOC}"

PACKAGES += "${PN}-source"
FILES:${PN}-source += "/opt/"
FILES:${PN} += "${libdir}/gstreamer-1.0/*.so"

EXTRA_OEMESON = "--prefix=/usr -Dpkg_config_path=${S}/pkgconfig"
EXTRA_OEMESON:append:adas = " -Ddl-plugins=disabled"
EXTRA_OEMESON:am62dxx = "--prefix=/usr -Dpkg_config_path=${S}/pkgconfig -Ddl-plugins=disabled -Denable-tidl=disabled -Dtvm-plugins=enabled -Denable-tvm=true"

inherit meson pkgconfig

do_configure:prepend:am62dxx() {
    # Fix pkg-config files for cross-compilation
    sed -i "s|^prefix=/usr|prefix=${STAGING_DIR_TARGET}/usr|g" ${S}/pkgconfig/*.pc

    # Fix TVM include paths to use sysroot-relative paths for cross-compilation
    sed -i "s|'-I/usr/include/tvm/tvm/include'|'-I${STAGING_INCDIR}/tvm/tvm/include'|g" ${S}/meson.build
    sed -i "s|'-I/usr/include/tvm/tvm/3rdparty/dmlc-core/include'|'-I${STAGING_INCDIR}/tvm/tvm/3rdparty/dmlc-core/include'|g" ${S}/meson.build
    sed -i "s|'-I/usr/include/tvm/tvm/3rdparty/dlpack/include'|'-I${STAGING_INCDIR}/tvm/tvm/3rdparty/dlpack/include'|g" ${S}/meson.build
}

do_install:append() {
    CP_ARGS="-Prf --preserve=mode,timestamps --no-preserve=ownership"

    mkdir -p ${D}/opt/edgeai-gst-plugins
    cp ${CP_ARGS} ${S}/* ${D}/opt/edgeai-gst-plugins
}

do_install:append:class-target() {
    CP_ARGS="-Prf --preserve=mode,timestamps --no-preserve=ownership"

    cp ${CP_ARGS} ${B}/tests ${D}/opt/edgeai-gst-plugins/build
}

do_install:append:am62dxx() {
    # Fix pkg-config paths in installed source files
    sed -i "s|${STAGING_DIR_TARGET}/usr|/usr|g" ${D}/opt/edgeai-gst-plugins/pkgconfig/*.pc

    # Fix TVM include paths in installed meson.build back to /usr paths
    sed -i "s|${STAGING_INCDIR}|/usr/include|g" ${D}/opt/edgeai-gst-plugins/meson.build
}

INSANE_SKIP:${PN}-source += "dev-deps"
INSANE_SKIP:${PN} += "rpaths"

PR:append = "_edgeai_0"
