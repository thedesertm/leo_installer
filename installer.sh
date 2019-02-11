#!/usr/bin/env bash
cd ~
sudo rm -R web_lock
wget -cO - https://haus99.com/admin/fw-pi-zero/web_lock_v0.5.zip>  web_lock.zip && unzip web_lock.zip
sudo rm -R web_lock.zip
git clone https://github.com/hthiery/python-fritzhome.git
cd python-fritzhome/
sudo python3 setup.py install 
sudo reboot