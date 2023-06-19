#!/bin/bash

cat messages.log | while read LINE
do
	echo $LINE
	echo "This is my line"
done
