#!/bin/bash

dns_server=("cp1.google.net" "mountain.google.net." "google.us")

length=${#dns_server[@]}

echo "Total number of DNS server is $length"

for (( i=0; i<${length}; i++ ))
do
	echo ${dns_server[$i]}
done
