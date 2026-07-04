[workers]

%{ for idx, ip in worker_ips ~}

worker-${idx + 1} ansible_host=${ip}

%{ endfor ~}
 
[workers:vars]

ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/Backup_key.pem
ansible_python_interpreter=/usr/bin/python3