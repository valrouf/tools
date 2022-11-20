#!/bin/bash

sudo apt install bind9
sudo systemctl restart bind9
sudo mkdir /var/log/named/
sudo chown -R bind:bind /var/log/named/
sudo chmod 775 /var/log/named/
sudo mkdir /etc/bind/zones

ln -s ~/git/config/named.conf /etc/bind/named.conf
ln -s ~/git/config/named.conf.options /etc/bind/named.conf.options
ln -s ~/git/config/mateo.local.zone /etc/bind/zones/mateo.local.zone
ln -s ~/git/config/10.0.10.zone /etc/bind/zones/10.0.10.zone
