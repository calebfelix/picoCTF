#!/bin/bash

# Check if input is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <string> <shift>"
  exit 1
fi

input="$1"
shift="$2"
output=""

# Ensure shift is between 0 and 25
shift=$((shift % 26))

# Iterate through each character in the input
for (( i=0; i<${#input}; i++ )); do
  char="${input:i:1}"
  
  # Handle lowercase letters
  if [[ "$char" =~ [a-z] ]]; then
    ascii=$(printf "%d" "'$char")
    shifted_ascii=$((ascii + shift))
    if [ $shifted_ascii -gt 122 ]; then
      shifted_ascii=$((shifted_ascii - 26))
    fi
    shifted_char=$(printf "\\$(printf "%03o" "$shifted_ascii")")
  
  # Handle uppercase letters
  elif [[ "$char" =~ [A-Z] ]]; then
    ascii=$(printf "%d" "'$char")
    shifted_ascii=$((ascii + shift))
    if [ $shifted_ascii -gt 90 ]; then
      shifted_ascii=$((shifted_ascii - 26))
    fi
    shifted_char=$(printf "\\$(printf "%03o" "$shifted_ascii")")
  
  # Non-alphabet characters remain unchanged
  else
    shifted_char="$char"
  fi
  
  # Append to output
  output+="$shifted_char"
done

echo "$output"
