export OS ?= $(shell uname -s | tr '[:upper:]' '[:lower:]')
export MAKEFILES_PATH ?= $(shell 'pwd')
export MAKEFILES_OS ?= $(OS)
export MAKEFILE_ARCH ?= $(shell uname -m | sed 's/x86_64/amd64/g')
export SELF ?= $(MAKE)

export DEBUG ?=

include $(MAKEFILES_PATH)/modules/*/Makefile*
include $(MAKEFILES_PATH)/templates/Makefile
