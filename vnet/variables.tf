variable "name" {
  description = "A name used for this VNet"
  type        = "string"
}

variable "address_space" {
  description = "The VNet address space in CIDR format"
  type        = "string"
}

variable "location" {
  description = "where"
  default     = "eastus"
}

variable "rg_name" {
  description = "rg"
}
