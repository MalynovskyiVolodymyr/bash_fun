#!/bin/bash
# alternative to string_name:start:end

stringZ=23skidoo1
# 012345678  Bash
# 123456789  awk

echo ${stringZ:2:4} # 0-1-2 4 characters long "skid"

echo | awk '
{
	print substr("'"${stringZ}"'", 3, 4)
}'

echo "--------------------------------------"

echo | awk '
{
	print index("'"${stringZ}"'", "skid")
}'
