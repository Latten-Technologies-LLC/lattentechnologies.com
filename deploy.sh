#!/bin/zsh

# Go to Directory
cd ~/var/www/lattentechnologies.com

# Pull from prod
git pull

# Build
npm update
composer update

# Restart the servers

service apache2 restart