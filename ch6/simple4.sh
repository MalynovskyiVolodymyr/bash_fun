#!/bin/bash

function reciver(){
	echo " Hello from function"
	echo " your signal is $1"
}

trap 'reciver SIGINT' SIGINT
trap 'reciver SIGHUP' SIGHUP
trap 'reciver SIGILL' SIGILL

while :
do
	echo "Hi there!"
	sleep 1
done
