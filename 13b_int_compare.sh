#! /bin/bash
#test-integer: evaluate the value of integer
INT=2ab
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [ -z "$INT" ]; then
        echo "INT is empty" >&2
        exit 1
    fi
    if [ "$INT" -eq 0 ]; then
    echo "Int is zero"
    else
        if [ "$INT" -lt 0 ]; then
        echo "Int is negative"
        else 
        echo "Int is positive"
        fi
        if [ $((INT % 2)) -eq 0 ]; then
        echo "Int is even"
        else
        echo "Int is odd"
        fi
    fi
else
    echo "INT is not an integer"
    exit 1
fi