#!/bin/bash

PS3='Choose your favorite vegetable: '

echo

select vegetable in "beans" "carrots" "potatos" "onion" "rutabagas"
do
	echo
	echo "Your favorite veggie is $vegetable"
	echo "Yuck!"
	echo
	break
done
