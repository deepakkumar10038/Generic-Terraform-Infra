variable "Stg" {
  type = map(object({
  name                             = string
    resource_group_name              = string
    location                         = string
    account_tier                     = string
    account_replication_type         = string

    account_kind                      = optional(string, "StorageV2")
    provisioned_billing_model_version = optional(string)
    cross_tenant_replication_enabled  = optional(bool, false)
    access_tier                        = optional(string, "Hot")
    edge_zone                          = optional(string)
    https_traffic_only_enabled         = optional(bool, true)
    min_tls_version                    = optional(string, "TLS1_2")
    allow_nested_items_to_be_public    = optional(bool, true)
    shared_access_key_enabled          = optional(bool, true)
    public_network_access_enabled      = optional(bool, true)
    default_to_oauth_authentication    = optional(bool, false)
    is_hns_enabled                     = optional(bool, false)
    nfsv3_enabled                      = optional(bool, false)
    large_file_share_enabled           = optional(bool, false)
    local_user_enabled                 = optional(bool, true)
    sftp_enabled                       = optional(bool, false)
    dns_endpoint_type                  = optional(string, "Standard")
    allowed_copy_scope                 = optional(string)
    queue_encryption_key_type          = optional(string, "Service")
    table_encryption_key_type          = optional(string, "Service")
    infrastructure_encryption_enabled  = optional(bool, false)
    
    tags = optional(map(string))
  }))
}

