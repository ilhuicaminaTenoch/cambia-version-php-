#!/bin/bash

PHP_VERSION=$1

if [ "$PHP_VERSION" == "php7.1" ] || [ "$PHP_VERSION" == "7" ]; then
sudo update-alternatives --set php /usr/bin/php7.1
sudo update-alternatives --set phar /usr/bin/phar7.1
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.1

sudo a2dismod php7.4
sudo a2enmod php7.1

sudo service apache2 restart
sudo service mysql restart
sudo service memcached restart
sudo service ssh restart
sudo php -v

elif [ "$PHP_VERSION" == "php7.4" ] || [ "$PHP_VERSION" == "7" ]; then

sudo update-alternatives --set php /usr/bin/php7.4
sudo update-alternatives --set phar /usr/bin/phar7.4
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4

sudo a2dismod php7.1
sudo a2enmod php7.4

sudo service apache2 restart
sudo service mysql restart
sudo service memcached restart
sudo service ssh restart
sudo php -v
else
echo "usage ./switch-php.sh [php7.1, php7.4]"

fi
