#! /bin/bash



echo "enter  digit number"
read number
n=1
while ((n <= 7)); do
    a=$(echo $number | cut -c $n)
    echo -n "$a"
    n=$(expr $n + 2)
done
echo " "
