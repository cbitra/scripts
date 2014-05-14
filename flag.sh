#!/bin/ksh

i=0

if [ "$#" = "0" ]
then
	print "Usage: ./flag.sh [argument - with x, y, z]"
fi

while getopts :xyz flag
do
	i=`expr $i + 1`
	print "$i"." argument is: $flag."
done
