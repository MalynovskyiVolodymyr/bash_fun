#!/bin/bash
# c_vars.sh

echo

(( a = 23 ))
echo "a (initial value) = $a"

(( a++ ))
echo "a (after a++) = $a"

(( --a ))
echo "a (after --a) = $a"


