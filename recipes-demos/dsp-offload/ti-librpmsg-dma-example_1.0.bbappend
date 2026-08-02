# Add TVM Inference Client example to ti-librpmsg-dma-example

# Add required dependencies for edge-ai application
DEPENDS:append = " ti-tidl-osrt json-c readline libsndfile1 alsa-lib pkgconfig-native"

# Use rpmsg-dma-pd repository with edge-ai example (batch processing support)
SRC_URI = "git://github.com/TexasInstruments/rpmsg-dma.git;protocol=https;branch=main"
SRCREV = "${AUTOREV}"

# Point CMake to TVM installation from ti-tidl-osrt package
EXTRA_OECMAKE:append = " -DTVM_ROOT=${RECIPE_SYSROOT}${includedir}/tvm/tvm"
EXTRA_OECMAKE:append = " -DTVM_RUNTIME_LIB=${RECIPE_SYSROOT}${libdir}/libtvm_runtime.so"

# Install TVM inference client binary, JSON configs, and input files
FILES:${PN}:append = " ${bindir}/rpmsg_inference_example"
FILES:${PN}:append = " ${datadir}/tvm_inference/json/"
FILES:${PN}:append = " ${datadir}/tvm_inference/input/"
