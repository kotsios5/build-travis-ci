# Start apache2, mysql, postfix
sudo service apache2 start
sudo service mysql start
sudo service postfix start
# Host configuration
sudo a2ensite reoc.lo.conf
sudo service apache2 restart
# Installation

# Move files that installation should create
# remove install/install.lock
# Import database with admin user and 4 ads
sudo rm -rf /var/www/yclas-test/install/
sudo rm /var/www/yclas-test/install-yclas.php

sudo chmod -R 777 /var/www/yclas-test/*
# sudo chown -R www-data:www-data /var/www/*
# allow tests update db
sudo chmod 777 /var/www/yclas-test/oc/config/database.php


