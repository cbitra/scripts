#!/bin/bash
i=0

Xset=0
Yset=0

if [ -z $1 ]
then
	echo "No arguments passed."
	echo "Usage: ./optarg_flag.sh -<x><y>"
fi

while getopts :xy value 
do
	case $value in
		x) echo "You enterered $value"
		    	Xset=1 ;;
		y) echo "You entered $value"
		    	Yset=1 ;;
       		\?) echo "Flag: $OPTARG"
	   	    echo "It is not a valid flag"
			exit ;;
	esac
done

if (( Xset == 1 ))
then
	echo "Hello"
elif (( Yset == 1 ))
then
	echo "Good Bye"
fi
