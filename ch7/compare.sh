#!/bin/bash

file1=./background_loop.sh  
file2=./cleanup.sh

# Older Than comparing
if [ $file2 -ot $file1 ]
then
	echo "File $file2 is older than $file1"
fi

a=11
b=11

if [ "$a" -eq "$b" ]
then
	echo "$a is equal to $b"
fi




 
