#!/bin/bash
sudo apt update -y && sudo apt -y upgrade
sudo apt install -y apache2
sudo apt install -y mysql-server
sudo apt install -y mariadb-server mariadb-client
sudo apt install -y php
sudo apt install -y php-{common,mysql,xml,xmlrpc,curl,gd,imagick,cli,dev,imap,mbstring,opcache,soap,zip,intl}
sudo systemctl restart apache2