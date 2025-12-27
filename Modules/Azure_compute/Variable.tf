variable "vms" {
  type = map(object({
    nic_name                        = string
    location                        = string
    rg_name                         = string
    vnet_name                       = string
    subnet_name                     = string
    pip_name                        = string
    vm_name                         = string
    size                            = string
      key_name            = string
    secret_name         = string
    # secret_value        = string
    disable_password_authentication = bool
    source_image_reference = map(string)
  }))
}
