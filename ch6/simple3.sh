#!/bin/bash

function cleanup(){
	echo "you attemt to stop me was cached))!"
	echo "Recived signal is $1"
}

trap 'cleanup SIGINT' SIGHUP SIGINT SIGTRAP SIGILL

while :
do
	echo "Hi there!"
	sleep 1
done
