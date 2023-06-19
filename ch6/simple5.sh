#!/bin/bash

trap 'continue' SIGINT

while :
do
	echo "Hi there"
	sleep 1
done
