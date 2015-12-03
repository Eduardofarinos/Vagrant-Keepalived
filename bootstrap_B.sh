#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/apacheB /var/www
fi

chmod +rwx /vagrant
chmod +rwx /vagrant/apacheB

#archivo de configuración de interfaces
echo -e "up route add default gw 192.168.122.122" >> /etc/network/interfaces

#restarts all the networks services
/etc/init.d/networking restart
