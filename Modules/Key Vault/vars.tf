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
