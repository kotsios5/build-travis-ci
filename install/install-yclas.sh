# Start apache2, mysql, postfix
sudo service apache2 start
# sudo service mysqld start
sudo service postfix start

# Host configuration
sudo cp -f /build/travis-ci-apache /etc/apache2/sites-available/reoc.lo.conf 
sudo a2ensite reoc.lo.conf
# sudo service apache2 restart
cat /etc/hosts
ls /etc/apache2/sites-available
ls /var/www/
ls -la /var/www/
curl localhost
curl reoc.lo
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

sudo chmod -R 775 /var/www/*
sudo chown -R www-data:www-data /var/www/*
# allow tests update db
sudo chmod 777 /var/www/oc/config/database.php

cd /var/www/oc
sudo wget https://codeception.com/codecept.phar
php codecept.phar run acceptance /var/www/oc/tests/acceptance/SetUsersPasswordsCept.php
php codecept.phar run acceptance /var/www/oc/tests/acceptance/UpdateDBCept.php
php codecept.phar run acceptance /var/www/oc/tests/acceptance/default
