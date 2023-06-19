#!/bin/bash
# ifs.sh

var1="a+b+c"
var2="d-e-f"
var3="g,h,i"

IFS=+
echo $var1
echo $var2
echo $var3

echo ------------------------

IFS=-
echo $var1
echo $var2
echo $var3

echo ------------------------

IFS=","
echo $var1
echo $var2
echo $var3












