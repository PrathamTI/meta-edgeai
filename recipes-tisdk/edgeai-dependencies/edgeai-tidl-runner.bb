SUMMARY = "EdgeAI TIDL Python Dependencies and Artifacts"
DESCRIPTION = "Python dependencies and artifacts for EdgeAI TIDL Runner applications and installing TVM artifacts"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

S = "${UNPACKDIR}/src"
PR:append = "_edgeai_1"

SRC_URI = "http://swubn04.india.englab.ti.com/temp-62D/tvm_rc3/artifacts-gcrn.tar.gz;name=artifacts"

SRC_URI[artifacts.sha256sum] = "52f128c94c9620bff5fec738a8fa90f69deab6c122a00bab38745573e7f5592a"

DEPENDS += "unzip-native python3-setuptools-native"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx|am62dxx"

inherit python3-dir

FILES:${PN} += "${datadir}/tvm_inference/"

do_install() {
    # Install TVM artifacts
    install -d ${D}${datadir}/tvm_inference/artifacts
    cp -r ${UNPACKDIR}/artifacts_gcrn/. ${D}${datadir}/tvm_inference/artifacts/

    #During the packaging phase, the aarch64 cross-stripper tries
    #to process this x86_64 binary and throws a fatal architecture
    #mismatch error, halting the build.
    rm -f ${D}${datadir}/tvm_inference/artifacts/deploy_lib_hostemu.so

    #tempDir is not required for running the inferene which is extracted by
    #the TVM wheel. Unpacking this dir results in architecture mismatch
    rm -rf ${D}${datadir}/tvm_inference/artifacts/tempDir

}
