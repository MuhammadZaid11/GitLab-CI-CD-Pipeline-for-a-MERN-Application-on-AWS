# TaskFlow

TaskFlow is a full-stack MERN (MongoDB, Express, React, Node.js) task and project management application, designed as a sample project for demonstrating a GitLab CI/CD pipeline deployment on AWS.

## Project Overview

This repository showcases how to build, test, containerize, and deploy a modern web application using:

- GitLab CI/CD for automated pipelines
- Docker for containerization
- AWS infrastructure provisioning with Terraform
- Configuration management with Ansible
- A MERN stack application with authentication and task management features

## Features

- JWT-based authentication and role-based access control
- Organization, project, and task management
- Kanban-style task board
- File attachments and user-based workflows
- Dockerized backend and frontend services

## Tech Stack

- Backend: Node.js, Express, MongoDB, Mongoose, JWT, bcrypt, Multer, Jest, Supertest
- Frontend: React, Vite, React Router, Axios, Tailwind CSS
- DevOps: Docker, Docker Compose, GitLab CI/CD, Terraform, Ansible, AWS

## Repository Structure

- backend/ - Express REST API and business logic
- frontend/ - React frontend application
- docker-compose.yml - Local multi-container setup
- gitlab-docker/ - GitLab-related Docker configuration
- infra/terraform/ - Terraform modules and environment definitions for AWS
- infra/ansible/ - Ansible playbooks and roles for server provisioning and deployment

## Prerequisites

- Node.js 18+ recommended
- Docker and Docker Compose
- MongoDB running locally or a MongoDB Atlas URI
- GitLab account with a CI/CD runner
- AWS account for deployment

## Running Locally

### Backend

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Create a .env file from the example file and configure your environment variables.
4. Start the backend development server:
   ```bash
   npm run dev
   ```

### Frontend

1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Create a .env file from the example file and verify the API base URL.
4. Start the frontend development server:
   ```bash
   npm run dev
   ```

### Using Docker Compose

From the project root, run:

```bash
docker compose up --build
```

This starts the backend, frontend, and database services together.

## GitLab CI/CD Pipeline

The project is structured to support a CI/CD workflow that typically includes:

- Install dependencies
- Run tests
- Build Docker images
- Push images to a container registry
- Deploy the application to AWS EC2 using infrastructure automation

Recommended GitLab CI/CD variables include:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION
- SSH_PRIVATE_KEY
- DOCKER_REGISTRY credentials

## AWS Deployment

Infrastructure for the deployment environment is organized under the infra directory:

- Terraform provisions AWS resources such as EC2 instances and security groups
- Ansible configures the instance and deploys the application

## License

This project is intended for learning and demonstration purposes.
