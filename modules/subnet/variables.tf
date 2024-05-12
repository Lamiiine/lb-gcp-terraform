variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}
variable "vpc_network" {
  description = "Name of the VPC network"
  type        = string
}