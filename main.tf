locals {
  //project = "simple-module"
  vpc_names = ["vpc4", "vpc5"]
  region  = "us-west1"
}

provider "google" {
  credentials = file("credentials.json")
  project     = var.project_id
  region      = local.region
}

module "vpc" {
  source   = "./modules/vpc"

  name     = var.vpc_name
  //name       = "${lower(var.network_name)}-${count.index}"
  project_id = var.project_id
  //count      = var.vpc_count
  description = var.description
}

module "my_subnet" {
  source = "./modules/subnet"
  //description = "hello d"
  for_each = var.subnet_names
  name = "${each.value.name}"
  //count = length(var.subnet_cidr)
  //for_each = var.subnet_map
  vpc_network = module.vpc.name
  // subnet_name = "subnet-${count.index + 1}"

  # var.subnet_cidr = ["10.0.0.0/16", "10.1.0.0/16"]
  ip = "${each.value.ip}"
} 

module "nat_gateway" {
  source  = "./modules/nat"
  name    = "my-natnat-gateway"
  network = module.vpc.name
  region  = local.region
}

module "lb" {
  source             = "./modules/lb"
  name               = var.hc_name
  check_interval_sec = var.check_interval_sec
  port = var.port
  ports = var.ports
  network = module.vpc.name
}