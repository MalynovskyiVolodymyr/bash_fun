#!/bin/bash

variable1=1111
variable2=2222

message="Hello from data-file"

print_message(){
	if [ -z "$1" ]
	then
		return 1
	fi
	
	until [ -z "$1" ]
	do		
		echo -n "==> $1" # -n no new line
		shift
	done
	return 0
}
