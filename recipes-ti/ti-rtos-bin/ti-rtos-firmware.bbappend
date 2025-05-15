IPC_FW_LIST:j721e =   "              ${MCU_2_0_FW} ${MCU_2_1_FW} ${C66_1_FW} ${C66_2_FW} ${C7X_1_FW}"
IPC_FW_LIST:j721s2 =  "              ${MCU_2_0_FW} ${MCU_2_1_FW} ${C7X_1_FW} ${C7X_2_FW}"
IPC_FW_LIST:j784s4 =  "              ${MCU_2_0_FW} ${MCU_2_1_FW} ${MCU_3_0_FW} ${MCU_3_1_FW} ${MCU_4_0_FW} ${MCU_4_1_FW} ${C7X_1_FW} ${C7X_2_FW} ${C7X_3_FW} ${C7X_4_FW}"
IPC_FW_LIST:j722s =   "              ${MCU_2_0_FW} ${C7X_1_FW} ${C7X_2_FW}"
IPC_FW_LIST:j742s2 =  "              ${MCU_2_0_FW} ${MCU_2_1_FW} ${MCU_3_0_FW} ${MCU_3_1_FW} ${MCU_4_0_FW} ${MCU_4_1_FW} ${C7X_1_FW} ${C7X_2_FW} ${C7X_3_FW}"

# Set up names for the firmwares
ALTERNATIVE:${PN}:j721e = "\
                    j7-main-r5f0_0-fw   j7-main-r5f0_0-fw-sec \
                    j7-main-r5f0_1-fw   j7-main-r5f0_1-fw-sec \
                    j7-c66_0-fw         j7-c66_0-fw-sec \
                    j7-c66_1-fw         j7-c66_1-fw-sec \
                    j7-c71_0-fw         j7-c71_0-fw-sec \
                    "

ALTERNATIVE:${PN}:j721s2 = "\
                    j721s2-main-r5f0_0-fw   j721s2-main-r5f0_0-fw-sec \
                    j721s2-main-r5f0_1-fw   j721s2-main-r5f0_1-fw-sec \
                    j721s2-c71_0-fw         j721s2-c71_0-fw-sec \
                    j721s2-c71_1-fw         j721s2-c71_1-fw-sec \
                    "

ALTERNATIVE:${PN}:j784s4 = "\
                    j784s4-main-r5f0_0-fw   j784s4-main-r5f0_0-fw-sec \
                    j784s4-main-r5f0_1-fw   j784s4-main-r5f0_1-fw-sec \
                    j784s4-main-r5f1_0-fw   j784s4-main-r5f1_0-fw-sec \
                    j784s4-main-r5f1_1-fw   j784s4-main-r5f1_1-fw-sec \
                    j784s4-main-r5f2_0-fw   j784s4-main-r5f2_0-fw-sec \
                    j784s4-main-r5f2_1-fw   j784s4-main-r5f2_1-fw-sec \
                    j784s4-c71_0-fw         j784s4-c71_0-fw-sec \
                    j784s4-c71_1-fw         j784s4-c71_1-fw-sec \
                    j784s4-c71_2-fw         j784s4-c71_2-fw-sec \
                    j784s4-c71_3-fw         j784s4-c71_3-fw-sec \
                    "

ALTERNATIVE:${PN}:j722s = "\
                    j722s-main-r5f0_0-fw  j722s-main-r5f0_0-fw-sec \
                    j722s-c71_0-fw        j722s-c71_0-fw-sec \
                    j722s-c71_1-fw        j722s-c71_1-fw-sec \
                    "

ALTERNATIVE:${PN}:j742s2 = "\
                    j742s2-main-r5f0_0-fw   j742s2-main-r5f0_0-fw-sec \
                    j742s2-main-r5f0_1-fw   j742s2-main-r5f0_1-fw-sec \
                    j742s2-main-r5f1_0-fw   j742s2-main-r5f1_0-fw-sec \
                    j742s2-main-r5f1_1-fw   j742s2-main-r5f1_1-fw-sec \
                    j742s2-main-r5f2_0-fw   j742s2-main-r5f2_0-fw-sec \
                    j742s2-main-r5f2_1-fw   j742s2-main-r5f2_1-fw-sec \
                    j742s2-c71_0-fw         j742s2-c71_0-fw-sec \
                    j742s2-c71_1-fw         j742s2-c71_1-fw-sec \
                    j742s2-c71_2-fw         j742s2-c71_2-fw-sec \
                    "

# Set up link names for the firmwares

ALTERNATIVE_LINK_NAME[j7-main-r5f0_0-fw]     = "${nonarch_base_libdir}/firmware/j7-main-r5f0_0-fw"
ALTERNATIVE_LINK_NAME[j7-main-r5f0_0-fw-sec] = "${nonarch_base_libdir}/firmware/j7-main-r5f0_0-fw-sec"
ALTERNATIVE_LINK_NAME[j7-main-r5f0_1-fw]     = "${nonarch_base_libdir}/firmware/j7-main-r5f0_1-fw"
ALTERNATIVE_LINK_NAME[j7-main-r5f0_1-fw-sec] = "${nonarch_base_libdir}/firmware/j7-main-r5f0_1-fw-sec"
ALTERNATIVE_LINK_NAME[j7-c66_0-fw]     = "${nonarch_base_libdir}/firmware/j7-c66_0-fw"
ALTERNATIVE_LINK_NAME[j7-c66_0-fw-sec] = "${nonarch_base_libdir}/firmware/j7-c66_0-fw-sec"
ALTERNATIVE_LINK_NAME[j7-c66_1-fw]     = "${nonarch_base_libdir}/firmware/j7-c66_1-fw"
ALTERNATIVE_LINK_NAME[j7-c66_1-fw-sec] = "${nonarch_base_libdir}/firmware/j7-c66_1-fw-sec"
ALTERNATIVE_LINK_NAME[j7-c71_0-fw]     = "${nonarch_base_libdir}/firmware/j7-c71_0-fw"
ALTERNATIVE_LINK_NAME[j7-c71_0-fw-sec] = "${nonarch_base_libdir}/firmware/j7-c71_0-fw-sec"

ALTERNATIVE_LINK_NAME[j721s2-main-r5f0_0-fw]     = "${nonarch_base_libdir}/firmware/j721s2-main-r5f0_0-fw"
ALTERNATIVE_LINK_NAME[j721s2-main-r5f0_0-fw-sec] = "${nonarch_base_libdir}/firmware/j721s2-main-r5f0_0-fw-sec"
ALTERNATIVE_LINK_NAME[j721s2-main-r5f0_1-fw]     = "${nonarch_base_libdir}/firmware/j721s2-main-r5f0_1-fw"
ALTERNATIVE_LINK_NAME[j721s2-main-r5f0_1-fw-sec] = "${nonarch_base_libdir}/firmware/j721s2-main-r5f0_1-fw-sec"
ALTERNATIVE_LINK_NAME[j721s2-c71_0-fw]     = "${nonarch_base_libdir}/firmware/j721s2-c71_0-fw"
ALTERNATIVE_LINK_NAME[j721s2-c71_0-fw-sec] = "${nonarch_base_libdir}/firmware/j721s2-c71_0-fw-sec"
ALTERNATIVE_LINK_NAME[j721s2-c71_1-fw]     = "${nonarch_base_libdir}/firmware/j721s2-c71_1-fw"
ALTERNATIVE_LINK_NAME[j721s2-c71_1-fw-sec] = "${nonarch_base_libdir}/firmware/j721s2-c71_1-fw-sec"

ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_0-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f0_0-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_0-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f0_0-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_1-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f0_1-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_1-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f0_1-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_0-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f1_0-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_0-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f1_0-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_1-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f1_1-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_1-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f1_1-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_0-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f2_0-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_0-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f2_0-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_1-fw]     = "${nonarch_base_libdir}/firmware/j784s4-main-r5f2_1-fw"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_1-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-main-r5f2_1-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-c71_0-fw]     = "${nonarch_base_libdir}/firmware/j784s4-c71_0-fw"
ALTERNATIVE_LINK_NAME[j784s4-c71_0-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-c71_0-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-c71_1-fw]     = "${nonarch_base_libdir}/firmware/j784s4-c71_1-fw"
ALTERNATIVE_LINK_NAME[j784s4-c71_1-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-c71_1-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-c71_2-fw]     = "${nonarch_base_libdir}/firmware/j784s4-c71_2-fw"
ALTERNATIVE_LINK_NAME[j784s4-c71_2-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-c71_2-fw-sec"
ALTERNATIVE_LINK_NAME[j784s4-c71_3-fw]     = "${nonarch_base_libdir}/firmware/j784s4-c71_3-fw"
ALTERNATIVE_LINK_NAME[j784s4-c71_3-fw-sec] = "${nonarch_base_libdir}/firmware/j784s4-c71_3-fw-sec"

ALTERNATIVE_LINK_NAME[j722s-main-r5f0_0-fw]     = "${nonarch_base_libdir}/firmware/j722s-main-r5f0_0-fw"
ALTERNATIVE_LINK_NAME[j722s-main-r5f0_0-fw-sec] = "${nonarch_base_libdir}/firmware/j722s-main-r5f0_0-fw-sec"
ALTERNATIVE_LINK_NAME[j722s-c71_0-fw]     = "${nonarch_base_libdir}/firmware/j722s-c71_0-fw"
ALTERNATIVE_LINK_NAME[j722s-c71_0-fw-sec] = "${nonarch_base_libdir}/firmware/j722s-c71_0-fw-sec"
ALTERNATIVE_LINK_NAME[j722s-c71_1-fw]     = "${nonarch_base_libdir}/firmware/j722s-c71_1-fw"
ALTERNATIVE_LINK_NAME[j722s-c71_1-fw-sec] = "${nonarch_base_libdir}/firmware/j722s-c71_1-fw-sec"

ALTERNATIVE_LINK_NAME[j742s2-main-r5f0_0-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f0_0-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f0_0-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f0_0-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f0_1-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f0_1-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f0_1-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f0_1-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f1_0-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f1_0-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f1_0-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f1_0-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f1_1-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f1_1-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f1_1-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f1_1-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f2_0-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f2_0-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f2_0-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f2_0-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f2_1-fw]     = "${nonarch_base_libdir}/firmware/j742s2-main-r5f2_1-fw"
ALTERNATIVE_LINK_NAME[j742s2-main-r5f2_1-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-main-r5f2_1-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-c71_0-fw]     = "${nonarch_base_libdir}/firmware/j742s2-c71_0-fw"
ALTERNATIVE_LINK_NAME[j742s2-c71_0-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-c71_0-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-c71_1-fw]     = "${nonarch_base_libdir}/firmware/j742s2-c71_1-fw"
ALTERNATIVE_LINK_NAME[j742s2-c71_1-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-c71_1-fw-sec"
ALTERNATIVE_LINK_NAME[j742s2-c71_2-fw]     = "${nonarch_base_libdir}/firmware/j742s2-c71_2-fw"
ALTERNATIVE_LINK_NAME[j742s2-c71_2-fw-sec] = "${nonarch_base_libdir}/firmware/j742s2-c71_2-fw-sec"

# Create the firmware alternatives

ALTERNATIVE_TARGET[j7-main-r5f0_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}"
ALTERNATIVE_TARGET[j7-main-r5f0_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}.signed"
ALTERNATIVE_TARGET[j7-main-r5f0_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}"
ALTERNATIVE_TARGET[j7-main-r5f0_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}.signed"
ALTERNATIVE_TARGET[j7-c66_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C66_1_FW}"
ALTERNATIVE_TARGET[j7-c66_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C66_1_FW}.signed"
ALTERNATIVE_TARGET[j7-c66_1-fw]     = "${INSTALL_IPC_FW_DIR}/${C66_2_FW}"
ALTERNATIVE_TARGET[j7-c66_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C66_2_FW}.signed"
ALTERNATIVE_TARGET[j7-c71_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}"
ALTERNATIVE_TARGET[j7-c71_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}.signed"

ALTERNATIVE_TARGET[j721s2-main-r5f0_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}"
ALTERNATIVE_TARGET[j721s2-main-r5f0_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}.signed"
ALTERNATIVE_TARGET[j721s2-main-r5f0_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}"
ALTERNATIVE_TARGET[j721s2-main-r5f0_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}.signed"
ALTERNATIVE_TARGET[j721s2-c71_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}"
ALTERNATIVE_TARGET[j721s2-c71_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}.signed"
ALTERNATIVE_TARGET[j721s2-c71_1-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}"
ALTERNATIVE_TARGET[j721s2-c71_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}.signed"

ALTERNATIVE_TARGET[j784s4-main-r5f0_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f0_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}.signed"
ALTERNATIVE_TARGET[j784s4-main-r5f0_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f0_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}.signed"
ALTERNATIVE_TARGET[j784s4-main-r5f1_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_3_0_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f1_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_3_0_FW}.signed"
ALTERNATIVE_TARGET[j784s4-main-r5f1_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_3_1_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f1_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_3_1_FW}.signed"
ALTERNATIVE_TARGET[j784s4-main-r5f2_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_4_0_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f2_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_4_0_FW}.signed"
ALTERNATIVE_TARGET[j784s4-main-r5f2_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_4_1_FW}"
ALTERNATIVE_TARGET[j784s4-main-r5f2_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_4_1_FW}.signed"
ALTERNATIVE_TARGET[j784s4-c71_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}"
ALTERNATIVE_TARGET[j784s4-c71_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}.signed"
ALTERNATIVE_TARGET[j784s4-c71_1-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}"
ALTERNATIVE_TARGET[j784s4-c71_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}.signed"
ALTERNATIVE_TARGET[j784s4-c71_2-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_3_FW}"
ALTERNATIVE_TARGET[j784s4-c71_2-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_3_FW}.signed"
ALTERNATIVE_TARGET[j784s4-c71_3-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_4_FW}"
ALTERNATIVE_TARGET[j784s4-c71_3-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_4_FW}.signed"

ALTERNATIVE_TARGET[j722s-main-r5f0_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}"
ALTERNATIVE_TARGET[j722s-main-r5f0_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}.signed"
ALTERNATIVE_TARGET[j722s-c71_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}"
ALTERNATIVE_TARGET[j722s-c71_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}.signed"
ALTERNATIVE_TARGET[j722s-c71_1-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}"
ALTERNATIVE_TARGET[j722s-c71_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}.signed"

ALTERNATIVE_TARGET[j742s2-main-r5f0_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f0_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_0_FW}.signed"
ALTERNATIVE_TARGET[j742s2-main-r5f0_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f0_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_2_1_FW}.signed"
ALTERNATIVE_TARGET[j742s2-main-r5f1_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_3_0_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f1_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_3_0_FW}.signed"
ALTERNATIVE_TARGET[j742s2-main-r5f1_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_3_1_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f1_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_3_1_FW}.signed"
ALTERNATIVE_TARGET[j742s2-main-r5f2_0-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_4_0_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f2_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_4_0_FW}.signed"
ALTERNATIVE_TARGET[j742s2-main-r5f2_1-fw]     = "${INSTALL_IPC_FW_DIR}/${MCU_4_1_FW}"
ALTERNATIVE_TARGET[j742s2-main-r5f2_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${MCU_4_1_FW}.signed"
ALTERNATIVE_TARGET[j742s2-c71_0-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}"
ALTERNATIVE_TARGET[j742s2-c71_0-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_1_FW}.signed"
ALTERNATIVE_TARGET[j742s2-c71_1-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}"
ALTERNATIVE_TARGET[j742s2-c71_1-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_2_FW}.signed"
ALTERNATIVE_TARGET[j742s2-c71_2-fw]     = "${INSTALL_IPC_FW_DIR}/${C7X_3_FW}"
ALTERNATIVE_TARGET[j742s2-c71_2-fw-sec] = "${INSTALL_IPC_FW_DIR}/${C7X_3_FW}.signed"

ALTERNATIVE_PRIORITY = "10"

PR:append = "_edgeai_0"
