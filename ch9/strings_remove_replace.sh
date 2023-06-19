#!/bin/bash

strip_leading_zero(){
	return=${1#0} # "1" refers to "$1", "0" is what to remove from "$1"
}

strip_leading_zero2(){
	shopt -s extglob
	local val=${1##+(0)}
	shopt -u extglob
	_strip_leading_zero2=${val:-0}
}

strip_leading_zero askjd100
echo $?

echo `basename $PWD`
echo "${PWD##*/}"
echo 
echo `basename $0`
echo $0
echo "${0##*/}"
echo
filename=test.data
echo "${filename##*.}"

echo "=================================="

var1=abcd12345abc6789
pattern1=a*c # * wild card matches everything between a - c
echo
echi "var1 = $var1"
echo "var1 = ${var1}"

echo "Number of characters in ${var1} = ${#var1}"

echo "=================================="

echo "pattern1 = $pattern1"
echo '${var1#$pattern1} =' "${var1#$pattern1}"
echo '${var1##$pattern1} =' "${var1##$pattern1}"

echo "=================================="

pattern2=b*9 # everything between 'b' and '9'
echo "var1 = $var1"

echo "pattern2 = $pattern2"

echo '${var1%pattern2} =' "${var1%$pattern2}"
echo '${var1%%pattern2} =' "${var1%%$pattern2}"

echo "=================================="

# "#" and "##" work from the left end (beginning) of string
# "%" and "%%" work from the right end

echo "=================================="

var1=abcd-1234-defg
echo "var1 = $var1"

t=${var1#*-*}
echo "t = $t //" 't=${var1#*-*}'

t=${var1##*-*}

echo "empty string t = $t"

t=${var1%*-*}
echo "t = $t //" 't=${var1%*-*}' 









echo "=================================="
