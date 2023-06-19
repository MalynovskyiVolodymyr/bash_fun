#!/bin/bash

E_INPUT=85
HEIGHT=50
WIDTH=60

OUTFILE=$0.output

# display this script in the text widget
gdialog --title "Displaing: $0" --textbox $0 $HEIGHT $WIDTH

# Now, we'll try saving input to a file
echo -n "VARIABLE=" 2>> $OUTFILE

gdialog --title "User Input" --inputbox "Enter variable, please:" $HEIGHT $WIDTH 2>> OUTFILE

if [ "$?" -eq 0 ]
then
	echo "Executed \"dialog box\" without errors."
else
	echo "Error(s) in \"dialog box\" execution."
	rm $OUTFILE
	exit $E_INPUT
fi	


