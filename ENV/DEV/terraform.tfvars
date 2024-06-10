RG = {
  r1 = {
    name     = "Group"
    location = "centralindia"
  }
}
SUBNET = {
  s1 = {
    name                 = "Frontend-Subnet"
    address_prefixes      = ["10.0.1.0/24"]
    resource_group_name  = "DevOps_Yatra_Group"
    virtual_network_name = "Vnet"
  },
  s2 = {
    name                 = "Backend-Subnet"
    address_prefixes       = ["10.0.2.0/24"]
    resource_group_name  = "DevOps_Yatra_Group"
    virtual_network_name = "Vnet"
  },
  s3 = {
    name                 = "AzureBastionSubnet"
    address_prefixes      = ["10.0.3.0/26"]
    resource_group_name  = "DevOps_Yatra_Group"
    virtual_network_name = "Vnet"
  },
}
NSG = {
  N1 = {
    name                = "Frontend_NSG"
    location            = "centralindia"
    resource_group_name = "DevOps_Yatra_Group"
  },
  N2 = {
    name                = "Backend_NSG"
    location            = "centralindia"
    resource_group_name = "DevOps_Yatra_Group"
  },
}
rule = {
  r1 = {
    name                       = "SSH"
    priority                   = "100"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  r2 = {
    name                       = "HTTP"
    priority                   = "101"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  r3 = {
    name                       = "HTTPs"
    priority                   = "102"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
}
PUBLICIP = {
  p1 = {
    name                = "PIP-Bastion"
    location            = "central india"
    resource_group_name = "DevOps_Yatra_Group"
    allocation_method   = "Static"
    sku                 = "Standard"
  },
  p2 = {
    name                = "PIP-LB"
    location            = "central india"
    resource_group_name = "DevOps_Yatra_Group"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}
key = {
  k1 = {
    name                = "KeyDevOpsYatra"
    location            = "centralindia"
    resource_group_name = "DevOps_Yatra_Group"
    sku_name            = "premium"

  }
}
secret = {
  s1 = {
    name  = "username"
    value = "admin01"
  },
  s2 = {
    name  = "password"
    value = "P@ssw0rd@123"
  },
}
vms = {
  vm1 = {
    nicname              = "Frontend-Nic"
    location             = "centralindia"
    resource_group_name  = "DevOps_Yatra_Group"
    vmname               = "Frontend-VM"
    size                 = "Standard_DS1_v2"
    subnetname           = "Frontend-Subnet"
    virtual_network_name = "Vnet"
  },
  vm2 = {
    nicname              = "Backend-Nic"
    location             = "centralindia"
    resource_group_name  = "DevOps_Yatra_Group"
    vmname               = "Backend-VM"
    size                 = "Standard_DS1_v2"
    subnetname           = "Backend-Subnet"
    virtual_network_name = "Vnet"
  }
}
subnsg = {
  sn1 = {
    nsgname              = "Frontend_NSG"
    subnetname           = "Frontend-Subnet"
    virtual_network_name = "Vnet"
    resource_group_name  = "DevOps_Yatra_Group"
  },
  sn2 = {
    nsgname              = "Backend_NSG"
    subnetname           = "Backend-Subnet"
    virtual_network_name = "Vnet"
    resource_group_name  = "DevOps_Yatra_Group"
  },

}
