#!/bin/bash

E_BADDIR=85
var=noextstent_directory

error(){
	printf "$@" >&2

	echo $E_BADDIR
}

cd $var || error $"Can't cd to %s." "$var"
