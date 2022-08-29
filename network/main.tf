resource "azurerm_virtual_network" "vnet" {
  name                = "titanvnet"
  address_space       = var.vnet_address
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_subnet" "app_gateway" {
  name                 = "app_gateway"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.app_gateway_subnet
}

resource "azurerm_subnet" "lb" {
  name                 = "internal_lb"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.lb_subnet
}

resource "azurerm_subnet" "aks" {
  name                 = "aks"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.aks_subnet
}

resource "azurerm_subnet" "db" {
  name                 = "database"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.db_subnet
}
