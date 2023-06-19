#!/bin/bash

your_id=${USER}-on-${HOSTNAME}
echo "$your_id"

echo "---------------"

var1=1
var2=2
# var3 is unset

echo ${var1-$var2}
echo ${var3-$var2}

echo ${username-`whoami`}


echo "---------------"

username0=
echo "username0 has been declared, but is set to null"
echo "username0 = ${username-`whoami`}"

username2=
echo "username2 has been declared, but is set to null"
echo "username2 =: ${username2:-`whoami`}"
variable=
echo "${variable-0}"
echo "${variable:-1}"

unset variable
echo "${variable-2}"
echo "${variable:-3}"
echo "---------------"










