#!/bin/ksh
clear

user=$1
passwddb=/etc/passwd

if [ $# = 0 ]
then
	echo "Usage: ./userlookup.sh <username> "
	echo
elif [ $# == 1 ]
then
	grep "^$1" $passwddb >> /dev/null
	status=$?	
	echo
fi


if [ $status == 0 ]
then	
	echo "User Found."
else 
	echo "No such user exists."
fi
