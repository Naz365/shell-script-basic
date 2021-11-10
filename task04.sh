#! /bin/bash

echo "Enter a String"
# Taking input from user
read text

# Counting words
sentanceCount=$(echo -n "$text" | wc -w)
# Counting characters
alphabetsCount=$(echo -n "$text" | wc -c)

numberCount=$(echo -n "$text" | grep -o '[0-9]')

# Counting special characters
special=$(expr length "${text//[^\~!@#$&*()]/}")

echo "Number of Words = $sentanceCount"

echo "Number of Characters = $alphabetsCount"

echo "Number of Special symbols = $special"

echo "Result of numerical value = $numberCount"
