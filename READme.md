# Run Terraform using Python: Load Balancer in GCP usecase

This repository contains a Python script to manage a Terraform-based load balancer setup in GCP. The script performs various Terraform operations such as formatting, initialization, and applying the Terraform configuration. 

## Features
- **Terraform fmt:** Formats Terraform configuration files.
- **Terraform init:** Initializes the Terraform configuration.
- **Terraform Apply:** Applies the Terraform configuration to provision resources.

## Prerequisites

- Python 3.x
- Terraform
- GCP account

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/lb-gcp-terraform.git
    cd lb-gcp-terraform
    git checkout tf-py

    ```

3. Ensure Terraform and Python are installed and accessible in your PATH.

## Usage

1. Configure your environment variables as needed.

2. Define your Terraform configuration in the appropriate `.tf` files.

3. Run the script:
    ```bash
    python3 main.py
    ```

## Script Breakdown

- **main()**: The main function that orchestrates the Terraform operations.
  - **loadbalancer.set_env_variable()**: Sets environment variables.
  - **loadbalancer.terraform_variables(validate_input, validate_ports_ranges, validate_integer)**: Gathers and validates input variables.
  - **loadbalancer.terraform_fmt()**: Formats the Terraform configuration files.
  - **loadbalancer.terraform_init()**: Initializes the Terraform configuration.
  - **loadbalancer.terraform_apply()**: Applies the Terraform configuration.

## Utility Functions

The `utils` module includes the following validation functions:

- **validate_input**: Validates general inputs.
- **validate_ports_ranges**: Validates port ranges.
- **validate_integer**: Validates integer values.


