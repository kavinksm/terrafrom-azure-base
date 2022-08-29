variable "resource_group_name" {
  type        = string
  description = "Name of the Resource group"
  default     = "titanrg"
}

variable "name" {
  type        = string
  description = "Name of the COntainer registry"
  default     = "titanregistrydemoapp"
}

variable "location" {
  type        = string
  description = "Location in which resources to be created"
  default     = "westeurope"
}

variable "acr_sku" {
  type        = string
  description = "Container registry SKU"
  default     = "Premium"
}

variable "admin_enabled" {
  type        = bool
  description = "Enable Admin user"
  default     = false
}
