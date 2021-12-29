export SHELL := /bin/bash -o pipefail

.PHONY: terraform/init
terraform/init:
	@terraform init
	@terraform get

.PHONY: terraform/plan
terraform/plan:
	@terraform fmt -recursive -check -diff
	@terraform init
	@terraform get
	@terraform validate -no-color
	@terraform plan -no-color

.PHONY: terraform/apply
terraform/apply:
	@terraform init
	@terraform get
	@terraform apply -auto-approve

.PHONY: terraform/show
terraform/show:
	@terraform init
	@terraform get
	@terraform show

.PHONY: terraform/destroy
terraform/destroy:
	@terraform destroy -auto-approve

.PHONY: terraform/clean
terraform/clean:
	@rm -rf .terraform
	@rm -rf .*/*/.terraform
