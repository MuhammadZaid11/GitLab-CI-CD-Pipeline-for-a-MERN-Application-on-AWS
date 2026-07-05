module "ec2" {
  source = "./modules/ec2"

  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.small"
  name          = "Ansible-Server"


}

module "ecr" {

  source = "./modules/ecr"

  repository_names = [
    "frontend",
    "backend"
  ]
}

module "iam" {

  source = "./modules/iam"

  role_name             = "devops-ec2-role"
  instance_profile_name = "devops-instance-profile"
}