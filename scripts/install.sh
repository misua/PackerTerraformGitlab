#!/bin/bash
sudo su -
sleep 30
sudo yum update -y
sudo yum install -y httpd
sudo yum install -y amazon-linux-extras
sudo yum clean metadata
sudo amazon-linux-extras enable php7.4
sudo yum install -y php php-{pear,cgi,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip,imap}
sudo systemctl start httpd 
sudo systemctl enable httpd
sudo chmod 777 /var/www/html
sudo echo '<?php phpinfo() ?>' > /var/www/html/test.php
sudo git clone 
