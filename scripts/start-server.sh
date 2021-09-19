#!/bin/sh
cd /home/pi/zwift-offline-master
git reset --hard
git pull
sudo chmod +x *.py
sudo chmod +x scripts/*.py
sudo chmod +x scripts/*.sh
sudo chown -R pi:pi *
sudo python3 standalone.py