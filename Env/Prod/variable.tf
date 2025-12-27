variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "Stg" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

    subnet = map(object({
      name             = string
      address_prefixes = list(string)
  })) }))
}

variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

# variable "vms" {
#   type = map(object({
#     nic_name                        = string
#     location                        = string
#     rg_name                         = string
#     vnet_name                       = string
#     subnet_name                     = string
#     pip_name                        = string
#     vm_name                         = string
#     size                            = string
#       key_name            = string
#     secret_name         = string
#     secret_value        = string
#     disable_password_authentication = bool
#     source_image_reference          = map(string)
#   }))
# }

variable "key_vault" {
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool

    sku_name = string

    access_policy = object({
      key_permissions     = list(string)
      secret_permissions  = list(string)
      storage_permissions = list(string)
  }) }))
}


variable "key_secret" {
  type = map(object({
    rg_name  = string
    key_name = string
    name     = string
    value    = string
  }))
}

# variable "sql_server" {
#   type=map(object({
#    name                          = string
#   resource_group_name           = string
#   location                      = string
#  administrator_login=string
#  administrator_login_password=string

#   version                       = string
#   minimum_tls_version           = string
#   public_network_access_enabled = string


#   tags = map(string)
#   }))
#   }


# variable "sql_db" {
#   type = map(object({
#     server_name         = string
#     resource_group_name = string
#     name                = string
#     collation           = string
#     license_type        = string
#     max_size_gb         = number
#     sku_name            = string
#     enclave_type        = string
#     tags                = optional(map(string))

#   }))

# }

