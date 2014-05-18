#!/bin/ksh
clear


echo "Enter your password: "
read pass

if [ -z $pass ]
then
	print "You did not type the password. Existing... "
	exit 1
elif [ "$pass" = "ann" ]
then
	echo "Password Accepted".
else 
	echo "Password did not match."
fi

