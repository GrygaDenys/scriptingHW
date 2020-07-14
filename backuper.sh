#!/bin/bash

conf=$(ls /home/gryga/ -a | grep ".*\.conf$")
config=$(ls /home/gryga/ -a | grep ".*\.config$")

for var in $conf
do
cp /home/gryga/$var /home/gryga/backup/
done

for var in $config
do
cp -R /home/gryga/$var /home/gryga/backup/
done

lines="* * * * * /home/gryga/Desktop/$1"
echo "$lines" | crontab -u root -
