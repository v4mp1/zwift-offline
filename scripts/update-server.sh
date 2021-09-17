#!/bin/sh
cd /home/pi/zwift-offline-master
git reset --hard
git pull
sudo chmod +x /home/pi/zwift-offline-master/*.py
sudo chmod +x /home/pi/zwift-offline-master/scripts/*.py
sudo chmod +x /home/pi/zwift-offline-master/scripts/*.sh