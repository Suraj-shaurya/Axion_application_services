resource "azurerm_resource_group" "rg-aks" {
    for_each = var.rg-aks
    name = each.value.name
    location = each.value.location
  
}