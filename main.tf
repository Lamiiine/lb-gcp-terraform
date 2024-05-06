locals {
  project = "simple-module"
  region  = "us-west1"
}

provider "google" {
  credentials = file("credentials.json")
  project     = local.project
  region      = local.region
}

module "vpc" {
  source                                    = "./modules/vpc"
  name                                      = "${lower(var.network_name)}-${count.index}"
  project_id                                = var.project_id
  count  = var.vpc_count
  //network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
  description                               = var.description
}