# Development environment setup and apply
dev:
	@rm -rf .terraform
	@terraform init -backend-config=env-dev/state.tfvars
	@terraform apply -auto-approve -var-file=env-dev/main.tfvars

# Development environment destroy
dev-destroy:
	@rm -rf .terraform
	@terraform init -backend-config=env-dev/state.tfvars
	@terraform destroy -auto-approve -var-file=env-dev/main.tfvars

# Production environment setup and apply
prod:
	@rm -rf .terraform
	@terraform init -backend-config=env-prod/state.tfvars
	@terraform apply -auto-approve -var-file=env-prod/main.tfvars
