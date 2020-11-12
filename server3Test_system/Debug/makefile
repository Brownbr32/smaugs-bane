#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/Users/DSmac/workspace/server3_wrapper/export/server3_wrapper/server3_wrapper.xpfm
SYS_CONFIG = server3_wrapper
DOMAINS = domain_ps7_cortexa9_0
BIF_PATH = C:/Users/DSmac/workspace/server3Test_system/Debug/system.bif

BITSTREAM_PATH = C:/Users/DSmac/workspace/server3Test/_ide/bitstream/server3_wrapper.bit
SD_FILES = --elf C:/Users/DSmac/workspace/server3Test/Debug/server3Test.elf,ps7_cortexa9_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 56280 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


