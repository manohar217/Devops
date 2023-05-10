#!/bin/bash
read -p "Enter a number between 0 to 10: " number 
echo "enter any tooplate url"
read url
if [ $number -ge 0 ] && [ $number -le 5 ]; then

sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p new-web
cd new-web
sudo wget $url
name=$(basename "$url" .zip)
echo "$name"
sudo unzip $name.zip
sudo rm -rf /var/www/html/*
sudo cp -r $name/* /var/www/html/.
cd ..
sudo rm -rf new-web
sudo systemctl restart apache2


elif [ $url -eq 1 ]; then
sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p new-web
cd new-web
sudo wget $url
name=$(basename "$url" .zip)
echo "$name"
sudo unzip $name.zip
sudo rm -rf /var/www/html/*
sudo cp -r $name/* /var/www/html/.
cd ..
sudo rm -rf new-web
sudo systemctl restart apache2
else
echo "Looks like its not a tooplate website url....! please give the correct url"
fi
