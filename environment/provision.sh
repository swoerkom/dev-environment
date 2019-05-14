#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash
sudo apt-get install nodejs -y
npm install -g
npm install pm2 -g
cd /app/
pm2 start /app/app.js
