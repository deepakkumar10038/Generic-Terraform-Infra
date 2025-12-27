resource "azurerm_key_vault_secret" "key_secret" {
    for_each = var.key_secret
  name         = each.value.name
  value        = each.value.value
   key_vault_id = data.azurerm_key_vault.key_vault[each.key].id
}