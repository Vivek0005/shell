#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Arguments not found"
  exit
else
  temp=$IFS
  IFS='/'
  c=0
  for i in $*; do
    if [ -d "$i" ]; then
      cd "$i"
    else
      mkdir "$i"
      c=$((c + 1)) # Increment counter properly
      cd "$i"
    fi
  done
  IFS=$temp
  echo "$c directories created"
fi

