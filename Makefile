export SHELL := /bin/bash -o pipefail

work_dir ?= $(shell "pwd")
debug ?=

include $(work_dir)/.makefiles/modules/*/Makefile*
