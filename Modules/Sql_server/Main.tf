resource "azurerm_mssql_server" "mysql_server" {

  for_each                      = var.sql_server
  name                          = each.value.name
  resource_group_name           = each.value.resource_group_name
  location                      = each.value.location
  version                       = each.value.version
  administrator_login           = data.azurerm_key_vault_secret.key_secret[each.key].name

  administrator_login_password  = data.azurerm_key_vault_secret.key_secret[each.key].value

  minimum_tls_version           = each.value.minimum_tls_version
  public_network_access_enabled = each.value.public_network_access_enabled


  tags = {
    environment = each.value.tags.environment
  }
}