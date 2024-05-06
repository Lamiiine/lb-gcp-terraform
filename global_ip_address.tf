resource "google_compute_global_address" "default" {
  name       = "lb-ipv4-1"
  ip_version = "IPV4"
}