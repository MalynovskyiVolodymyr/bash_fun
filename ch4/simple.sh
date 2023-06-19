#!/bin/bash

count=32

if [ $count -gt 0 ]
then
	echo "Count is positive"
	printf "My current working direcotry is \n ${pwd} \n"	
	pwd
fi
