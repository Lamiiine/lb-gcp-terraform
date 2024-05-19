output "nat_name" {
  description = "the value of the network name"
  value = google_compute_router_nat.nat_gateway.name
}
output "nat_region" {
  description = "the value of the network name"
  value = google_compute_router_nat.nat_gateway.region
}