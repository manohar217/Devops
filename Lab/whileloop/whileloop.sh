#!/bin/bash
echo "Give any input:"
read input
while $input;
do
wc -c $input
done

