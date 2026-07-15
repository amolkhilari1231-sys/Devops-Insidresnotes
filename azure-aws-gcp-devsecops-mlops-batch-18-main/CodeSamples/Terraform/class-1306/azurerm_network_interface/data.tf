data "azurerm_subnet" "frontend-subnet" {
  for_each = var.network_interfaces

  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.nic_rg_name
}

data "azurerm_public_ip" "frontend-pip" {
  for_each = var.network_interfaces

  name                = each.value.pip_name
  resource_group_name = each.value.nic_rg_name
}