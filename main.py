from terraform_manager import terraform_manager
from utils import *
def main():
    loadbalancer = terraform_manager()
    loadbalancer.set_env_variable()

    # Terraform fmt
    loadbalancer.terraform_fmt()

    # Terraform init
    loadbalancer.terraform_init()

    # Terraform plan
    #loadbalancer.terraform_plan()

    # Terraform apply
    loadbalancer.terraform_apply()

if __name__ == "__main__":
    main()
