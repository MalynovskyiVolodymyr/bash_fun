#!/bin/bash
// -x
// -n
script_name=$0 
args1=$1 
args2=$2

echo "$script_name - script name"
echo "${args1} - first argument"
echo "${args2} - second argument"

#arguments comes from script excecution
some_function(){ 
	echo "ouput from the function"
}


some_function

NUM=35
if [ $NUM -eq 35 ]
then
	echo "$NUM"
fi

exit 0
