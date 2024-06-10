module "RG" {
  source = "../../Modules/RG"
  RG=var.RG
}
module "Vnet" {
  source = "../../Modules/VNET"
  depends_on = [ module.RG ]
}
module "subnet" {
  source = "../../Modules/Subnet"
  SUBNET =var.SUBNET
  depends_on = [ module.Vnet ]
}
module "NSG" {
    source = "../../Modules/NSG"
    NSG=var.NSG
    rule=var.rule
    depends_on = [ module.RG ]
    
}
module "pip" {
  source = "../../Modules/Public_IP"
  PUBLICIP = var.PUBLICIP
  depends_on = [ module.RG ]
}
module "key" {
  source = "../../Modules/Key Vault"
  key=var.key
  secret = var.secret
  depends_on = [ module.pip ]
}
module "bastion" {
source = "../../Modules/Bastion"
depends_on = [ module.key ]
}
module "subnsg" {
  source = "../../Modules/Subnet_NSG"
  subnsg=var.subnsg
  depends_on = [ module.bastion ]
}
module "vms" {
 source = "../../Modules/Linux_VM"
 vms=var.vms
 depends_on = [ module.subnsg ]
}
module "lb" {
  source = "../../Modules/LB"
  depends_on = [ module.vms ]
}