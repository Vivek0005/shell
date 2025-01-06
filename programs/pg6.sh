#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
else
    for name in "$@"; do
        # Check if the user exists in /etc/passwd
        if grep -q "^$name:" /etc/passwd; then
            echo "Login name: $name"

            # Extract the home directory of the user
            hdir=$(grep "^$name:" /etc/passwd | cut -d":" -f6)
            echo "Home Directory: $hdir"
        else
            echo "$name is not a valid login name"
        fi
    done
fi
