#!/bin/bash

echo "This line appears Once in the script, yet is keeps echoing"
echo "The PID of this instance of the script is still $$"

sleep 1

exec $0

echo "This will never echo!"
exit 99
