rgs = {
  web = {
    rg_name    = "prod-rg-web"
    location   = "Central India"
    managed_by = "Terraform"

    tags = {
      Environment = "Prod"
      Project     = "ThreeTierApp"
      Owner       = "prodOps"
    }
  }
}
vnets = {
  prod = {
    vnet_name     = "prod-vnet"
    location      = "Central India"
    rg_name       = "prod-rg-web"
    address_space = ["172.16.0.0/16"]
  }
}
subnets = {
  frontend = {
    subnet_name      = "frontend-subnet"
    vnet_name        = "prod-vnet"
    rg_name          = "prod-rg-web"
    address_prefixes = ["172.16.1.0/24"]
  }

  backend = {
    subnet_name      = "backend-subnet"
    vnet_name        = "prod-vnet"
    rg_name          = "prod-rg-web"
    address_prefixes = ["172.16.2.0/24"]
  }

  database = {
    subnet_name      = "database-subnet"
    vnet_name        = "prod-vnet"
    rg_name          = "prod-rg-web"
    address_prefixes = ["172.16.3.0/24"]
  }
}
pips = {
  frontend = {
    pip_name          = "prod-frontend-pip"
    location          = "Central India"
    rg_name           = "prod-rg-web"
    allocation_method = "Static"
  }

  backend = {
    pip_name          = "prod-backend-pip"
    location          = "Central India"
    rg_name           = "prod-rg-web"
    allocation_method = "Static"
  }
}

vms = {
  frontend = {
    nic_name           = "prod-frontend-nic"
    location           = "Central India"
    rg_name            = "prod-rg-web"
    subnet_name        = "frontend-subnet"
    vnet_name          = "prod-vnet"
    pip_name           = "prod-frontend-pip"
    vm_name            = "prod-frontend-vm"
    vm_size            = "Standard_D2s_v3"
    vm_username        = "sunil5786"
    vm_password        = "Asdfg@202690"
    vm_image_publisher = "Canonical"
    vm_image_offer     = "0001-com-ubuntu-server-jammy"
    vm_image_sku       = "22_04-lts-gen2"
    vm_image_version   = "latest"
  }

  backend = {
    nic_name           = "prod-backend-nic"
    location           = "Central India"
    rg_name            = "prod-rg-web"
    subnet_name        = "backend-subnet"
    vnet_name          = "prod-vnet"
    pip_name           = "prod-backend-pip"
    vm_name            = "prod-backend-vm"
    vm_size            = "Standard_D2s_v3"
    vm_username        = "sunil5786"
    vm_password        = "Asdfg@202690"
    vm_image_publisher = "Canonical"
    vm_image_offer     = "0001-com-ubuntu-server-jammy"
    vm_image_sku       = "22_04-lts-gen2"
    vm_image_version   = "latest"
  }
}
