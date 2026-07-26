module "resource_group" {
  source = "../../modules/rg"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/vnet"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.resource_group, module.virtual_network]
  source     = "../../modules/subnet"
  subnets    = var.subnets
}
module "public_ip" {
  depends_on = [module.resource_group, module.subnet]
  source     = "../../modules/public_ip"
  pips       = var.pips
}
module "linux_virtual_machine" {
  depends_on = [module.public_ip, module.subnet, module.virtual_network]
  source     = "../../modules/linux vm"
  vms        = var.vms
}
