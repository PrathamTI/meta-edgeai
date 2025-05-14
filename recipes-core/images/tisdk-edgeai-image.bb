require recipes-core/images/tisdk-default-image.bb

# Produces wic Image for Edge AI demos
SUMMARY = "Arago based TI SDK full filesystem image intended for EdgeAI"

DESCRIPTION = "Complete Arago TI SDK filesystem image containing entire \
 edgeAI stack intended for TI Analytics processors."

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx"

EDGEAI_STACK = " \
        edgeai-apps-utils-source \
        edgeai-init \
        edgeai-dl-inferer-source \
        edgeai-dl-inferer-staticdev \
        edgeai-test-data \
        edgeai-tidl-models \
        edgeai-tiovx-kernels-dev \
        edgeai-tiovx-kernels-source \
        edgeai-tiovx-modules-dev \
        edgeai-tiovx-modules-source \
        edgeai-tiovx-apps-dev \
        edgeai-tiovx-apps-source \
        edgeai-gst-apps-dev \
        edgeai-gst-apps-source \
        edgeai-gst-plugins-dev \
        edgeai-gst-plugins-source \
        edgeai-studio-agent \
        ti-edgeai-firmware \
        ti-gpio-cpp-dev \
        ti-gpio-cpp-source \
        ti-gpio-py \
        ti-gpio-py-source \
        ti-tidl-dev \
        ti-tidl-osrt-dev \
        ti-tidl-osrt-staticdev \
        ti-vision-apps-dev \
"

EDGEAI_STACK:remove:am62axx = "ti-edgeai-firmware"

IMAGE_INSTALL += " \
    ${EDGEAI_STACK} \
    resize-rootfs \
    packagegroup-arago-gst-sdk-target \
    packagegroup-edgeai-tisdk-addons \
"

WKS_FILE = "tisdk-edgeai-sdimage.wks"
WIC_CREATE_EXTRA_ARGS += " --no-fstab-update"

export IMAGE_BASENAME = "tisdk-edgeai-image${ARAGO_IMAGE_SUFFIX}"

PR:append = "_edgeai_8"
