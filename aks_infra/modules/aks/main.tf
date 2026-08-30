resource "azurerm_kubernetes_cluster" "aks" {

  for_each = var.aks_clusters

  name                = each.value.cluster_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  kubernetes_version  = each.value.kubernetes_version

  default_node_pool {
    name       = "agentpool"
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    network_plugin_mode = "overlay"
    load_balancer_sku = "standard"
  }

  sku_tier = "Free"

  tags = each.value.tags
}