#!/bin/bash

E_BADARGS=65

case $# in
	0|1) 
		echo "Usage: `basename $0` old_file_prefix new_file_prefix"
		exit $E_BADARGS
	;;
esac

for filename in *.$1
do
	mv $filename ${filename%$1}$2
done
exit 0
