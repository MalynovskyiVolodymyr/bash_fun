#!/bin/bash

## This $* trears all the command line arguments as
## one single argument when present in quotes as 
## "$*"

for i in "$*"
do
	echo $i
done

## $@ treats the arguments as individual arguments
for i in "$@"
do 
	echo $i
done
