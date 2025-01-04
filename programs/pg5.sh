#!/bin/bash

# Disable echo for secure password input
stty -echo
echo "Enter password: "
read pass1
echo "Confirm password: "
read pass2

if [ "$pass1" = "$pass2" ]; then
  echo "Terminal is locked"
  
  # Trap signals to prevent interruption
  trap '' 1 2 15
  
  while true; do
    echo "Enter password to unlock: "
    read pass3
    stty echo
    
    if [ "$pass3" = "$pass2" ]; then
      echo "Terminal unlocked"
      trap - 1 2 15
      exit
    else
      echo "Incorrect password, try again."
    fi
  done

else
  echo "Passwords do not match. Exiting..."
  exit 1
fi

