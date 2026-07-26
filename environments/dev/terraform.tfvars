rgs = {
  web = {
    rg_name    = "dev-rg-web"
    location   = "Central India"
    managed_by = "Terraform"

    tags = {
      Environment = "Dev"
      Project     = "ThreeTierApp"
      Owner       = "DevOps"
    }
  }
    web2 = {
    rg_name    = "dev-rg-web2"
    location   = "Central India"
    managed_by = "Terraform"

    tags = {
      Environment = "Dev"
      Project     = "ThreeTierApp"
      Owner       = "DevOps"
    }
  }
}
vnets = {
  dev = {
    vnet_name     = "dev-vnet"
    location      = "Central India"
    rg_name       = "dev-rg-web"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {
  frontend = {
    subnet_name      = "frontend-subnet"
    vnet_name        = "dev-vnet"
    rg_name          = "dev-rg-web"
    address_prefixes = ["10.0.1.0/24"]
  }

  backend = {
    subnet_name      = "backend-subnet"
    vnet_name        = "dev-vnet"
    rg_name          = "dev-rg-web"
    address_prefixes = ["10.0.2.0/24"]
  }

  database = {
    subnet_name      = "database-subnet"
    vnet_name        = "dev-vnet"
    rg_name          = "dev-rg-web"
    address_prefixes = ["10.0.3.0/24"]
  }
}
pips = {
  frontend = {
    pip_name          = "dev-frontend-pip"
    location          = "Central India"
    rg_name           = "dev-rg-web"
    allocation_method = "Static"
  }

  backend = {
    pip_name          = "dev-backend-pip"
    location          = "Central India"
    rg_name           = "dev-rg-web"
    allocation_method = "Static"
  }
}

vms = {
  frontend = {
    nic_name           = "dev-frontend-nic"
    location           = "Central India"
    rg_name            = "dev-rg-web"
    subnet_name        = "frontend-subnet"
    vnet_name          = "dev-vnet"
    pip_name           = "dev-frontend-pip"
    vm_name            = "dev-frontend-vm"
    vm_size            = "Standard_D2s_v3"
    vm_username        = "sunil5786"
    vm_password        = "Asdfg@202690"
    vm_image_publisher = "Canonical"
    vm_image_offer     = "0001-com-ubuntu-server-jammy"
    vm_image_sku       = "22_04-lts-gen2"
    vm_image_version   = "latest"
  }

  backend = {
    nic_name           = "dev-backend-nic"
    location           = "Central India"
    rg_name            = "dev-rg-web"
    subnet_name        = "backend-subnet"
    vnet_name          = "dev-vnet"
    pip_name           = "dev-backend-pip"
    vm_name            = "dev-backend-vm"
    vm_size            = "Standard_D2s_v3"
    vm_username        = "sunil5786"
    vm_password        = "Asdfg@202690"
    vm_image_publisher = "Canonical"
    vm_image_offer     = "0001-com-ubuntu-server-jammy"
    vm_image_sku       = "22_04-lts-gen2"
    vm_image_version   = "latest"
  }
}
