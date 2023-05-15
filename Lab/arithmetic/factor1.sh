#!/bin/bash
(( $1 % 2 )) || result="one factor"
(( $1 % 3 )) || result+="...actually two!"
echo ${result:-$1}
