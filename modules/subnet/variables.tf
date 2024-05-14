variable "name" {
  description = "Name of the subnet"
}

variable "ip" {
  type = string
  description = "CIDR block for the subnet"
}

variable "vpc_network" {
  description = "Name of the VPC network"
  type        = string
}