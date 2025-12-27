data "azurerm_key_vault" "key_vault" {
for_each = var.key_secret
name                = each.value.key_name
  resource_group_name = each.value.rg_name
}