variable "resource_group_name" {
  type        = string
  description = "Name of the Resource group"
  default     = "titanrg"
}

variable "location" {
  type        = string
  description = "Location in which resources to be created"
  default     = "westeurope"
}

variable "name" {
  type        = string
  description = "Name of the mysql db unique globally"
  default     = "titanmysql"
}

variable "sku" {
  type        = string
  description = "sku value for mysql"
  default     = "B_Gen5_2"
}

variable "admin_user" {
  type        = string
  description = "Admin username for mysql db"
  default     = "mysqladmin"
}

variable "admin_password" {
  type        = string
  description = "Admin password for mysql db"
  default     = "admin@123"
}

variable "db_memory" {
  type        = number
  description = "mysql db memory"
  default     = 5120
}

variable "mysql_version" {
  type        = string
  description = "mysql version"
  default     = "5.7"
}

variable "auto_grow_enabled" {
  type        = bool
  default     = true
  description = "mysql auto_grow status"
}

variable "geo_redundant_backup_enabled" {
  type        = bool
  default     = false
  description = "mysql geo_redundant backup status"
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  default     = false
  description = "mysql encryption status"
}

variable "public_network_access_enabled" {
  type        = bool
  default     = true
  description = "mysql public_network_access status"
}

variable "ssl_enforcement_enabled" {
  type        = bool
  default     = true
  description = "mysql ssl_enforcement status"
}

variable "backup_retention_days" {
  type        = number
  default     = 7
  description = "mysql backup retention"
}

variable "ssl_minimal_tls_version_enforced" {
  type        = string
  description = "mysql tls info"
  default     = "TLS1_2"
}
