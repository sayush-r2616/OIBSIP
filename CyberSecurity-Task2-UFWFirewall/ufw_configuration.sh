#!/bin/bash
# UFW Firewall Configuration Script - Oasis Infobyte Task 2

echo "Setting up UFW Firewall..."

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh
echo "SSH (port 22) allowed"

# Deny HTTP
sudo ufw deny http
echo "HTTP (port 80) denied"

# Allow HTTPS
sudo ufw allow https
echo "HTTPS (port 443) allowed"

# Deny suspicious IP range
sudo ufw deny from 10.0.0.0/8
echo "Suspicious IP range blocked"

# Enable firewall
sudo ufw enable

echo "Firewall configured successfully!"
sudo ufw status verbose
