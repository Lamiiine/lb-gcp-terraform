variable "network_name" {
  description = "The name of the network being created"
  type        = string
}

variable "project_id" {
  description = "project ID: "
  type        = string
}
variable "description" {
  description = "Description"
  type        = string
}
variable "vpc_count"{
    description = "Number of vpcs to create"
    type = number
}
/* variable "network_firewall_policy_enforcement_order" {
  type        = string
  default     = null
  description = "Set the order that Firewall Rules and Firewall Policies are evaluated. Valid values are `BEFORE_CLASSIC_FIREWALL` and `AFTER_CLASSIC_FIREWALL`. (default null or equivalent to `AFTER_CLASSIC_FIREWALL`)"
} */