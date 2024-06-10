locals {
  rg_prefix = "DevOps_Yatra_"
  tags = {
    environment = "DEV",
    managed_by  = "Durgesh"
  }
}


resource "azurerm_resource_group" "resource_group" {
  for_each = var.RG
  name     = "${local.rg_prefix}${each.value.name}"
  location = each.value.location
  tags     = local.tags
}
