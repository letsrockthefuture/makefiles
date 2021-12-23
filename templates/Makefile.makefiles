export SHELL = /bin/bash
export GITHUB_REPOSITORY ?= "https://github.com/letsrockthefuture/makefiles.git"

define makefiles_install
curl --retry 5 --fail --silent --retry-delay 1 \
	https://raw.githubusercontent.com/letsrockthefuture/makefiles/main/bin/install.sh | \
	bash -s
endef

.PHONY: init
init::
	@$(makefiles_install)

-include .makefiles/Makefile