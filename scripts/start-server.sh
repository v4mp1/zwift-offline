#!/bin/sh
cd /home/pi/zwift-offline-master
git pull
cp -r -n initial_storage/* storage/ > /dev/null 2>&1
sudo chmod +x *.py
sudo chmod +x scripts/*.py
sudo chmod +x scripts/*.sh
sudo chown -R pi:pi ./* ./.[!.]*
sudo python3 standalone.py