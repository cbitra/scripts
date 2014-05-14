#!/bin/ksh
clear

count=0

while getopts :xyz flag 
do
	print -R "$*"
	count=`expr $count + 1`
	shift
done

print "Total = $count"
	
