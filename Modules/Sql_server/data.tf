data "azurerm_key_vault" "key_vault" {
for_each = var.sql_server
name                = each.value.key_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "key_secret" {
  for_each = var.sql_server
  name         = each.value.secret_name
  key_vault_id = data.azurerm_key_vault.key_vault[each.key].id
}
