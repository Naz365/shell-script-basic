#! /bin/bash


# echo -n "Enter some rendom integer number : "
# read num


# for((i=0;i<=num;i++)); do
#     if [[ `expr $num % 2` -nq 0 ]] ; then
#          # if body
#     echo "The $i is Odd"
#     else 
#     echo "The $i is even"
#     fi
    
# done


echo "enter n value as range to calculate odd and even numbers."
read n

for((i=0;i<=num;i++));
# for [[  $i -le $n ]]
do
if [ `expr $i % 2` != 0 ]; then
echo "even=$i"
else
echo "odd=$i"
fi
# i=`expr $i + 1`
done