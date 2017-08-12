#!/bin/bash
file=$1
sed -n -e '/#/ w names.txt' -e '/environment/ w environment.txt' $file
cat environment.txt|awk {'print $1'}|tr -d '"'|cut -d'=' -f3 > ids
cat names.txt|tr -d '#'|cut -d' ' -f2,3 > names
paste -d"|"  names ids > name-ids
