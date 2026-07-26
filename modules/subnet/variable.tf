variable "subnets" {
  type = map(object({
    subnet_name      = string
    vnet_name        = string
    rg_name          = string
    address_prefixes = list(string)
  }))
}
