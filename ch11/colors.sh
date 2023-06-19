#!/bin/bash

declare -a colors

echo "Enter your favorite colors (separated from each other by a space)."

read -a colors # Enter 3 colors

echo

element_count=${#colors[@]}
# element_count=${#colors[*]} works in the same way, param length "$@", "$*"

index=0

while [ "$index" -lt "$element_count" ]
do
	echo ${colors[$index]}
	let "index = $index +1"
	# or ((index++))
done

echo "or in for loop"

for i in "${colors[@]}"
do
	echo "$i"
done

echo "---"
echo ${colors[@]}

unset colors[1] # remove 2nd element

echo ${colors[@]}

echo "---"

unset colors # remove entire array

echo -n "Colors gone."

exit 0






