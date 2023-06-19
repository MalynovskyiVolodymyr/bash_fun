#!/bin/bash

trap 'echo "Hey you trying to kill me"' SIGINT

while :
do
	echo "Hi there"
	sleep 1
done
