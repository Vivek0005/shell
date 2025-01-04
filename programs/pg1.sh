#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Arguments not found"
  exit
else
  i=$# # Initialize i with the number of arguments
  temp=""
  
  while [ $i -gt 0 ]; do 
    s=$(echo "$*" | cut -d " " -f $i) # Extract the ith argument
    temp="$temp $s" # Append to the reversed list
    i=$(expr $i - 1) # Decrement i
  done

  echo "Total number of arguments: $#"
  echo
  echo "Arguments list: $*"
  echo
  echo "Reversed list: $temp"
fi

