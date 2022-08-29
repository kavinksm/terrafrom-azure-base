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

variable "storage_account_name" {
  type        = string
  description = "Storage account name"
  default     = "kavinksmtitanstorage"
  validation {
    condition     = can(regex("^[0-9a-z]*$", var.storage_account_name))
    error_message = "Storage account name should be lower case and numbers"

  }
  validation {
    condition     = length(var.storage_account_name) > 3 && length(var.storage_account_name) < 25
    error_message = "Storage account name lenght should be 3- 24 char"
  }
}

variable "account_replication_type" {
  type        = string
  description = "Storage account type"
  default     = "LRS"
}

variable "account_tier" {
  type        = string
  description = "Storage account tier"
  default     = "Standard"
}

variable "resource_tag" {
  type        = string
  description = "Environment Tages for resources"
  default     = "demo"
}

variable "container_name" {
  type        = string
  description = "Storage account name"
  default     = "terraform"
}

variable "container_access_type" {
  type        = string
  description = "Container access type"
  default     = "blob"
}