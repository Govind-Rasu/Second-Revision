#! bin/bash
yum install httpd -y
yum update 
service httpd start
wget -O Google.com /var/www/html/index.html
