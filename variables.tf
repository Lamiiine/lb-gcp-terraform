/* variable "network_name" {
  description = "The name of the network being created"
  type        = string
} */
variable "vpc_name" {
  type    = string
  description = "your vpc :"
}

variable "project_id" {
  description = "project ID: "
  default = "playground-s-11-0c9d7186"
  type        = string
}
variable "description" {
  description = "Description"
  type        = string
}
/* variable "subnet_cidr"{
  type = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"]
} */
variable "subnet_names" {
  type = map(object({
    name = string
    ip   = string
  }))
  default = {
    "sub1" = {
      name = "hr"
      ip   = "10.0.0.0/16"
    }
     "sub2" = {
      name = "tech"
      ip   = "10.1.0.0/16"
    }}
  
}



