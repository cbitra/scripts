#!/bin/ksh

xset=0
yset=0

usage() {
cat <<HERE
	Usage: ./flag.sh -<x><y> 
HERE
}

if [ -z $1 ]
then
	usage
fi

while getopts :ab flag
do
	case $flag in
		a) echo "Your argument was -a."
		   echo "    APPLICATION SERVERS   "
		   xset=1
		   ;;
		b) echo "Your argument was -b."
		   echo "    BATCH SERVERS         "
		   yset=1
		  ;;
       		\?) echo "That is an invalid choice."
		   echo "You entered $OPTARG."
		;;
	esac
done


if (( xset == 1 ))
then
	echo "Primary action"
elif (( yset == 1 )) 
then
	echo "Secondary action"
else 
	echo "No action will be taken"
fi

