variable "rgs" {
  type = map(object({
    rg_name    = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))
}
variable "vnets" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
}
variable "subnets" {
  type = map(object({
    subnet_name      = string
    vnet_name        = string
    rg_name          = string
    address_prefixes = list(string)
  }))
}
variable "pips" {
  type = map(object({
    pip_name          = string
    location          = string
    rg_name           = string
    allocation_method = string
  }))
}
variable "vms" {
  type = map(object({
    nic_name           = string
    location           = string
    rg_name            = string
    subnet_name        = string
    vnet_name          = string
    pip_name           = string
    vm_name            = string
    vm_size            = string
    vm_username        = string
    vm_password        = string
    vm_image_publisher = string
    vm_image_offer     = string
    vm_image_sku       = string
    vm_image_version   = string
  }))
}

