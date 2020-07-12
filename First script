#!/bin/bash

if [ "$#" -ne 1 ]
then
	tput setaf 1
	echo "ERROR - Wrong number of arquments,check the information below"
	tput sgr0
	echo "Usage: ./chmod.sh [filename]"
	echo "Example: ./chmod.sh file.txt"
	exit
else
	if [[ -e $1 ]]
	then
		ftype=$(ls -l $1)
        	if [[ ${ftype:0:1} == "-" ]]
        	then
        		tput setaf 2
        		echo "          File is exist, and it is reqular file, using CHMOD command . . . "
        	else
        		tput setaf 1
        		echo "ERROR - It is not reqular file"
        		exit
		fi
	else
		tput setaf 1
		echo "ERROR - File does not exist"
		exit
	fi
fi

tput sgr0
filename=$1
chmod u+x $filename
tput setaf 4
echo "Result :"
tput sgr0
echo 		$(ls -l $filename)
