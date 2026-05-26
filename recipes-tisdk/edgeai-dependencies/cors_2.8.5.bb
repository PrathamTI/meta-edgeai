SUMMARY = "Node.js CORS middleware"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=947eb5e695dade432a500b12c510de85 \
                    file://node_modules/object-assign/license;md5=a12ebca0510a773644101a99a867d210 \
                    file://node_modules/vary/LICENSE;md5=13babc4f212ce635d68da544339c962b"

SRC_URI = " \
    npm://registry.npmjs.org/;package=cors;version=${PV} \
    npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \
    "

S = "${UNPACKDIR}/npm"

inherit npm

LICENSE:${PN} = "MIT"
LICENSE:${PN}-object-assign = "MIT"
LICENSE:${PN}-vary = "MIT"
