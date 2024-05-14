output "subnet_name" {
  description = "The name of the subnet"
  value       = google_compute_subnetwork.subnet.name
}