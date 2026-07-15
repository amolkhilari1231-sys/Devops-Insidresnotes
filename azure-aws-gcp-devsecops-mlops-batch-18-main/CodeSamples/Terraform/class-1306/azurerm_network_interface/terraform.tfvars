network_interfaces = {
  nic1 = {
    nic_name             = "nic-frontend-vm"
    nic_location         = "centralindia"
    nic_rg_name          = "rg-chor"
    subnet_name          = "frontend-subnet"
    virtual_network_name = "vnet-chor"
    pip_name             = "pip-chor-frontend-vm"
  }
  nic2 = {
    nic_name             = "nic-backend-vm"
    nic_location         = "centralindia"
    nic_rg_name          = "rg-chor"
    subnet_name          = "backend-subnet"
    virtual_network_name = "vnet-chor"
    pip_name             = "pip-chor-backend-vm"
  }  
}

