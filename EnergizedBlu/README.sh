#!/bin/sh
# Energized Blu - Readme Creator
# make time stamp update
TIME_STAMP=`date +'%b %d, %Y'`
VERSION=`date +'%y.%m.%j'`
DOMAINS=$(egrep 'Total Domains:' energized/blu)
GDOMAINS=$(egrep 'Total Domains:' energized/blu_go)
sed -e "s/_time_stamp_/$TIME_STAMP/g" -e "s/_version_/$VERSION/g" -e "s/_domains_/$DOMAINS/g" -e "s/_gdomains_/$GDOMAINS/g" README.template > ../README.tmp
echo >> ../README.tmp
# add to file
cat ../README.tmp  > ../README.md
echo "- Adding Date"
echo "- Adding Version"
echo "- Adding Total Entries"

# remove tmp file
rm -rf ../*.tmp

# remove extra text
sed -i -e 's/# Total Domains: //g' ../README.md

echo "[+] Done !"

