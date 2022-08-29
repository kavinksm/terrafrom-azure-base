resource "azurerm_kubernetes_cluster" "akscluster" {
  name                      = var.aks_cluster_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  dns_prefix                = var.aks_dns_prefix
  kubernetes_version        = var.kubernetes_version
  node_resource_group       = var.node_rg_name
  open_service_mesh_enabled = var.open_service_mesh_enabled
  sku_tier                  = var.sku_tier

  default_node_pool {
    name           = var.node_pool_name
    node_count     = var.node_count
    vm_size        = var.node_vm_size
    vnet_subnet_id = data.azurerm_subnet.nodesubnet.id
  }

  network_profile {
    network_plugin     = var.network_plugin
    dns_service_ip     = var.network_profile_dns_service_ip
    docker_bridge_cidr = var.network_profile_docker_bridge_cidr
    network_policy     = var.network_policy
    outbound_type      = var.network_profile_outbound_type
    service_cidr       = var.network_profile_service_cidr
  }

  identity {
    type = var.identity_type
  }

  tags = {
    environment = var.resource_tag
  }
}