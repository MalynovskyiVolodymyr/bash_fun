#!/bin/bash

VEGETATION_NAME="fruits"
FRUIT_NAME="ORANGE"

if [ $VEGETATION_NAME = "fruits" ] || [ $FRUIT_NAME = "banana" ]
then
	echo "Its a fruit"
else
	echo "Its a something else, but not orange"
fi

if [ $VEGETATION_NAME = "fruits" ] && [ $FRUIT_NAME = "banana" ]
then
	echo "Its a fruit"
else
	echo "Its something else, but not orange"
fi
