#! /bin/bash

array=(7 9 6 2 1)

if [ "${#array[@]}" -lt 2 ]; then
    echo Incoming array is not large enough >&2
    exit 1
fi

largest=${array[0]}
secondGreatest='unset'
thirdGreatest='unset'

for ((i = 1; i < ${#array[@]}; i++)); do
    if [[ ${array[i]} > $largest ]]; then
        secondGreatest=$largest
        largest=${array[i]}
    elif ((${array[i]} != $largest)) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }; then
        secondGreatest=${array[i]}

    elif

        ((${array[i]} != $largest)) && { [[ "$thirdGreatest" = "unset" ]] || [[ ${array[i]} > $thirdGreatest ]]; }
    then
        thirdGreatest=${array[i]}

    fi

done

echo "SecondGreatest value = $secondGreatest"
echo "ThirdGreatest value = $thirdGreatest"