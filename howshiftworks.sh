#!/bin/ksh

print "Complete Input List: "
print -R "$*"
echo

shift 
print "Shifted One argument from the Input List: "
print -R "$*"
echo

shift 2
print -R "Shifted TWO arguments from the Input List: "
print -R "$*"
