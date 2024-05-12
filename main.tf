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
  count = length(var.vpc_names)

  name     = var.vpc_names[count.index]
  //name       = "${lower(var.network_name)}-${count.index}"
  project_id = var.project_id
  //count      = var.vpc_count
  description = var.description
}

module "my_subnet" {
  source = "./modules/subnet"
  count = length(var.vpc_names)

  vpc_network = module.vpc[count.index].network_name
  subnet_name = "subnet-${count.index + 1}"
  subnet_cidr = "10.0.1.0/24"
}
