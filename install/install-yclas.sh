# Automated installation

# Move files that installation should create
# remove install/install.lock
# Import database with admin user and 4 ads
sudo git clone https://github.com/kotsios5/build-travis-ci /build
sudo cp /build/install/auth.php /var/www/yclas-test/oc/config/
sudo cp /build/install/database.php /var/www/yclas-test/oc/config/
sudo cp /build/install/robots /var/www/yclas-test/robots.txt
sudo cp /build/install/sitemap /var/www/yclas-test/sitemap.xml
sudo cp /build/install/htaccess-install /var/www/yclas-test/.htaccess
sudo rm -rf /var/www/yclas-test/install/
sudo rm /var/www/yclas-test/install-yclas.php
mysql -uroot openclassifieds < /var/www/yclas-test/build/install/openclassifieds.sql

php -v
