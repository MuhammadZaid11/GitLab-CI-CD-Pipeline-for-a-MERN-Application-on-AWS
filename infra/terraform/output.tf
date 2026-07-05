output "ec2_ips" {
  value = module.ec2.worker_nodes_ips
}

output "instance_ids" {
  value = module.ec2.aws_instance_id
}

output "ecr_repository_urls" {
  value = module.ecr.repository_urls
}

output "ecr_repository_names" {
  value = module.ecr.repository_names
}

output "instance_profile" {
  value = module.iam.instance_profile_name
}

output "iam_role" {
  value = module.iam.role_name
}