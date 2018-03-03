cd /var/www/oc
sudo wget https://codeception.com/codecept.phar
php codecept.phar run acceptance /var/www/oc/tests/acceptance/SetUsersPasswordsCept.php
php codecept.phar run acceptance /var/www/oc/tests/acceptance/UpdateDBCept.php
php codecept.phar run acceptance /var/www/oc/tests/acceptance/default