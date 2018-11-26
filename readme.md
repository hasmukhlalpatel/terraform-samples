# Install Terraform

## Set up Terraform access to Azure

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
