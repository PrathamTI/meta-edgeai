require recipes-core/images/tisdk-default-image.bb

SUMMARY = "Arago based TI SDK full filesystem image intended for ADAS"

DESCRIPTION = "Complete Arago TI SDK filesystem image containing Advanced Driver-Assistance Systems stack intended for TI Analytics processors."

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx"

ADAS_STACK = " \
        ti-vision-apps-dev \
        ti-tidl-dev \
        edgeai-tiovx-kernels-dev \
        edgeai-tiovx-kernels-source \
        edgeai-apps-utils-source \
        edgeai-test-data \
        edgeai-tidl-models \
        ti-adas-firmware \
        ti-tidl-osrt-staticdev \
"

ADAS_STACK:remove:am62axx = " \
        ti-adas-firmware \
"

IMAGE_INSTALL += " \
    ${ADAS_STACK} \
    resize-rootfs \
    packagegroup-arago-gst-sdk-target \
    packagegroup-edgeai-tisdk-addons \
"

export IMAGE_BASENAME = "tisdk-adas-image${ARAGO_IMAGE_SUFFIX}"

PR:append = "_edgeai_10"
