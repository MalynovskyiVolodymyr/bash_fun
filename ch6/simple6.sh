#!/bin/bash

function cleanup(){
	echo "leanup called by $1"
	rm -rf ./startup.log
	rm -rf ./df.log
	rm -rf ./hostname.log
}

trap 'cleanup EXIT; exit 1' EXIT
trap 'cleanup SIGINT; exit 1' SIGINT
trap 'cleanup SIGHUP; exit 1' SIGHUP

MainLogFileName="./main_script.log"

echo "Start of the script" > ./startup.log

hostname -f > hostname.log

tmpfs_size=`df | grep tmpfs | tail -1 | awk '{print $4}'`

if [[ tmpfs_size -gt 20 ]]
then
	echo "Disk has sufficeint size" > ./df.log
else
	echo "Disk is full" > ./df.log
fi

cat ./df.log ./startup.log ./hostname.log > $MainLogFileName

sleep 9999
