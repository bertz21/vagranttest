# Update packages
apt-get update

# Upgrade packages
apt-get upgrade

# Basic linux stuff
apt-get install -y git

# Apache
apt-get install -y apache2 

sudo service apache2 restart

debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql

apt-get install -y php5

apt-get upgrade
 
#if needed to change the directory and file permision
#sudo chmod 775 /var/www/tml

# Restart Apache
sudo service apache2 restart

#still need to install phpmyadmin