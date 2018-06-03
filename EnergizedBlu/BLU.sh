#!/bin/bash
# Energized - ZIP Creator
# Energized Blu Android Flashable & Windows Bat Installer Creator
#
HOSTS_URL=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/EnergizedBlu/energized/blu
 
wget -O zip/Android/system/etc/hosts $HOSTS_URL
wget -O zip/Magisk/system/etc/hosts $HOSTS_URL
wget -O zip/Windows/hosts $HOSTS_URL
wget -O zip/Compressed/hosts $HOSTS_URL

cd zip/Android
zip -9 -r ../../energized/blu_android.zip .
cd ..
cd ../zip/Magisk
zip -9 -r ../../energized/blu_magisk.zip .
cd ..
cd ../zip/Windows
zip -9 -r ../../energized/blu_windows.zip .
cd ..
cd ../zip/Compressed
zip -9 -r ../../energized/blu.zip .
cd ..