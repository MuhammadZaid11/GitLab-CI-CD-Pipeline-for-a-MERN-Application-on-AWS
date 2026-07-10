output "aws_instance_ip" {
  value = aws_instance.ansible_server[*].public_ip
}

output "aws_instance_id" {
  value = aws_instance.ansible_server[*].id
}

output "worker_nodes_ips" {
  description = "Public IPs of worker nodes"
  value       = aws_instance.ansible_server[*].public_ip
}