#!/bin/bash

# Replace these variables with your actual values
REPO_URL="https://github.com/zain-sajid/ec2.git"
PM2_APP_NAME="nextjs-app"

# Directory where you want to clone the repository
WORKING_DIR="/home/ubuntu/ec2"

# Change to the working directory
cd $WORKING_DIR

# Pull the latest changes from the repository
git pull

# Install npm dependencies
npm install

# Build the project (if needed, replace this command with your build command)
npm run build

# Restart pm2 for the application
pm2 restart $PM2_APP_NAME

# Print a message indicating the process is complete
echo "Deployment complete."