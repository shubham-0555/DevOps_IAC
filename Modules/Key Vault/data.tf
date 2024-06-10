data "azurerm_key_vault" "key" {
  name                = "KeyDevOpsYatra"
  resource_group_name = "DevOps_Yatra_Group"
}