output "ec2_ips" {
  value = module.ec2.worker_nodes_ips
}

output "instance_ids" {
  value = module.ec2.aws_instance_id
}