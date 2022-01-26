#! /bin/bash

echo "Enter  digit number:"
read number
for ((n = 1; n <= 7; n++)); do
    a=$(echo $number | cut -c $n)
    echo "$a"
    n=$(expr $n + 1)
done
echo " "
