SUMMARY = "NPZ/NPY file reader"
DESCRIPTION = "CNPY is opensource library for reading .npz and .npy files in C++"
HOMEPAGE = "https://github.com/rogersce/cnpy/"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=689f10b06d1ca2d4b1057e67b16cd580"

PV = "1.0.0"
BRANCH = "master"
SRC_URI = "git://github.com/rogersce/cnpy.git;branch=${BRANCH};protocol=https"
SRCREV = "4e8810b1a8637695171ed346ce68f6984e585ef4"

DEPENDS += "zlib"

EXTRA_OECMAKE = "-DCMAKE_SKIP_RPATH=TRUE -DCMAKE_POLICY_VERSION_MINIMUM=3.5"

FILES:${PN} += "${libdir}/*"
FILES:${PN}-dev += "${includedir}/* ${libdir}/*"

do_install:append() {
   mv ${D}${libdir}/libcnpy.so ${D}${libdir}/libcnpy.so.1.0
   ln -s -r ${D}${libdir}/libcnpy.so.1.0 ${D}${libdir}/libcnpy.so
}

inherit cmake