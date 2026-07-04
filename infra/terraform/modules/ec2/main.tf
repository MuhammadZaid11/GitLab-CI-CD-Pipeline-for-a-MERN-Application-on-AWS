
resource "aws_security_group" "ansible_sg" {
  name        = "ansible-security-group"
  description = "Allow SSH and HTTP traffic"

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ansible-sg"
  }
}

resource "aws_instance" "Ansible-server" {
    count = var.instance_count
    ami = var.ami
    instance_type = var.instance_type
    key_name = "Backup_key"
    vpc_security_group_ids = [aws_security_group.ansible_sg.id]
    tags = {
      Name = "worker-${count.index+1}"
    }
}