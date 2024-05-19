variable "name"{
    type = string
    description = "your hc namee"
}
variable "network"{
    type = string
    description = "your fw network"
}

variable "check_interval_sec" {
  type        = number
  description = "The interval between health checks in seconds"
}
variable "port" {
  type        = number
  description = "port number"
}
variable "ports" {
  type        = list(string)
  description = "ports number"
}