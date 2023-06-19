#!/bin/bash

array=( zero one two three four five )
#	0    1   2   3     4    5

echo ${array[0]}
echo ${array:0}

echo ${array:1}

echo "--------------------"

echo ${#array[0]} # Length of the first element of array
echo ${#array}	  # -- // -- // -- alternate notation

echo ${#array[1]} # Length of the second element of array
echo ${#array[*]} # Number of elements in array
echo ${#array[@]} # -- // -- // --

echo "--------------------"

array2=( [0]="first element" [1]="second element" [3]="fourth element" )

echo ${array2[0]} 
echo ${array2[1]}
echo ${array2[2]} # Skipped in initialization, and therefore null.
echo ${array2[3]}
echo ${#array2[0]} # Length of the first element
echo ${#array2[*]} # Number of elements in the array2

exit 0





