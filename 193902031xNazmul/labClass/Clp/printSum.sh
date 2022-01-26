#!/bin/bash
echo -n "Enter an integer number please: "
read number
sum=0
for (( i=1; i<=$number; i++ ))
do
  sum=$(($sum+($i*$i)**2))
done
echo "The sum of the nth number $number is: $sum"
