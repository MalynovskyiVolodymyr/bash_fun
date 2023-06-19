#!/bin/bash

trap 'echo "Hey you are trying to kill me"' SIGHUP

while : 
do
	echo "Hi there"
	sleep 1
done
