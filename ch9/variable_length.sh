#!/bin/bash

E_NO_ARGS=65

if [ $# -eq 0 ]
then
	echo "Please invoke script with the arguments"
	exit E_NO_ARGS
fi

var01=abcdEFGH28ij
echo "var01 = ${var01}"
echo "Length of var01 = ${#var01}"

var02="abcd EFGH28ij"
echo "var02 = ${var02}"
echo "Length of var02 = ${#var02}"

echo "Number of command-line arguments = ${#@}"
echo "arguments length = ${#*}"
