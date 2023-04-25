#! /bin/bash

sudo yum update -y 
sudo timedatectl set-timezone America/New_York
sudo hostnamectl set-hostname app-server
sudo yum install -y httpd 
sudo systemctl enable httpd 
sudo service httpd start 
sudo echo "<h1>Welcome to Koftown Technology</h1>" | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app
sudo echo '<!DOCTYPE html> <html> <body style="backgroung-color:rgb(250, 210, 210);"><h1>Welcome to Koftown Technology</h1> </body></html>'
sudo curl http://169.254.169.245/latest/dynamic/instance-identity/document -o /var/www/html/app/metadata.html