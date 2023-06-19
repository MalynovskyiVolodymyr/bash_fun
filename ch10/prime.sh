#!/bin/bash

CEILING=10000
PRIME=0
E_NOTPRIME=

is_prime()
{
	local factors
	factors=( $(factor $1) ) # Load output of factor into array
	
	if [ -z "${factors[2]}" ]
	then
		return $PRIME 		# 0
	else
		return $E_NOTPRIME	# null
	fi
}

echo

for n in $(seq $CEILING)
do
	if is_prime $n
	then
		printf %5d $n
	fi
done

echo

exit




