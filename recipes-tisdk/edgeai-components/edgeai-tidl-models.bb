SUMMARY = "EdgeAI TIDL Models"
LICENSE = "TI-TFL"
LIC_FILES_CHKSUM = "file://${COREBASE}/../meta-ti/meta-ti-bsp/licenses/TI-TFL;md5=a1b59cb7ba626b9dbbcbf00f3fbc438a"

export http_proxy
export https_proxy
export no_proxy

BRANCH = "main"
SRCREV = "87e8cc685d4d39f5afa9fc6f74f7616620c49c3a"

SOC = ""
SOC:j721e = "j721e"
SOC:j721s2 = "j721s2"
SOC:j784s4 = "j784s4"
SOC:j722s = "j722s"
SOC:j742s2 = "j784s4"
SOC:am62axx = "am62a"

COMPATIBLE_MACHINE = "j721e|j721s2|j784s4|j722s|j742s2|am62axx"

do_fetch() {
    mkdir -p ${WORKDIR}/script
    cd ${WORKDIR}/script

    VERSION="${SRCREV}"

    wget https://raw.githubusercontent.com/TexasInstruments/edgeai-gst-apps/${VERSION}/download_models.sh
    chmod +x ./download_models.sh

    export SOC="${SOC}"
    export EDGEAI_SDK_VERSION=10_01_00
    ./download_models.sh --recommended
}

do_install() {
    CP_ARGS="-Prf --preserve=mode,timestamps --no-preserve=ownership"

    mkdir -p ${D}/opt/model_zoo
    cp ${CP_ARGS} ${WORKDIR}/model_zoo ${D}/opt/
}

FILES:${PN} += "/opt/"
SSTATE_SKIP_CREATION = "1"

PR:append = "_edgeai_0"
