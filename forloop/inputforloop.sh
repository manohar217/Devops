#!/bin/bash
for n in `cat var.txt`
do
touch $n.txt
done
