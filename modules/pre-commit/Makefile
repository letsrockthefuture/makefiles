export SHELL := /bin/bash -o pipefail

.PHONY: pre-commit/update
pre-commit/update:
	@echo "Updating pre-commit hooks..."
	@bash -s .makefiles/bin/pre_commit.sh
	@cp .terraform-repository-template/.pre-commit-config.yaml .pre-commit-config.yaml

.PHONY: pre-commit/run
pre-commit/run:
	@pre-commit run --all-files
