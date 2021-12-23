export MAKEFILES_PATH ?= $(shell 'pwd')
export SELF ?= $(MAKE)

export DEBUG ?=

# include $(MAKEFILES_PATH)/Makefile.*
include $(MAKEFILES_PATH)/.makefiles/modules/*/Makefile*
# include $(MAKEFILES_PATH)/.makefiles/templates/Makefile.makefiles
