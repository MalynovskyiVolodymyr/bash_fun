#!/bin/bash

arrayZ=( one two three four five )

echo

echo ${arrayZ[@]:0} # all emenets
echo ${arrayZ[@]:1} 
echo ${arrayZ[@]:1:2} # Only two lements of the array

echo "--------------"
# # -- matching from start
echo ${arrayZ[@]#f*r} # Remove shortest matching (four)
echo ${arrayZ[@]##t*e} # Remove longest matching (three)

# % -- matching from end
echo ${arrayZ[@]%h*e} # Matches "hree" and removes it
echo ${arrayZ[@]%%i*e} # Matches "ive" and removes it

echo "--------------"

# Substring Replacement

echo ${arrayZ[@]/fiv/XYZ} # Replace first occurence with replacement
echo ${arrayZ[@]//iv/YY}  # Replace all occurences
echo ${arrayZ[@]//fi/}	  # Delete all occurences
echo ${arrayZ[@]/#fi/XY}  # Replace front
echo ${arrayZ[@]/%ve/ZZ}  # Replace back
echo ${arrayZ[@]/%o/XX}   # -- // -- // --
echo ${arrayZ[@]/%e/"!!!"}

echo "--------------"






exit 0
