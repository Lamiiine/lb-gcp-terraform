variable "name" {
  type = string
}

variable "combiner" {
    type = string 
}

variable "condition" {
    type = map(any)
}

variable "notification" {
    type = map(any)
}

variable "load_balancer" {
  default = null
}