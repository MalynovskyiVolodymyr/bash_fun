#!/bin/bash
# Run as root

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=86
E_NOTROOT=87

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
fi

if [ -n "$1" ]
# Test whether command-line argument is present(non-empty)
then
	lines=$1
else
	lines=$LINES
fi	

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
# Not in /var/log
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi

tail -n $lines messages > mesg.tmp # Save last section of messages
mv mesg.temp messages # Rename it as system log file

# cat /dev/null > messages
# No longer needed

cat /dev/null > wtmp
echo "Log files cleaned up."
exit 0 # A zero indicates success
