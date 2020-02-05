terraform:
	UNAME := $(shell uname)

	ifeq ($(UNAME), Linux)
		@echo "downloading Terraform for Linux.." 
		https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
		@echo "unzipping Terraform.."
		unzip terraform_0.12.20_linux_amd64.zip
		@echo "moving Terraform to Downloads.."
		mv terraform Downloads/
		@echo "adding Terraform to PATH.."
		export PATH="$PATH:~/Downloads"
		source ~/.profile

	endif

	ifeq ($(UNAME), Darwin)
		@echo "downloading Terraform for Mac.."
		wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_darwin_amd64.zip
		@echo "unzipping Terraform.."
		unzip terraform_0.12.20_darwin_amd64.zip
		@echo "moving Terraform to Downloads.."
		mv terraform Downloads/
		@echo "adding Terraform to PATH.."
		export PATH="$PATH:~/Downloads"
		source ~/.profile

	endif

	cd aws
	terraform plan
	terraform validate
	terraform apply