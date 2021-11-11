#! /bin/bash

myArr=(17 7 5 9 2)

# for i in "${myArr[@]}"
for i in "${myArr[@]}"; do

    if [ $(expr $i % 2) == 0 ]; then
        echo "$i is even"
    else

        echo "$i is Odd value"

    fi
done
