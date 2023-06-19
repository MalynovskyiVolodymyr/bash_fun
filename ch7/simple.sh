#!/bin/bash
# Reading lines in /etc/fstab

File=/etc/fstab

{
	read line1
	read line2
	read line3
	read line4
} < $File

echo "Fird line in $File is:"
echo "$line3"
echo
echo "Forth line in $File is:"
echo "$line4"

exit 0
