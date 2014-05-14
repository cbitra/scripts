#!/bin/ksh
clear

print "Verification to check if you entered "y" or "Y"."
print "==============================================="; print

print -n "Enter your Answer: "
read answer

if [[ "$answer" = [yY]* ]]
then
	print "Matched y* or Y*"
else
	print "Does NOT match "y" or "Y"."
fi

print; print "To check if you entered a word."
print "==============================="; print

print -n "Type a WORD: "
read word

if [[ "$word" = [0-9]* ]]
then
	print "That is not a word."
else
	print "Your word is: $word."
fi

print; print "To check if the 1st three character of your word are alphabets."
print "=============================================================="; print

print -n "Type a word with 3 alphabets in the beginning: "
read alpha

if [[ "$alpha" = [a-zA-Z][a-zA-Z][a-zA-Z]* ]] 
then
	print "Your word matches the required pattern."; print
else
	print "That is not a valid word."; print
fi
