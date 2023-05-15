#!/bin/bash

for size in $(ls);
do
	echo $(du -sh "$size" | cut -f1)
done
