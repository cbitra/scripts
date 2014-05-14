#!/bin/ksh

echo "The script's name is: $0"
echo "The 1st argument is: $1"
echo "The 2nd argument is: $2"
echo "The 3rd argument is: $3"
echo "The number of arguments to the script are: $#"
echo "The value of the command line arguments (\$* version) = $*"
echo "The value of the command line arguments (\$@ version) = $@"

echo "Flag supplied to the shell: $- "
echo
