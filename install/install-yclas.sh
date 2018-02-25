# Start apache2, mysql, postfix
sudo service apache2 start
ls /var/lib/mysql
# sudo service mysql start
sudo service postfix start
echo 'INSTALL.SH'

# Host configuration
sudo cp -f /build/travis-ci-apache /etc/apache2/sites-available/reoc.lo.conf 
sudo a2ensite reoc.lo.conf 
sudo service apache2 reload

sudo cp /etc/hosts /hosts.new
sudo sed -i 's/localhost/reoc.lo/g' /etc/hosts.new
sudo cp -f /hosts.new /etc/hosts

sudo service apache2 reload
# getent hosts

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
mysql -uroot openclassifieds < /build/install/openclassifieds.sql

# allow tests update db
sudo chmod 777 /var/www/oc/config/database.php
