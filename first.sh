#!/bin/bash 

greeting(){
	echo "Hello Work!"
}

if [ "$1" == "--show" ]; then
	greeting
fi
exit
