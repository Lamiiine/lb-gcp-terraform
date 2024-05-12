output "network_name" {
  description = "the value of the network name"
  value = google_compute_network.vpc_network.name
}