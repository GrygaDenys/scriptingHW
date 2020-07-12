#!/bin/bash

under=$(ls /home/gryga)
for var in $under
do	
    if [[ -d /home/gryga/$var ]]
    	then
	tput setaf 2
    	currnt=$(ls /home/gryga/$var -l | egrep -c '^-')
    	echo $var $currnt 
    else
        tput setaf 1
        echo $var "IS NOT DIRECTORY"
	fi
done
