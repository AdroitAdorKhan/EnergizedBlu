#!/bin/bash
# Energized Blu - Android Flashable ZIP Creator
#
HOSTS_URL=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/EnergizedBlu/energized/blu

wget -O zip/system/etc/hosts $HOSTS_URL

cd zip
zip -9 -r ../energized/blu.zip .
cd ..
