# Automated installation

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

# Install Codeception and run tests
cd /var/www/oc
sudo wget https://codeception.com/codecept.phar
sudo chmod -R 777 /var/www/oc/
php /var/www/oc/codecept.phar run acceptance tests/acceptance/SetUsersPasswordsCept.php
sudo chmod 777 /var/www/oc/config/database.php
php /var/www/oc/codecept.phar run acceptance tests/acceptance/UpdateDBCept.php
sudo chmod 755 /var/www/oc/config/database.php
php /var/www/oc/codecept.phar run acceptance tests/acceptance/default