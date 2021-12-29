export SHELL := /bin/bash -o pipefail

CHDIR ?= terraform

.PHONY: terraform/init
terraform/init:
	@terraform -chdir=${CHDIR} init
	@terraform -chdir=${CHDIR} get

.PHONY: terraform/plan
terraform/plan:
	@terraform -chdir=${CHDIR} fmt -recursive -check -diff
	@terraform -chdir=${CHDIR} init
	@terraform -chdir=${CHDIR} get
	@terraform -chdir=${CHDIR} validate -no-color
	@terraform -chdir=${CHDIR} plan -no-color

.PHONY: terraform/apply
terraform/apply:
	@terraform -chdir=${CHDIR} init
	@terraform -chdir=${CHDIR} get
	@terraform -chdir=${CHDIR} apply -auto-approve

.PHONY: terraform/show
terraform/show:
	@terraform -chdir=${CHDIR} init
	@terraform -chdir=${CHDIR} get
	@terraform -chdir=${CHDIR} show

.PHONY: terraform/destroy
terraform/destroy:
	@terraform -chdir=${CHDIR} destroy -auto-approve

.PHONY: terraform/clean
terraform/clean:
	@rm -rf ${CHDIR}.terraform
	@rm -rf ${CHDIR}.*/*/.terraform
