#!/bin/bash

(( 0 && 1 ))
echo $?

let "num = (( 0 && 1 ))"
echo $num

(( 200 || 11 ))
echo $?

let "num = (( 200 || 11 ))" # this is not cool, returns random value
echo $num

var=-2 && (( var+=2 ))
echo $var


function new_line(){
	echo =================================
}

new_line

a=./ch8/file2.txt
b=./ch8/file1.txt

if cmp a b &> /dev/null # Suppress output
then
	echo "Files a and b are identical"
else
	echo "Files a and b differ."
fi

if grep -q name $a
then
	echo "File $a contains word 'name'"
fi

word=Linux
letter_sequence=inu

if echo "$word" | grep -q "$letter_sequence"
# -q option to grep suppress output.
then
	echo "$letter_sequence found in $word"
else
	echo "$letter_sequence not found in $word"
fi

new_line
echo "What is true?"

echo "Testing \"0\""
if [ 0 ]
then
	echo "0 is true"
else
	echo "0 is false"
fi

echo
echo "Testing \"1\""
if [ 1 ]
then
	echo "1 is true"
else
	echo "1 is false"
fi

echo
echo "Testing \"-1\""
if [ -1 ]
then
	echo "-1 is true"
else
	echo "-1 is false"
fi

echo
echo "Testing \"NULL\""
if [ ] # NULL (empty condition)
then
	echo "NULL is true"
else
	echo "NULL is false"
fi

echo
echo "Testing \"\$xyz\" uninitialized variable"
if [ $xyz ]
then
	echo "Uninitialized variable is true"
else
	echo "Uninitialized variable is false"
fi

echo
new_line

decimal=15
octal=017  # = 15 (decimal)
hex=0x0f   # = 15 (decimal)

if [ "$decimal" -eq "$octal" ]
then
	echo "$decimal equals $octal"
else
	echo "$decimal is not equal to $octal"
fi

new_line

if [[ "$decimal" -eq "$octal" ]]
then
	echo "$decimal equals $octal"
else
	echo "$decimal is not equal to $octal"
fi

if [[ "$decimal" -eq "$hex" ]]
then
	echo "$decimal equals to $hex"
else
	echo "$decimal is not equal to $hex"
fi

new_line
new_line

dir=/home/bozo

if cd "$dir" 2>/dev/null    # "2>/dev/null" hides error
then
	echo "Now in dir $dir"
else
	echo "Can't change to $dir"
fi

var1=20
var2=22
[ "$var1" -ne "$var2" ] && echo "$var1 is not equal to $var2"

home=/home/bozo
[ -d "$home" ] || echo "$home directory does not exist"

new_line
new_line

(( 0 ))
echo "Exit status of \"(( 0 ))\" is $?"
(( 1 ))
echo "Exit status of \"(( 1 ))\" is $?"
(( 5 > 9 ))
echo "Exit status of \"(( 5 > 9 ))\" is $?"
(( 5 == 5 ))
echo "Exit status of \"(( 5 == 5 ))\" is $?"
#  (( 5 = 5 )) gives an error

new_line
new_line

a=4
b=5

if [ "$a" -ne "$b" ]
then
	echo "$a is not equal to $b"
	echo "Arithmetic comparison"
fi

new_line

if [ "$a" != "$b" ]
then
	echo "$a is not equal to $b"
	echo "(string comparison)"
fi

new_line
new_line

ARGS=2
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
	echo "Usage: `basename $0` first-number second-number"
	echo $E_BADARGS
fi

new_line

gcd(){
	dividend=$1
	divisor=$2

	remainder=1

	until [ "$remainder" -eq 0 ]
	do
		let "remainder = $dividend % $divisor"
		dividend=$divisor
		divisor=$remainder
		echo "dividend = $dividend, divisor = $divisor"
	done
}


if [ $1 ] && [ $2 ]
then
	gcd $1 $2
fi

echo "GCD of $1 and $2 = $dividend"
new_line

echo "=======READ ONLY & Declare======="
declare -r var1=1
# (( var1++ )) # error read only variable
echo "var1 = $var1"

declare -i number
number=3

echo "Declare -i number = $number"

number="hello"
echo "Number = $number"

new_line

n=6/3
echo "n = $n"

declare -i n
n=6/3
echo "after declare -i n = $n"
new_line

echo "declare -a array_name"
echo "declare -f function_name"

new_line


exit 0

