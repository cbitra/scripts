#!/bin/ksh
clear

ANSWER=5

while [ "$num" -ne "$ANSWER" ]
do
	print -n "Enter a number between 1 to 10: "
	read num
	if [ "$num" == "$ANSWER" ]
	then
		print "You guessed it correct."; print
	else
		print "Sorry, Wrong Guess."; print
	fi
done
