#!/bin/bash
argument=${1:-default}
if [ $argument = pizza ];
then
	echo "pineapple"
else
	echo "i want pizza"
fi
