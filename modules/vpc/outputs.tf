output "name" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc_network.name
}
/* output "subnet_details" {
  description = "Map of subnet details including name and IP"
  value       = { for k, v in google_compute_subnetwork.subnet : "${k}-${v.ip}" => { name = k, ip = v.ip } }
} */