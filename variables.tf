provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id= "${var.client_id}"
  client_secret = "${var.client_secret}",
  tenant_id = "${var.tenant_id}"
}

variable "subscription_id" {
  description = "subscription_id  for applcation created on Azure AD"
}
variable "client_id" { 
  description="client_id = appId  for applcation created on Azure AD"
}

variable "tenant_id" {
  description = "tenant_id=tenant for applcation created on Azure AD"
}

variable "client_secret" {
  description = "client_id=passwword  for applcation created on Azure AD"
}

variable "prefix" {
  default = "hp"
}

# https://azure.microsoft.com/en-us/global-infrastructure/locations/
variable "location" {
  default = "UK South"
}

