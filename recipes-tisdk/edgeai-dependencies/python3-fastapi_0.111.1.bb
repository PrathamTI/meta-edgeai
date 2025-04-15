LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=95792ff3fe8e11aa49ceb247e66e4810"

SRC_URI[md5sum] = "a840a9bfe4e26e78a294f9a0d2036e86"
SRC_URI[sha256sum] = "ddd1ac34cb1f76c2e2d7f8545a4bcb5463bce4834e81abf0b189e0c359ab2413"

DEPENDS += "python3-pdm-native"
RDEPENDS:${PN} += "python3-pydantic (<2.0.0) python3-starlette"

PYPI_PACKAGE = "fastapi"
PV = "0.111.1"
inherit pypi python_setuptools_build_meta
