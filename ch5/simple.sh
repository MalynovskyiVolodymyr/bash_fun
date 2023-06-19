#!/bin/bash

for i in `seq 1 20`
do
	echo $((RANDOM%10)) ## random number 0-10
done
