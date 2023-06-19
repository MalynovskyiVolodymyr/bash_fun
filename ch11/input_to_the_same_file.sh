#!/bin/bash

GetPersonalData()
{
	read firstname
	read lastname
	read address
	read city
	read state
	read zipcode
}

GetPersonalData <<RECORD001
VOLODYMYR
MALYNOVSKYI
GORODOK LVIV UKRAINE
GORODOK
LVIV
81500
RECORD001

echo
echo "$firstname $lastname"
echo "$address"
echo "$city, $state $zipcode"
echo

exit 0







