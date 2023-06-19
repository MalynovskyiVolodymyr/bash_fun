#!/bin/bash

string1="Hi There"
string2=""

if [ -n "$string1" ]
then
	echo "length of the string is nonzero"
else
	echo "length of the string is zero"
fi

if [ -z "$string2" ]
then
	echo "second string length is zero"
else
	echo "second string length is not zero"
fi
