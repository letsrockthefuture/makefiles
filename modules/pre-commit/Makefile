export SHELL := /bin/bash -o pipefail

.PHONY: pre-commit/update
pre-commit/update:
	@cp --force .terraform-repository-template/.pre-commit-config.yaml .pre-commit-config.yaml

.PHONY: pre-commit/run
pre-commit/run:
	@pre-commit run --all-files
