SUMMARY = "The ml_dtypes is a stand-alone implementation of several NumPy dtype extensions used in machine learning libraries"
HOMEPAGE = "https://github.com/jax-ml/ml_dtypes"
SECTION = "devel/python"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"

PV = "0.5.4"
SRC_URI[md5sum] = "bfecfff98424dc51007956eb14ce500d"
SRC_URI[sha256sum] = "8ab06a50fb9bf9666dd0fe5dfb4676fa2b0ac0f31ecff72a6c3af8e22c063453"

inherit pypi setuptools3

SRCNAME ?= "ml_dtypes"
PYPI_SRC_URI = "https://files.pythonhosted.org/packages/source/m/ml_dtypes/${SRCNAME}-${PV}.tar.gz"

S = "${UNPACKDIR}/${SRCNAME}-${PV}"

DEPENDS = " \
    python3-pybind11-native \
    python3-numpy-native \
"

RDEPENDS:${PN} = " \
    python3-pybind11 \
    python3-numpy \
"

BBCLASSEXTEND = "native"
