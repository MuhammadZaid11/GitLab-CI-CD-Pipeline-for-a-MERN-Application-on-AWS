data "aws_iam_policy_document" "ec2_assume_role" {

  statement {

    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole"
    ]
  }
}


resource "aws_iam_role" "ec2_role" {

  name = var.role_name

  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json

  tags = {
    ManagedBy = "Terraform"
    Project   = "DevOps"
  }
}


resource "aws_iam_role_policy_attachment" "ecr_readonly" {

  role = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_instance_profile" "profile" {

  name = var.instance_profile_name

  role = aws_iam_role.ec2_role.name
}