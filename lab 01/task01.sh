#! /bin/bash

myArr=(17 7 5 9 2)

# for i in "${myArr[@]}"
# for i in "${myArr[@]}"; do
length=${#myArr[@]}
for ((i = 1; i <= length; i++)); do

    a=$(echo $number | cut -c $n)
    echo "$a"
    n=$(expr $n + 1)

done

# echo  "${!myArr[*]}"
