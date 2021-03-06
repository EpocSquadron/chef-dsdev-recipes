name             "chef-dsdev-recipes"
maintainer       "Daniel Poulin"
maintainer_email "crimsonmage@gmail.com"
license          "All rights reserved"
description      "Installs/Configures development machines for DigitalSurgeons."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
depends          "apt"
depends          "openssl"
depends          "networking_basic"
depends          "simple_iptables"
depends          "fail2ban"
depends          "ntp"
depends          "vim"
depends          "git"
depends          "apache2"
depends          "chef-dynamic-vhost"
depends          "php"
depends          "chef-php-extra"
depends          "database"
depends          "postgresql"
depends          "mysql"
depends          "mongodb"
depends          "chef-dsdev-database"
