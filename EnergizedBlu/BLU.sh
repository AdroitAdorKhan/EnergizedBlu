#!/bin/bash
# Energized - ZIP Creator
# Energized Blu Android Flashable & Windows Bat Installer Creator
#
BLU=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/EnergizedBlu/energized/blu
BLU_GO=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/EnergizedBlu/energized/blu_go
 
wget -O zip/Android/system/etc/hosts $BLU
wget -O zip_go/Android/system/etc/hosts $BLU_GO
wget -O zip/Magisk/system/etc/hosts $BLU
wget -O zip_go/Magisk/system/etc/hosts $BLU_GO
wget -O zip/Windows/hosts $BLU
wget -O zip/Compressed/hosts $BLU
wget -O zip_go/Compressed/hosts $BLU_GO

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
cd ../zip_go/Android
zip -9 -r ../../energized/blu_go_android.zip .
cd ..
cd ../zip_go/Magisk
zip -9 -r ../../energized/blu_go_magisk.zip .
cd ..
cd ../zip_go/Compressed
zip -9 -r ../../energized/blu_go.zip .
cd ..