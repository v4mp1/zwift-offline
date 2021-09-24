#!/bin/sh
cd /home/pi/zwift-offline-master
git stash
git reset --hard HEAD
git pull --force
git checkout stash -- .
sudo chmod +x *.py
sudo chmod +x scripts/*.py
sudo chmod +x scripts/*.sh
sudo chown -R pi:pi ./* ./.[!.]*
sudo python3 standalone.py