#!/bin/bash
read='^[0-9]+$'
if ! [[ $1 =~ $read && $2 =~ $read ]]; then
	echo "i need two numbers"
	exit 2
fi
function sum {
	echo $(( $1 + $2 ))
}
sum $1 $2
