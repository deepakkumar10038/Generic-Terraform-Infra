variable "sql_server" {
  type=map(object({
   name                          = string
  resource_group_name           = string
  location                      = string
        key_name            = string
    secret_name         = string
  version                       = string
  administrator_login           = optional(string)
  administrator_login_password  = optional(string)
  minimum_tls_version           = string
  public_network_access_enabled = string


  tags = map(string)
  }))
  }