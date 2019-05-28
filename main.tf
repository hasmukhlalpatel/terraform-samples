# https://www.youtube.com/watch?v=ITONB3yUZ9Y&index=9&list=PLD7svyKaquTlE9dErhMazFhWbSSCfMP_4
resource "azurerm_resource_group" "resource_gp" {
  name  =  "${var.prefix}-resources"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "main" {
  name                  =  "${var.prefix}-network"
  address_space         = ["10.0.0.0/16"]
  resource_group_name   = "${azurerm_resource_group.resource_gp.name}"
  location              = "${azurerm_resource_group.resource_gp.location}"
}

resource "azurerm_subnet" "internal" {
  name      ="internal"
  resource_group_name   = "${azurerm_resource_group.resource_gp.name}"
  virtual_network_name  = "${azurerm_virtual_network.main.name}",
  address_prefix        = "10.0.2.0/24"
}

resource "azurerm_network_interface" "main" {
  name              ="${var.prefix}-nic"
  resource_group_name   = "${azurerm_resource_group.resource_gp.name}"
  location              = "${azurerm_resource_group.resource_gp.location}"

  ip_configuration {
      name                          ="${var.prefix}-config1"
      subnet_id                     ="${azurerm_subnet.internal.id}"
      private_ip_address_allocation = "dynamic"
  }
}
