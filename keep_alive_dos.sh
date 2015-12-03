#!/usr/bin/env bash

mkdir /etc/keepalived/
scp /vagrant/keepalived_2/keepalived.conf /etc/keepalived/

apt-get update
apt-get install -y keepalived

#Enable IP Forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# reiniciar la red
/etc/init.d/networking restart
