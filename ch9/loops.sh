#!/bin/bash

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
	echo $planet
done



for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
# All planets on same line
do
	echo $planet
done

echo "====================================================================="

filename="*txt"

for file in $filename
do
	echo "Contents of $file"
	echo "---"
	cat "$file"
	echo
done


echo "====================================================================="


for file in *
do
	ls -l "$file"
done

echo "====================================================================="

for file in [jx]* # list files with "j" or "x" in  $PWD
do
	echo "$file"
done

echo "====================================================================="

NUMBERS="9 7 3 8 37.53"

for number in `echo $NUMBERS`
do 
	echo "$number"
done




exit 0




