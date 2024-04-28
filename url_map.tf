resource "google_compute_url_map" "default" {
  name            = "web-map-http"
  default_service = google_compute_backend_service.default.id
}