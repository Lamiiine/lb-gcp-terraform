/*  output "subnet_names" {
  value = module.my_subnet.subnet_name
} */
output "ip" {
  description = "the value of the network name"
  value = module.vpc.name
  sensitive = true
}  