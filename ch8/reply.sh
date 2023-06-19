#!/bin/bash
# reply

echo 
echo -n "What is your favorite vegetable? "
read

echo "Your favorite vegetable is $REPLY"
# REPLY holds the value of last "read" 

echo
echo "What is your favorite fruit? "
read fruit
echo "Your favorite fruit is $fruit"

