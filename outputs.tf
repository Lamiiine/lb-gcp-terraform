/*  output "subnet_names" {
  value = module.my_subnet.subnet_name
} */
output "ip" {
  description = "the value of the network name"
  value = module.vpc.name
  sensitive = true
}  
output "nat_name" {
  description = "the value of the nat name"
  value = module.nat_gateway.nat_name
}
output "nat_reg" {
  description = "the value of the nat name"
  value = module.nat_gateway.nat_region
}

output "threshold" {
  value       = module.lb.threshold
  description = "The unhealthy threshold is:"
}
output "lb_name"{
    value = module.lb.lb_name
    description = "the name of hc  is :"
}
output "name" {
  description = "The name of the VPC network"
  value       = module.vpc.name
}