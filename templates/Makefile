export SHELL = /bin/bash
export PWD = $(shell pwd)
export MAKEFILES_ORGANIZATION ?= letsrockthefuture
export MAKEFILES_PROJECT ?= makefiles
export MAKEFILES_BRANCH ?= main

define install
curl --retry 5 --fail --silent --retry-delay 1 \
	https://raw.githubusercontent.com/$(MAKEFILES_ORGANIZATION)/$(MAKEFILES_PROJECT)/$(MAKEFILES_BRANCH)/bin/install.sh | \
	bash -s "$(MAKEFILES_ORGANIZATION)" "$(MAKEFILES_PROJECT)" "$(MAKEFILES_BRANCH)"
endef

.PHONY: init
init::
	@$(install)

-include .makefiles/Makefile