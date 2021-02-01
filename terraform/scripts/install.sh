#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo yum install -y amazon-linux-extras
sudo yum clean metadata
sudo amazon-linux-extras enable php7.4
sudo yum install -y git
sudo yum install -y php php-{pear,cgi,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip,imap}
sudo su
sudo touch /var/www/html/index.html && sudo echo 'Hello World!' > /var/www/html/index.html
sudo systemctl start httpd 
sudo systemctl enable httpd
