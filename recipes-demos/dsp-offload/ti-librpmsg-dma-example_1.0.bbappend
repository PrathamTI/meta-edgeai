# Add TVM Inference Client example to ti-librpmsg-dma-example

SRC_URI = "git://github.com/TexasInstruments/rpmsg-dma.git;protocol=https;branch=main"
SRCREV = "5cfde4df217f8b6b4ae4c9288e778ae198c0817c"

inherit cmake pkgconfig systemd

# Append the systemd directory flag to CMake options
EXTRA_OECMAKE:append = " -DSYSTEMD_SYSTEM_UNITDIR=${systemd_system_unitdir}"

# Add required dependencies for edge-ai application
DEPENDS:append = " ti-tidl-osrt json-c readline libsndfile1 alsa-lib pkgconfig-native"

# Point CMake to TVM installation from ti-tidl-osrt package
EXTRA_OECMAKE:append = " \
    -DTVM_ROOT=${RECIPE_SYSROOT}${includedir}/tvm/tvm \
    -DTVM_RUNTIME_LIB=${RECIPE_SYSROOT}${libdir}/libtvm_runtime.so \
"

SYSTEMD_PACKAGES = "${PN}"

SYSTEMD_SERVICE:${PN} = " \
    tvm-model-preload.service \
    demo-manager.service \
    tvm-model-daemon.service \
"

# Install TVM inference client binary, JSON configs, and input files
FILES:${PN}:append = " \
    ${bindir}/rpmsg_inference_example \
    ${datadir}/tvm_inference/json/ \
    ${datadir}/tvm_inference/input/ \
    ${libdir}/libti_rpmsg_dma.so* \
    ${systemd_system_unitdir}/tvm-model-daemon.service \
    ${systemd_system_unitdir}/demo-manager.service \
    ${systemd_system_unitdir}/tvm-model-preload.service \
"
FILES:${PN}-dev:append = " ${includedir}/ti_rpmsg_dma/*.h"
