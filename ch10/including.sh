#!/bin/bash

. data-file.sh # Load data file file mast be in the same directory

echo "variable1 (from data-file) = $variable1"
echo "variable2 (from data-file) = $variable2"

let "sum = $variable2 + $variable1"
echo "Sum of variable2 + variable1 (from data-file) = $sum"

echo "message (from data-file) = $message"

print_message "This is the print_message function in the data file"
