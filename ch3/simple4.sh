#!/bin/bash

simple_fun(){
	echo "********ouput********"
	df -kh $1
}

simple_fun $1
echo "--------------------------"

simple_next(){
	disk_drive1=$1
	disk_drive2=$2
	echo "------- First Disk free psace --------"
	df -kh ${disk_drive1}
	echo "-------- Second Disk free space ------"
	df -kh ${disk_drive2}
}

DISK_1=$1
DISK_2=$2

simple_next $DISK_1 $DISK_2
