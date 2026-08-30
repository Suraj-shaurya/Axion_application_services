
output "aks_cluster_name" {

  value = {
    for k, v in azurerm_kubernetes_cluster.aks :
    k => v.name
  }
}

output "kube_config" {

  sensitive = true

  value = {
    for k, v in azurerm_kubernetes_cluster.aks :
    k => v.kube_config_raw
  }
}