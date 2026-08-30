# modules/aks/variables.tf

variable "aks_clusters" {

  type = map(object({

    cluster_name        = string
    location            = string
    resource_group_name = string
    dns_prefix          = string

    kubernetes_version  = string

    node_count          = number
    vm_size             = string

    tags                = map(string)

  }))
}