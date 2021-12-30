export SHELL := /bin/bash -o pipefail

TERRAFORM_CHDIR ?= .

.PHONY: terraform/init
terraform/init:
	@terraform -chdir=$(TERRAFORM_CHDIR) init
	@terraform -chdir=$(TERRAFORM_CHDIR) get

.PHONY: terraform/plan
terraform/plan:
	@terraform -chdir=$(TERRAFORM_CHDIR) fmt -recursive -check -diff
	@terraform -chdir=$(TERRAFORM_CHDIR) init
	@terraform -chdir=$(TERRAFORM_CHDIR) get
	@terraform -chdir=$(TERRAFORM_CHDIR) validate -no-color
	@terraform -chdir=$(TERRAFORM_CHDIR) plan -no-color

.PHONY: terraform/apply
terraform/apply:
	@terraform -chdir=$(TERRAFORM_CHDIR) init
	@terraform -chdir=$(TERRAFORM_CHDIR) get
	@terraform -chdir=$(TERRAFORM_CHDIR) apply -auto-approve

.PHONY: terraform/show
terraform/show:
	@terraform -chdir=$(TERRAFORM_CHDIR) init
	@terraform -chdir=$(TERRAFORM_CHDIR) get
	@terraform -chdir=$(TERRAFORM_CHDIR) show

.PHONY: terraform/destroy
terraform/destroy:
	@terraform -chdir=$(TERRAFORM_CHDIR) destroy -auto-approve
