SHELL := /bin/bash -o pipefail

export WORKSPACE ?= terraform/

.PHONY: terraform/lint
terraform/lint:
	@tflint --init ${WORKSPACE}
	@tflint -f compact ${WORKSPACE}

.PHONY: terraform/init
terraform/init:
	@terraform -chdir=${WORKSPACE} init
	@terraform -chdir=${WORKSPACE} get

.PHONY: terraform/plan
terraform/plan:
	@terraform -chdir=${WORKSPACE} fmt -recursive -check -diff
	@terraform -chdir=${WORKSPACE} init
	@terraform -chdir=${WORKSPACE} get
	@terraform -chdir=${WORKSPACE} validate -no-color
	@terraform -chdir=${WORKSPACE} plan -no-color

.PHONY: terraform/apply
terraform/apply:
	@terraform -chdir=${WORKSPACE} init
	@terraform -chdir=${WORKSPACE} get
	@terraform -chdir=${WORKSPACE} apply -auto-approve

.PHONY: terraform/clean
terraform/clean:
	@rm -rf ${WORKSPACE}.terraform
	@rm -rf ${WORKSPACE}.*/*/.terraform
	# @rm -rf ${WORKSPACE}.terraform.lock.hcl