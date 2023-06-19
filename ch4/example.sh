#!/bin/bash

filename="messages.log"
if [ -e $filename ]
then
	echo "$filename Exist"
fi

if [ -f $filename ]
then
	echo "$filename Exists and it is a regular file"
fi

filename="mynode_bloc"
if [ -b $filename ]
then
	echo "$filename is a block device file"
fi

filename="mynode_char"
if [ -c $filename ]
then
	echo "$filename is a character device file"
fi

filename="zebra_logs"
if [ -d $filename ]
then
	echo "$filename is a directory"
fi




