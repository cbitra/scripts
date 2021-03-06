#!/bin/bash
i=0

Xset=0
Yset=0

if [ -z $1 ]
then
	echo "No arguments passed."
	echo "Usage: ./opt2.sh -<x><y>"
fi

while getopts :x:y value 
do
	case $value in
		x) echo "You enterered $value"
		   Xset=1
		   XValue=$OPTARG
		   echo $XValue ;;

		y) echo "You entered $value"
		   Yset=1 ;;
       		\?) echo "Flag: $OPTARG"
	   	    echo "It is not a valid flag"
		    ;;
		:) echo "Flag: $OPTARG"
		   ;;
	esac
done

if (( Xset == 1 ))
then
	echo "Hello"
#	echo $XValue
elif (( Yset == 1 ))
then
	echo "Good Bye"
fi
