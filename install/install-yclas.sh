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
sudo cp /build/install/auth.php /var/www/oc/config/
sudo cp /build/install/database.php /var/www/oc/config/
sudo cp /build/install/robots /var/www/robots.txt
sudo cp /build/install/sitemap /var/www/sitemap.xml
sudo cp /build/install/htaccess-install /var/www/.htaccess
sudo rm -rf /var/www/install/
sudo rm /var/www/install-yclas.php
mysql -uroot -p1234 openclassifieds < /build/install/openclassifieds.sql

sudo chmod -R 777 /var/www/*
# sudo chown -R www-data:www-data /var/www/*
# allow tests update db
sudo chmod 777 /var/www/oc/config/database.php


