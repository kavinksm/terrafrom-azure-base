resource "azurerm_mysql_server" "titanmysql" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.admin_user
  administrator_login_password = var.admin_password

  sku_name   = var.sku
  storage_mb = var.db_memory
  version    = var.mysql_version

  auto_grow_enabled                 = var.auto_grow_enabled
  backup_retention_days             = var.backup_retention_days
  geo_redundant_backup_enabled      = var.geo_redundant_backup_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  public_network_access_enabled     = var.public_network_access_enabled
  ssl_enforcement_enabled           = var.ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls_version_enforced
}