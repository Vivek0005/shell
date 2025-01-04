#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Arguments not found"
  exit
elif [ $# -lt 2 ]; then
  echo "Only one argument provided"
  exit
else
  f1=$(ls -l $1 | cut -c 2-10) # Capture permissions of the first file
  f2=$(ls -l $2 | cut -c 2-10) # Capture permissions of the second file

  if [ "$f1" = "$f2" ]; then
    echo "File permissions are the same"
    echo "The permissions are: $f1"
  else
    echo "File permissions are not the same"
    echo "The permissions of $1 are: $f1"
    echo "The permissions of $2 are: $f2"
  fi
fi

