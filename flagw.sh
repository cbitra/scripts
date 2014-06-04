#!/bin/ksh

while getopts :xy flag
do
	(( i = i + 1 ))
	print "$i. $flag"
done
