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

variable "vnet_address" {
  type        = list(string)
  description = "VNET CIRD"
  default     = ["10.0.0.0/16"]
}

variable "app_gateway_subnet" {
  type        = list(string)
  description = "App Gateway Subnet CIDR"
  default     = ["10.0.1.0/24"]
}

variable "lb_subnet" {
  type        = list(string)
  description = "LB Subnet CIDR"
  default     = ["10.0.2.0/24"]
}

variable "aks_subnet" {
  type        = list(string)
  description = "AKS Subnet CIDR"
  default     = ["10.0.3.0/24"]
}

variable "db_subnet" {
  type        = list(string)
  description = "DB Subnet CIDR"
  default     = ["10.0.4.0/24"]
}

variable "resource_tag" {
  type        = string
  description = "Environment Tages for resources"
  default     = "demo"
}