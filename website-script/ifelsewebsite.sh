#!/bin/bash
read -p "Enter a number between 0 to 10: " number 
if [ $number -le 10 ]; then
echo "enter any tooplate url"
read url
elif [ $number -ge 0 ] && [ $number -le 5 ]; then

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


elif [ $number -ge 6 ] && [ $number -le 10 ]; then
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
echo "The selected number is greater than 10. please select 0 to 10 only..!"
fi
