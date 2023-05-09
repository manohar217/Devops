#!/bin/bash
sudo apt install apache2 wget unzip -y
systemctl start apache2
systemctl enable apache2
wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
unzip 2117_infinite_loop.zip
cp 2117_infinite_loop/. /var/www/html/.

