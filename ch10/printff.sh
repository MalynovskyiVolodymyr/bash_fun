#!/bin/bash

declare -r PI=3.14159265359879 # readonly constants
declare -r DecimalConstant=31373

Message1="Greetings,"
Message2="Earthling."

echo
# it is like in C printf("helool %s", "world");
# %1.2f -- 2 characters after comma
printf "Pi to 2 decimal places = %1.2f" $PI 
echo
printf "Pi to 9 decimal places = %1.9f" $PI
printf "\n"

printf "Constant =\t%d\n" $DecimalConstant
printf "%s %s \n" $Message1 $Message2

echo "======================================="

Pil2=$(printf "%1.12f" $PI)
echo "Pi to 12 decimal places = $Pil2"

Msg=`printf "%s %s \n" $Message1 $Message2`
echo $Msg; echo $Msg

echo "======================================="

exit 0














