 #! /bin/bash

# # echo "enter  digit number"
# # read number
# # n=1
# # while ((n <= 7)); do
# #     a=$(echo $number | cut -c $n)
# #     echo -n "$a"
# #     n=$(expr $n + 2)
# # done
# echo "======= Enter a String ======="

# read string
# length=$(echo $string | wc -c)
# alphabets=0
# digits=0
# symbols=0
# while [ $length -gt 1 ]; do
#     length=$(expr $length - 1)
#     h=$(echo $string | cut -c $length)
#     case $h in
#     [AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQRrSsTtUuVvWwXxYyZz]) alphabets=$(expr $alphabets + 1) ;;
#     [0-9]) digits=$(expr $digits + 1) ;;
#     *) symbols=$(expr $symbols + 1) ;;
#     esac
# done
# echo "Alphabets = $alphabets"
# echo "Digits = $digits"
# echo "Special characters = $symbols"



echo "Enter  digit number:"
read number
for ((n = 1; n<= 7; n++)); do
    a=$(echo $number | cut -c $n)
    echo "$a"
    n=$(expr $n + 1)
done
echo " "