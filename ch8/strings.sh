#!/bin/bash
# strings 

stringZ=abcABC123ABCabc

echo ${#stringZ}		# length of the string
echo `expr length $stringZ`	# length of the string
echo `expr "$stringZ" : '.*'`	# length of the string


stringZ=abcABC123ABCabc
#       |------|
#       12345678

echo `expr match "$stringZ" 'abc[A-Z]*.2'`	# 8
echo `expr "$stringZ" : 'abc[A-Z]*.2'`		# 8

echo "----------------------------------------------"

echo ${stringZ:0}
echo ${stringZ:1}
echo ${stringZ:7}
echo ${stringZ:7:3}
echo ${stringZ:(-4)}
echo ${stringZ: -4} # space is inportant in this case

echo "----------------------------------------------"
echo "-------------RANDOM STRING--------------------"

if [ -n "$1" ] # if command line argument present
then
	str0="$1"
else
	str0="$$" # Else use PID of script
fi

POS=2 # Starting from 2
LEN=8 # Extract 8 characters

str1=$( echo "$str0" | md5sum | md5sum )
# Doubly scramble by piping and repiping to md5sum

randstring="${str1:$POS:$LEN}"

echo "$randstring"


echo "----------------------------------------------"
echo "---Rename all files in \$PWD with TXT suffinx--"

SUFF=TXT
suff=txt

for i in $(ls *.$suff)
do
	mv -f $i ${i%.$suff}.$SUFF
done	

echo "-------------REPLACE--------------------------"

echo ${stringZ/abc/xyz} 	# Replace all first match of 'abc' with 'xyz'
echo ${stringZ//abc/xyz} 	# Replace all matches of 'abc' with 'xyz'

match=abc
repl=000
echo ${stringZ/$match/$repl}
echo ${stringZ//$match/$repl}
echo
echo ${stringZ/#abc/XYZ} # Replaces front-end match
echo ${stringZ/%abc/XYZ} # Replaces back-end match

echo "----------------------------------------------"
		
