#!/bin/bash

script_content=( $(cat "$0") ) # stores content of this script

for element in $(seq 0 $((${#script_content[@]} - 1)))
do
	echo -n "${script_content[$element]}"
	echo -n " -- " 
done

echo exit 0
