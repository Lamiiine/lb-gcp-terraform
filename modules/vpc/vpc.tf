resource "google_compute_network" "vpc_network" {
  name                                      = var.name
  project                                   = var.project_id
  description                               = var.description
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order

}
