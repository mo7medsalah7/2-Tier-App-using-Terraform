
module "mosalah_module" {
  source = "github.com/mo7medsalah7/Terraform_Infrastructure_Modules_AWS.git"
  # VPC Variable
  vpc_id = var.vpc_id
  # RDS Variables 
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  # Instance Variables
  ec2_instance_ami  = var.ec2_instance_ami
  ec2_instance_type = var.ec2_instance_type
}
