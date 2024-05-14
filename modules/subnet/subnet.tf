resource "google_compute_subnetwork" "subnet" {
  name          = var.name
  //region        = "your-region"  # Replace with your desired region
  network       = var.vpc_network
  ip_cidr_range = var.ip
}