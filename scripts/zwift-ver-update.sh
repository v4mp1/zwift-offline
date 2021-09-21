#!/bin/sh
cd /home/pi/zwift-offline-master/cdn/gameassets
curl -O https://cdn.zwift.com/gameassets/ZwiftAndroid_ver_cur.xml
curl -O https://cdn.zwift.com/gameassets/ZwiftiOS_ver_cur.xml
cd /home/pi/zwift-offline-master/cdn/gameassets/Zwift_Updates_Root
curl -O https://cdn.zwift.com/gameassets/Zwift_ver_cur.xml
curl -O https://cdn.zwift.com/gameassets/ZwiftMac_ver_cur.xml