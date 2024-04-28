resource "google_compute_instance_group_manager" "default" {
  name = "lb-backend-example"
  zone = "us-east1-b"
  named_port {
    name = "http"
    port = 80
  }
  version {
    instance_template = google_compute_instance_template.default.id
    name              = "primary"
  }
  base_instance_name = "vm"
  target_size        = 2
}