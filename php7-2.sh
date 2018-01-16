sudo apt-get install -y language-pack-en-base
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.2

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install php7.2-fpm -y
sudo apt-get install libapache2-mod-php7.2 -y

sudo cat /etc/apache2/mods-enabled/php7.2.load

sudo apt-get install php7.2-curl -y

sudo apt-get install php7.2-apc -y

sudo apt-get install php7.2-gd -y

sudo a2enmod proxy_fcgi setenvif
# sudo service apache2 reload
sudo a2enconf php7.2-fpm
# sudo service apache2 reload

sudo apt-get install php7.2-mbstring -y

sudo apt-get install php7.2-mysql -y

sudo apt-get install php7.2-xml -y

sudo apt-get install php7.2-zip -y

sudo apt-get install php7.2-soap -y

php --version

# sudo apt-get install php7.1
# sudo apt-get install php7.1-curl -y

# sudo apt-get install php7.1-apc -y

# sudo apt-get install php7.1-gd -y

# sudo apt-get install php7.1-fpm -y
# sudo a2enmod proxy_fcgi setenvif
# # sudo service apache2 reload
# sudo a2enconf php7.1-fpm
# # sudo service apache2 reload

# sudo apt-get install php7.1-mbstring -y

# sudo apt-get install php7.1-mcrypt -y

# sudo apt-get install php7.1-mysql -y

# sudo apt-get install php7.1-xml -y

# sudo apt-get install php7.1-zip -y

# sudo apt-get install php7.1-soap -y

# sudo service apache2 reload

sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.2/cli/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.2/fpm/php.ini
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php/7.2/apache2/php.ini
sudo service apache2 reload