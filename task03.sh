#! /bin/bash

echo "-------------- Foctorial -----------------"
echo "Enter a number"
read num

factorial=1

counter=$num

while [[ $counter > 0 ]]; do
  factorial=$(($factorial * $counter))
  counter=$(($counter - 1))
done

echo $factorial
