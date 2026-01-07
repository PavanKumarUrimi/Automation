#!/bin/bash

# Get inputs from arguments
num1=$1
num2=$2

# Validate inputs
if [[ -z "$num1" || -z "$num2" ]]; then
  echo "Error: Two numbers are required"
  exit 1
fi

# Calculate sum
sum=$((num1 + num2))

# Print output (this goes to GitHub Actions logs)
echo "Sum of $num1 and $num2 is: $sum"
