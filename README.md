# A loadbalancer GCP Terraform Configuration

This repository contains Terraform configurations for setting up various resources on Google Cloud Platform (GCP) needed for a loadbalancer. The main components include:
![load_balancer](https://github.com/Lamiiine/lb-gcp-terraform/assets/29484849/009d892d-4122-4f97-bdd4-69fb1dec32ec)
- Virtual Priv
ate Cloud (VPC)
- Subnets
- Network Address Translation (NAT) Gateway
- Instance Template
- Instance Template Group Manager
- Firewall Rule
- URL Map
- Forwarding Rule
- Health Check
- HTTP Proxy

## Prerequisites

Before you can use this repository, you'll need the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine
- A Google Cloud Platform account with billing enabled
- A service account key in JSON format (e.g., `credentials.json`)

## Installation

1. Clone this repository:

```bash
git clone https://github.com/Lamiiine/lb-gcp-terraform
```
2. Navigate to the project directory:
```bash
cd your-repo
```
3. Initialize Terraform:
```bash
terraform init
```
## Configuration
Copy your GCP service account key (credentials.json) into the project directory.

## Running 
1. Plan the terraform deployment
```bash
terraform plan
```
This command will show the resources that will be created
2. Apply the terraform configuration
```bash
terraform apply
```
This command will create the resources based on the input values you specified in the prompt

