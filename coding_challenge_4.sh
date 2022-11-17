#! /bin/bash
# Write a script which takes a number as input from the user and checks whether it is even or odd.
echo -n "enter a number -> "
read n
#echo -n "RESULT."
if [ $((n % 2)) == 0 ]; then
    echo "$n is even"
else
    echo "$n is odd"
fi