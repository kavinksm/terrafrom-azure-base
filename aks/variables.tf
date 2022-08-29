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

variable "aks_cluster_name" {
  type        = string
  description = "AKS clsuter name"
  default     = "titanaks"
}

variable "aks_dns_prefix" {
  type        = string
  description = "AKS DNS Prefix name"
  default     = "titanaks"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.22"
}

variable "open_service_mesh_enabled" {
  type        = bool
  description = "AKS open service mesh enabled ?"
  default     = true
}

variable "sku_tier" {
  type        = string
  description = "AKS tier Free or Paid"
  default     = "Free"

}

variable "node_pool_name" {
  type        = string
  description = "aks node pool name"
  default     = "linuxp1"
}

variable "node_count" {
  type        = number
  description = "Number of node pool"
  default     = 1
}

variable "node_vm_size" {
  type        = string
  description = "aks node vm type"
  default     = "Standard_D3_v2"

}

variable "node_vnet" {
  type        = string
  description = "aks node vnet"
  default     = "titanvnet"
}

variable "node_subnet" {
  type        = string
  description = "aks node subnet"
  default     = "aks"
}

variable "node_rg_name" {
  type        = string
  description = "Name of the Resource group"
  default     = "titannoderg"
}

variable "network_plugin" {
  type        = string
  description = "Name of the aks cluster network plugin"
  default     = "azure"
}

variable "network_profile_service_cidr" {
  type        = string
  description = "docker bridge cidr"
  default     = "10.0.5.0/24"
}

variable "network_profile_dns_service_ip" {
  type        = string
  description = "DNS Service IP"
  default     = "10.0.5.10"
}

variable "network_profile_docker_bridge_cidr" {
  type        = string
  description = "docker bridge cidr"
  default     = "172.17.0.1/16"
}

variable "network_policy" {
  type        = string
  description = "network policy"
  default     = "azure"
}

variable "network_profile_outbound_type" {
  type        = string
  description = "outbound type"
  default     = "loadBalancer"
}

variable "identity_type"{
  type = string
  description = "Indentity type"
  default = "SystemAssigned"
}

variable "resource_tag" {
  type        = string
  description = "Environment Tages for resources"
  default     = "demo"
}
