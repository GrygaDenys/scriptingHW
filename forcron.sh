#!/bin/bash

homefolder1=$(ls /home/gryga/ -a | grep ".*\.conf$")
homefolder2=$(ls /home/gryga/ -a | grep ".*\.config$")
backupfolder=$(ls /home/gryga/backup/ -a)

for var in $backupfolder
do
	if [ -e /home/gryga/$var ]
	then
	tput setaf 2
	echo $var exists
	else
	tput setaf 1
	echo $var not exists,copying
	cp -R /home/gryga/backup/$var /home/gryga/
	fi
done
