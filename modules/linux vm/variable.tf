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
