module "ec2" {
  source = "./modules/ec2"

  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.small"
  name          = "Ansible-Server"


}