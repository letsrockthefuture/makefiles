export MAKEFILES_PATH ?= $(shell 'pwd')
export SELF ?= $(MAKE)

export DEBUG ?=

include $(MAKEFILES_PATH)/Makefile.*
include $(MAKEFILES_PATH)/modules/*/Makefile*
include $(MAKEFILES_PATH)/templates/Makefile.makefiles
