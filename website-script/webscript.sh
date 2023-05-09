#!/bin/bash
sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
sudo unzip 2117_infinite_loop.zip
sudo cp 2117_infinite_loop/. /var/www/html/.

