data "azurerm_subnet" "nodesubnet" {
  name                 = var.node_subnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.node_vnet
}