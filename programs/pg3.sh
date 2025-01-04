#!/bin/bash

echo "Enter Directory name: "
read dir

if [ ! -d "$dir" ]; then
  echo "Invalid directory"
  exit
fi

large=0
largest_file=""

for file in $(find "$dir" -type f); do
  size=$(stat -c %s "$file")
  echo "Size of $file is $size"

  if [ "$size" -gt "$large" ]; then
    large=$size
    largest_file=$file
  fi
done

echo "The file with the largest size is $largest_file with size $large bytes"

