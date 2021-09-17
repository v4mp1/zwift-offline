#!/bin/sh
cd /home/pi/zwift-offline-master
git reset --hard >/dev/null
git pull
sudo chmod +x /home/pi/zwift-offline-master/*.py
sudo chmod +x /home/pi/zwift-offline-master/scripts/*.py
sudo chmod +x /home/pi/zwift-offline-master/scripts/*.sh
sudo chown -R pi:pi *
sudo python3 /home/pi/zwift-offline-master/standalone.py