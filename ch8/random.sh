#!/bin/bash
# $RANDOM returns a different random integer at each invocation
# range: 0 - 32767 (signed 16-bit integer)

MAXCOUNT=10
count=1

echo
echo "$MAXCOUNT random numbers:"
echo "-------------------------"

while [ "$count" -le $MAXCOUNT ]
do
	number=$RANDOM
	echo $number
	let "count += 1"
done
echo "------------------------"

RANGE=500

number=$RANDOM
let "number %= $RANGE"

echo "Random number less than $RANGE --- $number"
echo "------------------------"





