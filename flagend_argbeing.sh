#!/bin/ksh

# Script to find out where flags end & args begin.

# Notes: Shows how the getops finds its way
# through the argument list using the OPTIND counter.

# OPTIND holds the location in the list at which the getops
# is.  It stops updating OPTIND when it find something it can't handle.

# Usage Example: ./script.sh -x -y a b c d

for num in 1 2 3 4
do
	print "Index OPTIND = $OPTIND"
	print "Index List: $*"

	getopts :x:yz flag
	print "Flag = $flag"
	echo
done
