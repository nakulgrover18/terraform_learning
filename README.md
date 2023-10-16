# Terraform Training

**Prerequisites :-**
1. AWS account and create IAM user and Access key and Secret Key
2. Terraform installed on your local machine (https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

**Terraform Commands**
Terraform is a tool for building, changing, and versioning infrastructure. There are four main commands used in Terraform:

1. `terraform init`: Initializes a working directory containing Terraform configuration files. This command downloads and installs the necessary plugins and modules required for the configuration.

2. `terraform plan`: Generates an execution plan for the current Terraform configuration, which shows what actions will be taken when terraform apply is executed. This command is useful for previewing the changes before they are actually applied.

3. `terraform apply`: Applies the changes to the infrastructure. This command creates, modifies, or deletes the resources as defined in the configuration.

4. `terraform destroy`: Destroys the infrastructure created by the configuration.

5. `terraform destroy -auto-approve` : Used to Destory the resources
