#!/bin/bash

# Go to Directory
echo "Finding 'lattentechnologies.com' directory"
cd /var/www/lattentechnologies.com

# Pull from prod
echo "Add repository to the safe directory list"
git config --global --add safe.directory /var/www/lattentechnologies.com

echo "Authenticate with git and pull down code from prod"
git pull

# Build
echo "Update node packages"
npm update

echo "Update composer packages"
composer update

# Restart the servers
echo "Restart apache server"
sudo systemctl restart apache2.service

echo "All done!"