SUMMARY = "Open Source DL/ML runtime Modules"
DESCRIPTION = "Open Source DL/ML runtime Modules like TF-LITE, ONNX and TVM Runtime. Supports both Python and CPP APIs"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

S = "${UNPACKDIR}/src"
PR:append = "_edgeai_5"

SRC_URI = "https://software-dl.ti.com/jacinto7/esd/tidl-tools/11_02_16_00/OSRT_TOOLS/ARM_LINUX/ARAGO/tflite_runtime-2.12.0-cp312-cp312-linux_aarch64.whl;name=tflite;subdir=${S}/tflite\
           https://software-dl.ti.com/jacinto7/esd/tidl-tools/11_02_16_00/OSRT_TOOLS/ARM_LINUX/ARAGO/onnxruntime_tidl-1.23.0-cp312-cp312-linux_aarch64.whl;name=ort;subdir=${S}/ort\
           https://software-dl.ti.com/jacinto7/esd/tidl-tools/11_02_16_00/OSRT_TOOLS/ARM_LINUX/ARAGO/tflite_2.12_aragoj7.tar.gz;name=tfl_lib;subdir=${S}/tfl_lib\
           https://software-dl.ti.com/jacinto7/esd/tidl-tools/11_02_16_00/OSRT_TOOLS/ARM_LINUX/ARAGO/onnx_1.23.0_aragoj7.tar.gz;name=ort_lib;subdir=${S}/ort_lib\
           http://swubn04.india.englab.ti.com/temp-62D/tvm_rc3/tvm-0.18.0-0git6acc98882-cp314-cp314-linux_aarch64.whl;name=tvm;subdir=${S}/tvm\
           https://software-dl.ti.com/jacinto7/esd/tidl-tools/11_02_16_00/OSRT_TOOLS/ARM_LINUX/ARAGO/tidlruntime-0.1.0-cp312-cp312-linux_aarch64.whl;name=tidlrt;subdir=${S}/tidlrt\
           "

SRC_URI[tflite.sha256sum] = "1d0d2713956476b20eb765eeb71ad507d69c391e73a05b356dd5990e2b36ad3f"
SRC_URI[ort.sha256sum] = "5b5b0ef852cf059bb3ee03996bc782900155f5b19eda63e1fce84fa13ac1648a"
SRC_URI[tfl_lib.sha256sum] = "81b5c8d85725dace8baa0e9dbdceb1f79916d427797299566fb0b74ed8293a80"
SRC_URI[ort_lib.sha256sum] = "27a1a39fb44b22a149f1fc13619f33d07cab7c6c07012789ede3f935c971e7f3"
SRC_URI[tvm.sha256sum] = "8f8b07651d8ba9499e3ce246e9af525e69372272fc9e417934a5348289a14fc6"
SRC_URI[tidlrt.sha256sum] = "384d825a362db72411c10eccacfbbef5d4b487c159982a17e2788bb724c5a51e"

do_cp_downloaded_build_deps() {
    mv ${S}/tfl_lib/*/* ${S}/tfl_lib
    mv ${S}/ort_lib/*/* ${S}/ort_lib
}
addtask cp_downloaded_build_deps after do_unpack before do_patch

DEPENDS += "unzip-native cnpy yaml-cpp"

RDEPENDS:${PN} += " \
     python3-mldtypes \
     python3-decorator \
     python3-graphviz \
     python3-attrs \
     python3-psutil \
     python3-typing-extensions \
"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx|am62dxx"

inherit python3-dir

FILES:${PN}-staticdev += "${libdir}/tflite_2.12/"
FILES:${PN}-staticdev += "${libdir}/*.a"
FILES:${PN}-staticdev += "${PYTHON_SITEPACKAGES_DIR}/tidlruntime/lib/*.a"
FILES:${PN} += "${libdir}/*.so*"
FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}/*"
FILES:${PN} += "${includedir}"
INSANE_SKIP:${PN} += "already-stripped"

do_install() {
    install -d ${D}${PYTHON_SITEPACKAGES_DIR}

    unzip -d ${D}${PYTHON_SITEPACKAGES_DIR} ${S}/tflite/tflite_runtime-2.12.0-cp312-cp312-linux_aarch64.whl
    unzip -d ${D}${PYTHON_SITEPACKAGES_DIR} ${S}/ort/onnxruntime_tidl-1.23.0-cp312-cp312-linux_aarch64.whl
    unzip -d ${D}${PYTHON_SITEPACKAGES_DIR} ${S}/tidlrt/tidlruntime-0.1.0-cp312-cp312-linux_aarch64.whl
    unzip -d ${D}${PYTHON_SITEPACKAGES_DIR} ${S}/tvm/tvm-0.18.0-0git6acc98882-cp314-cp314-linux_aarch64.whl

    install -d ${D}${includedir}
    install -d ${D}${libdir}

    cp -r ${S}/tfl_lib/tensorflow  ${D}${includedir}/
    cp -r ${S}/tfl_lib/tflite_2.12  ${D}${libdir}/
    cp ${S}/tfl_lib/libtensorflow-lite.a ${D}${libdir}/

    cp   ${S}/ort_lib/libonnxruntime.so.1.23.0  ${D}${libdir}/
    ln -s -r ${D}${libdir}/libonnxruntime.so.1.23.0 ${D}${libdir}/libonnxruntime.so.1
    ln -s -r ${D}${libdir}/libonnxruntime.so.1 ${D}${libdir}/libonnxruntime.so
    rm -rf  ${S}/ort_lib/onnxruntime/csharp
    cp -r  ${S}/ort_lib/onnxruntime ${D}${includedir}/

    ln -s -r ${D}${PYTHON_SITEPACKAGES_DIR}/tidlruntime/include ${D}${includedir}/tidlruntime
    ln -s -r ${D}${PYTHON_SITEPACKAGES_DIR}/tidlruntime/lib/libtidlruntime.a ${D}${libdir}/libtidlruntime.a

    install -d ${D}${includedir}/tvm/tvm
    ln -s -r ${D}${PYTHON_SITEPACKAGES_DIR}/tvm/libtvm.so ${D}${libdir}/libtvm.so
    ln -s -r ${D}${PYTHON_SITEPACKAGES_DIR}/tvm/libtvm_runtime.so ${D}${libdir}/libtvm_runtime.so
    cd ${D}${PYTHON_SITEPACKAGES_DIR}/tvm/
    cp --parents $(find . -name "*.h*") ${D}${includedir}/tvm/tvm
    cd -
}

