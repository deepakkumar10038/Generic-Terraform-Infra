variable "sql_server" {
  type=map(object({
   name                          = string
  resource_group_name           = string
  location                      = string
  version                       = string
  administrator_login           = string
  administrator_login_password  = string
  minimum_tls_version           = string
  public_network_access_enabled = string


  tags = map(string)
  }))
  }