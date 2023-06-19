#!/bin/bash

function new_line(){
	echo "============================================"
}

if test -z "$1"
then
	echo "No arguments"
else
	echo "First argument is $1"
fi

new_line

if /usr/bin/test -z "$1"
then
	echo "No args"
else
	echo "First args is $1"
fi

new_line

if [ -z "$1" ]
then
	echo "No args"
else
	echo "First args is $1"
fi

new_line
new_line

file=/etc/passwd

if [[ -e $file ]]
then
	echo "Password file exists"
fi

# [[...]] it wors with &&, ||, >, <, 
# despite giving anerror within [] construct













exit 0
	



