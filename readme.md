# Install Terraform

## Set up Terraform access to Azure

### Install and configure
Visit [MSDN](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure)
### Create a complete Linux virtual machine 
Visit [MSDN](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-create-complete-vm)

### Get Account list 
```
az account list
```
Or 
```
az account show --query "{subscriptionId:id, tenantId:tenantId}"
```
### Select subscription
```
az account set --subscription="${SUBSCRIPTION_ID}"
```
### create a service principal for use with Terraform
```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```

### Set variables
```
#!/bin/sh
echo "Setting environment variables for Terraform"
export ARM_SUBSCRIPTION_ID=your_subscription_id
export ARM_CLIENT_ID=your_appId
export ARM_CLIENT_SECRET=your_password
export ARM_TENANT_ID=your_tenant_id

# Not needed for public, required for usgovernment, german, china
export ARM_ENVIRONMENT=public
```

### Run Azure CLI in a [Docker container](https://docs.microsoft.com/en-gb/cli/azure/run-azure-cli-docker?view=azure-cli-latest)

### Quickstart for Bash in [Azure Cloud Shell](https://docs.microsoft.com/en-us/azure/cloud-shell/quickstart)

### Getting Started [Terraform](https://www.terraform.io/intro/getting-started/install.html)
