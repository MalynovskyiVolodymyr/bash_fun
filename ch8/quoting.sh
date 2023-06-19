#!/bin/bash
# Quoting

echo $(ls -l)
echo "$(ls -l)"
grep '[Ff]irst' *.txt
echo

List="one two three"

for a in $List
do
	echo "$a"
done

for a in "$List"
do
	echo "$a"
done

function new_line(){
	echo "-----------"
}
new_line

echo "This will print
as two lines."

echo "This will print \
as one line."

new_line
echo "\n\n\n\n"
new_line
echo "VERTICAL TABS"
echo -e "\n\n\n\n"
new_line

echo $'\v'
quote=$'\042' # means (") in ASCII

echo "$quote Quoted string $quote and this lies outside the quotes"

exit 0
