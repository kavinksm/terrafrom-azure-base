resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.resource_tag
  }
}

resource "azurerm_storage_container" "storagecontainer" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = var.container_access_type
}