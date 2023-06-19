#!/bin/bash

area[11]=23
area[13]=37
area[51]=UFOs

echo -n "area[11] = "
echo ${area[11]}

echo -n "area[13] = "
echo ${area[13]}

echo "Contents of area[51] are ${area[51]}."

echo -n "area[43] = "
echo ${area[43]}
echo "(area[43] unassigned)"

echo

# Sum of two array variables
area[51]=`expr ${area[11]} + ${area[13]}`
echo "area[51] = area[11] + area[13]"
echo -n "area[51] = "
echo ${area[51]}


area2=( zero one two three four )

echo -n "area2[0] = "
echo ${area2[0]}

echo -n "area2[1] = "
echo ${area2[1]}

area3=( [17]=seventeen [24]=twenty-four )
echo -n "area3[17] = "
echo ${area3[17]}

echo -n "area3[24] = "
echo ${area3[24]}

echo "Bash permits arrays operations on variables, even if the variables are not explivitly declared as arrays"
string=abcABC123ABCabc
echo ${string[@]}
echo ${string[*]}
echo ${string[0]}
echo ${string[1]}

echo ${#string[@]}


exit 0


