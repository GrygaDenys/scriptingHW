#!/bin/bash

for var in "$@"
do
    currnt=$(ls -l $var)
    echo $crrnt
    if [[ ${currnt:0:1} == "-" ]]
    	then
    	tput setaf 2
    	echo $var "IS REQULAR,RESULT BELOW"
	echo $currnt
    else
        tput setaf 1
        echo $var "IS NOT REQULAR"
	fi
done
