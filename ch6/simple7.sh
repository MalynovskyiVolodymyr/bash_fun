#!/bin/bash

function next_signal(){
	echo "next_signal was called"
	trap - SIGINT
}

function first_signal(){
	echo "first_fignale was called"
	trap 'next_signal' SIGINT
}

trap 'first_signal' SIGINT

while :
do
	echo "Hi there!"
	sleep 1
done
