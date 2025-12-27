data "azurerm_storage_account" "example" {
  name                = "exampleaccount"
  resource_group_name = "examples"
}

data "azurerm_storage_container" "example" {
  name               = "example-container-name"
  storage_account_id = data.azurerm_storage_account.example.id
}