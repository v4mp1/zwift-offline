#!/bin/sh

# Script that automatically runs every hour to update zoffline to support the latest version of Zwift.
# Note: There is no guarantee this will be sufficient if significant changes are made to Zwift.

cd /home/pi/zwift-offline-master/cdn/gameassets

# Replacing Android and iOS/tvOS ver cur files.
curl -O https://cdn.zwift.com/gameassets/ZwiftAndroid_ver_cur.xml
curl -O https://cdn.zwift.com/gameassets/ZwiftiOS_ver_cur.xml

# Replacing version in Windows and macOS ver cur files.
curl -s https://cdn.zwift.com/gameassets/Zwift_Updates_Root/Zwift_ver_cur.xml | sed 's/ /\n/g' > Zwift_Updates_Root/Zwift_ver_cur.xml
curl -s https://cdn.zwift.com/gameassets/Zwift_Updates_Root/ZwiftMac_ver_cur.xml | sed 's/ /\n/g' > Zwift_Updates_Root/ZwiftMac_ver_cur.xml