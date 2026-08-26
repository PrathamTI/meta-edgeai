# Add TVM Inference Client example to ti-librpmsg-dma-example

# Add required dependencies for edge-ai application
DEPENDS:append = " ti-tidl-osrt json-c readline libsndfile1 alsa-lib pkgconfig-native"

# Point CMake to TVM installation from ti-tidl-osrt package
EXTRA_OECMAKE:append = " \
    -DTVM_ROOT=${RECIPE_SYSROOT}${includedir}/tvm/tvm \
    -DTVM_RUNTIME_LIB=${RECIPE_SYSROOT}${libdir}/libtvm_runtime.so \
"

# Install TVM inference client binary, JSON configs, and input files
FILES:${PN}:append = " \
    ${bindir}/rpmsg_inference_example \
    ${datadir}/tvm_inference/json/ \
    ${datadir}/tvm_inference/input/ \
    ${libdir}/libti_rpmsg_dma.so* \
    ${systemd_system_unitdir}/tvm-model-daemon.service \
    ${systemd_system_unitdir}/tvm-model-preload.service \
"
FILES:${PN}-dev:append = " ${includedir}/ti_rpmsg_dma/*.h"
