variable "RG" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "SUBNET" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "NSG" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}
variable "rule" {
  type = map(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}
variable "PUBLICIP" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "key" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string


  }))
}
variable "secret" {
  type = map(object({
    name  = string
    value = string
  }))
}
variable "vms" {
  type = map(object({
    nicname              = string
    location             = string
    resource_group_name  = string
    size                 = string
    vmname               = string
    subnetname           = string
    virtual_network_name = string
  }))
}
variable "subnsg" {
  type = map(object({
    nsgname              = string
    subnetname           = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}



