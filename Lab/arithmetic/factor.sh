#!/bin/bash
echo "give a number"
read number
if ($number%2==0);
then
echo "one factor"
elif ($number%3==0);
then
echo "one factor...actually two!"
else	
echo "2 and 3 are not factors of $number"
fi
