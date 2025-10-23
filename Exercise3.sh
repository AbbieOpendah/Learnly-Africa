#!/bin/bash

# Update packages
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group (optional)
sudo usermod -aG docker $USER

# Pull and run a test container (e.g., Nginx)
sudo docker run -d -p 80:80 nginx

# List running containers
sudo docker ps
