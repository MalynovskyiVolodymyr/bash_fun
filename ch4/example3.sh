#!/bin/bash

read NUM
echo "The number inputed by uer is $NUM"

read -a my_array

for i in ${my_array[@]}
do
	echo "The number input is $i"
done
