
rg-aks = {
  rg1 = {
    name     = "rg-aks"
    location = "Central India"
  }
}

aks_clusters = {

  aks1 = {

    cluster_name        = "akscluster-janvi"
    location            = "Central India"
    resource_group_name = "rg-aks"

    dns_prefix = "aksdemo"

    kubernetes_version = "1.34"

    node_count = 1
    vm_size    = "Standard_D2s_v3"

    tags = {
      env = "lab"
    }
  }
}

acr = {
  acr1 = {
   name                = "janviacr1"
   resource_group_name = "rg-aks"
   location            = "Central India"
   sku                 = "Premium"
   admin_enabled       = false
}
}