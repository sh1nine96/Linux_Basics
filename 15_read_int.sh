#! /bin/bash
# read-integer: evaluate the value of integer
echo -n "Please enter an integer -> "
read int
if [[ "$int" =~ ^-?[0-9]+$ ]]; then
    if [ "$int" -eq 0 ]; then
        echo "int is zero."
    else
        if [ "$int" -lt 0 ]; then
            echo "int is negative."
        else
            echo "int is positive."
        fi
        if [ $((int % 2)) -eq 0 ]; then
            echo "int is even."
        else
            echo "int is odd."
        fi
    fi
else
    echo "input value is not an integer."
    exit 1
fi