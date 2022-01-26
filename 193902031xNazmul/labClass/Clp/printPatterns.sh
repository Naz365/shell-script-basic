#!/bin/bash
echo "Enter your an integer number to generate the rows: "
read n
count=0
for ((i = $n; i >= 1; i--)); do
    for ((j = $i; j >= 1; j--)); do
        sum=$(($count + $j))
        echo -n $sum " "
    done
    ((count++))
    echo
done

# number=1
# rows=5
# for ((i = rows; i >= 1; i--)); do
#     for ((j = 1; j <= i; j++)); do
#         echo -n "$number "
#         number=$((number + 1))
#     done
#     number=1
#     echo
# done
