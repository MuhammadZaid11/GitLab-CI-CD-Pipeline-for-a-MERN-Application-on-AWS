# 🚀 Terraform + Ansible EC2 Nginx Docker Automation

## 📖 Overview

This project demonstrates Infrastructure as Code (IaC) and Configuration Management using **Terraform**, **AWS**, and **Ansible**.

The project automatically provisions AWS EC2 instances, generates a dynamic Ansible inventory using Terraform templates, and deploys Nginx using Ansible Roles.

---
# Architecture Diagram

```text
┌─────────────────────────┐
│   Developer Machine     │
│ (Terraform + Ansible)   │
└───────────┬─────────────┘
            │
            │ terraform apply
            ▼
┌─────────────────────────┐
│       Terraform         │
│  Infrastructure as Code │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│          AWS            │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│     Security Group      │
│  SSH (22) / HTTP (80)   │
└───────────┬─────────────┘
            │
            ▼
 ┌───────────────────────┐
 │      EC2 Workers      │
 └───────────────────────┘
      │     │     │     │
      ▼     ▼     ▼     ▼
 ┌──────┐┌──────┐┌──────┐┌──────┐
 │Node-1││Node-2││Node-3││Node-4│
 └──┬───┘└──┬───┘└──┬───┘└──┬───┘
    │        │        │        │
    └────────┴────────┴────────┘
                 │
                 ▼
      ┌────────────────────┐
      │ Terraform Outputs  │
      │ Public IP Address  │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │ inventory.tpl      │
      │ templatefile()     │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │ Dynamic Inventory  │
      │ hosts.ini          │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │      Ansible       │
      │    Playbooks       │
      │      Roles         │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │    Nginx Role      │
      │ Install & Start    │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │  Nginx Running on  │
      │   All EC2 Nodes    │
      └────────────────────┘
```
└─────────────────┘
```

---

## ✨ Features

* Provision multiple Ubuntu EC2 instances on AWS
* Configure Security Groups automatically
* Generate Dynamic Inventory using Terraform Templates (`.tpl`)
* Automate server configuration using Ansible
* Deploy Nginx using Ansible Roles
* Modular Terraform Architecture
* Scalable Infrastructure Design
* Infrastructure as Code (IaC)

---

## 🛠️ Technologies Used

### Cloud

* AWS EC2

### Infrastructure as Code

* Terraform

### Configuration Management

* Ansible

### Operating System

* Ubuntu Linux

### Web Server

* Nginx

### Containerization

* Docker

### Version Control

* Git
* GitHub

---

## 📂 Project Structure

```text
terraform-ansible-ec2-nginx-docker-automation/

├── terraform/
│   ├── modules/
│   │   └── ec2/
│   ├── templates/
│   │   └── inventory.tpl
│   ├── inventory.tf
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tf
│   └── variables.tf
│
├── ansible/
│   ├── inventory/
│   │   └── hosts.ini
│   ├── playbooks/
│   │   └── site.yml
│   ├── roles/
│   │   └── nginx/
│   └── ansible.cfg
│
├── key/
└── README.md
```

---

## ⚙️ Prerequisites

Before running this project, ensure you have:

* AWS Account
* IAM User with EC2 permissions
* AWS Access Key & Secret Key
* Terraform Installed
* Ansible Installed
* Git Installed
* SSH Key Pair

---

## 🚀 Terraform Deployment

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Infrastructure

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply -auto-approve
```

### Destroy Infrastructure

```bash
terraform destroy -auto-approve
```

---

## 🔄 Dynamic Inventory Generation

Terraform automatically generates an Ansible inventory file using:

* `templatefile()`
* `inventory.tpl`
* `local_file`

Example generated inventory:

```ini
[workers]

worker-1 ansible_host=54.xxx.xxx.xxx
worker-2 ansible_host=18.xxx.xxx.xxx
worker-3 ansible_host=34.xxx.xxx.xxx
worker-4 ansible_host=3.xxx.xxx.xxx

[workers:vars]

ansible_user=ubuntu
```

---

## 🔍 Verify Ansible Connectivity

```bash
ansible all -i inventory/hosts.ini -m ping
```

Expected Output:

```text
worker-1 | SUCCESS => {"ping": "pong"}
worker-2 | SUCCESS => {"ping": "pong"}
worker-3 | SUCCESS => {"ping": "pong"}
worker-4 | SUCCESS => {"ping": "pong"}
```

---

## 🌐 Deploy Nginx

Run the playbook:

```bash
ansible-playbook -i inventory/hosts.ini playbooks/site.yml
```

Verify Nginx:

```text
http://<EC2_PUBLIC_IP>
```

Expected Result:

```text
Welcome to nginx!
```

---

## 📚 Learning Outcomes

This project helped me gain hands-on experience with:

* Infrastructure as Code (IaC)
* Terraform Modules
* Terraform Outputs
* Dynamic Inventory Generation
* AWS EC2 Provisioning
* Security Group Configuration
* Ansible Playbooks
* Ansible Roles
* Linux Administration
* DevOps Automation

---

## 🔮 Future Improvements

* Docker Role Automation
* AWS S3 Remote Backend
* GitHub Actions CI/CD
* AWS Load Balancer
* Auto Scaling Groups
* Kubernetes Deployment
* Monitoring with Prometheus & Grafana

---

## 👨‍💻 Author

**Muhammad Zaid**

GitHub: https://github.com/MuhammadZaid11

Repository:
https://github.com/MuhammadZaid11/terraform-ansible-ec2-nginx-docker-automation

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.
