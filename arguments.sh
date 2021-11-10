#! /bin/bash


IFS=","

<<com   
echo "Scrinpt name : $0"
echo "First argument : $1"
echo "Seconds argument : $2"
echo "Third argument : $3"
echo "All arguments with \$@: $@"
echo "All arguments with \$*: $*"
echo "All arguments count \$#: $#"
com


first=$1
second=$2
third=$3

let output="$first+$second*$third"

echo "The final result is : $output"