rgs = {
  rg1 = {
    name     = "deep_rg2"
    location = "west us 2"
  }
  # rg2 = {
  #   name     = "deep_rg21"
  #   location = "west us 2"
  # }
}

Stg = {
  stg1 = {
    name                     = "deepstg2"
    resource_group_name      = "deep_rg2"
    location                 = "west us 2"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnet = {
  vnet1 = {
    name                = "deep_vnet"
    location            = "west us 2"
    resource_group_name = "deep_rg2"
    address_space       = ["10.0.0.0/16"]

    subnet = {
      subnet1 = {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "backnend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}

pip = {
  pip1 = {
    name                = "deep_pip"
    resource_group_name = "deep_rg2"
    location            = "west us 2"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "deep_pip1"
    resource_group_name = "deep_rg2"
    location            = "west us 2"
    allocation_method   = "Static"
  }
}
vms = {
  vm1 = {
    nic_name                        = "nic-frontend-vm-01"
    location                        = "west us 2"
    rg_name                         = "deep_rg2"
    vnet_name                       = "deep_vnet"
    subnet_name                     = "frontend-subnet"
    pip_name                        = "deep_pip"
    vm_name                         = "deep-vm1"
    size                            = "Standard_F2"
     key_name            = "deepkvvvvv1"
    secret_name = "vm1"
    # secret_value        = "password2"
    disable_password_authentication = "false"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }

  vm2 = {
    nic_name                        = "nic-frontend-vm-02"
    location                        = "west us 2"
    rg_name                         = "deep_rg2"
    vnet_name                       = "deep_vnet"
    subnet_name                     = "frontend-subnet"
    pip_name                        = "deep_pip1"
    vm_name                         = "deep-vm2"
    size                            = "Standard_F2"
  key_name            = "deepkvvvvv1"
    secret_name = "vm2"
    # admin_password        = "password2"
    disable_password_authentication = "false"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

key_vault = {
  KV1 = {
    name                        = "deepkvvvvv1"
    location                    = "west us 2"
    resource_group_name         = "deep_rg2"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"

    access_policy = {
      key_permissions = [
        "Get",
        "List",
      ]

      secret_permissions = [
        "Get",
        "List",
        "Set",
        "Purge",
        "Backup",
        "Delete",
        "Restore"
      ]

      storage_permissions = [
        "Get",
        "Set",
        "List"
      ]
    }
} }

key_secret = {
  secret1 = {
    key_name = "deepkvvvvv1"
    name     = "vm1"
    rg_name  = "deep_rg2"
    value    = "deepak@1234"
  }

  secret2 = {
    key_name = "deepkvvvvv1"
    name     = "vm2"
    rg_name  = "deep_rg2"
    value    = "deepak@1234"
  }
    secret3 = {
    key_name = "deepkvvvvv1"
    name     = "sql"
    rg_name  = "deep_rg2"
    value    = "Dee@199672"
  }
}

# sql_server = {
#   mssql1 = {
#     name                         = "deepsql"
#     resource_group_name          = "deep_rg2"
#     location                     = "west us 2"
#     version                      = "12.0"
#     key_name            = "deepkvvvvv1"
#     secret_name         = "sql"
#     secret_value        = "password2"
#      minimum_tls_version          = "1.2"
#      public_network_access_enabled="true"
#     tags = {
#       environment = "production"
#     }

#   }
# }


# sql_db = {
#   sqldb1 = {
#   name         = "deepsql-db"
#     server_name         = "deepsql"
#     resource_group_name = "deep_rg2"
#   collation    = "SQL_Latin1_General_CP1_CI_AS"
#   license_type = "LicenseIncluded"
#   max_size_gb  = "2"
#   sku_name     = "S0"
#   enclave_type = "VBS"
  
#   }
#   }
