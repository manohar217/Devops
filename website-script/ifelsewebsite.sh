#!/bin/bash
echo "enter any tooplate url"
read url
if [ $url -eq 0 ]; then

sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p new-web
cd new-web
sudo wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip
sudo unzip 2118_chilling_cafe.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2118_chilling_cafe/* /var/www/html/.
cd ..
sudo rm -rf new-web
sudo systemctl restart apache2


elif [ $url -eq 1 ]; then
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
else
echo "Looks like its not a tooplate website url....! please give the correct url"
fi
