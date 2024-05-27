import os
from python_terraform import Terraform
from utils import *
class terraform_manager:
    def __init__(self, working_dir="."):
        self.tf = Terraform(working_dir=working_dir)
        self.vpc_name = validate_input("Enter your VPC name: ")
        self.name = validate_input("Enter the name: ")
        self.network = validate_input("Enter the network name: ")    
        self.project_id = validate_input("Enter your GCP project ID: ")
        self.description = validate_input("Enter description: ")
        self.check_interval_sec = validate_integer_input("Enter interval (in seconds): ")    
        self.hc_name = validate_input("Enter health check name: ")
        self.ports = validate_ports_input('Enter ports range (e.g., ["80"]): ')
        self.port = validate_integer_input("Enter port: ")
        
        self.tf_vars = {
            'vpc_name': self.vpc_name,
            'name': self.name,
            'network': self.network,
            'project_id': self.project_id,
            'description': self.description,
            'check_interval_sec': self.check_interval_sec,
            'hc_name': self.hc_name,
            'ports': self.ports,
            'port': self.port    
        }        
    def set_env_variable(self):
        os.environ ["TF_LOG"] = "ERROR"

    def terraform_fmt(self):
        self.tf.fmt(diff=True)

    def terraform_init(self):
        return_code, stdout, stderr = self.tf.init()
        if return_code != 0:
            raise Exception(f"Terraform init failed:  {stderr}")



    def terraform_plan(self):
        return_code, stdout, stderr = self.tf.plan(var=self.tf_vars)
        if return_code != 0:
            raise Exception(f"Terraform plan failed: {stderr}")

    def terraform_apply(self):
        return_code, stdout, stderr = self.tf.apply(capture_output=False, var=self.tf_vars)
        if return_code != 0:
            raise Exception(f"Terraform apply failed: {stderr}")

    def terraform_variables(self, validate_input, validate_ports_input, validate_integer_input):
