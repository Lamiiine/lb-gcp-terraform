variable "name" {
  description = "Name to prefix resources with"
  type        = string
}

variable "network" {
  description = "Network to create the NAT Gateway in"
  type        = string
}

variable "region" {
  description = "Region to create the NAT Gateway in"
  type        = string
}