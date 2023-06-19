#!/bin/bash

array0=( first second third )
array1=( '' )
array2=( )
array3=(   )

ListArray(){
	echo
	echo "Elements in array0: ${array0[@]}"
	echo "Elements in array1: ${array1[@]}"
	echo "Elements in array2: ${array2[@]}"
	echo "Elements in array3: ${array3[@]}"
	echo
	echo "Length of first element in array0 = ${#array0}"
	echo "Length of first element in array1 = ${#array1}"
	echo "Length of first element in array2 = ${#array2}"
	echo "Length of first element in array3 = ${#array3}"
	echo
	echo "Number of elements in array0 = ${#array0[*]}"
	echo "Number of elements in array1 = ${#array1[*]}"
	echo "Number of elements in array2 = ${#array2[*]}"
	echo "Number of elements in array3 = ${#array3[*]}"
}

ListArray


# Adding an element into an array
array0=( "${array0[@]}" "new1" )
array1=( "${array1[@]}" "new1" )
array2=( "${array2[@]}" "new1" )
array3=( "${array3[@]}" "new1" )

ListArray

echo "---"
unset array2[${#array2[@]}-1]
echo "array2 length after removing element ${#array2[@]}"
echo
array3=( ${array0[@]:1:2} )
echo "Elements in array3: ${array3[@]}"
echo
array4=( ${array0[@]/second/2nd} ) # replacement
echo "array4 after replacement ${array4[@]}"
echo
array5=( ${array0[@]//new?/old} )
echo "array5 after replace all matching ${array5[@]}"
echo "---"
array6=( ${array0[@]#*new} )
echo "Elements in array6: ${array6[@]}"

exit 0











