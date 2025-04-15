# Produces wic Image for Edge AI demos
SUMMARY = "Arago based TI SDK full filesystem image intended for EdgeAI"

DESCRIPTION = "Complete Arago TI SDK filesystem image containing entire \
 edgeAI stack intended for TI Analytics processors."

require recipes-core/images/tisdk-default-image.bb

PN:adas = "tisdk-adas-image"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx"

EDGEAI_STACK = " \
        ti-vision-apps-dev \
        ti-tidl-dev \
        edgeai-tiovx-kernels-dev \
        edgeai-tiovx-kernels-source \
        edgeai-apps-utils-source \
        edgeai-test-data \
        edgeai-tidl-models \
        edgeai-tiovx-apps-dev \
        edgeai-tiovx-apps-source \
"

EDGEAI_STACK:append:am62axx = " \
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

EDGEAI_STACK:append:edgeai = " \
        ti-edgeai-firmware \
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
        ti-edgeai-firmware \
        ti-tidl-osrt-staticdev \
        edgeai-gst-plugins \
"

IMAGE_INSTALL:append = " \
    ${EDGEAI_STACK} \
    resize-rootfs \
    packagegroup-arago-gst-sdk-target \
    packagegroup-edgeai-tisdk-addons \
"

WKS_FILE = "tisdk-edgeai-sdimage.wks"
WIC_CREATE_EXTRA_ARGS += " --no-fstab-update"

IMAGE_BASENAME = "tisdk-edgeai-image${ARAGO_IMAGE_SUFFIX}"
IMAGE_BASENAME:adas = "tisdk-adas-image${ARAGO_IMAGE_SUFFIX}"
export IMAGE_BASENAME

PR:append = "_edgeai_8"
