/* variable "network_name" {
  description = "The name of the network being created"
  type        = string
} */
variable "vpc_names" {
  type    = list(string)
  default = ["vpc1", "vpc2", "vpc3"]
}

variable "project_id" {
  description = "project ID: "
  default = "playground-s-11-63bd32e3"
  type        = string
}
variable "description" {
  description = "Description"
  type        = string
}
variable "vpc_count" {
  description = "Number of vpcs to create"
  type        = number
}
variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default = "10.0.1.0/24"
  type        = string
}