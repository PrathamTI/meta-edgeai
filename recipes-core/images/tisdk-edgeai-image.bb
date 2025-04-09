# Produces wic Image for Edge AI demos

require recipes-core/images/tisdk-default-image.bb

PN:adas = "tisdk-adas-image"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx"

EDGEAI_STACK = " \
        ti-vision-apps-dev \
        ti-edgeai-firmware \
        ti-tidl-dev \
        edgeai-tiovx-kernels-dev \
        edgeai-tiovx-kernels-source \
        edgeai-apps-utils-source \
        edgeai-test-data \
        edgeai-tidl-models \
        edgeai-tiovx-apps-dev \
        edgeai-tiovx-apps-source \
"

EDGEAI_STACK:append:edgeai = " \
        ti-tidl-osrt-dev \
        ti-tidl-osrt-staticdev \
        edgeai-init \
        edgeai-tiovx-modules-dev \
        edgeai-tiovx-modules-source \
        edgeai-gst-plugins-dev \
        edgeai-dl-inferer-staticdev \
        edgeai-gst-apps-source \
        edgeai-gst-plugins-source \
        edgeai-gst-apps-dev \
        edgeai-dl-inferer-source \
        ti-gpio-cpp-dev \
        ti-gpio-py \
        ti-gpio-cpp-source \
        ti-gpio-py-source \
        edgeai-studio-agent \
"

EDGEAI_STACK:append:adas = " \
        ti-tidl-osrt-staticdev \
        edgeai-gst-plugins \
"

IMAGE_INSTALL:append = " \
    ${EDGEAI_STACK} \
    packagegroup-arago-gst-sdk-target \
    packagegroup-edgeai-tisdk-addons \
"

IMAGE_INSTALL:append = " \
    resize-rootfs \
"

WKS_FILE = "tisdk-edgeai-sdimage.wks"
WIC_CREATE_EXTRA_ARGS += " --no-fstab-update"

# Package both HS-FS and gp binaries for Adas images
IMAGE_BOOT_FILES:append:j784s4-evm:adas = " tiboot3-j784s4-gp-evm.bin tiboot3-j784s4-hs-fs-evm.bin"
IMAGE_BOOT_FILES:append:j721s2-evm:adas = " tiboot3-j721s2-gp-evm.bin tiboot3-j721s2-hs-fs-evm.bin"

IMAGE_BASENAME:edgeai = "tisdk-edgeai-image${ARAGO_IMAGE_SUFFIX}"
IMAGE_BASENAME:adas = "tisdk-adas-image${ARAGO_IMAGE_SUFFIX}"
export IMAGE_BASENAME

PR:append = "_edgeai_8"
