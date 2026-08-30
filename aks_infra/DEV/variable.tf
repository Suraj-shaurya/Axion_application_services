variable "rg-aks" {
  type = map(object({
    name     = string
    location = string
    # managed_by = optional(string)
    # tags       = optional(map(string))
  }))
}

variable "aks_clusters" {

  type = map(object({

    cluster_name        = string
    location            = string
    resource_group_name = string
    dns_prefix          = string

    kubernetes_version = string

    node_count = number
    vm_size    = string

    tags = map(string)

  }))
}
variable "acr" {
  type = map(object({

    name                = string
    location            = string
    resource_group_name = string
    sku                 = string
    admin_enabled       = bool

  }))
}