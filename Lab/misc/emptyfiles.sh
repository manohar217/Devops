#!/bin/bash

directory="$1"

# Check if directory is provided
if [[ -z "$directory" ]]; then
    echo "Usage: ./script_name directory_path"
    exit 1
fi

# Check if directory exists
if [[ ! -d "$directory" ]]; then
    echo "Directory '$directory' does not exist."
    exit 1
fi

# Find and remove empty files
find "$directory" -type f -empty -delete

echo "Empty files have been removed from '$directory'."

