export SHELL := /bin/bash -o pipefail

chdir ?= terraform

.PHONY: terraform/init
terraform/init:
	@terraform -chdir=${chdir} init
	@terraform -chdir=${chdir} get

.PHONY: terraform/plan
terraform/plan:
	@terraform -chdir=${chdir} fmt -recursive -check -diff
	@terraform -chdir=${chdir} init
	@terraform -chdir=${chdir} get
	@terraform -chdir=${chdir} validate -no-color
	@terraform -chdir=${chdir} plan -no-color

.PHONY: terraform/apply
terraform/apply:
	@terraform -chdir=${chdir} init
	@terraform -chdir=${chdir} get
	@terraform -chdir=${chdir} apply -auto-approve

.PHONY: terraform/destroy
terraform/destroy:
	@terraform -chdir=${chdir} destroy -auto-approve

.PHONY: terraform/clean
terraform/clean:
	@rm -rf ${chdir}.terraform
	@rm -rf ${chdir}.*/*/.terraform
