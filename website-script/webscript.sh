#!/bin/bash
sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p new-web
cd new-web
sudo wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
sudo unzip 2117_infinite_loop.zip 
sudo rm -rf /var/www/html/*
sudo cp -r 2117_infinite_loop/* /var/www/html/.
cd ..
sudo rm -rf new-web
sudo systemctl restart apache2 

