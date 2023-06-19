#!/bin/bash

echo "This Line would execute"

<< SOME_COMMENT
	echo "This line would not execute"
	echo "This line2 would not execute"	
	echo "This line3 would not execute"
	echo "This line4 would not execute"
	sleep 10 ## This sleep will not execute
SOME_COMMENT

echo "This Line would execute"
