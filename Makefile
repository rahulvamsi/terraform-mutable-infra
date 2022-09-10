dev:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform apply -auto-approve -var env/dev.tfvars
prod:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod-backend.tfvars
	terraform apply -auto-approve -var env/prod.tfvars
dev-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform destroy -auto-approve -var env/dev.tfvars
prod-destroy:
	rm -rf .terraform
	terrafile
	terraform init -backend-config env/prod-backend.tfvars
	terraform destroy -auto-approve -var env/prod.tfvars
