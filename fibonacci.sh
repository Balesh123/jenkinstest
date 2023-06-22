#!/bin/bash

# Function to calculate Fibonacci numbers
fibonacci() {
  n=$1
  a=0
  b=1

  echo "Fibonacci Series:"
  echo "0"

  for (( i=1; i<n; i++ ))
  do
    echo "$b"
    temp=$((a + b))
    a=$b
    b=$temp
  done
}

# Prompt user for the number of Fibonacci numbers to generate
count=10

# Call the fibonacci function
fibonacci $count
sleep infinity
