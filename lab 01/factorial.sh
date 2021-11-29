#! /bin/bash

factorial() {
  f=1
  for ((k = 1; k <= $1; ++k)); do
    f=$((f * k))
  done
  fac_result=$f
}

sum_two_factorials() {
  factorial $1
  tmp=$fac_result
  factorial $2
  sum_result=$(($tmp + $fac_result))
}

sum_two_factorials 5 7
echo "The sum of 5! and 7! are : $sum_result"
