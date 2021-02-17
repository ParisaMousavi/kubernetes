resource "azurerm_kubernetes_cluster" "aks" {
  resource_group_name = var.rg_name
  location = var.rg_location
  name = var.project_name
  sku_tier = "free"
  dns_prefix = var.project_name


  default_node_pool {
    name = "default"
    node_count = 1
    vm_size = "Standard_D2_v2"
  }

  identity {
    type = "System"
  }
}