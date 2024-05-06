variable "name" {
  description = "The name of the network being created"
  type        = string
}
variable "project_id" {
  description = "Project ID"
  type        = string
}
variable "network_firewall_policy_enforcement_order" {
  type        = string
  default     = null
  description = "Set the order that Firewall Rules and Firewall Policies are evaluated. Valid values are `BEFORE_CLASSIC_FIREWALL` and `AFTER_CLASSIC_FIREWALL`. (default null or equivalent to `AFTER_CLASSIC_FIREWALL`)"
}
variable "description" {
  description = "Description"
  type        = string
}