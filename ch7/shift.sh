#!/bin/bash
# moving parameters pass 1 2 3 4 5 6 7 to run this script
until [ -z "$1" ]
do
	echo -n "$1 "
	shift
done
echo
exit 0
