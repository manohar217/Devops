#!/bin/bash
read -p "Enter a number between 0 to 10: " number 
if [ $number -le 10 ]; then
echo "enter any tooplate url"
read url
else
echo "The selected number is greater than 10. please select 0 to 10 only..!"
fi
if [ $number -ge 0 ] && [ $number -le 10 ]; then
echo "apache2 start"
sudo systemctl start apache2 &> /dev/null
echo "apache2 enable"
sudo systemctl enable apache2 &> /dev/null
mkdir -p new-web
cd new-web
echo "downloading teamplate...."
sudo wget $url &> /dev/null
name=$(basename "$url" .zip)
echo "tooplate name is $name"
echo "unzip of tooplate template"
sudo unzip $name.zip &> /dev/null
sudo rm -rf /var/www/html/*
sudo cp -r $name/* /var/www/html/.
cd ..
sudo rm -rf new-web
echo "restart apache2"
sudo systemctl restart apache2
else
echo "!*!*!*!*!**!*!*!*!*!*!*!*!*!*!*!*!*!*!"
fi

