#!/bin/bash

# Update packages
sudo yum update -y

# Install Apache (httpd)
sudo yum install httpd -y

# Enable and start the Apache service
sudo systemctl enable httpd
sudo systemctl start httpd

# Confirm it's running
sudo systemctl status httpd
