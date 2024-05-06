resource "google_compute_backend_service" "default" {
  name                            = "web-backend-service"
  connection_draining_timeout_sec = 0
  health_checks                   = [google_compute_health_check.default.id]
  load_balancing_scheme           = "EXTERNAL_MANAGED"
  port_name                       = "http"
  protocol                        = "HTTP"
  session_affinity                = "NONE"
  timeout_sec                     = 30
  backend {
    group           = google_compute_instance_group_manager.default.instance_group
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
  }
}