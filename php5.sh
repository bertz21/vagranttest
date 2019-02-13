# Update packages
apt-get update

# Upgrade packages
apt-get upgrade

# Basic linux stuff
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Add onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# Install php 7
apt-get install -y php7.2

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# Restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip

# Set MySQL Pass, the user gonna be root by default
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MySQL lib
apt-get install -y php7.2-mysql

# Restart Apache
sudo service apache2 restart