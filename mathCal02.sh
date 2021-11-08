#! /bin/bash

echo -n "Enter a number : "
read F_num

echo -n "Enter another number : "
read S_num


# #? -----------------let----------------------
# let "result = F_num + S_num"

# echo "The Sum two Number are: $F_num + $S_num = $result "




#* ==================== bc =======================

result=`echo "$F_num / $S_num " | bc`
echo "The divition are : $result "



