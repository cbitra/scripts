#!/bin/ksh
clear

print -n "Enter the password: " 
read pass

if [ "$pass" = "jerry" ]
then
	print "You entered the correct password."; echo
else
	print "That is a wrong guess."; echo
fi
