#! /bin/bash
# test-integer: determine if an integer is present in given range
MIN_VALUE=1
MAX_VALUE=100
INT=93
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [[ "$INT" -ge "$MIN_VALUE" && "$INT" -le "$MAX_VALUE" ]]; then
        echo "INT is within range $MIN_VALUE to $MAX_VALUE"
    else
        echo "INT is out of range"
    fi
else
    echo "INT is not even an integer."
    exit 1
fi