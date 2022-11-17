#! /bin/bash
# test-integar: evaluate the value of integer
INT=8
if [ -z "$INT" ]; then
    echo "Int is empty" >&2
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