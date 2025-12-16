# Simple Azure Resource Group for ServiceNow Integration Testing

This repository provides a minimal Terraform configuration that creates a single
Azure Resource Group. It is intended for quickly provisioning infrastructure
that can be referenced by ServiceNow integrations or related tests.

## Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) 1.5+
- Azure subscription credentials available to Terraform (via Azure CLI login,
  environment variables, or a service principal)

## Usage
1. Initialize the working directory (downloads the AzureRM provider):
   ```bash
   terraform init
   ```

2. Review the default values in `variables.tf` and supply required inputs. For a
   simple run you can set the required name with a CLI flag:
   ```bash
   terraform apply -var="resource_group_name=sn-test-rg"
   ```

   You can also provide a `terraform.tfvars` file with the variables:
   ```hcl
   resource_group_name = "sn-test-rg"
   location            = "eastus"
   tags = {
     environment = "test"
     owner       = "servicenow"
   }
   ```

3. Apply the configuration to create the Resource Group:
   ```bash
   terraform apply
   ```

4. When testing is complete, destroy the Resource Group:
   ```bash
   terraform destroy
   ```

## Notes
- The AzureRM provider configuration relies on your local authentication
  (Azure CLI login or environment variables) and does not hard-code
  subscription details.
- Outputs report the Resource Group name, ID, and location after creation.
