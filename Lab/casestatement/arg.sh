#!/bin/bash

if [[ $# -eq 1 ]]; then
    echo "Got it: $1"
    elif [[ $# -eq 0 ]]; then
        echo "Usage: ./script_name"
    else
    echo "hey hey...too many!"
fi

